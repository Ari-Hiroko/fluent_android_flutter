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
src/main/java/com/microsoft/fluentui/contextualcommandbar/CommandItem.kt
src/main/java/com/microsoft/fluentui/contextualcommandbar/CommandItemAdapter.kt
src/main/java/com/microsoft/fluentui/contextualcommandbar/CommandItemGroup.kt
src/main/java/com/microsoft/fluentui/contextualcommandbar/ContextualCommandBar.kt
src/main/java/com/microsoft/fluentui/contextualcommandbar/DefaultCommandItem.kt
src/main/java/com/microsoft/fluentui/tokenized/contextualcommandbar/ContextualCommandBar.kt
src/main/res/values/attrs.xml
src/main/res/values/dimens.xml
src/main/res/values/themes.xml
```

# Files

## File: src/main/java/com/microsoft/fluentui/contextualcommandbar/CommandItem.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentui.contextualcommandbar

import android.graphics.Bitmap
import android.view.View
import androidx.annotation.DrawableRes

interface CommandItem {

    interface OnItemClickListener {
        fun onItemClick(item: CommandItem, view: View)
    }

    interface OnItemLongClickListener {
        fun onItemLongClick(item: CommandItem, view: View): Boolean
    }

    /**
     * The identifier of command item.
     */
    fun getId(): Int? = null

    /**
     * The tag of command item.
     */
    fun getTag(): String? = null

    /**
     * The drawable based primary content displayed on the CommandItem
     */
    @DrawableRes
    fun getIcon(): Int = 0

    /**
     * The bitmap based primary content displayed on the CommandItem
     */
    fun getBitmapIcon(): Bitmap? = null

    /**
     * The secondary content displayed on the CommandItem if [getIcon] is not set
     */
    fun getLabel(): CharSequence? = null

    /**
     * Sets content description on the View CommandItem bound.
     *
     * A content description briefly describes the view and is primarily used
     * for accessibility support to determine how a view should be presented to
     * the user.
     */
    fun getContentDescription(): String? = null

    /**
     * Returns the enabled status for this view CommandItem bound.
     */
    fun isEnabled(): Boolean = true

    /**
     * Indicates the selection state of this view CommandItem bound.
     */
    fun isSelected(): Boolean = false

    /**
     * Sets View for the Command Item
     *
     * @param view CommandItem View
     */
    fun setView(view: View) {}

    /**
     * Indicates the view for the CommandItem
     */
    fun getView(): View? = null
}
```

## File: src/main/java/com/microsoft/fluentui/contextualcommandbar/CommandItemAdapter.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentui.contextualcommandbar

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import android.widget.TextView
import androidx.appcompat.content.res.AppCompatResources
import androidx.core.content.ContextCompat
import androidx.core.view.AccessibilityDelegateCompat
import androidx.core.view.ViewCompat
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat
import androidx.recyclerview.widget.RecyclerView
import com.microsoft.fluentui.ccb.R
import com.microsoft.fluentui.util.isVisible

