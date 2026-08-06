This file is a merged representation of a subset of the codebase, containing specifically included files and files not matching ignore patterns, combined into a single document by Repomix.
The content has been processed where security check has been disabled.

# File Summary

## Purpose
This file contains a packed representation of a subset of the repository's contents that is considered the most important context.
It is designed to be easily consumable by AI systems for analysis, code review,
or other automated processes.

## File Format
The content is organized as follows:
1. This summary section
2. Repository information
3. Directory structure
4. Repository files (if enabled)
5. Multiple file entries, each consisting of:
  a. A header with the file path (## File: path/to/file)
  b. The full contents of the file in a code block

## Usage Guidelines
- This file should be treated as read-only. Any changes should be made to the
  original repository files, not this packed version.
- When processing this file, use the file path to distinguish
  between different files in the repository.
- Be aware that this file may contain sensitive information. Handle it with
  the same level of security as you would the original repository.

## Notes
- Some files may have been excluded based on .gitignore rules and Repomix's configuration
- Binary files are not included in this packed representation. Please refer to the Repository Structure section for a complete list of file paths, including binary files
- Only files matching these patterns are included: src/main/java/**/*.kt, src/main/java/**/*.java, src/main/kotlin/**/*.kt, src/main/res/values/attrs.xml, src/main/res/values/styles.xml, src/main/res/values/colors.xml, src/main/res/values/dimens.xml, src/main/res/values/themes.xml
- Files matching these patterns are excluded: **/test/**, **/androidTest/**, **/build/**, **/.gradle/**
- Files matching patterns in .gitignore are excluded
- Files matching default ignore patterns are excluded
- Security check has been disabled - content may contain sensitive information
- Files are sorted by Git change count (files with more changes are at the bottom)

# Directory Structure
```
src/main/java/com/microsoft/fluentui/popupmenu/PopupMenu.kt
src/main/java/com/microsoft/fluentui/popupmenu/PopupMenuAdapter.kt
src/main/java/com/microsoft/fluentui/popupmenu/PopupMenuItem.kt
src/main/java/com/microsoft/fluentui/popupmenu/PopupMenuItemView.kt
src/main/java/com/microsoft/fluentui/tokenized/menu/Dialog.kt
src/main/java/com/microsoft/fluentui/tokenized/menu/Menu.kt
src/main/res/values/attrs.xml
src/main/res/values/dimens.xml
src/main/res/values/themes.xml
```

# Files

## File: src/main/java/com/microsoft/fluentui/popupmenu/PopupMenu.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentui.popupmenu

import android.content.Context
import androidx.core.content.ContextCompat
import androidx.appcompat.widget.ListPopupWindow
import android.view.KeyEvent
import android.view.View
import com.microsoft.fluentui.menus.R
import com.microsoft.fluentui.popupmenu.PopupMenu.ItemCheckableBehavior
import com.microsoft.fluentui.theming.FluentUIContextThemeWrapper

/**
 * [PopupMenu] is a transient UI that displays a list of options. The popup appears from a view that
 * it's anchored to and over other content. The popup will appear below the anchor view
 * if there is room, or above it if there is not. The layout grows to fit the longest item in the list.
 *
 * [PopupMenu] supports [PopupMenuItem]s with a title, icon, divider, and [ItemCheckableBehavior],
 * and handles their click listener.
 *
 * TODO potential future work:
 * - Single item is checkable
 * - Specific groups are checkable
 * - Construct a menu from an inflated menu layout
 */

class PopupMenu : ListPopupWindow, PopupMenuItem.OnClickListener {
    companion object {
        internal val DEFAULT_ITEM_CHECKABLE_BEHAVIOR = ItemCheckableBehavior.NONE
    }

    /**
     *  [ItemCheckableBehavior] defines how you turn options on and off, using a checkbox for
     *  stand-alone options, or radio buttons for groups of mutually exclusive options.
     */
    enum class ItemCheckableBehavior {
        // No items are checkable
        NONE,
        // Only one item from the group can be checked (radio buttons)
        SINGLE,
        // All items can be checked (checkboxes)
        ALL
    }

    /**
     * Click listener for the [PopupMenuItem].
     */
    var onItemClickListener: PopupMenuItem.OnClickListener? = null

    private val context: Context
    private val adapter: PopupMenuAdapter
    private val items: ArrayList<PopupMenuItem>
    private val itemCheckableBehavior: ItemCheckableBehavior

    constructor(
        context: Context,
        anchorView: View,
        items: ArrayList<PopupMenuItem>,
        itemCheckableBehavior: ItemCheckableBehavior = DEFAULT_ITEM_CHECKABLE_BEHAVIOR
    ) : super(FluentUIContextThemeWrapper(context,R.style.Theme_FluentUI_Menus)) {
        this.context = context
        this.anchorView = anchorView
        this.items = items
        this.itemCheckableBehavior = itemCheckableBehavior

        adapter = PopupMenuAdapter(context, items, itemCheckableBehavior, this)
        setAdapter(adapter)

        setBackgroundDrawable(ContextCompat.getDrawable(FluentUIContextThemeWrapper(context,R.style.Theme_FluentUI_Menus), R.drawable.popup_menu_background))

        isModal = true
        width = adapter.calculateWidth()
    }

    override fun onPopupMenuItemClicked(popupMenuItem: PopupMenuItem) {
        when (itemCheckableBehavior) {
            ItemCheckableBehavior.NONE -> { }
            ItemCheckableBehavior.SINGLE -> setSingleChecked(popupMenuItem)
            ItemCheckableBehavior.ALL -> setChecked(popupMenuItem)
        }

        onItemClickListener?.onPopupMenuItemClicked(popupMenuItem)
        (context as? PopupMenuItem.OnClickListener)?.onPopupMenuItemClicked(popupMenuItem)

        if (itemCheckableBehavior != ItemCheckableBehavior.ALL)
            dismiss()
    }

    private fun setChecked(item: PopupMenuItem) {
        item.isChecked = !item.isChecked
        adapter.notifyDataSetChanged()
    }

    private fun setSingleChecked(item: PopupMenuItem) {
        items.forEach {
            it.isChecked = it == item
        }

        adapter.notifyDataSetChanged()
    }

    override fun show() {
        super.show()
        listView?.apply {
            isFocusableInTouchMode = true
            setOnKeyListener { _, keyCode, event ->
                if (keyCode == KeyEvent.KEYCODE_ENTER) {
                    selectedView?.performClick()
                    return@setOnKeyListener true
                } else if (keyCode == KeyEvent.KEYCODE_ESCAPE) {
                    dismiss()
                    return@setOnKeyListener true
                }
                return@setOnKeyListener onKeyDown(keyCode, event)
            }
        }
    }
}
```

## File: src/main/java/com/microsoft/fluentui/popupmenu/PopupMenuAdapter.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentui.popupmenu

import android.content.Context
import android.view.View
import android.view.ViewGroup
import android.widget.BaseAdapter
import android.widget.ListView
import com.microsoft.fluentui.menus.R
import kotlin.math.max

internal class PopupMenuAdapter : BaseAdapter {
    private val context: Context
    private val items: ArrayList<PopupMenuItem>
    private val itemCheckableBehavior: PopupMenu.ItemCheckableBehavior
    private val onItemClickListener: PopupMenuItem.OnClickListener

    constructor(
        context: Context,
        items: ArrayList<PopupMenuItem>,
        itemCheckableBehavior: PopupMenu.ItemCheckableBehavior,
        onItemClickListener: PopupMenuItem.OnClickListener
    ) : super() {
        this.context = context
        this.items = items
        this.itemCheckableBehavior = itemCheckableBehavior
        this.onItemClickListener = onItemClickListener
    }

    override fun getCount(): Int = items.size

    override fun getItem(position: Int): PopupMenuItem? = items[position]

    override fun getItemId(position: Int): Long = position.toLong()

    override fun getView(position: Int, convertView: View?, parent: ViewGroup): View {
        val view = convertView as? PopupMenuItemView ?: PopupMenuItemView(context)
        val item = getItem(position) ?: return view

        view.itemCheckableBehavior = itemCheckableBehavior
        view.setMenuItem(item)
        view.setOnClickListener {
            onItemClickListener.onPopupMenuItemClicked(item)
            announceItemStateForAccessibility(item, it)
        }

        return view
    }

    fun calculateWidth(): Int {
        var maxWidth = 0
        var minWidth = context.resources.getDimension(R.dimen.fluentui_popup_menu_item_min_width_no_icon).toInt()
        val minWidthWithIcon = context.resources.getDimension(R.dimen.fluentui_popup_menu_item_min_width_icon).toInt()
        val listView = ListView(context)

        for (itemViewIndex in 0 until count) {
            val itemView = getView(itemViewIndex, null, listView)

            if (itemView is PopupMenuItemView && itemView.iconResourceId != null)
                minWidth = minWidthWithIcon

            itemView.measure(View.MeasureSpec.UNSPECIFIED, View.MeasureSpec.UNSPECIFIED)
            maxWidth = max(maxWidth, itemView.measuredWidth)
        }

        return max(minWidth, maxWidth)
    }

    private fun announceItemStateForAccessibility(item: PopupMenuItem, itemView: View) {
        val announcementResourceId = if (itemCheckableBehavior == PopupMenu.ItemCheckableBehavior.NONE)
            R.string.popup_menu_accessibility_item_click_selected
        else
            if (item.isChecked)
                R.string.popup_menu_accessibility_item_click_checked
            else
                R.string.popup_menu_accessibility_item_click_unchecked

        itemView.announceForAccessibility(context.resources.getString(announcementResourceId, item.title))
    }
}
```

## File: src/main/java/com/microsoft/fluentui/popupmenu/PopupMenuItem.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentui.popupmenu

import android.os.Parcel
import android.os.Parcelable
import androidx.annotation.DrawableRes

/**
 * [id] is the unique identifier for this item.
 * [title] is the primary text for the item.
 * [iconResourceId] adds an icon to the start of the item.
 * [isChecked] will check or uncheck either the radio button or checkbox of the item, if present.
 * [showDividerBelow] will render a divider at the bottom of the view representing the item.
 */
class PopupMenuItem : Parcelable {
    interface OnClickListener {
        fun onPopupMenuItemClicked(popupMenuItem: PopupMenuItem)
    }

    val id: Int
    val title: String
    @DrawableRes
    val iconResourceId: Int?
    var isChecked: Boolean
    val showDividerBelow: Boolean
    var roleDescription: String = ""

    @JvmOverloads
    constructor(
        id: Int,
        title: String,
        @DrawableRes
        iconResourceId: Int? = null,
        isChecked: Boolean = false,
        showDividerBelow: Boolean = false,
        roleDescription: String? = ""
    ) {
        this.id = id
        this.title = title
        this.iconResourceId = iconResourceId
        this.isChecked = isChecked
        this.showDividerBelow = showDividerBelow
        this.roleDescription = roleDescription?: ""
    }

    private constructor(parcel: Parcel) : this(
        id = parcel.readInt(),
        title = parcel.readString() ?: "",
        iconResourceId = parcel.readInt(),
        isChecked = parcel.readByte() != 0.toByte(),
        showDividerBelow = parcel.readByte() != 0.toByte(),
        roleDescription = parcel.readString()
    )

    override fun writeToParcel(parcel: Parcel, flags: Int) {
        parcel.writeInt(id)
        parcel.writeString(title)
        parcel.writeValue(iconResourceId)
        parcel.writeByte(if (isChecked) 1 else 0)
        parcel.writeByte(if (showDividerBelow) 1 else 0)
        parcel.writeString(roleDescription)
    }

    override fun describeContents(): Int = 0

    companion object CREATOR : Parcelable.Creator<PopupMenuItem> {
        override fun createFromParcel(parcel: Parcel): PopupMenuItem = PopupMenuItem(parcel)
        override fun newArray(size: Int): Array<PopupMenuItem?> = arrayOfNulls(size)
    }
}
```

## File: src/main/java/com/microsoft/fluentui/popupmenu/PopupMenuItemView.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentui.popupmenu

import android.content.Context
import android.content.res.ColorStateList
import android.graphics.PorterDuff
import androidx.annotation.DrawableRes
import androidx.core.view.ViewCompat
import android.util.AttributeSet
import android.view.MotionEvent
import android.view.View
import android.view.accessibility.AccessibilityNodeInfo
import android.widget.CheckBox
import android.widget.ImageView
import android.widget.RadioButton
import android.widget.TextView
import androidx.core.view.AccessibilityDelegateCompat
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat
import com.microsoft.fluentui.menus.R
import com.microsoft.fluentui.popupmenu.PopupMenu.Companion.DEFAULT_ITEM_CHECKABLE_BEHAVIOR
import com.microsoft.fluentui.theming.FluentUIContextThemeWrapper
import com.microsoft.fluentui.util.ThemeUtil
import com.microsoft.fluentui.util.isVisible
import com.microsoft.fluentui.view.TemplateView

internal class PopupMenuItemView : TemplateView {
    var itemCheckableBehavior: PopupMenu.ItemCheckableBehavior = DEFAULT_ITEM_CHECKABLE_BEHAVIOR
        set(value) {
            if (field == value)
                return
            field = value

            when (itemCheckableBehavior) {
                PopupMenu.ItemCheckableBehavior.SINGLE -> {
                    showRadioButton = true
                    showCheckBox = false
                }
                PopupMenu.ItemCheckableBehavior.ALL -> {
                    showRadioButton = false
                    showCheckBox = true
                }
                PopupMenu.ItemCheckableBehavior.NONE -> {
                    showRadioButton = false
                    showCheckBox = false
                }
            }

            updateViews()
        }

    private var title: String = ""
    @DrawableRes
    internal var iconResourceId: Int? = null
    private var isChecked: Boolean = false
    private var showDividerBelow: Boolean = false
    private var showRadioButton: Boolean = false
    private var showCheckBox: Boolean = false
    private var roleDescription: String? = null

    @JvmOverloads
    constructor(context: Context, attrs: AttributeSet? = null, defStyleAttr: Int = 0) : super(FluentUIContextThemeWrapper(context,R.style.Theme_FluentUI_Menus), attrs, defStyleAttr)

    fun setMenuItem(popupMenuItem: PopupMenuItem) {
        title = popupMenuItem.title
        iconResourceId = popupMenuItem.iconResourceId
        isChecked = popupMenuItem.isChecked
        showDividerBelow = popupMenuItem.showDividerBelow
        roleDescription = popupMenuItem.roleDescription

        updateViews()
    }

    override fun onInterceptTouchEvent(ev: MotionEvent?): Boolean {
        return true
    }

    override fun onTouchEvent(event: MotionEvent?): Boolean {
        when (event?.actionMasked) {
            MotionEvent.ACTION_DOWN -> {
                setPressedState(true)
            }
            MotionEvent.ACTION_UP -> {
                performClick()
                setPressedState(false)
            }
            MotionEvent.ACTION_CANCEL -> {
                setPressedState(false)
            }
            else -> return false
        }
        return true
    }

    // Template

    override val templateId: Int
        get() = R.layout.view_popup_menu_item

    private var iconImageView: ImageView? = null
    private var titleView: TextView? = null
    private var radioButton: RadioButton? = null
    private var checkBox: CheckBox? = null
    private var dividerView: View? = null

    override fun onTemplateLoaded() {
        super.onTemplateLoaded()

        iconImageView = findViewInTemplateById(R.id.icon)
        titleView = findViewInTemplateById(R.id.title)
        radioButton = findViewInTemplateById(R.id.radio_button)
        checkBox = findViewInTemplateById(R.id.check_box)
        dividerView = findViewInTemplateById(R.id.divider)

        updateViews()
    }

    private fun updateViews() {
        titleView?.text = title

        iconResourceId?.let { iconImageView?.setImageResource(it) }
        iconImageView?.isVisible = iconResourceId != null

        radioButton?.isVisible = showRadioButton
        checkBox?.isVisible = showCheckBox
        dividerView?.isVisible = showDividerBelow

        updateCheckedState(isChecked)
        updateAccessibilityClickAction()
    }

    private fun setPressedState(isPressed: Boolean) {
        this.isPressed = isPressed
        radioButton?.isPressed = isPressed
        checkBox?.isPressed = isPressed
    }

    private fun updateCheckedState(isChecked: Boolean) {
        radioButton?.isChecked = isChecked
        checkBox?.isChecked = isChecked

        // Update text and icon color

        if (isChecked) {
            val foregroundSelectedColor = ThemeUtil.getThemeAttrColor(context, R.attr.fluentuiPopupMenuItemForegroundSelectedColor)
            titleView?.setTextColor(foregroundSelectedColor)
            checkBox?.buttonTintList = ColorStateList.valueOf(foregroundSelectedColor)
            radioButton?.buttonTintList = ColorStateList.valueOf(foregroundSelectedColor)
            // Using post helps ensure that the color filter is applied to the correct image in API <= Lollipop.
            iconImageView?.post {
                iconImageView?.setColorFilter(foregroundSelectedColor, PorterDuff.Mode.SRC_IN)
                iconImageView?.invalidate()
            }
        } else {
            titleView?.setTextColor(ThemeUtil.getThemeAttrColor(context, R.attr.fluentuiPopupMenuItemTitleColor))
            checkBox?.buttonTintList = ColorStateList.valueOf(ThemeUtil.getThemeAttrColor(context, R.attr.fluentuiPopupMenuItemCheckboxTint))
            radioButton?.buttonTintList = ColorStateList.valueOf(ThemeUtil.getThemeAttrColor(context, R.attr.fluentuiPopupMenuItemCheckboxTint))
            iconImageView?.post {
                iconImageView?.clearColorFilter()
                iconImageView?.invalidate()
            }
        }

        // Update content description

        val checkViewType = when {
            showRadioButton -> context.getString(R.string.popup_menu_accessibility_item_radio_button)
            showCheckBox -> context.getString(R.string.popup_menu_accessibility_item_check_box)
            else -> ""
        }
        val checkedState = if (isChecked)
            context.getString(R.string.popup_menu_accessibility_item_state_checked)
        else
            context.getString(R.string.popup_menu_accessibility_item_state_not_checked)

        contentDescription =
            if(!roleDescription.isNullOrEmpty()) "$title, $roleDescription"
            else if (showRadioButton || showCheckBox) "$title, $checkViewType $checkedState"
            else "$title"
    }

    private fun updateAccessibilityClickAction() {
        ViewCompat.setAccessibilityDelegate(this, object : AccessibilityDelegateCompat() {
            override fun onInitializeAccessibilityNodeInfo(host: View, info: AccessibilityNodeInfoCompat) {
                super.onInitializeAccessibilityNodeInfo(host, info)

                val clickLabel = if (itemCheckableBehavior == PopupMenu.ItemCheckableBehavior.NONE)
                    R.string.popup_menu_accessibility_item_select
                else
                    R.string.popup_menu_accessibility_item_toggle

                info.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat(
                    AccessibilityNodeInfo.ACTION_CLICK,
                    context.getString(clickLabel)
                ))
            }
        })
    }
}
```

## File: src/main/java/com/microsoft/fluentui/tokenized/menu/Dialog.kt
```kotlin
package com.microsoft.fluentui.tokenized.menu

import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.runtime.Composable
import androidx.compose.ui.ExperimentalComposeUiApi
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.draw.shadow
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.window.Dialog
import androidx.compose.ui.window.DialogProperties
import androidx.compose.ui.window.SecureFlagPolicy
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.ControlTokens
import com.microsoft.fluentui.theme.token.controlTokens.DialogInfo
import com.microsoft.fluentui.theme.token.controlTokens.DialogTokens

const val DIALOG_TEST_TAG = "Fluent Dialog"

/**
 * Create a dialog with the given content. The dialog does not fill the screen and is normally
 * used for modal events that require users to take an action before they can proceed.
 * @param onDismiss Execute any instruction when user tries to close the dialog.
 * @param dismissOnBackPress dismiss the dialog when back button is pressed.
 * @param dismissOnClickedOutside dismiss the dialog when clicked outside the dialog box.
 * @param modifier Optional modifier for dialog
 * @param dialogTokens Optional tokens for customizing dialog's visual appearance
 * @param content content to be displayed inside the dialog
 */
@OptIn(ExperimentalComposeUiApi::class)
@Composable
fun Dialog(
    onDismiss: () -> Unit,
    dialogProperties: DialogProperties = DialogProperties(
        dismissOnBackPress = false,
        dismissOnClickOutside = false,
        securePolicy = SecureFlagPolicy.Inherit,
        usePlatformDefaultWidth = true
    ),
    modifier: Modifier = Modifier,
    dialogTokens: DialogTokens? = null,
    content: @Composable () -> Unit
) {
    val themeID =
        FluentTheme.themeID    //Adding This only for recomposition in case of Token Updates. Unused otherwise.
    val token = dialogTokens
        ?: FluentTheme.controlTokens.tokens[ControlTokens.ControlType.DialogControlType] as DialogTokens
    val dialogInfo = DialogInfo()
    val cornerRadius = token.cornerRadius(dialogInfo = dialogInfo)
    val backgroundBrush = token.backgroundBrush(dialogInfo = dialogInfo)
    val borderBrush = token.borderBrush(dialogInfo = dialogInfo)
    val elevation = token.elevation(dialogInfo = dialogInfo)
    val borderStrokeWidth = token.borderStrokeWidth(dialogInfo = dialogInfo)
    val shape = RoundedCornerShape(cornerRadius)
    Dialog(
        onDismissRequest = onDismiss,
        properties = dialogProperties
    ) {
        Box(
            modifier = modifier
                .shadow(elevation, shape, false)
                .clip(shape)
                .background(
                    backgroundBrush
                )
                .border(
                    borderStrokeWidth, borderBrush, shape
                )
                .testTag(DIALOG_TEST_TAG)
        ) {
            content()
        }
    }
}
```

## File: src/main/java/com/microsoft/fluentui/tokenized/menu/Menu.kt
```kotlin
package com.microsoft.fluentui.tokenized.menu

import androidx.compose.animation.core.*
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.draw.shadow
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.TransformOrigin
import androidx.compose.ui.graphics.graphicsLayer
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.platform.LocalConfiguration
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.unit.*
import androidx.compose.ui.window.Popup
import androidx.compose.ui.window.PopupPositionProvider
import androidx.compose.ui.window.PopupProperties
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.ControlTokens
import com.microsoft.fluentui.theme.token.controlTokens.MenuInfo
import com.microsoft.fluentui.theme.token.controlTokens.MenuTokens

/**
 * Menu behaves similarly to a Popup, and will use the position of the parent layout to position
 * itself on screen. Commonly a Menu will be placed in a Box with a sibling that will be used as
 * the 'anchor'. Note that a Menu by itself will not take up any space in a layout, as the menu
 * is displayed in a separate window, on top of other content.
 *
 * onDismissRequest will be called when the menu should close - for example when there is a tap
 * outside the menu, or when the back key is pressed
 *
 * Menu changes its positioning depending on the available space, always trying to be fully visible.
 * It will try to expand horizontally, depending on layout direction, to the end of its parent,
 * then to the start of its parent, and then screen end-aligned. When it is screen end-aligned,
 * sideMargin values applied to have gap from screen edge. Vertically, it will try to expand
 * to the bottom of its parent, then from the top of its parent, then covering parent at center,
 * and then screen top-aligned.
 * An offset can be provided to adjust the positioning of the menu for cases when the layout bounds
 * of its parent do not coincide with its visual bounds. Note the offset will be applied in the
 * direction in which the menu will decide to expand.
 *
 * @param opened Whether the menu is currently open and visible to the user
 * @param onDismissRequest Called when the user requests to dismiss the menu, such as by
 * tapping outside the menu's bounds
 * @param modifier Optional modifier for Menu
 * @param offset [DpOffset] to be added to the position of the menu
 * @param menuTokens tokens to provide appearance values. If not provided then menu token will be
 * picked from [FluentTheme.controlTokens]
 * @param content composable that represents content inside the Menu
 * */
@Composable
fun Menu(
    opened: Boolean,
    onDismissRequest: () -> Unit,
    modifier: Modifier = Modifier,
    offset: DpOffset = DpOffset(0.dp, 0.dp),
    properties: PopupProperties = PopupProperties(focusable = true),
    menuTokens: MenuTokens? = null,
    content: @Composable () -> Unit
) {
    val openedStates = remember { MutableTransitionState(false) }
    openedStates.targetState = opened

    if (openedStates.currentState || openedStates.targetState) {
        val themeID =
            FluentTheme.themeID    //Adding This only for recomposition in case of Token Updates. Unused otherwise.
        val token =
            menuTokens
                ?: FluentTheme.controlTokens.tokens[ControlTokens.ControlType.MenuControlType] as MenuTokens

        val menuInfo = MenuInfo()

        val transformOriginState = remember { mutableStateOf(TransformOrigin.Center) }
        val applyWidthModifier = remember { mutableStateOf(false) }
        val restrictWidth = remember { mutableStateOf(false) }
        val density = LocalDensity.current
        val screenWidth = with(density) { LocalConfiguration.current.screenWidthDp.dp.roundToPx() }
        val popupPositionProvider = MenuPositionProvider(
            offset,
            density,
            token.bottomMargin(menuInfo),
            token.sideMargin(menuInfo)
        ) { parentBounds, menuBounds ->
            transformOriginState.value = calculateTransformOrigin(parentBounds, menuBounds)
            restrictWidth.value = menuBounds.size.width >= screenWidth * 0.75f
        }

        Popup(
            onDismissRequest = onDismissRequest,
            popupPositionProvider = popupPositionProvider,
            properties = properties
        ) {
            MenuContent(
                expandedStates = openedStates,
                transformOriginState = transformOriginState,
                modifier = modifier.then(
                    if (applyWidthModifier.value) Modifier
                        .fillMaxWidth(0.75f)
                    else Modifier
                ),
                content = content,
                elevation = token.elevation(menuInfo),
                cornerRadius = token.cornerRadius(menuInfo),
                background = token.backgroundBrush(menuInfo)
            )
        }

        LaunchedEffect(Unit) {
            applyWidthModifier.value = restrictWidth.value
        }
    }
}

internal const val InTransitionDuration = 120
internal const val OutTransitionDuration = 75
internal val MenuVerticalPadding = 8.dp

@Composable
internal fun MenuContent(
    expandedStates: MutableTransitionState<Boolean>,
    transformOriginState: MutableState<TransformOrigin>,
    modifier: Modifier = Modifier,
    elevation: Dp,
    background: Brush,
    cornerRadius: Dp,
    content: @Composable () -> Unit
) {
    // Menu open/close animation.
    val transition = updateTransition(expandedStates, "Menu")

    val scale by transition.animateFloat(
        transitionSpec = {
            if (false isTransitioningTo true) {
                // Dismissed to expanded
                tween(
                    durationMillis = InTransitionDuration,
                    easing = LinearOutSlowInEasing
                )
            } else {
                // Expanded to dismissed.
                tween(
                    durationMillis = 1,
                    delayMillis = OutTransitionDuration - 1
                )
            }
        }, label = "MenuScale"
    ) {
        if (it) {
            // Menu is expanded.
            1f
        } else {
            // Menu is dismissed.
            0.8f
        }
    }

    val alpha by transition.animateFloat(
        transitionSpec = {
            if (false isTransitioningTo true) {
                // Dismissed to expanded
                tween(durationMillis = 30)
            } else {
                // Expanded to dismissed.
                tween(durationMillis = OutTransitionDuration)
            }
        }, label = "MenuAlpha"
    ) {
        if (it) {
            // Menu is expanded.
            1f
        } else {
            // Menu is dismissed.
            0f
        }
    }
    val shape = RoundedCornerShape(cornerRadius)
    Box(
        modifier = modifier
            .graphicsLayer {
                scaleX = scale
                scaleY = scale
                this.alpha = alpha
                transformOrigin = transformOriginState.value
            }
            .shadow(elevation, shape, clip = false)
            .background(background, shape)
            .clip(shape)
            .semantics(mergeDescendants = false) {}
            .pointerInput(Unit) {}
            .padding(vertical = MenuVerticalPadding)
            .width(IntrinsicSize.Max)
    ) {
        content()
    }
}

/**
 * Calculates the position of a [Menu].
 */
@Immutable
internal data class MenuPositionProvider(
    val contentOffset: DpOffset,
    val density: Density,
    val bottomMargin: Dp,
    val sideMargin: Dp,
    val onPositionCalculated: (IntRect, IntRect) -> Unit = { _, _ -> }
) : PopupPositionProvider {
    override fun calculatePosition(
        anchorBounds: IntRect,
        windowSize: IntSize,
        layoutDirection: LayoutDirection,
        popupContentSize: IntSize
    ): IntOffset {
        // The min margin below the menu, relative to the screen.
        val bottomMarginPx = with(density) { bottomMargin.roundToPx() }
        // The min margin to side of the menu, relative to the screen.
        val horizontalMargin = with(density) { sideMargin.roundToPx() }
        // The content offset specified using the dropdown offset parameter.
        val contentOffsetX = with(density) { contentOffset.x.roundToPx() }
        val contentOffsetY = with(density) { contentOffset.y.roundToPx() }

        // Compute horizontal position.
        val toRight = maxOf(anchorBounds.left + contentOffsetX, horizontalMargin)
        val toLeft = anchorBounds.right - contentOffsetX - popupContentSize.width
        val toDisplayRight = windowSize.width - popupContentSize.width - horizontalMargin
        val toDisplayLeft = horizontalMargin
        val x = if (layoutDirection == LayoutDirection.Ltr) {
            sequenceOf(
                toRight,
                toLeft,
                // If the anchor gets outside of the window on the left, we want to position
                // toDisplayLeft for proximity to the anchor. Otherwise, toDisplayRight.
                if (anchorBounds.left >= 0) toDisplayRight else toDisplayLeft
            )
        } else {
            sequenceOf(
                toLeft,
                toRight,
                // If the anchor gets outside of the window on the right, we want to position
                // toDisplayRight for proximity to the anchor. Otherwise, toDisplayLeft.
                if (anchorBounds.right <= windowSize.width) toDisplayLeft else toDisplayRight
            )
        }.firstOrNull {
            it >= horizontalMargin && it + popupContentSize.width + horizontalMargin <= windowSize.width
        } ?: (if (layoutDirection == LayoutDirection.Ltr) toRight else toLeft)

        // Compute vertical position.
        val toBottom = anchorBounds.bottom + contentOffsetY
        val toTop = anchorBounds.top - contentOffsetY - popupContentSize.height
        val toCenter = anchorBounds.top - popupContentSize.height / 2
        val y = sequenceOf(toBottom, toTop, toCenter).firstOrNull {
            it >= 0 && it + popupContentSize.height <= windowSize.height - bottomMarginPx
        } ?: toTop

        onPositionCalculated(
            anchorBounds,
            IntRect(x, y, x + popupContentSize.width, y + popupContentSize.height)
        )
        return IntOffset(x, y)
    }
}

internal fun calculateTransformOrigin(
    parentBounds: IntRect,
    menuBounds: IntRect
): TransformOrigin {
    val pivotX = when {
        menuBounds.left >= parentBounds.right -> 0f
        menuBounds.right <= parentBounds.left -> 1f
        menuBounds.width == 0 -> 0f
        else -> {
            val intersectionCenter =
                (
                        kotlin.math.max(parentBounds.left, menuBounds.left) +
                                kotlin.math.min(parentBounds.right, menuBounds.right)
                        ) / 2
            (intersectionCenter - menuBounds.left).toFloat() / menuBounds.width
        }
    }
    val pivotY = when {
        menuBounds.top >= parentBounds.bottom -> 0f
        menuBounds.bottom <= parentBounds.top -> 1f
        menuBounds.height == 0 -> 0f
        else -> {
            val intersectionCenter =
                (
                        kotlin.math.max(parentBounds.top, menuBounds.top) +
                                kotlin.math.min(parentBounds.bottom, menuBounds.bottom)
                        ) / 2
            (intersectionCenter - menuBounds.top).toFloat() / menuBounds.height
        }
    }
    return TransformOrigin(pivotX, pivotY)
}
```

## File: src/main/res/values/attrs.xml
```xml
<?xml version="1.0" encoding="utf-8"?>
<!--
  ~ Copyright (c) Microsoft Corporation. All rights reserved.
  ~ Licensed under the MIT License.
  -->
<resources>
    <!--PopupMenu-->
    <attr name="fluentuiPopupMenuBackgroundColor" format="reference|color"/>
    <attr name="fluentuiPopupMenuBackgroundPressedColor" format="reference|color"/>
    <attr name="fluentuiPopupMenuItemTitleColor" format="reference|color"/>
    <attr name="fluentuiPopupMenuItemForegroundSelectedColor" format="reference|color"/>
    <attr name="fluentuiPopupMenuItemCheckBackgroundRippleColor" format="reference|color"/>
    <attr name="fluentuiPopupMenuItemIconTint" format="reference|color"/>
    <attr name="fluentuiPopupMenuItemCheckboxTint" format="reference|color"/>
    <attr name="fluentuiPopupMenuItemRadiobuttonTint" format="reference|color"/>
</resources>
```

## File: src/main/res/values/dimens.xml
```xml
<?xml version="1.0" encoding="utf-8"?>
<!--
  ~ Copyright (c) Microsoft Corporation. All rights reserved.
  ~ Licensed under the MIT License.
  -->
<resources>
    <!--PopupMenu-->
    <dimen name="fluentui_popup_menu_corner_radius">@dimen/fluentui_corner_radius_4</dimen>
    <dimen name="fluentui_popup_menu_item_icon_size">24dp</dimen>
    <dimen name="fluentui_popup_menu_item_margin_horizontal">8dp</dimen>
    <dimen name="fluentui_popup_menu_item_min_height">42dp</dimen>
    <dimen name="fluentui_popup_menu_item_min_width_no_icon">132dp</dimen>
    <dimen name="fluentui_popup_menu_item_min_width_icon">172dp</dimen>
    <dimen name="fluentui_popup_menu_duo_margin_start">600dp</dimen>
    <dimen name="fluentui_popup_menu_duo_margin_top">268dp</dimen>
</resources>
```

## File: src/main/res/values/themes.xml
```xml
<?xml version="1.0" encoding="utf-8"?>
<!--
  ~ Copyright (c) Microsoft Corporation. All rights reserved.
  ~ Licensed under the MIT License.
  -->
<resources>
    <style name="Theme.FluentUI.Menus.Base" parent="Base.Theme.FluentUI">
    <!--PopupMenu-->
    <item name="fluentuiPopupMenuBackgroundColor">?attr/fluentuiBackgroundColor</item>
    <item name="fluentuiPopupMenuBackgroundPressedColor">?attr/fluentuiBackgroundPressedColor</item>
    <item name="fluentuiPopupMenuItemTitleColor">?attr/fluentuiForegroundColor</item>
    <item name="fluentuiPopupMenuItemForegroundSelectedColor">?attr/fluentuiForegroundSelectedColor</item>
    <item name="fluentuiPopupMenuItemCheckBackgroundRippleColor">@color/fluentui_gray_300</item>
    <item name="fluentuiPopupMenuItemCheckboxTint">@color/fluentui_gray_300</item>
    <item name="fluentuiPopupMenuItemRadiobuttonTint">@color/fluentui_gray_300</item>
    <item name="fluentuiPopupMenuItemIconTint">@color/fluentui_gray_300</item>
    </style>

    <style name="Theme.FluentUI.Menus" parent="Theme.FluentUI.Menus.Base"/>
</resources>
```