internal class CommandItemAdapter(
    private var options: CommandListOptions
) : RecyclerView.Adapter<RecyclerView.ViewHolder>() {

    private var flattenCommandItems = arrayListOf<CommandItem>()
    var commandItemGroups = arrayListOf<CommandItemGroup>()
        set(value) {
            field = value

            flatItemGroup()
        }

    var itemClickListener: CommandItem.OnItemClickListener? = null
    var itemLongClickListener: CommandItem.OnItemLongClickListener? = null

    fun addItemGroup(itemGroup: CommandItemGroup) {
        commandItemGroups.add(itemGroup)

        flatItemGroup()
    }

    fun setGroupSpace(space: Int) {
        options.groupSpace = space
    }

    fun setItemSpace(space: Int) {
        options.itemSpace = space
    }

    private fun flatItemGroup() {
        flattenCommandItems.clear()
        commandItemGroups.forEach {
            flattenCommandItems.addAll(it.items)
        }
    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RecyclerView.ViewHolder {
        return ViewHolder(
            LayoutInflater
                .from(parent.context)
                .inflate(R.layout.view_command_item, parent, false)
        )
    }

    override fun onBindViewHolder(vh: RecyclerView.ViewHolder, position: Int) {
        val viewType = getItemViewType(position)
        val viewHolder = vh as ViewHolder
        val commandItem = flattenCommandItems[position]
        val isItemSelected = commandItem.isSelected()
        val isItemEnabled = commandItem.isEnabled()
        val label = commandItem.getLabel()
        val icon = commandItem.getIcon()
        val bitmapIcon = commandItem.getBitmapIcon()
        val description = commandItem.getContentDescription()
        commandItem.setView(vh.itemView)
        if (icon != 0) {
            // Using icon as primary display content
            viewHolder.label.isVisible = false
            with(viewHolder.icon) {
                isVisible = true
                setImageResource(icon)
                imageTintList = AppCompatResources.getColorStateList(
                    context,
                    R.color.contextual_command_bar_icon_tint
                )
                contentDescription = description
                isEnabled = isItemEnabled
                isSelected = isItemSelected
            }

        } else if (bitmapIcon != null) {
            viewHolder.label.isVisible = false
            with(viewHolder.icon) {
                isVisible = true
                imageTintList = null
                setImageBitmap(bitmapIcon)
                contentDescription = description
                isEnabled = isItemEnabled
                isSelected = isItemSelected
            }
        } else if (!label.isNullOrEmpty()) {
            viewHolder.icon.isVisible = false
            with(viewHolder.label) {
                isVisible = true
                text = label
                contentDescription = description
                isEnabled = isItemEnabled
                isSelected = isItemSelected
            }
        } else {
            // Return if no icon and label
            return
        }

        // Update the UI of command item
        with(viewHolder.itemView) {
            isEnabled = isItemEnabled
            isSelected = isItemSelected
            when (viewType) {
                VIEW_TYPE_GROUP_CENTER_ITEM -> {
                    (layoutParams as RecyclerView.LayoutParams).apply {
                        marginEnd = options.itemSpace
                    }

                    background = ContextCompat.getDrawable(
                        context,
                        R.drawable.contextual_command_bar_center_item_background
                    )
                }

                VIEW_TYPE_GROUP_START_ITEM -> {
                    (layoutParams as RecyclerView.LayoutParams).apply {
                        marginEnd = options.itemSpace
                    }
                    background = ContextCompat.getDrawable(
                        context,
                        R.drawable.contextual_command_bar_start_item_background
                    )
                }

                VIEW_TYPE_GROUP_END_ITEM -> {
                    (layoutParams as RecyclerView.LayoutParams).apply {
                        marginEnd = if (position == flattenCommandItems.size - 1) 0
                        else options.groupSpace
                    }

                    background = ContextCompat.getDrawable(
                        context,
                        R.drawable.contextual_command_bar_end_item_background
                    )
                }

                VIEW_TYPE_GROUP_SINGLE_ITEM -> {
                    (layoutParams as RecyclerView.LayoutParams).apply {
                        marginEnd = if (position == flattenCommandItems.size - 1) 0
                        else options.groupSpace
                    }
                    background = ContextCompat.getDrawable(
                        context,
                        R.drawable.contextual_command_bar_single_item_background
                    )
                }
            }

            setOnLongClickListener {
                itemLongClickListener?.onItemLongClick(commandItem, viewHolder.itemView) ?: true
            }

            setOnClickListener {
                itemClickListener?.onItemClick(commandItem, viewHolder.itemView)
            }

            ViewCompat.setAccessibilityDelegate(this,
                object : AccessibilityDelegateCompat() {
                    override fun onInitializeAccessibilityNodeInfo(
                        v: View,
                        info: AccessibilityNodeInfoCompat
                    ) {
                        super.onInitializeAccessibilityNodeInfo(v, info)
                        info.roleDescription = "Button"
                    }
                }
            )
        }
    }

    override fun getItemViewType(position: Int): Int {
        if (flattenCommandItems.size == 0) {
            return super.getItemViewType(position)
        }
        var pendingSearch = position + 1
        for (group in commandItemGroups) {
            val itemsSize = group.items.size
            if (itemsSize == 0) {
                continue
            }

            if (pendingSearch > itemsSize) {
                pendingSearch -= itemsSize
                continue
            } else {
                return when {
                    itemsSize == 1 -> {
                        VIEW_TYPE_GROUP_SINGLE_ITEM
                    }
                    pendingSearch == 1 -> {
                        VIEW_TYPE_GROUP_START_ITEM
                    }
                    pendingSearch == itemsSize -> {
                        VIEW_TYPE_GROUP_END_ITEM
                    }
                    else -> {
                        VIEW_TYPE_GROUP_CENTER_ITEM
                    }
                }
            }
        }

        return super.getItemViewType(position)
    }

    override fun getItemCount(): Int = flattenCommandItems.size

    private class ViewHolder(itemView: View) : RecyclerView.ViewHolder(itemView) {
        val icon: ImageView = itemView.findViewById(R.id.contextual_command_item_icon)
        val label: TextView = itemView.findViewById(R.id.contextual_command_item_label)
    }

    data class CommandListOptions(
        var groupSpace: Int,
        var itemSpace: Int
    )

    companion object {
        const val VIEW_TYPE_GROUP_CENTER_ITEM = 0
        const val VIEW_TYPE_GROUP_START_ITEM = 1
        const val VIEW_TYPE_GROUP_END_ITEM = 2
        const val VIEW_TYPE_GROUP_SINGLE_ITEM = 3
    }
}
```

## File: src/main/java/com/microsoft/fluentui/contextualcommandbar/CommandItemGroup.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentui.contextualcommandbar

class CommandItemGroup {

    /**
     * The identifier of this item group.
     */
    var id: String? = null

    /**
     * [CommandItem]s contained in this group
     */
    var items = arrayListOf<CommandItem>()

    fun addItem(item: CommandItem?): CommandItemGroup {
        item?.let {
            items.add(it)
        }
        return this
    }
}
```

## File: src/main/java/com/microsoft/fluentui/contextualcommandbar/ContextualCommandBar.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentui.contextualcommandbar

import android.content.Context
import androidx.annotation.Dimension
import androidx.annotation.DrawableRes
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import android.util.AttributeSet
import android.view.Gravity
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.view.ViewGroup.LayoutParams.MATCH_PARENT
import android.view.ViewGroup.LayoutParams.WRAP_CONTENT
import android.widget.FrameLayout
import android.widget.ImageView
import com.microsoft.fluentui.ccb.R
import com.microsoft.fluentui.theming.FluentUIContextThemeWrapper
import com.microsoft.fluentui.util.isVisible

class ContextualCommandBar @JvmOverloads constructor(
        appContext: Context,
        attrs: AttributeSet? = null,
        defStyleAttr: Int = 0
) : FrameLayout(FluentUIContextThemeWrapper(appContext,R.style.Theme_FluentUI_ContextualCommandBar), attrs, defStyleAttr) {

    private var dismissButtonContainer: ViewGroup? = null
    private var commandItemAdapter: CommandItemAdapter
    private var commandItemRecyclerView: RecyclerView

    var dismissCommandItem: DismissCommandItem? = null
        set(value) {
            field = value

            updateDismissButton()
        }

    init {
        var groupSpace = resources.getDimensionPixelSize(R.dimen.fluentui_contextual_command_bar_default_group_space)
        var itemSpace = resources.getDimensionPixelSize(R.dimen.fluentui_contextual_command_bar_default_item_space)
        attrs?.let {
            val styledAttributes = appContext.theme.obtainStyledAttributes(
                    it,
                    R.styleable.ContextualCommandBar,
                    0,
                    0
            )

            try {
                groupSpace = styledAttributes.getDimensionPixelSize(
                        R.styleable.ContextualCommandBar_fluentui_groupSpace,
                        resources.getDimensionPixelSize(R.dimen.fluentui_contextual_command_bar_default_group_space)
                )
                itemSpace = styledAttributes.getDimensionPixelSize(
                        R.styleable.ContextualCommandBar_fluentui_itemSpace,
                        resources.getDimensionPixelSize(R.dimen.fluentui_contextual_command_bar_default_item_space)
                )
            } finally {
                styledAttributes.recycle()
            }
        }

        commandItemAdapter = CommandItemAdapter(
                CommandItemAdapter.CommandListOptions(groupSpace, itemSpace)
        )
        commandItemRecyclerView = RecyclerView(
            context
        ).apply {
            layoutManager = LinearLayoutManager(
                context,
                LinearLayoutManager.HORIZONTAL,
                false
            )
            adapter = commandItemAdapter
            overScrollMode = View.OVER_SCROLL_NEVER
        }
        addView(commandItemRecyclerView)
    }

    fun setItemOnClickListener(listener: CommandItem.OnItemClickListener) {
        commandItemAdapter.itemClickListener = listener
    }

    fun setItemLongClickListener (listener: CommandItem.OnItemLongClickListener) {
        commandItemAdapter.itemLongClickListener = listener
    }

    fun setItemGroups(itemGroups: ArrayList<CommandItemGroup>) {
        commandItemAdapter.commandItemGroups = itemGroups
        commandItemAdapter.notifyDataSetChanged()
    }

    fun addItemGroup(itemGroup: CommandItemGroup) {
        commandItemAdapter.addItemGroup(itemGroup)
        commandItemAdapter.notifyDataSetChanged()
    }

    /**
     * Set the space between each [CommandItemGroup]
     */
    fun setCommandGroupSpace(@Dimension(unit = Dimension.PX) space: Int) {
        commandItemAdapter.setGroupSpace(space)
        commandItemAdapter.notifyDataSetChanged()
    }

    /**
     * Set the space between each [CommandItem]
     */
    fun setCommandItemSpace(@Dimension(unit = Dimension.PX) space: Int) {
        commandItemAdapter.setItemSpace(space)
        commandItemAdapter.notifyDataSetChanged()
    }

    /**
     * Set dismiss button position, see [DismissItemPosition]
     */
    fun setDismissButtonPosition(position: DismissItemPosition) {
        dismissCommandItem?.position = position
        updateDismissButton()
    }

    /**
     * Notify any registered observers that the data set has changed, including
     * Command item list and dismiss button
     */
    fun notifyDataSetChanged() {
        commandItemAdapter.notifyDataSetChanged()
        updateDismissButton()
    }

    private fun updateDismissButton() {
        dismissCommandItem ?: return
        val icon = dismissCommandItem!!.getIcon()
        if (icon == 0) {
            return
        }
        val dismissItemVisible = dismissCommandItem!!.visible
        val dismissItemGravity = dismissCommandItem!!.position

        if (dismissButtonContainer == null) {
            dismissButtonContainer = LayoutInflater.from(context)
                    .inflate(R.layout.view_dismiss_command_item, null) as ViewGroup
            addView(dismissButtonContainer)
        }
        val dismissButton: ImageView = dismissButtonContainer!!.findViewById(R.id.dismiss_command_item_button)
        val dismissButtonDivider: View = dismissButtonContainer!!.findViewById(R.id.dismiss_command_item_divider)
        (dismissButtonContainer!!.layoutParams as LayoutParams).apply {
            height = MATCH_PARENT
            width = WRAP_CONTENT

            gravity = when (dismissCommandItem!!.position) {
                DismissItemPosition.START -> Gravity.START
                DismissItemPosition.END -> Gravity.END
            }
        }

        // Set the position of DismissItemPosition
        if (dismissItemGravity == DismissItemPosition.START) {
            dismissButtonDivider.setBackgroundResource(
                    R.drawable.contextual_command_bar_dismiss_button_divider_start_background
            )
            dismissButtonContainer!!.removeAllViews()
            dismissButtonContainer!!.addView(dismissButton)
            dismissButtonContainer!!.addView(dismissButtonDivider)
        } else if (dismissItemGravity == DismissItemPosition.END) {
            dismissButtonDivider.setBackgroundResource(
                    R.drawable.contextual_command_bar_dismiss_button_divider_end_background
            )
            dismissButtonContainer!!.removeAllViews()
            dismissButtonContainer!!.addView(dismissButtonDivider)
            dismissButtonContainer!!.addView(dismissButton)
        }

        dismissButton.setImageResource(icon)
        dismissButton.contentDescription = dismissCommandItem!!.getContentDescription()
        dismissButtonContainer!!.isVisible = dismissItemVisible
        dismissButtonContainer!!.setOnClickListener {
            dismissCommandItem!!.dismissListener?.invoke()
        }

        // Adjust RecyclerView's position to adapt dismiss button
        val dismissButtonPlaceholder = if (dismissItemVisible) {
            resources.getDimensionPixelSize(
                    R.dimen.fluentui_contextual_command_bar_dismiss_button_width
            ) + resources.getDimensionPixelSize(
                    R.dimen.fluentui_contextual_command_bar_dismiss_gap_width
            )
        } else 0
        commandItemRecyclerView.setPaddingRelative(
                if (dismissItemGravity == DismissItemPosition.START) dismissButtonPlaceholder else 0,
                0,
                if (dismissItemGravity == DismissItemPosition.END) dismissButtonPlaceholder else 0,
                0)
        commandItemRecyclerView.clipToPadding = false

        // Bring this dismiss button on the front of command list
        bringChildToFront(dismissButtonContainer)
    }

    class DismissCommandItem(
            @DrawableRes private var icon: Int = 0,
            private var contentDescription: String? = null,
            var visible: Boolean = true,
            var position: DismissItemPosition = DismissItemPosition.END,
            var dismissListener: (() -> Unit)? = null
    ) : CommandItem {

        override fun getIcon(): Int {
            return icon
        }

        override fun getContentDescription(): String? {
            return contentDescription
        }
    }

    enum class DismissItemPosition {
        START, END
    }
}
```

## File: src/main/java/com/microsoft/fluentui/contextualcommandbar/DefaultCommandItem.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentui.contextualcommandbar

import android.graphics.Bitmap
import android.view.View
import androidx.annotation.DrawableRes

open class DefaultCommandItem(
    @DrawableRes private var icon: Int = 0,
    private var label: String? = null,
    private var contentDescription: String? = null,
    private var enabled: Boolean = true,
    private var selected: Boolean = false,
    private var bitmap: Bitmap? = null
) : CommandItem {
    private lateinit var view: View

    fun setEnabled(enabled: Boolean) {
        this.enabled = enabled
    }

    override fun isEnabled(): Boolean {
        return enabled
    }

    fun setSelected(selected: Boolean) {
        this.selected = selected
    }

    override fun isSelected(): Boolean {
        return selected
    }

    override fun getLabel(): String? {
        return label
    }

    override fun getIcon(): Int {
        return icon
    }

    override fun getBitmapIcon(): Bitmap? {
        return bitmap
    }

    override fun getContentDescription(): String? {
        return contentDescription
    }

    override fun setView(view: View) {
        this.view = view
    }

    override fun getView(): View? {
        return view
    }
}
```

## File: src/main/java/com/microsoft/fluentui/tokenized/contextualcommandbar/ContextualCommandBar.kt
```kotlin
package com.microsoft.fluentui.tokenized.contextualcommandbar

import androidx.compose.foundation.*
import androidx.compose.foundation.interaction.MutableInteractionSource
import androidx.compose.foundation.interaction.collectIsFocusedAsState
import androidx.compose.foundation.interaction.collectIsHoveredAsState
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.rememberLazyListState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.text.BasicText
import androidx.compose.material.ripple.rememberRipple
import androidx.compose.runtime.Composable
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.ui.Alignment
import androidx.compose.ui.ExperimentalComposeUiApi
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.focus.onFocusEvent
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalLayoutDirection
import androidx.compose.ui.platform.LocalSoftwareKeyboardController
import androidx.compose.ui.semantics.Role
import androidx.compose.ui.semantics.clearAndSetSemantics
import androidx.compose.ui.semantics.contentDescription
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.LayoutDirection
import androidx.constraintlayout.compose.ConstraintLayout
import androidx.constraintlayout.compose.Dimension
import com.microsoft.fluentui.ccb.R
import com.microsoft.fluentui.icons.CCBIcons
import com.microsoft.fluentui.icons.ccbicons.Keyboarddismiss
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.ControlTokens
import com.microsoft.fluentui.theme.token.FluentIcon
import com.microsoft.fluentui.theme.token.Icon
import com.microsoft.fluentui.theme.token.controlTokens.ContextualCommandBarInfo
import com.microsoft.fluentui.theme.token.controlTokens.ContextualCommandBarTokens
import kotlinx.coroutines.launch
import kotlin.math.max

enum class ActionButtonPosition {
    None,
    Start,
    End
}

/**
 * Generate a Contextual Command Bar. This is a horizontally scrollable bar which is made up of [CommandGroup].
 * Command group internally is a group of [CommandItem] which can be used to create onClick and onLongClick based buttons.
 * It also consist of an optional icon based action button which can be placed at either side of the CCB.
 * If enabled, by default this button acts as a Keyboard Dismiss button.
 *
 * @param groups List of Groups to be created in a context
 * @param modifier Optional Modifier for CCB
 * @param actionButtonPosition Enum to specify if we will have an Action Button and its position
 * @param actionButtonIcon FluentIcon for The Action Button Icon
 * @param scrollable Boolean value to specify if CCB has fixed or infinite width(Scrollable).
 *                      Use false to create a fixed non scrollable CCB. Command groups widths will adhere to the weights set in [CommandGroup] weight parameter.
 *                      Use true to have a scrollable CCB. [CommandGroup] weight parameter is ignored
 * @param selectionStroke List of BorderStroke to be applied on selected button in CCB
 * @param contextualCommandBarToken Token to provide appearance values to Avatar
 */
@OptIn(
    //Used for:
    //     Combined Clickable            Soft Keyboard Controller
    ExperimentalFoundationApi::class, ExperimentalComposeUiApi::class
)
@Composable
fun ContextualCommandBar(
    groups: List<CommandGroup>,
    modifier: Modifier = Modifier,
    actionButtonPosition: ActionButtonPosition = ActionButtonPosition.End,
    actionButtonIcon: FluentIcon = FluentIcon(
        CCBIcons.Keyboarddismiss,
        contentDescription = LocalContext.current.resources.getString(R.string.fluentui_dismiss)
    ),
    scrollable: Boolean = true,
    selectionStroke: List<BorderStroke>? = null,
    contextualCommandBarToken: ContextualCommandBarTokens? = null
) {

    val themeID =
        FluentTheme.themeID    //Adding This only for recomposition in case of Token Updates. Unused otherwise.
    val token = contextualCommandBarToken
        ?: FluentTheme.controlTokens.tokens[ControlTokens.ControlType.ContextualCommandBarControlType] as ContextualCommandBarTokens

    val contextualCommandBarInfo = ContextualCommandBarInfo()
    val groupBorderRadius =
        token.groupBorderRadius(contextualCommandBarInfo)
    val itemBorderRadius =
        token.itemBorderRadius(contextualCommandBarInfo)

    val soloItemShape = RoundedCornerShape(groupBorderRadius)
    val startShape = RoundedCornerShape(
        topStart = groupBorderRadius,
        bottomStart = groupBorderRadius,
        topEnd = itemBorderRadius,
        bottomEnd = itemBorderRadius
    )
    val defaultShape = RoundedCornerShape(itemBorderRadius)
    val endShape = RoundedCornerShape(
        topEnd = groupBorderRadius,
        bottomEnd = groupBorderRadius,
        topStart = itemBorderRadius,
        bottomStart = itemBorderRadius
    )
    val focusStroke = token.focusStroke(
        contextualCommandBarInfo
    )
    val showSelectionBorderStroke = selectionStroke != null
    var focusedBorderModifier: Modifier = Modifier
    var selectedBorderModifier: Modifier = Modifier

    val selectedString = LocalContext.current.resources.getString(R.string.fluentui_selected)

    val lazyListState = rememberLazyListState()
    val scope = rememberCoroutineScope()

    ConstraintLayout(
        modifier = modifier
            .focusable(enabled = false)
            .fillMaxWidth()
            .background(
                token.contextualCommandBarBackgroundBrush(
                    contextualCommandBarInfo
                )
            )
    ) {
        val (KeyboardDismiss, Content) = createRefs()
        val contentPaddingWithActionButton =
            -(token.actionButtonGradientWidth(
                contextualCommandBarInfo
            ) + token.buttonPadding(contextualCommandBarInfo))
        if (scrollable) {
            LazyRow(modifier = Modifier
                .focusable(enabled = false)
                .constrainAs(Content) {
                    when (actionButtonPosition) {
                        ActionButtonPosition.Start -> {
                            start.linkTo(
                                KeyboardDismiss.end,
                                margin = contentPaddingWithActionButton
                            )
                            end.linkTo(parent.end)
                        }

                        ActionButtonPosition.End -> {
                            start.linkTo(parent.start)
                            end.linkTo(
                                KeyboardDismiss.start,
                                margin = contentPaddingWithActionButton
                            )
                        }

                        ActionButtonPosition.None -> {
                            start.linkTo(parent.start)
                            end.linkTo(parent.end)
                        }
                    }
                    top.linkTo(parent.top)
                    bottom.linkTo(parent.bottom)
                    width = Dimension.fillToConstraints
                }
                .padding(
                    token.buttonPadding(
                        contextualCommandBarInfo
                    )
                ), state = lazyListState) {

                var itemKey = 0
                for ((index, commandGroup) in groups.withIndex()) {
                    for ((itemIndex, item) in commandGroup.items.withIndex()) {
                        val key = itemKey.toString()
                        item(key) {
                            val shape = if (commandGroup.items.size == 1) soloItemShape
                            else if (item == commandGroup.items.first()) startShape
                            else if (item == commandGroup.items.last()) endShape
                            else defaultShape

                            val interactionSource: MutableInteractionSource =
                                remember { MutableInteractionSource() }
                            val clickableModifier = Modifier.combinedClickable(
                                enabled = item.enabled,
                                onClick = item.onClick,
                                onClickLabel = null,
                                onLongClick = item.onLongClick,
                                role = Role.Button,
                                interactionSource = interactionSource,
                                indication = rememberRipple()
                            )

                            focusedBorderModifier = Modifier
                            for (borderStroke in focusStroke) {
                                focusedBorderModifier =
                                    focusedBorderModifier.border(borderStroke, shape)
                            }
                            selectedBorderModifier = Modifier
                            if(showSelectionBorderStroke){
                                for (borderStroke in selectionStroke!!) {
                                    selectedBorderModifier =
                                        selectedBorderModifier.border(borderStroke, shape)
                                }
                            }

                            Row(
                                modifier = Modifier.height(IntrinsicSize.Min),
                                verticalAlignment = Alignment.CenterVertically,
                            ) {
                                Box(
                                    Modifier
                                        .onFocusEvent { focusState ->
                                            if (focusState.isFocused) {
                                                scope.launch {
                                                    lazyListState.animateScrollToItem(
                                                        max(
                                                            0, key.toInt() - 2
                                                        )
                                                    )
                                                }
                                            }
                                        }
                                        .defaultMinSize(
                                            minWidth = token.buttonMinWidth(
                                                contextualCommandBarInfo
                                            )
                                        )
                                        .height(IntrinsicSize.Min)
                                        .clip(shape)
                                        .background(
                                            token
                                                .buttonBackgroundBrush(
                                                    contextualCommandBarInfo
                                                )
                                                .getBrushByState(
                                                    enabled = item.enabled,
                                                    selected = item.selected,
                                                    interactionSource = interactionSource
                                                ), shape = shape
                                        )
                                        .then(clickableModifier)
                                        .then(if (interactionSource.collectIsFocusedAsState().value || interactionSource.collectIsHoveredAsState().value) focusedBorderModifier else Modifier)
                                        .semantics {
                                            contentDescription =
                                                item.label +
                                                        if (item.selected)
                                                            selectedString
                                                        else ""
                                        }, contentAlignment = Alignment.Center
                                ) {
                                    CommandItemComposable(
                                        token,
                                        contextualCommandBarInfo,
                                        item,
                                        interactionSource,
                                        commandGroup
                                    )
                                }
                                if (itemIndex != commandGroup.items.size - 1) {
                                    Spacer(
                                        Modifier
                                            .requiredWidth(
                                                token.buttonSpacing(
                                                    contextualCommandBarInfo
                                                )
                                            )
                                            .fillMaxHeight()
                                            .background(Color.Transparent)
                                    )
                                } else if (index != groups.size - 1) {
                                    Spacer(
                                        Modifier
                                            .requiredWidth(
                                                token.groupSpacing(
                                                    contextualCommandBarInfo
                                                )
                                            )
                                            .fillMaxHeight()
                                            .background(Color.Transparent)
                                    )
                                }
                            }

                        }
                        itemKey += 1
                    }
                }
            }
        } else {
            Row(modifier = Modifier
                .constrainAs(Content) {
                    when (actionButtonPosition) {
                        ActionButtonPosition.Start -> {
                            start.linkTo(
                                KeyboardDismiss.end,
                                margin = contentPaddingWithActionButton
                            )
                            end.linkTo(parent.end)
                        }

                        ActionButtonPosition.End -> {
                            start.linkTo(parent.start)
                            end.linkTo(
                                KeyboardDismiss.start,
                                margin = contentPaddingWithActionButton
                            )
                        }

                        ActionButtonPosition.None -> {
                            start.linkTo(parent.start)
                            end.linkTo(parent.end)
                        }
                    }
                    top.linkTo(parent.top)
                    bottom.linkTo(parent.bottom)
                    width = Dimension.fillToConstraints
                }
                .fillMaxWidth()
                .padding(
                    token.buttonPadding(
                        contextualCommandBarInfo
                    )
                )) {
                for ((index, commandGroup) in groups.withIndex()) {
                    for ((itemIndex, item) in commandGroup.items.withIndex()) {
                        val shape = if (commandGroup.items.size == 1) soloItemShape
                        else if (item == commandGroup.items.first()) startShape
                        else if (item == commandGroup.items.last()) endShape
                        else defaultShape

                        val interactionSource: MutableInteractionSource =
                            remember { MutableInteractionSource() }
                        val clickableModifier = Modifier.combinedClickable(
                            enabled = item.enabled,
                            onClick = item.onClick,
                            onClickLabel = null,
                            onLongClick = item.onLongClick,
                            role = Role.Button,
                            interactionSource = interactionSource,
                            indication = rememberRipple()
                        )

                        focusedBorderModifier = Modifier
                        for (borderStroke in focusStroke) {
                            focusedBorderModifier =
                                focusedBorderModifier.border(borderStroke, shape)
                        }
                        selectedBorderModifier = Modifier
                        if(showSelectionBorderStroke){
                            for (borderStroke in selectionStroke!!) {
                                selectedBorderModifier =
                                    selectedBorderModifier.border(borderStroke, shape)
                            }
                        }
                        Row(
                            modifier = Modifier
                                .height(IntrinsicSize.Min)
                                .weight(commandGroup.weight),
                            verticalAlignment = Alignment.CenterVertically
                        ) {
                            Box(
                                Modifier
                                    .height(IntrinsicSize.Min)
                                    .fillMaxWidth()
                                    .clip(shape)
                                    .background(
                                        token
                                            .buttonBackgroundBrush(
                                                contextualCommandBarInfo
                                            )
                                            .getBrushByState(
                                                enabled = item.enabled,
                                                selected = item.selected,
                                                interactionSource = interactionSource
                                            ), shape = shape
                                    )
                                    .then(clickableModifier)
                                    .then(if (interactionSource.collectIsFocusedAsState().value || interactionSource.collectIsHoveredAsState().value) focusedBorderModifier else Modifier)
                                    .then(
                                        if (commandGroup.items[itemIndex].selected)
                                            selectedBorderModifier
                                        else Modifier
                                    )
                                    .semantics {
                                        contentDescription =
                                            item.label + if (item.selected) selectedString else ""
                                    }, contentAlignment = Alignment.Center
                            ) {
                                CommandItemComposable(
                                    token,
                                    contextualCommandBarInfo,
                                    item = item,
                                    interactionSource = interactionSource,
                                    commandGroup = commandGroup
                                )
                            }

                        }
                        if (itemIndex != commandGroup.items.size - 1) {
                            Spacer(
                                Modifier
                                    .requiredWidth(
                                        token.buttonSpacing(
                                            contextualCommandBarInfo
                                        )
                                    )
                                    .background(Color.Transparent)
                            )
                        } else if (index != groups.size - 1) {
                            Spacer(
                                Modifier
                                    .requiredWidth(
                                        token.groupSpacing(
                                            contextualCommandBarInfo
                                        )
                                    )
                                    .background(Color.Transparent)
                            )
                        }
                    }
                }
            }
        }
        if (actionButtonPosition != ActionButtonPosition.None) {
            val keyboardController = LocalSoftwareKeyboardController.current
            val keyboardDismiss: (() -> Unit) = { keyboardController?.hide() }
            val actionButtonClickable = Modifier.clickable(enabled = true,
                onClick = actionButtonIcon.onClick ?: keyboardDismiss,
                role = Role.Button,
                onClickLabel = actionButtonIcon.contentDescription,
                indication = rememberRipple(),
                interactionSource = remember { MutableInteractionSource() })

            val isRtl: Boolean = LocalLayoutDirection.current == LayoutDirection.Rtl

            Row(
                Modifier
                    .height(IntrinsicSize.Min)
                    .constrainAs(KeyboardDismiss) {
                        if (actionButtonPosition == ActionButtonPosition.Start) {
                            start.linkTo(parent.start)
                        } else {
                            end.linkTo(parent.end)
                        }
                        top.linkTo(parent.top)
                        bottom.linkTo(parent.bottom)
                    }, verticalAlignment = Alignment.CenterVertically
            ) {
                if (actionButtonPosition == ActionButtonPosition.End)
                    Spacer(
                        modifier = Modifier
                            .requiredWidth(
                                token.actionButtonGradientWidth(
                                    contextualCommandBarInfo
                                )
                            )
                            .fillMaxHeight()
                            .background(
                                Brush.horizontalGradient(
                                    token.actionButtonGradient(
                                        contextualCommandBarInfo
                                    ),
                                    startX = if (!isRtl) 0.0F else Float.POSITIVE_INFINITY,
                                    endX = if (!isRtl) Float.POSITIVE_INFINITY else 0.0F
                                )
                            )
                    )
                Icon(
                    actionButtonIcon,
                    modifier = Modifier
                        .then(actionButtonClickable)
                        .background(
                            token.actionButtonBackgroundBrush(
                                contextualCommandBarInfo
                            )
                        )
                        .padding(
                            token.actionButtonIconPadding(
                                contextualCommandBarInfo
                            )
                        ),
                    tint = token.actionButtonIconColor(
                        contextualCommandBarInfo
                    )
                )
                if (actionButtonPosition == ActionButtonPosition.Start)
                    Spacer(
                        modifier = Modifier
                            .requiredWidth(
                                token.actionButtonGradientWidth(
                                    contextualCommandBarInfo
                                )
                            )
                            .fillMaxHeight()
                            .background(
                                Brush.horizontalGradient(
                                    token.actionButtonGradient(
                                        contextualCommandBarInfo
                                    ),
                                    startX = if (!isRtl) Float.POSITIVE_INFINITY else 0F,
                                    endX = if (!isRtl) 0F else Float.POSITIVE_INFINITY
                                )
                            )
                    )
            }
        }
    }
}

@Composable
private fun CommandItemComposable(
    token: ContextualCommandBarTokens,
    contextualCommandBarInfo: ContextualCommandBarInfo,
    item: CommandItem,
    interactionSource: MutableInteractionSource,
    commandGroup: CommandGroup
) {
    val foregroundColor = token.iconColor(
        contextualCommandBarInfo
    ).getColorByState(
        enabled = item.enabled, selected = item.selected, interactionSource = interactionSource
    )

    val contentPadding: PaddingValues = if (commandGroup.items.size == 1) {
        PaddingValues(
            top = token.iconVerticalPadding(
                contextualCommandBarInfo
            ), bottom = token.iconVerticalPadding(
                contextualCommandBarInfo
            ), start = token.groupIconHorizontalPadding(
                contextualCommandBarInfo
            ), end = token.groupIconHorizontalPadding(
                contextualCommandBarInfo
            )
        )
    } else if (item == commandGroup.items.first()) {
        PaddingValues(
            top = token.iconVerticalPadding(
                contextualCommandBarInfo
            ), bottom = token.iconVerticalPadding(
                contextualCommandBarInfo
            ), start = token.groupIconHorizontalPadding(
                contextualCommandBarInfo
            ), end = token.itemIconHorizontalPadding(
                contextualCommandBarInfo
            )
        )
    } else if (item == commandGroup.items.last()) {
        PaddingValues(
            top = token.iconVerticalPadding(
                contextualCommandBarInfo
            ), bottom = token.iconVerticalPadding(
                contextualCommandBarInfo
            ), start = token.itemIconHorizontalPadding(
                contextualCommandBarInfo
            ), end = token.groupIconHorizontalPadding(
                contextualCommandBarInfo
            )
        )
    } else {
        PaddingValues(
            top = token.iconVerticalPadding(
                contextualCommandBarInfo
            ), bottom = token.iconVerticalPadding(
                contextualCommandBarInfo
            ), start = token.itemIconHorizontalPadding(
                contextualCommandBarInfo
            ), end = token.itemIconHorizontalPadding(
                contextualCommandBarInfo
            )
        )
    }
    if (item.icon != null) {
        Icon(
            item.icon,
            Modifier
                .padding(contentPadding)
                .requiredSize(
                    token.iconSize(
                        contextualCommandBarInfo
                    )
                ), tint = foregroundColor
        )
    } else {
        val fontTypography = token.typography(
            contextualCommandBarInfo
        )
        Box(
            modifier = Modifier
                .padding(contentPadding)
                .requiredHeight(
                    token.iconSize(
                        contextualCommandBarInfo
                    )
                ), contentAlignment = Alignment.Center
        ) {
            BasicText(
                item.label,
                modifier = Modifier.clearAndSetSemantics { },
                style = fontTypography.merge(
                    TextStyle(color = foregroundColor)
                ),
                maxLines = 1,
                overflow = TextOverflow.Ellipsis,
            )
        }
    }
}

data class CommandGroup(
    val groupName: String,
    val items: List<CommandItem>,
    val weight: Float = 1f
)

data class CommandItem(
    val label: String,
    val onClick: (() -> Unit),
    val enabled: Boolean = true,
    val selected: Boolean = false,
    val icon: FluentIcon? = null,
    val onLongClick: (() -> Unit)? = null
)
```

## File: src/main/res/values/attrs.xml
```xml
<?xml version="1.0" encoding="utf-8"?>
<!--
  ~ Copyright (c) Microsoft Corporation. All rights reserved.
  ~ Licensed under the MIT License.
  -->
<resources>
    <!--ContextualCommandBar-->
    <attr name="fluentuiContextualCommandBarBackgroundColor" format="reference|color"/>
    <attr name="fluentuiContextualCommandBarBackgroundColorPressed" format="reference|color"/>
    <attr name="fluentuiContextualCommandBarBackgroundColorSelected" format="reference|color"/>
    <attr name="fluentuiContextualCommandBarIconTint" format="reference|color"/>
    <attr name="fluentuiContextualCommandBarIconTintDisabled" format="reference|color"/>
    <attr name="fluentuiContextualCommandBarIconTintSelected" format="reference|color"/>
    <attr name="fluentuiContextualCommandBarDismissBackgroundColor" format="reference|color"/>
    <attr name="fluentuiContextualCommandBarDismissIconTintColor" format="reference|color"/>
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
    <!--ContextualCommandBar-->
    <dimen name="fluentui_contextual_command_bar_default_group_space">16dp</dimen>
    <dimen name="fluentui_contextual_command_bar_default_item_space">2dp</dimen>
    <dimen name="fluentui_contextual_command_bar_default_item_padding_vertical">8dp</dimen>
    <dimen name="fluentui_contextual_command_bar_default_item_padding_horizontal">10dp</dimen>
    <dimen name="fluentui_contextual_command_bar_default_corner_radius">8dp</dimen>
    <dimen name="fluentui_contextual_command_bar_dismiss_gap_width">8dp</dimen>
    <dimen name="fluentui_contextual_command_bar_dismiss_button_width">48dp</dimen>
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
    <!--ContextualCommandBar-->
    <style name="Theme.FluentUI.ContextualCommandBar.Base" parent="Base.Theme.FluentUI">
    <item name="fluentuiContextualCommandBarBackgroundColor">@color/fluentui_gray_50</item>
    <item name="fluentuiContextualCommandBarBackgroundColorPressed">@color/fluentui_gray_100</item>
    <item name="fluentuiContextualCommandBarBackgroundColorSelected">@color/fluentui_communication_tint_40</item>
    <item name="fluentuiContextualCommandBarIconTint">@color/fluentui_gray_900</item>
    <item name="fluentuiContextualCommandBarIconTintDisabled">@color/fluentui_gray_300</item>
    <item name="fluentuiContextualCommandBarIconTintSelected">@color/fluentui_communication_blue</item>
    <item name="fluentuiContextualCommandBarDismissBackgroundColor">#FFFFFF</item>
    <item name="fluentuiContextualCommandBarDismissIconTintColor">@color/fluentui_gray_900</item>
    </style>

    <style name="Theme.FluentUI.ContextualCommandBar" parent="Theme.FluentUI.ContextualCommandBar.Base"/>
</resources>
```
