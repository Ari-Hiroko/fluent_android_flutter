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
src/main/java/com/microsoft/fluentui/bottomsheet/BottomSheet.kt
src/main/java/com/microsoft/fluentui/bottomsheet/BottomSheetAdapter.kt
src/main/java/com/microsoft/fluentui/bottomsheet/BottomSheetDialog.kt
src/main/java/com/microsoft/fluentui/bottomsheet/BottomSheetItem.kt
src/main/java/com/microsoft/fluentui/bottomsheet/BottomSheetItemDivider.kt
src/main/java/com/microsoft/fluentui/drawer/Drawer.kt
src/main/java/com/microsoft/fluentui/drawer/DrawerDialog.kt
src/main/java/com/microsoft/fluentui/drawer/DrawerView.kt
src/main/java/com/microsoft/fluentui/drawer/SideSheetBehavior.kt
src/main/java/com/microsoft/fluentui/drawer/TopSheetBehavior.kt
src/main/java/com/microsoft/fluentui/persistentbottomsheet/LockableNestedScrollView.kt
src/main/java/com/microsoft/fluentui/persistentbottomsheet/PersistentBottomSheet.kt
src/main/java/com/microsoft/fluentui/persistentbottomsheet/SheetHorizontalGridItemList.kt
src/main/java/com/microsoft/fluentui/persistentbottomsheet/SheetHorizontalItemAdapter.kt
src/main/java/com/microsoft/fluentui/persistentbottomsheet/SheetHorizontalItemList.kt
src/main/java/com/microsoft/fluentui/persistentbottomsheet/SheetHorizontalItemView.kt
src/main/java/com/microsoft/fluentui/persistentbottomsheet/sheetItem/BottomSheetParam.kt
src/main/java/com/microsoft/fluentui/persistentbottomsheet/sheetItem/DividerViewProvider.kt
src/main/java/com/microsoft/fluentui/persistentbottomsheet/sheetItem/HorizontalGridProvider.kt
src/main/java/com/microsoft/fluentui/persistentbottomsheet/sheetItem/HorizontalViewProvider.kt
src/main/java/com/microsoft/fluentui/persistentbottomsheet/sheetItem/PersistentBottomSheetContentViewProvider.kt
src/main/java/com/microsoft/fluentui/persistentbottomsheet/sheetItem/VerticalViewProvider.kt
src/main/java/com/microsoft/fluentui/tokenized/bottomsheet/BottomSheet.kt
src/main/java/com/microsoft/fluentui/tokenized/drawer/BottomDrawer.kt
src/main/java/com/microsoft/fluentui/tokenized/drawer/Drawer.kt
src/main/java/com/microsoft/fluentui/tokenized/drawer/DrawerUtils.kt
src/main/java/com/microsoft/fluentui/tokenized/drawer/HorizontalDrawer.kt
src/main/java/com/microsoft/fluentui/tokenized/drawer/TopDrawer.kt
src/main/java/com/microsoft/fluentui/tokenized/Utils.kt
src/main/res/values/attrs.xml
src/main/res/values/dimens.xml
src/main/res/values/styles.xml
src/main/res/values/themes.xml
```

# Files

## File: src/main/java/com/microsoft/fluentui/bottomsheet/BottomSheet.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentui.bottomsheet

import android.app.Dialog
import android.content.DialogInterface
import android.os.Bundle
import androidx.appcompat.app.AppCompatDialogFragment

/**
 * [BottomSheet] is used to display a list of menu items in a modal dialog inside of a Fragment that retains state.
 */
class BottomSheet : AppCompatDialogFragment(), BottomSheetItem.OnClickListener {
    companion object {
        private const val ITEMS = "items"
        private const val HEADER_ITEM = "headerItem"

        /**
         * @param items is an ArrayList of [BottomSheetItem]s.
         */
        @JvmStatic
        @JvmOverloads
        fun newInstance(items: ArrayList<BottomSheetItem>, headerItem: BottomSheetItem? = null): BottomSheet {
            val bundle = Bundle()
            bundle.putParcelableArrayList(ITEMS, items)
            bundle.putParcelable(HEADER_ITEM, headerItem)

            val bottomSheet = BottomSheet()
            bottomSheet.arguments = bundle
            return bottomSheet
        }
    }

    interface OnDismissListener {
        fun onBottomSheetDismiss()
    }

    private lateinit var bottomSheetDialog: BottomSheetDialog
    private lateinit var items: ArrayList<BottomSheetItem>
    private var headerItem: BottomSheetItem? = null
    private var clickedItem: BottomSheetItem? = null

    override fun onCreateDialog(savedInstanceState: Bundle?): Dialog {
        val bundle = savedInstanceState ?: arguments
        items = bundle?.getParcelableArrayList(ITEMS) ?: arrayListOf()
        headerItem = bundle?.getParcelable(HEADER_ITEM)

        bottomSheetDialog = BottomSheetDialog(requireContext(), items, headerItem, theme)
        bottomSheetDialog.onItemClickListener = this

        return bottomSheetDialog
    }

    override fun onSaveInstanceState(outState: Bundle) {
        super.onSaveInstanceState(outState)
        outState.putParcelableArrayList(ITEMS, items)
        outState.putParcelable(HEADER_ITEM, headerItem)
    }

    override fun onBottomSheetItemClick(item: BottomSheetItem) {
        clickedItem = item
    }

    // According to Android documentation, DialogFragment owns the Dialog setOnDismissListener callback so this
    // can't be set on the Dialog. Instead onDismiss(android.content.DialogInterface) must be overridden.
    override fun onDismiss(dialog: DialogInterface) {
        super.onDismiss(dialog)
        clickedItem?.let {
            (parentFragment as? BottomSheetItem.OnClickListener)?.onBottomSheetItemClick(it)
            (activity as? BottomSheetItem.OnClickListener)?.onBottomSheetItemClick(it)
            clickedItem = null
        }

        (parentFragment as? OnDismissListener)?.onBottomSheetDismiss()
        (activity as? OnDismissListener)?.onBottomSheetDismiss()
    }
}
```

## File: src/main/java/com/microsoft/fluentui/bottomsheet/BottomSheetAdapter.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentui.bottomsheet

import android.content.Context
import android.view.ContextThemeWrapper
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import androidx.annotation.StyleRes
import androidx.core.view.AccessibilityDelegateCompat
import androidx.core.view.ViewCompat
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat
import androidx.recyclerview.widget.DiffUtil
import androidx.recyclerview.widget.RecyclerView
import com.microsoft.fluentui.bottomsheet.BottomSheetItem.Companion.NO_ID
import com.microsoft.fluentui.drawer.R
import com.microsoft.fluentui.listitem.ListItemView
import com.microsoft.fluentui.theming.FluentUIContextThemeWrapper
import com.microsoft.fluentui.util.ThemeUtil
import com.microsoft.fluentui.util.createImageView

class BottomSheetAdapter : RecyclerView.Adapter<RecyclerView.ViewHolder> {
    var onBottomSheetItemClickListener: BottomSheetItem.OnClickListener? = null

    private val context: Context
    private val items: MutableList<BottomSheetItem>
    private val themeId: Int
    @StyleRes private val textAppearance: Int
    @StyleRes private val subTextAppearance: Int

    constructor(context: Context,
                items: MutableList<BottomSheetItem>,
                @StyleRes themeId: Int,
                @StyleRes textAppearance: Int = 0,
                @StyleRes subTextAppearance: Int = 0) {
        this.context = context
        this.items = items
        this.themeId = themeId
        this.textAppearance = textAppearance
        this.subTextAppearance = subTextAppearance
    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RecyclerView.ViewHolder {
        var inflater = LayoutInflater.from(parent.context)
        if (themeId != 0) {
            val contextThemeWrapper = ContextThemeWrapper(parent.context, themeId)
            inflater = inflater.cloneInContext(contextThemeWrapper)
        }

        val itemView = inflater.inflate(R.layout.view_bottom_sheet_item, parent, false)
        return BottomSheetItemViewHolder(itemView as ListItemView)
    }

    override fun onBindViewHolder(holder: RecyclerView.ViewHolder, position: Int) {
        (holder as? BottomSheetItemViewHolder)?.setBottomSheetItem(items[position], position, items.size)
    }

    /**
     * updates data in this adapter with help of diff utils
     */
    fun updateDataList(newDataList:MutableList<BottomSheetItem>){
        val result = DiffUtil.calculateDiff(SheetItemsDiffCallback(items, newDataList))
        items.clear()
        items.addAll(newDataList)
        result.dispatchUpdatesTo(this)
    }

    override fun getItemCount(): Int = items.size

    private inner class BottomSheetItemViewHolder : RecyclerView.ViewHolder {
        private val listItemView: ListItemView

        constructor(itemView: ListItemView) : super(itemView) {
            listItemView = itemView
        }

        fun setBottomSheetItem(item: BottomSheetItem, position: Int, size: Int) {
            listItemView.title = item.title
            listItemView.subtitle = item.subtitle
            listItemView.setTag(R.id.fluentui_bottom_sheet_item_divider, item.useDivider)
            listItemView.layoutDensity = ListItemView.LayoutDensity.COMPACT
            listItemView.background = R.drawable.bottom_sheet_item_ripple_background
            listItemView.disabled = item.disabled
            if (textAppearance != 0) {
                listItemView.titleStyleRes = textAppearance
            }
            if (subTextAppearance != 0) {
                listItemView.subTitleStyleRes = subTextAppearance
            }

            var image: ImageView ?= null
            if (item.customBitmap != null) {
                image = context.createImageView(item.customBitmap)
            } else if (item.imageId != NO_ID) {
                image = context.createImageView(item.imageId, item.getImageTint(context))
            }
            if (image != null && item.disabled)
                image.imageAlpha = ThemeUtil.getThemeAttrColor(FluentUIContextThemeWrapper(context, R.style.Theme_FluentUI_Drawer), R.attr.fluentuiBottomSheetDisabledIconColor)
            listItemView.customView = image

            var accessoryView: View ?= null
            var accessoryImageView: ImageView ?= null
            if (item.customAccessoryView != null) {
                accessoryView = item.customAccessoryView
            } else if (item.accessoryBitmap != null) {
                accessoryImageView = context.createImageView(item.accessoryBitmap)
            } else if (item.accessoryImageId != NO_ID) {
                accessoryImageView = context.createImageView(item.accessoryImageId, item.getImageTint(context))
            }
            if (accessoryView != null) {
                accessoryView.isEnabled = !item.disabled
            } else if (accessoryImageView != null && item.disabled) {
                accessoryImageView.imageAlpha =
                    ThemeUtil.getThemeAttrColor(FluentUIContextThemeWrapper(context, R.style.Theme_FluentUI_Drawer), R.attr.fluentuiBottomSheetDisabledIconColor)
            }
            listItemView.customAccessoryView = accessoryView ?: accessoryImageView

            listItemView.setOnClickListener {
                onBottomSheetItemClickListener?.onBottomSheetItemClick(item)
            }
            ViewCompat.setAccessibilityDelegate(listItemView,
                object : AccessibilityDelegateCompat() {
                    override fun onInitializeAccessibilityNodeInfo(
                        v: View,
                        info: AccessibilityNodeInfoCompat
                    ) {
                        super.onInitializeAccessibilityNodeInfo(v, info)
                        info.roleDescription = item.roleDescription
                        if(size>1) {
                            info.hintText = (position + 1).toString() + " of " + size
                        }
                    }
                }
            )
        }
    }

    /**
     * class compares old and new list
     * considers items same when id is matched
     * considers item's content same when each property is matched in BottomSheet
     * see equals method of BottomSheet
     */
    class SheetItemsDiffCallback(private val oldList:List<BottomSheetItem>, private val newList:List<BottomSheetItem>) : DiffUtil.Callback() {

        override fun getOldListSize(): Int {
            return oldList.size
        }

        override fun getNewListSize(): Int {
            return newList.size
        }

        override fun areItemsTheSame(oldItemPosition: Int, newItemPosition: Int): Boolean {
            return oldList[oldItemPosition].id == newList[newItemPosition].id
        }

        override fun areContentsTheSame(oldItemPosition: Int, newItemPosition: Int): Boolean {
            return oldList[oldItemPosition] == newList[newItemPosition]
        }

    }
}
```

## File: src/main/java/com/microsoft/fluentui/bottomsheet/BottomSheetDialog.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentui.bottomsheet

import android.content.Context
import android.os.Build
import android.view.View
import android.view.Window
import androidx.annotation.StyleRes
import com.microsoft.fluentui.drawer.DrawerDialog
import com.microsoft.fluentui.drawer.R
import com.microsoft.fluentui.drawer.databinding.ViewBottomSheetBinding
import com.microsoft.fluentui.listitem.ListItemView
import com.microsoft.fluentui.listitem.ListSubHeaderView
import com.microsoft.fluentui.util.ThemeUtil
import com.microsoft.fluentui.util.createImageView
import com.microsoft.fluentui.util.isVisible

/**
 * [BottomSheetDialog] is used to display a list of menu items in a modal dialog.
 */
class BottomSheetDialog : DrawerDialog, BottomSheetItem.OnClickListener {
    var onItemClickListener: BottomSheetItem.OnClickListener? = null

    private var clickedItem: BottomSheetItem? = null

    @JvmOverloads
    constructor(context: Context, items: ArrayList<BottomSheetItem>, headerItem: BottomSheetItem? = null, @StyleRes theme: Int = 0) : super(context, BehaviorType.BOTTOM, theme) {
        supportRequestWindowFeature(Window.FEATURE_NO_TITLE)

        val binding = ViewBottomSheetBinding.inflate(layoutInflater, drawerContent, false)

        val adapter = BottomSheetAdapter(this.context, items, theme)
        adapter.onBottomSheetItemClickListener = this
        binding.bottomSheetItems.adapter = adapter
        binding.bottomSheetItems.addItemDecoration(BottomSheetItemDivider(context))

        headerItem?.let {
            binding.bottomSheetHeaderContent.addView(createHeader(it))
            binding.bottomSheetHeaderContent.visibility = View.VISIBLE
            binding.bottomSheetHeaderDivider.isVisible = !isSingleLineHeader(it)
        }

        setContentView(binding.root)
    }

    private fun createHeader(headerItem: BottomSheetItem): View {
        return if (isSingleLineHeader(headerItem))
            createSingleLineHeader(headerItem)
        else
            createDoubleLineHeader(headerItem)
    }

    private fun createSingleLineHeader(headerItem: BottomSheetItem): View {
        val headerView = ListSubHeaderView(context)
        headerView.titleColor = ListSubHeaderView.TitleColor.SECONDARY
        headerView.title = headerItem.title
        headerView.background = ThemeUtil.getThemeAttrColor(context, R.attr.fluentuiBottomSheetBackgroundColor)
        return headerView
    }

    private fun createDoubleLineHeader(headerItem: BottomSheetItem): View {
        val headerView = ListItemView(context)
        if (headerItem.imageId != BottomSheetItem.NO_ID)
            headerView.customView = context.createImageView(headerItem.imageId, headerItem.getImageTint(context))
        headerView.title = headerItem.title
        headerView.subtitle = headerItem.subtitle
        headerView.background = R.drawable.bottom_sheet_header_background
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.P) {
            headerView.isAccessibilityHeading = true
            headerView.isFocusable = true
        }
        return headerView
    }

    private fun isSingleLineHeader(headerItem: BottomSheetItem): Boolean {
        return headerItem.imageId == BottomSheetItem.NO_ID && headerItem.subtitle.isEmpty()
    }

    override fun onBottomSheetItemClick(item: BottomSheetItem) {
        clickedItem = item
        collapse()
    }

    override fun dismiss() {
        clickedItem?.let {
            onItemClickListener?.onBottomSheetItemClick(it)
            clickedItem = null
        }

        super.dismiss()
    }
}
```

## File: src/main/java/com/microsoft/fluentui/bottomsheet/BottomSheetItem.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentui.bottomsheet

import android.content.Context
import android.graphics.Bitmap
import android.os.Parcel
import android.os.Parcelable
import androidx.annotation.ColorInt
import androidx.annotation.DrawableRes
import android.view.View
import com.microsoft.fluentui.drawer.R
import com.microsoft.fluentui.util.ThemeUtil

class BottomSheetItem : Parcelable {
    interface OnClickListener {
        fun onBottomSheetItemClick(item: BottomSheetItem)
    }

    /**
     *  Use [ImageTintType.DEFAULT] to use the default [imageTint]. Use [ImageTintType.CUSTOM] to
     *  customize the [imageTint]. Use [ImageTintType.NONE] to void the [imageTint].
     */
    enum class ImageTintType {
        DEFAULT, CUSTOM, NONE
    }

    val id: Int
    @DrawableRes
    val imageId: Int
    val title: String
    val subtitle: String
    val useDivider: Boolean
    @ColorInt
    val imageTint: Int
    val imageTintType: ImageTintType
    val customBitmap: Bitmap?
    val disabled: Boolean
    @DrawableRes
    val accessoryImageId: Int
    val accessoryBitmap: Bitmap?

    val roleDescription: String
    val customAccessoryView: View?

    @JvmOverloads
    constructor(
        id: Int = NO_ID,
        @DrawableRes imageId: Int = NO_ID,
        title: String,
        subtitle: String = "",
        useDivider: Boolean = false,
        @ColorInt imageTint: Int = 0,
        imageTintType: ImageTintType = ImageTintType.DEFAULT,
        customBitmap: Bitmap? = null,
        disabled: Boolean = false,
        @DrawableRes accessoryImageId: Int = NO_ID,
        accessoryBitmap: Bitmap? = null,
        roleDescription: String = "",
        customAccessoryView: View? = null
    ) {
        this.id = id
        this.imageId = imageId
        this.title = title
        this.subtitle = subtitle
        this.useDivider = useDivider
        this.imageTint = imageTint
        this.imageTintType = imageTintType
        this.customBitmap = customBitmap
        this.disabled = disabled
        this.accessoryImageId = accessoryImageId
        this.accessoryBitmap = accessoryBitmap
        this.roleDescription = roleDescription
        this.customAccessoryView = customAccessoryView
    }

    private constructor(parcel: Parcel) : this(
        id = parcel.readInt(),
        imageId = parcel.readInt(),
        title = parcel.readString() ?: "",
        subtitle = parcel.readString() ?: "",
        useDivider = parcel.readInt() == 1,
        imageTint = parcel.readInt(),
        imageTintType = ImageTintType.values()[parcel.readInt()],
        customBitmap = parcel.readParcelable(Bitmap::class.java.classLoader),
        disabled = parcel.readInt() == 1,
        accessoryImageId = parcel.readInt(),
        accessoryBitmap = parcel.readParcelable(Bitmap::class.java.classLoader),
        roleDescription = parcel.readString() ?: "",
    )

    override fun writeToParcel(parcel: Parcel, flags: Int) {
        parcel.writeInt(id)
        parcel.writeInt(imageId)
        parcel.writeString(title)
        parcel.writeString(subtitle)
        parcel.writeInt(if (useDivider) 1 else 0)
        parcel.writeInt(imageTint)
        parcel.writeInt(imageTintType.ordinal)
        parcel.writeValue(customBitmap)
        parcel.writeInt(if (disabled) 1 else 0)
        parcel.writeInt(accessoryImageId)
        parcel.writeValue(accessoryBitmap)
        parcel.writeString(roleDescription)
    }

    override fun describeContents(): Int = 0
    override fun equals(other: Any?): Boolean {
        if (this === other) return true
        if (javaClass != other?.javaClass) return false

        other as BottomSheetItem

        if (id != other.id) return false
        if (imageId != other.imageId) return false
        if (title != other.title) return false
        if (subtitle != other.subtitle) return false
        if (useDivider != other.useDivider) return false
        if (imageTint != other.imageTint) return false
        if (imageTintType != other.imageTintType) return false
        if (customBitmap != other.customBitmap) return false
        if (disabled != other.disabled) return false
        if (accessoryImageId != other.accessoryImageId) return false
        if (accessoryBitmap != other.accessoryBitmap) return false
        if (roleDescription != other.roleDescription) return false
        if (customAccessoryView != other.customAccessoryView) return false

        return true
    }

    override fun hashCode(): Int {
        var result = id
        result = 31 * result + imageId
        result = 31 * result + title.hashCode()
        result = 31 * result + subtitle.hashCode()
        result = 31 * result + useDivider.hashCode()
        result = 31 * result + imageTint
        result = 31 * result + imageTintType.hashCode()
        result = 31 * result + (customBitmap?.hashCode() ?: 0)
        result = 31 * result + disabled.hashCode()
        result = 31 * result + accessoryImageId.hashCode()
        result = 31 * result + (accessoryBitmap?.hashCode() ?: 0)
        result = 31 * result + roleDescription.hashCode()
        result = 31 * result + (customAccessoryView?.hashCode() ?: 0)
        return result
    }

    companion object {
        const val NO_ID = View.NO_ID

        @JvmField
        val CREATOR = object : Parcelable.Creator<BottomSheetItem> {
            override fun createFromParcel(source: Parcel): BottomSheetItem = BottomSheetItem(source)
            override fun newArray(size: Int): Array<BottomSheetItem?> = arrayOfNulls(size)
        }
    }
}

fun BottomSheetItem.getImageTint(context: Context): Int? {
    return when (imageTintType) {
        BottomSheetItem.ImageTintType.DEFAULT -> ThemeUtil.getThemeAttrColor(context, R.attr.fluentuiBottomSheetIconColor)
        BottomSheetItem.ImageTintType.CUSTOM -> imageTint
        BottomSheetItem.ImageTintType.NONE -> null
    }
}
```

## File: src/main/java/com/microsoft/fluentui/bottomsheet/BottomSheetItemDivider.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentui.bottomsheet

import android.content.Context
import android.graphics.Canvas
import android.graphics.Rect
import androidx.recyclerview.widget.RecyclerView
import android.view.View
import com.microsoft.fluentui.drawer.R
import com.microsoft.fluentui.util.ThemeUtil
import com.microsoft.fluentui.view.BaseDividerItemDecoration
import com.microsoft.fluentui.listitem.ListItemView
import com.microsoft.fluentui.theming.FluentUIContextThemeWrapper

internal class BottomSheetItemDivider(context: Context) : BaseDividerItemDecoration(FluentUIContextThemeWrapper(context,R.style.Theme_FluentUI_Drawer), HORIZONTAL) {
    override fun getItemOffsets(outRect: Rect, view: View, parent: RecyclerView, state: RecyclerView.State) {
        val useDivider = view.getTag(R.id.fluentui_bottom_sheet_item_divider) as? Boolean ?: false
        if (useDivider)
            outRect.set(0, dividerHeight.toInt() + subHeaderDividerPadding.toInt() * 2, 0, 0)
        else
            outRect.setEmpty()
    }

    override fun onDraw(canvas: Canvas, parent: RecyclerView, state: RecyclerView.State) {
        for (index in 0 until parent.childCount) {
            val itemView = parent.getChildAt(index)
            if (itemView is ListItemView) {
                val useDivider = itemView.getTag(R.id.fluentui_bottom_sheet_item_divider) as Boolean
                if (useDivider) {
                    val left =  itemView.left.toFloat()
                    val right = itemView.right.toFloat()
                    drawTopSpacer(canvas, itemView, left, right)
                    drawDivider(
                        canvas,
                        itemView,
                        left,
                        right,
                        true,
                        ThemeUtil.getThemeAttrColor(fluentuiContext, R.attr.fluentuiBottomSheetDividerColor)
                    )
                    drawBottomSpacer(canvas, itemView, left, right)
                }
            }
        }
    }
}
```

## File: src/main/java/com/microsoft/fluentui/drawer/Drawer.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentui.drawer

import android.app.Dialog
import android.content.DialogInterface
import android.os.Bundle
import androidx.annotation.LayoutRes
import androidx.fragment.app.DialogFragment
import androidx.appcompat.app.AppCompatDialogFragment
import android.view.View

// TODO investigate why over scroll "bow" animation is not showing and fix
// TODO add callbacks for Dismiss etc. See iOS implementation
/**
 * [Drawer] is used for displaying an expanding and collapsing modal dialog inside of a Fragment that retains state.
 */
open class Drawer : AppCompatDialogFragment(), OnDrawerContentCreatedListener {
    companion object {
        const val STYLE = DialogFragment.STYLE_NO_TITLE
        private const val CONTENT_LAYOUT_ID = "contentLayoutId"

        /**
         * @param contentLayoutId the layout id of the drawer contents.
         */
        @JvmStatic
        fun newInstance(@LayoutRes contentLayoutId: Int): Drawer {
            val bundle = Bundle()
            bundle.putInt(CONTENT_LAYOUT_ID, contentLayoutId)

            val drawer = Drawer()
            drawer.arguments = bundle
            return drawer
        }
    }

    interface OnDismissListener {
        fun onDrawerDismissListener()
    }

    private var contentLayoutId: Int = 0

    override fun onCreateDialog(savedInstanceState: Bundle?): Dialog {
        val bundle = savedInstanceState ?: arguments
        contentLayoutId = bundle?.getInt(CONTENT_LAYOUT_ID) ?: 0

        val drawerDialog = DrawerDialog(requireContext(), DrawerDialog.BehaviorType.BOTTOM, theme)
        drawerDialog.orientationEventListener.disable()
        drawerDialog.onDrawerContentCreatedListener = this
        drawerDialog.setContentView(contentLayoutId)
        return drawerDialog
    }

    override fun onSaveInstanceState(outState: Bundle) {
        super.onSaveInstanceState(outState)
        outState.putInt(CONTENT_LAYOUT_ID, contentLayoutId)
    }

    override fun onDismiss(dialog: DialogInterface) {
        super.onDismiss(dialog)
        (parentFragment as? OnDismissListener)?.onDrawerDismissListener()
        (activity as? OnDismissListener)?.onDrawerDismissListener()
    }

    override fun onDrawerContentCreated(drawerContents: View) {
        (parentFragment as? OnDrawerContentCreatedListener)?.onDrawerContentCreated(drawerContents)
        (activity as? OnDrawerContentCreatedListener)?.onDrawerContentCreated(drawerContents)
    }
}
```

## File: src/main/java/com/microsoft/fluentui/drawer/DrawerDialog.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentui.drawer

import android.content.Context
import android.content.res.Configuration
import android.graphics.Point
import android.os.Handler
import android.view.*
import androidx.annotation.StyleRes
import com.google.android.material.bottomsheet.BottomSheetBehavior
import androidx.appcompat.app.ActionBar
import androidx.coordinatorlayout.widget.CoordinatorLayout
import androidx.appcompat.app.AppCompatDialog
import com.microsoft.fluentui.drawer.databinding.DialogDrawerBinding
import com.microsoft.fluentui.drawer.databinding.DialogSideDrawerBinding
import com.microsoft.fluentui.drawer.databinding.DialogTopDrawerBinding
import com.microsoft.fluentui.theming.FluentUIContextThemeWrapper
import com.microsoft.fluentui.util.activity
import com.microsoft.fluentui.util.displaySize
import com.microsoft.fluentui.util.statusBarHeight

/**
 * [DrawerDialog] is used for displaying a modal dialog in the form of an expanding and collapsing sheet
 * to which content is added.
 */
open class DrawerDialog @JvmOverloads constructor(context: Context, val behaviorType: BehaviorType = BehaviorType.BOTTOM, @StyleRes theme: Int = 0) : AppCompatDialog(FluentUIContextThemeWrapper(context,R.style.Theme_FluentUI_Drawer), if (theme == 0) R.style.Drawer_FluentUI else theme) {
    companion object {
        private const val DISMISS_THRESHOLD = 0.005f
    }

    enum class BehaviorType {
        BOTTOM,TOP, LEFT, RIGHT
    }

    enum class TitleBehavior {
        DEFAULT, HIDE_TITLE, BELOW_TITLE
    }

    var onDrawerContentCreatedListener: OnDrawerContentCreatedListener? = null

    private var sheetBehavior: CoordinatorLayout.Behavior<View>? = null
    private var currentOrientation = context.resources.configuration.orientation

    var orientationEventListener : OrientationEventListener =
        object : OrientationEventListener(context) {
            override fun onOrientationChanged(orientation: Int) {
                if(this.canDetectOrientation() && getMode(orientation) != Configuration.ORIENTATION_UNDEFINED){
                    if(currentOrientation != getMode(orientation)){
                        dismiss()
                    }
                }
            }
        }

    private fun getMode(orientation: Int) : Int {
        return when (orientation){
            0 -> Configuration.ORIENTATION_PORTRAIT
            90,180,270 -> Configuration.ORIENTATION_LANDSCAPE
            else -> Configuration.ORIENTATION_UNDEFINED
        }
    }


    private val sheetCallback = object : CustomSheetCallback() {
        override fun onStateChanged(bottomSheet: View, newState: Int) {
            if(newState == BottomSheetBehavior.STATE_COLLAPSED) // when state is STATE_COLLAPSED
                dismissDialog()
            if (newState == BottomSheetBehavior.STATE_EXPANDED) {
                if (drawerContent.childCount > 0) {
                    drawerContent.getChildAt(0)?.requestFocus()
                }
            }
        }

        override fun onSlide(bottomSheet: View, slideOffset: Float) {
            if (isExpanded && slideOffset < DISMISS_THRESHOLD && slideOffset > 0)
                dismiss()
        }
    }

    private var isExpanded: Boolean = false
    protected val container: View
    protected val drawerContent: ViewGroup
    private val drawer: View

    /**
     * This field [dimValue] contains dim value of background[0.0 -> no fade, 0.5-> dim, 1.0->opaque]
     * This field [anchorView] contains the anchor view  below which the dialog will appear
     * This field [titleBehavior] stores whether the dialog should  be below title bar or hide titler bar.
     * */
    private var dimValue = 0.5f
    private var anchorView: View? = null
    private var titleBehavior: TitleBehavior = TitleBehavior.DEFAULT

    init {
        when(behaviorType){
            BehaviorType.BOTTOM -> {
                val binding = DialogDrawerBinding.inflate(layoutInflater)
                container = binding.root
                drawerContent = binding.drawerContent
                drawer = binding.drawer
            }
            BehaviorType.TOP -> {
                val binding = DialogTopDrawerBinding.inflate(layoutInflater)
                container = binding.root
                drawerContent = binding.drawerContent
                drawer = binding.drawer
            }
            BehaviorType.RIGHT, BehaviorType.LEFT -> {
                val binding = DialogSideDrawerBinding.inflate(layoutInflater)
                container = binding.root
                drawerContent = binding.drawerContent
                drawer = binding.drawer
            }
        }

        container.setOnClickListener {
            collapse()
        }
        orientationEventListener.enable()
    }

    constructor(context: Context, behaviorType: BehaviorType=BehaviorType.BOTTOM, dimValue: Float=0.5f, anchorView:View?=null, titleBehavior: TitleBehavior=TitleBehavior.DEFAULT, @StyleRes theme: Int = 0) : this(context, behaviorType, theme) {
        this.dimValue = dimValue
        this.anchorView = anchorView
        this.titleBehavior = titleBehavior
        currentOrientation = context.resources.configuration.orientation
    }

    override fun setContentView(layoutResID: Int) {
        val content = layoutInflater.inflate(layoutResID, drawerContent, false)
        setContentView(content)
        onDrawerContentCreatedListener?.onDrawerContentCreated(content)
        sheetBehavior = when (behaviorType) {
            BehaviorType.BOTTOM -> BottomSheetBehavior.from(drawer)
            BehaviorType.TOP -> TopSheetBehavior.from(drawer)
            BehaviorType.RIGHT, BehaviorType.LEFT -> SideSheetBehavior.from(drawer)
        }
    }

    override fun setContentView(view: View) {
        drawerContent.removeAllViews()
        drawerContent.addView(view)
        sheetBehavior = when (behaviorType) {
            BehaviorType.BOTTOM -> BottomSheetBehavior.from(drawer)
            BehaviorType.TOP -> TopSheetBehavior.from(drawer)
            BehaviorType.RIGHT, BehaviorType.LEFT -> SideSheetBehavior.from(drawer)
        }
    }

    override fun show() {
        super.show()
        val expandDelayMilliseconds = context.resources.getInteger(R.integer.fluentui_drawer_fade_in_milliseconds).toLong()
        Handler().postDelayed(::expand, expandDelayMilliseconds)
    }

    override fun dispatchKeyEvent(event: KeyEvent): Boolean {
        if(event?.action == KeyEvent.ACTION_UP  &&  event?.keyCode == KeyEvent.KEYCODE_ESCAPE){
            dismissDialog()
            return true
        }
        return super.dispatchKeyEvent(event)
    }

    override fun onAttachedToWindow() {
        super.onAttachedToWindow()
        var topMargin = 0

        if(anchorView != null || titleBehavior != TitleBehavior.DEFAULT)
            supportRequestWindowFeature(Window.FEATURE_NO_TITLE)

        if(anchorView != null) {
            val screenPos = IntArray(2)
            anchorView?.getLocationOnScreen(screenPos)
            topMargin= screenPos[1]+anchorView!!.height
        }
        else {
            when(titleBehavior) {
                TitleBehavior.HIDE_TITLE -> {
                    topMargin = context.statusBarHeight
                }
                TitleBehavior.BELOW_TITLE -> {
                    val actionBar:ActionBar? = context.activity?.supportActionBar
                    if(actionBar != null)
                        topMargin = context.statusBarHeight+ actionBar.height
                }
                TitleBehavior.DEFAULT -> { }
            }
        }

        val displaySize: Point = context.displaySize
        val layoutParams: WindowManager.LayoutParams? = window?.attributes
        if(behaviorType == BehaviorType.TOP) {
            layoutParams?.gravity = Gravity.TOP
        } else {
            layoutParams?.gravity = Gravity.BOTTOM
        }
        layoutParams?.y = topMargin
        layoutParams?.dimAmount = this.dimValue
        window?.attributes = layoutParams
        window?.setLayout(displaySize.x, displaySize.y-topMargin)

        super.setContentView(container)
        if(anchorView != null){
            container.viewTreeObserver.addOnGlobalLayoutListener {
            /* Adding callback to fix the window position as for few devices displayCut is not null
            * in decorView which somehow got added to drawer position. Here, rebasing the Y value.
            */
                val screenPos = IntArray(2)
                container.getLocationOnScreen(screenPos)
                val containerY = screenPos[1]
                anchorView?.getLocationOnScreen(screenPos)
                val anchorViewY = screenPos[1]
                val expectedY = anchorViewY + (anchorView?.height?:0)
                if(containerY != expectedY){
                    val layoutParams = (window?.attributes as WindowManager.LayoutParams)
                    val topMargin = layoutParams.y - (containerY - anchorViewY) + (anchorView?.height?:0)
                    layoutParams.y = topMargin
                    window?.attributes = layoutParams
                    window?.setLayout(displaySize.x, displaySize.y-topMargin)
                    container.viewTreeObserver.removeOnGlobalLayoutListener {  }
                }
            }
        }

        when(sheetBehavior){
            is BottomSheetBehavior -> (sheetBehavior as BottomSheetBehavior<View>).setBottomSheetCallback(sheetCallback)
            is TopSheetBehavior -> (sheetBehavior as TopSheetBehavior<View>).setTopSheetCallback(sheetCallback)
            is SideSheetBehavior -> {
                (sheetBehavior as SideSheetBehavior<View>).setSideSheetCallBack(sheetCallback)
                (sheetBehavior as SideSheetBehavior<View>).behaviorType = when(behaviorType) {
                    BehaviorType.RIGHT -> SideSheetBehavior.Companion.BehaviorType.RIGHT
                    else -> SideSheetBehavior.Companion.BehaviorType.LEFT
                }
            }
        }
    }

    override fun onBackPressed() {
        super.onBackPressed()
        collapse()
    }

    override fun dismiss() {
        orientationEventListener.disable()
        isExpanded = false
        // Dismiss may be called by external objects so state is set to STATE_COLLAPSED in order for
        // the drawer to animate up
        when(sheetBehavior){
            is BottomSheetBehavior -> {
                (sheetBehavior as BottomSheetBehavior<View>).state = BottomSheetBehavior.STATE_COLLAPSED
                if((sheetBehavior as BottomSheetBehavior<View>).state == BottomSheetBehavior.STATE_COLLAPSED)
                    dismissDialog()
            }
            is TopSheetBehavior -> {
                (sheetBehavior as TopSheetBehavior<View>).setStateOuter(BottomSheetBehavior.STATE_COLLAPSED)
                if((sheetBehavior as TopSheetBehavior<View>).getState() == BottomSheetBehavior.STATE_COLLAPSED)
                    dismissDialog()
            }
            is SideSheetBehavior -> {
                (sheetBehavior as SideSheetBehavior<View>).setStateOuter(BottomSheetBehavior.STATE_COLLAPSED)
                if((sheetBehavior as SideSheetBehavior<View>).getState() == BottomSheetBehavior.STATE_COLLAPSED)
                    dismissDialog()
            }
        }
    }

    fun dismissDialog() {
        super.dismiss()
    }

    private fun expand() {
        // For persistent instances calling requestLayout fixes incorrect positioning of the drawer
        // after rotation from landscape to portrait
        drawer.requestLayout()
        when(sheetBehavior){
            is BottomSheetBehavior -> (sheetBehavior as BottomSheetBehavior<View>).state = BottomSheetBehavior.STATE_EXPANDED
            is TopSheetBehavior -> (sheetBehavior as TopSheetBehavior<View>).setStateOuter(BottomSheetBehavior.STATE_EXPANDED)
            is SideSheetBehavior -> (sheetBehavior as SideSheetBehavior<View>).setStateOuter(BottomSheetBehavior.STATE_EXPANDED)
        }
        isExpanded = true
    }

    protected fun collapse() {
        when(sheetBehavior){
            is BottomSheetBehavior -> (sheetBehavior as BottomSheetBehavior<View>).state = BottomSheetBehavior.STATE_COLLAPSED
            is TopSheetBehavior -> (sheetBehavior as TopSheetBehavior<View>).setStateOuter(BottomSheetBehavior.STATE_COLLAPSED)
            is SideSheetBehavior -> (sheetBehavior as SideSheetBehavior<View>).setStateOuter(BottomSheetBehavior.STATE_COLLAPSED)
        }
    }

    // external method to set dimValue
    fun setFade(x: Float) {
        this.dimValue = x
        this.onAttachedToWindow()
    }
}

interface OnDrawerContentCreatedListener {
    fun onDrawerContentCreated(drawerContents: View)
}

abstract class CustomSheetCallback: BottomSheetBehavior.BottomSheetCallback()
```

## File: src/main/java/com/microsoft/fluentui/drawer/DrawerView.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentui.drawer

import android.content.Context
import android.content.res.TypedArray
import android.graphics.Canvas
import android.graphics.Path
import android.graphics.RectF
import androidx.appcompat.widget.LinearLayoutCompat
import android.util.AttributeSet

internal class DrawerView(context: Context, attrs: AttributeSet) : LinearLayoutCompat(context, attrs) {
    companion object {
        private const val RADII_SIZE = 8
    }

    enum class BehaviorType {
        BOTTOM, TOP, RIGHT, LEFT
    }

    private val clipPath = Path()
    private var cornerRadius: Float
    var behaviorType: BehaviorType

    init {
        val a: TypedArray = context.obtainStyledAttributes(attrs, R.styleable.SheetBehaviorLayout)
        behaviorType = BehaviorType.valueOf(a.getString(R.styleable.SheetBehaviorLayout_fluentui_behaviorType)
                ?: "BOTTOM")
        val drawerTypedArray = context.obtainStyledAttributes(attrs, R.styleable.DrawerView)
        cornerRadius = drawerTypedArray.getDimension(R.styleable.DrawerView_fluentui_cornerRadius, resources.getDimension(R.dimen.fluentui_drawer_corner_radius))
        drawerTypedArray.recycle()
        a.recycle()
    }

    override fun onSizeChanged(width: Int, height: Int, oldWidth: Int, oldHeight: Int) {
        super.onSizeChanged(width, height, oldWidth, oldHeight)
        updateClipPath(width.toFloat(), height.toFloat())
    }

    override fun draw(canvas: Canvas) {
        val save = canvas.save()
        canvas.clipPath(clipPath)
        super.draw(canvas)
        canvas.restoreToCount(save)
    }

    fun setCornerRadius(radius: Float) {
        cornerRadius = radius
        invalidate()
    }

    private fun updateClipPath(width: Float, height: Float) {

        val radii = FloatArray(RADII_SIZE) { 0f }

        when(behaviorType) {
            BehaviorType.BOTTOM -> {
                // top left corner
                radii[0] = cornerRadius
                radii[1] = cornerRadius

                // top right corner
                radii[2] = cornerRadius
                radii[3] = cornerRadius
            }
            BehaviorType.TOP -> {
                // bottom right corner
                radii[4] = cornerRadius
                radii[5] = cornerRadius

                // bottom left corner
                radii[6] = cornerRadius
                radii[7] = cornerRadius
            }
            else -> {
            }
        }

        clipPath.reset()
        clipPath.addRoundRect(RectF(0f, 0f, width, height), radii, Path.Direction.CW)
        clipPath.close()
    }
}
```

## File: src/main/java/com/microsoft/fluentui/drawer/SideSheetBehavior.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentui.drawer

import android.content.Context
import android.content.res.TypedArray
import android.os.Parcel
import android.os.Parcelable
import androidx.coordinatorlayout.widget.CoordinatorLayout
import androidx.core.math.MathUtils
import androidx.core.view.ViewCompat
import android.util.AttributeSet
import android.view.MotionEvent
import android.view.VelocityTracker
import android.view.View
import android.view.ViewConfiguration
import android.view.ViewGroup
import androidx.customview.view.AbsSavedState
import androidx.customview.widget.ViewDragHelper
import com.google.android.material.bottomsheet.BottomSheetBehavior.*
import java.lang.ref.WeakReference
import kotlin.math.abs
import kotlin.math.max
import kotlin.math.min

class SideSheetBehavior<V: View> : CoordinatorLayout.Behavior<V> {
    companion object {
        const val HIDE_THRESHOLD = 0.5F
        const val HIDE_FRICTION = 0.1F

        enum class BehaviorType {
            RIGHT, LEFT
        }

        fun<V : View>from(view: V): SideSheetBehavior<V> {
            val params: ViewGroup.LayoutParams = view.layoutParams
            if(params !is CoordinatorLayout.LayoutParams) {
                throw IllegalArgumentException("This view is not a child of Coordinator Layout")
            }
            else {
                val behavior = params.behavior

                if(behavior !is SideSheetBehavior<*>) {
                    throw IllegalArgumentException("the view is not associated with SideSheetBehavior")
                }
                else {
                    return behavior as SideSheetBehavior<V>
                }
            }
        }
    }

    private var initialX: Int = 0
    private var parentWidth: Int = 0
    private var ignoreEvents: Boolean= false
    private var lastNestedScrollDx: Int =  0
    private var nestedScrolled: Boolean = false
    private var activePointerID: Int = MotionEvent.INVALID_POINTER_ID

    var hideable: Boolean = true
    var skipCollapsed: Boolean = false
    var peekWidth: Int = 0
    private var state: Int = STATE_COLLAPSED

    private var viewDragHelper: ViewDragHelper? = null
    private var maximumVelocity: Float? = null
    private var viewRef: WeakReference<V>? = null
    private var nestedScrollingChildRef: WeakReference<View>? = null
    private var velocityTracker: VelocityTracker? = null
    private var touchingScrollingChild: Boolean? = null
    private var callback: CustomSheetCallback? = null


    private var fitToContents: Boolean = true
    private var fitToContentsOffset: Int = 0
    private var collapsedOffset: Int = 0
    private var halfExpandedOffset: Int = 0
    var behaviorType: BehaviorType = BehaviorType.LEFT

    constructor(context: Context, attrs: AttributeSet? = null): super(context, attrs) {
        val a:TypedArray = context.obtainStyledAttributes(attrs, R.styleable.SheetBehaviorLayout)
        setFitToContents(a.getBoolean(
                R.styleable.SheetBehaviorLayout_fluentui_behaviorFitToContents, true))
        hideable = a.getBoolean(
                R.styleable.SheetBehaviorLayout_fluentui_behaviorHideable, false)
        skipCollapsed = a.getBoolean(
                R.styleable.SheetBehaviorLayout_fluentui_behaviorSkipCollapsed, false)
        peekWidth = a.getDimensionPixelSize(R.styleable.SheetBehaviorLayout_fluentui_behaviorPeekWidth, 0)
        behaviorType = BehaviorType.valueOf(a.getString(R.styleable.SheetBehaviorLayout_fluentui_behaviorType) ?: "RIGHT")
        a.recycle()

        val configuration: ViewConfiguration = ViewConfiguration.get(context)
        maximumVelocity = (configuration.scaledMaximumFlingVelocity).toFloat()
    }

    override fun onSaveInstanceState(parent: CoordinatorLayout, child: V): Parcelable? {
        return SavedState(super.onSaveInstanceState(parent, child)!!, state)
    }

    override fun onRestoreInstanceState(parent: CoordinatorLayout, child: V, state: Parcelable) {
        val ss : SavedState = state as SavedState
        super.onRestoreInstanceState(parent, child, ss.superState!!)

        this.state = if(ss.state != STATE_DRAGGING && ss.state != STATE_SETTLING) ss.state else STATE_COLLAPSED
    }

    override fun onLayoutChild(parent: CoordinatorLayout, child: V, layoutDirection: Int): Boolean {
        if (ViewCompat.getFitsSystemWindows(parent) && !ViewCompat.getFitsSystemWindows(child)) {
            child.fitsSystemWindows = true
        }

        val savedLeft: Int = child.left
        parent.onLayoutChild(child, layoutDirection)
        parentWidth = parent.width
        viewRef = WeakReference(child)

        when(behaviorType) {
            BehaviorType.RIGHT -> {
                fitToContentsOffset = Math.max(0, this.parentWidth- child.width)
                halfExpandedOffset = parentWidth/2
            }
            BehaviorType.LEFT -> {
                fitToContentsOffset = 0
                halfExpandedOffset = -(child.width- parentWidth/2)
            }
        }

        calculateCollapsedOffset()

        when(state) {
            STATE_EXPANDED -> { ViewCompat.offsetLeftAndRight(child, getExpandedOffset()) }
            STATE_HALF_EXPANDED -> { ViewCompat.offsetLeftAndRight(child, halfExpandedOffset) }
            STATE_HIDDEN -> { if(hideable)
                                    { ViewCompat.offsetLeftAndRight(child, if(behaviorType == BehaviorType.RIGHT ) parentWidth else -child.width) }}
            STATE_COLLAPSED -> { ViewCompat.offsetLeftAndRight(child, collapsedOffset) }
            STATE_SETTLING, STATE_DRAGGING -> { ViewCompat.offsetLeftAndRight(child, savedLeft-child.left) }
        }

        if(viewDragHelper == null) {
            viewDragHelper = ViewDragHelper.create(parent, dragCallback);
        }
        nestedScrollingChildRef = if(findScrollingChild(child) != null) WeakReference(this.findScrollingChild(child)!!) else null
        return true
    }

    override fun onInterceptTouchEvent(parent: CoordinatorLayout, child: V, event: MotionEvent): Boolean {
        if(!child.isShown) {
            ignoreEvents = true
            return false
        }

        val action: Int = event.actionMasked
        if(action == 0) {
            reset()
        }

        if(velocityTracker == null) {
            velocityTracker = VelocityTracker.obtain()
        }
        velocityTracker!!.addMovement(event)

        when(action) {
            MotionEvent.ACTION_UP, MotionEvent.ACTION_CANCEL -> {
                touchingScrollingChild = false
                activePointerID = MotionEvent.INVALID_POINTER_ID

                if(ignoreEvents) {
                    ignoreEvents = false
                    return false
                }
            }
            MotionEvent.ACTION_DOWN -> {
                val initialY: Int = event.y.toInt()
                initialX = event.x.toInt()

                val scroll: View? = nestedScrollingChildRef?.get()
                if (scroll != null && parent.isPointInChildBounds(scroll, initialX, initialY)) {
                    activePointerID = event.getPointerId(event.actionIndex)
                    touchingScrollingChild = true
                }
                ignoreEvents = activePointerID == MotionEvent.INVALID_POINTER_ID &&
                        !parent.isPointInChildBounds(child, initialX, initialY)
            }
        }

        if(!ignoreEvents && viewDragHelper!= null && viewDragHelper!!.shouldInterceptTouchEvent(event)) {
            return true
        }

        val scroll:View? = nestedScrollingChildRef?.get()

        return action == MotionEvent.ACTION_MOVE && scroll != null &&
                !ignoreEvents && state != STATE_DRAGGING &&
                !parent.isPointInChildBounds(scroll, event.x.toInt(), event.y.toInt()) &&
                viewDragHelper != null && abs(initialX.minus(event.x)) > viewDragHelper!!.touchSlop
    }

    override fun onTouchEvent(parent: CoordinatorLayout, child: V, event: MotionEvent): Boolean {
        if(!child.isShown) {
            return false
        }

        val action: Int = event.actionMasked
        if(state == STATE_DRAGGING && action == MotionEvent.ACTION_DOWN) {
            return true
        }

        viewDragHelper?.processTouchEvent(event)

        if(action == MotionEvent.ACTION_MOVE && !ignoreEvents) {
            if (Math.abs(initialX.minus(event.x).toFloat()) > viewDragHelper!!.touchSlop.toFloat()) {
                viewDragHelper!!.captureChildView(child, event.getPointerId(event.actionIndex))
            }
        }
        return  !ignoreEvents
    }

    override fun onStartNestedScroll(coordinatorLayout: CoordinatorLayout, child: V, directTargetChild: View, target: View, axes: Int, type: Int): Boolean {
        lastNestedScrollDx = 0
        nestedScrolled = false

        return (axes and ViewCompat.SCROLL_AXIS_HORIZONTAL) != 0
    }

    override fun onNestedPreScroll(coordinatorLayout: CoordinatorLayout, child: V, target: View,
                                   dx: Int, dy: Int, consumed: IntArray, type: Int) {
        if(type != 1) {
            val scrollingChild: View? = this.nestedScrollingChildRef?.get()

            if(target == scrollingChild) {
                val currentLeft: Int = child.left
                val newLeft: Int = currentLeft - dx

                when(behaviorType) {
                    BehaviorType.RIGHT -> {
                        if(dx > 0) {
                            if(newLeft < getExpandedOffset()) {
                                consumed[1] = currentLeft - getExpandedOffset()
                                ViewCompat.offsetLeftAndRight(child, -consumed[1]);
                                setStateInternal(STATE_EXPANDED)
                            }
                            else {
                                consumed[1] = dx
                                ViewCompat.offsetLeftAndRight(child, -consumed[1])
                                setStateInternal(STATE_DRAGGING)
                            }
                        }
                        else if(dx <0 && !target.canScrollHorizontally(-1)) {
                            if(newLeft > collapsedOffset && !hideable) {
                                consumed[1] = currentLeft - collapsedOffset
                                ViewCompat.offsetLeftAndRight(child, -consumed[1])
                                setStateInternal(STATE_COLLAPSED)
                            }
                            else {
                                consumed[1] = dx
                                ViewCompat.offsetLeftAndRight(child, -consumed[1])
                                setStateInternal(STATE_DRAGGING)
                            }
                        }
                    }

                    BehaviorType.LEFT -> {
                        if(dx < 0) {
                            if(newLeft < getExpandedOffset()) {
                                consumed[1] = dx
                                ViewCompat.offsetLeftAndRight(child, -dx)
                                setStateInternal(STATE_DRAGGING)
                            }
                            else {
                                consumed[1] = currentLeft - getExpandedOffset()
                                ViewCompat.offsetLeftAndRight(child, -consumed[1])
                                setStateInternal(STATE_EXPANDED)
                            }
                        }
                        else if(dx > 0 && !target.canScrollHorizontally(1)) {
                            if(newLeft >= collapsedOffset || hideable) {
                                consumed[1] = dy
                                ViewCompat.offsetLeftAndRight(child, -dy)
                                setStateInternal(STATE_DRAGGING)
                            }
                            else {
                                consumed[1] = currentLeft - collapsedOffset
                                ViewCompat.offsetLeftAndRight(child, -consumed[1])
                                setStateInternal(STATE_COLLAPSED)
                            }
                        }
                    }
                }

                dispatchOnSlide(child.left)
                lastNestedScrollDx = dx
                nestedScrolled = true
            }
        }
    }

    override fun onStopNestedScroll(coordinatorLayout: CoordinatorLayout, child: V, target: View, type: Int) {
        if(child.left == getExpandedOffset()) {
            setStateInternal(STATE_EXPANDED)
        }
        else if(target == nestedScrollingChildRef?.get() && nestedScrolled) {
            val left:Int
            val targetState:Int

            when(behaviorType) {
                BehaviorType.RIGHT -> {
                    if(lastNestedScrollDx > 0) {
                        left = getExpandedOffset()
                        targetState = STATE_EXPANDED
                    }
                    else if(hideable && shouldHide(child, getXVelocity())) {
                        left = parentWidth
                        targetState = STATE_HIDDEN
                    }
                    else if(lastNestedScrollDx == 0) {
                        val currentLeft: Int = child.left
                        if(fitToContents) {
                            if(abs(currentLeft.minus(fitToContentsOffset)) < abs(currentLeft.minus(collapsedOffset))) {
                                left = fitToContentsOffset
                                targetState = STATE_EXPANDED
                            }
                            else {
                                left = collapsedOffset
                                targetState = STATE_COLLAPSED
                            }
                        }
                        else if(currentLeft < halfExpandedOffset) {
                            if(currentLeft < abs(currentLeft.minus(collapsedOffset))) {
                                left = getExpandedOffset()
                                targetState = STATE_EXPANDED
                            }
                            else {
                                left = halfExpandedOffset
                                targetState = STATE_HALF_EXPANDED
                            }
                        }
                        else if(abs(currentLeft.minus(halfExpandedOffset)) < abs(currentLeft.minus(collapsedOffset))) {
                            left = halfExpandedOffset
                            targetState = STATE_HALF_EXPANDED
                        }
                        else {
                            left = collapsedOffset
                            targetState = STATE_DRAGGING
                        }
                    }
                    else {
                        left = collapsedOffset
                        targetState = STATE_COLLAPSED
                    }
                }
                // BehaviorType.LEFT
                else -> {
                    if(lastNestedScrollDx < 0) {
                        left = getExpandedOffset()
                        targetState = STATE_EXPANDED
                    }
                    else if(hideable && shouldHide(child,getXVelocity())) {
                        left = -child.width
                        targetState = STATE_HIDDEN
                    }
                    else if(lastNestedScrollDx == 0) {
                        val currentLeft: Int = child.left
                        val currentRight: Int = child.right

                        if(fitToContents) {
                            if (abs(currentLeft.minus(collapsedOffset)) > abs(currentLeft.minus(fitToContentsOffset))) {
                                left = fitToContentsOffset
                                targetState = STATE_EXPANDED
                            } else {
                                left = collapsedOffset
                                targetState = STATE_COLLAPSED
                            }
                        }
                        else if(currentRight > parentWidth/2) {
                            if(abs(currentRight.minus(parentWidth)) > abs(currentRight.minus(parentWidth/2.0)) ) {
                                left = halfExpandedOffset
                                targetState = STATE_HALF_EXPANDED
                            }
                            else {
                                left = getExpandedOffset()
                                targetState = STATE_EXPANDED
                            }
                        }
                        else if(abs(currentRight.minus(parentWidth/2)) < abs(currentRight.minus(peekWidth))) {
                            left = halfExpandedOffset
                            targetState = STATE_HALF_EXPANDED
                        }
                        else {
                            left = collapsedOffset
                            targetState = STATE_COLLAPSED
                        }
                    }
                    else {
                        left = collapsedOffset
                        targetState = STATE_COLLAPSED
                    }
                }
            }

            if(viewDragHelper!!.smoothSlideViewTo(child, left, child.top)) {
                setStateInternal(STATE_SETTLING)
                ViewCompat.postOnAnimation(child, SettleRunnable(child, targetState))
            }
            else {
                setStateInternal(targetState)
            }
            nestedScrolled = false
        }
    }

    override fun onNestedFling(coordinatorLayout: CoordinatorLayout, child: V, target: View, velocityX: Float, velocityY: Float, consumed: Boolean): Boolean {
        return target == nestedScrollingChildRef?.get() && (state != STATE_EXPANDED ||
                super.onNestedPreFling(coordinatorLayout, child, target, velocityX, velocityY))
    }

    fun setFitToContents(fitToContents:Boolean) {
        if(this.fitToContents != fitToContents) {
            this.fitToContents = fitToContents

            if(viewRef != null) {
                calculateCollapsedOffset()
            }
            setStateInternal(if(fitToContents && state == 6) 3 else state)
        }
    }

    fun getState(): Int {
        return this.state
    }

    private fun calculateCollapsedOffset() {
        collapsedOffset = when(behaviorType) {
            BehaviorType.RIGHT -> {
                if(fitToContents) max(parentWidth-peekWidth, fitToContentsOffset) else (parentWidth-peekWidth)
            }
            BehaviorType.LEFT -> {
                if(viewRef == null)
                    return
                if(fitToContents) {
                    min(-(viewRef!!.get()!!.width-peekWidth), fitToContentsOffset)
                }
                else {
                    -(viewRef!!.get()!!.width-peekWidth)
                }
            }
        }
    }

    fun getExpandedOffset(): Int {
        return when(behaviorType) {
            BehaviorType.RIGHT -> { if(fitToContents) fitToContentsOffset else 0 }
            else -> { if(fitToContents) fitToContentsOffset else {if(viewRef!= null && viewRef!!.get()!!.width > parentWidth) 0 else  (parentWidth- viewRef!!.get()!!.width)} }
        }
    }

    fun isHideable(): Boolean {
        return hideable
    }

    fun setSideSheetCallBack(callback: CustomSheetCallback)  {
        this.callback = callback
    }

    fun setStateInternal(st:Int) {
        if(state == st)
            return
        state = st
        val sideSheet: View? = viewRef?.get() as View

        if(sideSheet != null && callback != null) {
            callback!!.onStateChanged(sideSheet, state)
        }
    }

    private fun reset() {
        activePointerID = ViewDragHelper.INVALID_POINTER
        if (velocityTracker != null) {
            velocityTracker!!.recycle()
            velocityTracker = null
        }
    }

    fun shouldHide(child: View, xvel: Float): Boolean {
        if(skipCollapsed) {
            return true
        }

        when(behaviorType) {
            BehaviorType.RIGHT -> {
                if (child.left < collapsedOffset) {
                    return false
                }
            }
            BehaviorType.LEFT -> {
                if (child.left > collapsedOffset) {
                    return false
                }
            }
        }
        val newLeft: Float = child.left.toFloat() + xvel * HIDE_FRICTION
        return abs(newLeft.minus(collapsedOffset)).div(peekWidth) > HIDE_THRESHOLD
    }

    private fun findScrollingChild(view: View?): View? {
        if(view == null)
            return null

        if (ViewCompat.isNestedScrollingEnabled(view)) {
            return view
        } else {
            if (view is ViewGroup) {
                val group: ViewGroup = view

                for (i in 0..group.childCount) {
                    val scrollingChild: View? = findScrollingChild(group.getChildAt((i)))

                    if (scrollingChild != null) {
                        return scrollingChild
                    }
                }
            }
        }
        return null
    }

    private val dragCallback: ViewDragHelper.Callback = object : ViewDragHelper.Callback() {
        override fun tryCaptureView(child: View, pointerID: Int): Boolean {
            if (state == STATE_DRAGGING) {
                return false
            }
            if (touchingScrollingChild!!) {
                return false
            }
            if (state == STATE_EXPANDED && activePointerID == pointerID) {
                val scroll: View? = nestedScrollingChildRef?.get()

                if(scroll != null) {
                    when(behaviorType) {
                        BehaviorType.RIGHT -> { if(scroll.canScrollHorizontally(-1)) return false }
                        BehaviorType.LEFT -> { if(scroll.canScrollHorizontally(1)) return  false}
                    }
                }
            }
            return viewRef != null && viewRef?.get() == child
        }

        override fun onViewPositionChanged(changedView: View, left: Int, top: Int, dx: Int, dy: Int) {
            dispatchOnSlide(left)
        }

        override fun onViewDragStateChanged(st: Int) {
            if (st == ViewDragHelper.STATE_DRAGGING) {
                setStateInternal(STATE_DRAGGING)
            }
        }

        override fun onViewReleased(releasedChild: View, xvel: Float, yvel: Float) {
            val left: Int
            val targetState: Int
            val currentLeft: Int = releasedChild.left
            val currentRight: Int = releasedChild.right

            when(behaviorType) {
                BehaviorType.RIGHT -> {
                    if (xvel < 0.0F) {
                        if(fitToContents) {
                            left = fitToContentsOffset
                            targetState = STATE_EXPANDED
                        }
                        else {
                            if(currentLeft > halfExpandedOffset) {
                                left = halfExpandedOffset
                                targetState = STATE_HALF_EXPANDED
                            }
                            else {
                                left = 0
                                targetState = STATE_EXPANDED
                            }
                        }
                    }
                    else if (!hideable || !shouldHide(releasedChild, xvel) || releasedChild.left <= collapsedOffset && abs(yvel) >= abs(xvel)) {
                        if(xvel != 0.0F && abs(yvel) <= abs(xvel)) {
                            left = collapsedOffset
                            targetState = STATE_COLLAPSED
                        }
                        else {
                            if(fitToContents) {
                                if (abs(currentLeft.minus(fitToContentsOffset)) < abs(currentLeft.minus(collapsedOffset))) {
                                    left = fitToContentsOffset
                                    targetState = STATE_EXPANDED
                                } else {
                                    left  = collapsedOffset
                                    targetState = STATE_COLLAPSED
                                }
                            }
                            else if(currentLeft < halfExpandedOffset){
                                if(currentLeft < abs(currentLeft.minus(collapsedOffset)) ) {
                                    left = 0
                                    targetState = STATE_EXPANDED
                                }
                                else {
                                    left = halfExpandedOffset
                                    targetState = STATE_HALF_EXPANDED
                                }
                            }
                            else if(abs(currentLeft.minus(halfExpandedOffset)) < abs(currentLeft.minus(collapsedOffset))) {
                                left = halfExpandedOffset
                                targetState = STATE_HALF_EXPANDED
                            }
                            else {
                                left = collapsedOffset
                                targetState = STATE_COLLAPSED
                            }
                        }
                    }
                    else {
                        left = parentWidth
                        targetState = STATE_HIDDEN
                    }
                }
                //BehaviorType.LEFT
                else -> {
                    if (xvel > 0.0F) {
                        if(fitToContents) {
                            left = fitToContentsOffset
                            targetState = STATE_EXPANDED
                        }
                        else {
                            if(abs(currentRight.minus(parentWidth)) > abs(currentRight.minus(parentWidth/2.0)) ) {
                                left = halfExpandedOffset
                                targetState = STATE_HALF_EXPANDED
                            }
                            else {
                                left = getExpandedOffset()
                                targetState = STATE_EXPANDED
                            }
                        }
                    }
                    else if (!hideable || !shouldHide(releasedChild, xvel) || releasedChild.left >= collapsedOffset && abs(yvel) >= abs(xvel)) {
                        if(xvel != 0.0F && abs(yvel) <= abs(xvel)) {
                            left = collapsedOffset
                            targetState = STATE_COLLAPSED
                        }
                        else {
                            if(fitToContents) {
                                if (abs(currentLeft.minus(collapsedOffset)) > abs(currentLeft.minus(getExpandedOffset()))) {
                                    left = fitToContentsOffset
                                    targetState = STATE_EXPANDED
                                } else {
                                    left  = collapsedOffset
                                    targetState = STATE_COLLAPSED
                                }
                            }
                            else if(currentLeft > parentWidth/2.0){
                                if(abs(currentLeft.minus(parentWidth)) > abs(currentLeft.minus(parentWidth/2.0)) ) {
                                    left = halfExpandedOffset
                                    targetState = STATE_HALF_EXPANDED
                                }
                                else {
                                    left = getExpandedOffset()
                                    targetState = STATE_EXPANDED
                                }
                            }
                            else if(abs(currentLeft.minus(parentWidth/2.0)) < abs(currentLeft.minus(peekWidth))) {
                                left = halfExpandedOffset
                                targetState = STATE_HALF_EXPANDED
                            }
                            else {
                                left = collapsedOffset
                                targetState = STATE_COLLAPSED
                            }
                        }
                    }
                    else {
                        left = -viewRef!!.get()!!.width
                        targetState = STATE_HIDDEN
                    }
                }
            }

            if (viewDragHelper!!.settleCapturedViewAt(left, releasedChild.top)) {
                setStateInternal(STATE_SETTLING)
                ViewCompat.postOnAnimation(releasedChild, SettleRunnable(releasedChild, targetState))
            } else {
                setStateInternal(targetState)
            }
        }

        override fun clampViewPositionVertical(child: View, top: Int, dy: Int): Int {
            return child.top
        }

        override fun clampViewPositionHorizontal(child: View, left: Int, dx: Int): Int {
            return when(behaviorType) {
                BehaviorType.RIGHT -> { MathUtils.clamp(left, getExpandedOffset(), if(hideable) parentWidth else collapsedOffset) }
                else -> { MathUtils.clamp(left, if (hideable) -child.width else collapsedOffset, getExpandedOffset()) }
            }
        }

        override fun getViewHorizontalDragRange(child: View): Int {
            return when(behaviorType) {
                BehaviorType.RIGHT -> { if(hideable) parentWidth else collapsedOffset }
                else -> { if(hideable) child.width else getExpandedOffset().minus(collapsedOffset)}
            }
        }

    }

    private fun dispatchOnSlide(left: Int) {
        val sideSheet: View? = viewRef?.get() as View

        if (sideSheet != null && callback != null) {
            when(behaviorType) {
                BehaviorType.RIGHT -> {
                    if (left > collapsedOffset) {
                        callback!!.onSlide(sideSheet, (collapsedOffset - left).div((parentWidth-collapsedOffset).toFloat()))
                    } else {
                        callback!!.onSlide(sideSheet, (collapsedOffset - left).div((collapsedOffset- getExpandedOffset()).toFloat()))
                    }
                }

                BehaviorType.LEFT -> {
                    if (left < collapsedOffset) {
                        callback!!.onSlide(sideSheet, (left-collapsedOffset).div(peekWidth.toFloat()))
                    } else {
                        callback!!.onSlide(sideSheet, (left-collapsedOffset).div((getExpandedOffset()-collapsedOffset).toFloat()))
                    }
                }
            }

        }
    }

    private inner class SettleRunnable(val view: View, val TargetState: Int) : Runnable {
        override fun run() {
            if (viewDragHelper != null && viewDragHelper!!.continueSettling(true)) {
                ViewCompat.postOnAnimation(view, this)
            } else {
                setStateInternal(TargetState)
            }
        }
    }

    private fun getXVelocity(): Float {
        return if(velocityTracker == null) { 0.0F }
            else {
                velocityTracker!!.computeCurrentVelocity(1000, maximumVelocity!!)
                velocityTracker!!.getXVelocity(activePointerID)
            }
    }

    internal class SavedState : AbsSavedState {
        val state: Int

        constructor(parcel: Parcel, loader: ClassLoader?) : super(parcel, loader) {
            state = parcel.readInt()
        }
        constructor(superState: Parcelable, state: Int) : super(superState) {
            this.state = state
        }

        override fun writeToParcel(out: Parcel, flags: Int) {
            super.writeToParcel(out, flags)
            out.writeInt(state)
        }

        companion object {
            @JvmField
            val CREATOR: Parcelable.Creator<SavedState> = object : Parcelable.ClassLoaderCreator<SavedState> {
                override fun createFromParcel(parcel : Parcel, loader: ClassLoader): SavedState {
                    return SavedState(parcel, loader)
                }
                override fun createFromParcel(parcel: Parcel): SavedState {
                    return SavedState(parcel, null as ClassLoader?)
                }
                override fun newArray(size: Int): Array<SavedState?> {
                    return arrayOfNulls(size)
                }
            }
        }
    }

    private fun startSettlingAnimation(child: View, st: Int) {
        var left:Int

        when(st) {
            STATE_COLLAPSED -> { left = collapsedOffset }
            STATE_HALF_EXPANDED -> {
                left = halfExpandedOffset

                if(fitToContents) {
                    if((behaviorType == BehaviorType.RIGHT && left <= fitToContentsOffset) || (behaviorType == BehaviorType.LEFT && left >= fitToContentsOffset)) {
                        state = STATE_EXPANDED
                        left = fitToContentsOffset
                    }
                }
            }
            STATE_EXPANDED -> { left = getExpandedOffset() }
            else -> {
                if(!hideable || state != STATE_HIDDEN) {
                    throw IllegalArgumentException("Illegal state argument: $st")
                }

                left = when(behaviorType) {
                    BehaviorType.RIGHT -> { parentWidth }
                    else -> { -child.width }
                }
            }
        }

        if(viewDragHelper!!.smoothSlideViewTo(child, left, child.top)) {
            setStateInternal(STATE_SETTLING)
            ViewCompat.postOnAnimation(child, SettleRunnable(child, st))
        }
        else {
            setStateInternal(st)
        }
    }

    fun setStateOuter(value: Int) {
        if(viewRef == null) {
            if (value == STATE_COLLAPSED || value == STATE_EXPANDED || value == STATE_HIDDEN) {
                state = value
            }
        }
        else {
            val child:V? = viewRef?.get() ?: return
            startSettlingAnimation(child!!, value)
        }
    }
}
```

## File: src/main/java/com/microsoft/fluentui/drawer/TopSheetBehavior.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentui.drawer

import android.content.Context
import android.content.res.TypedArray
import android.os.Parcel
import android.os.Parcelable
import android.os.Parcelable.ClassLoaderCreator
import androidx.coordinatorlayout.widget.CoordinatorLayout
import androidx.core.math.MathUtils
import androidx.core.view.ViewCompat
import android.util.AttributeSet
import android.view.MotionEvent
import android.view.VelocityTracker
import android.view.View
import android.view.ViewConfiguration
import android.view.ViewGroup
import androidx.customview.view.AbsSavedState
import androidx.customview.widget.ViewDragHelper
import com.google.android.material.bottomsheet.BottomSheetBehavior.*
import java.lang.ref.WeakReference
import kotlin.math.abs
import kotlin.math.min

class TopSheetBehavior<V : View> : CoordinatorLayout.Behavior<V> {
    companion object {
        const val HIDE_THRESHOLD = 0.5F
        const val HIDE_FRICTION = 0.1F

        fun <V : View> from(view: V): TopSheetBehavior<V> {
            val params: ViewGroup.LayoutParams = view.layoutParams
            if(params !is CoordinatorLayout.LayoutParams) {
                throw IllegalArgumentException("This view is not a child of Coordinator Layout")
            }
            else {
                val behavior = params.behavior

                if(!(behavior is TopSheetBehavior<*>)) {
                    throw  IllegalArgumentException("The view is not associated with TopSheetBehavior")
                }
                else {
                    return behavior as TopSheetBehavior<V>
                }
            }
        }
    }

    private var initialY: Int = 0
    private var parentHeight: Int = 0
    private var ignoreEvents: Boolean = false
    private var lastNestedScrollDy: Int = 0
    private var nestedScrolled: Boolean = false
    private var activePointerId: Int = MotionEvent.INVALID_POINTER_ID

    var hideable: Boolean = true
    var skipCollapsed: Boolean = false

    private var state: Int = STATE_COLLAPSED

    private var viewDragHelper: ViewDragHelper? = null
    private var maximumVelocity: Float? = null
    private var viewRef: WeakReference<V>? = null
    private var nestedScrollingChildRef: WeakReference<View>? = null
    private var velocityTracker: VelocityTracker? = null
    private var touchingScrollingChild: Boolean? = null
    private var callback: CustomSheetCallback? = null

    private var peekHeight: Int = -1
    private var peekHeightAuto: Boolean = false
    private var lastPeekHeight: Int = 0
    private var fitToContents: Boolean = false
    private var fitToContentsOffset: Int = 0
    private var collapsedOffset: Int = 0
    private var halfExpandedOffset: Int = 0

    constructor(context: Context, attrs: AttributeSet? = null) : super(context, attrs) {
        val a: TypedArray = context.obtainStyledAttributes(attrs,
                R.styleable.SheetBehaviorLayout)

        setPeekHeight(a.getDimensionPixelSize(
                R.styleable.SheetBehaviorLayout_fluentui_behaviorPeekHeight, -1))
        setFitToContents(a.getBoolean(
                R.styleable.SheetBehaviorLayout_fluentui_behaviorFitToContents, true))
        hideable = a.getBoolean(
                R.styleable.SheetBehaviorLayout_fluentui_behaviorHideable, false)
        skipCollapsed = a.getBoolean(
                R.styleable.SheetBehaviorLayout_fluentui_behaviorSkipCollapsed, false)
        a.recycle()

        val configuration: ViewConfiguration = ViewConfiguration.get(context)
        maximumVelocity = (configuration.scaledMaximumFlingVelocity).toFloat()
    }

    override fun onSaveInstanceState(parent: CoordinatorLayout, child: V): Parcelable? {
        return SavedState(super.onSaveInstanceState(parent, child)!!, state);
    }

    override fun onRestoreInstanceState(parent: CoordinatorLayout, child: V, st: Parcelable) {
        val ss : SavedState = st as SavedState
        super.onRestoreInstanceState(parent, child, ss.superState!!)

        if(ss.state != STATE_DRAGGING && ss.state != STATE_SETTLING) {
            this.state = ss.state
        }
        else {
            this.state = STATE_COLLAPSED
        }
    }

    override fun onLayoutChild(parent: CoordinatorLayout, child: V, layoutDirection: Int): Boolean {
        if (ViewCompat.getFitsSystemWindows(parent) && !ViewCompat.getFitsSystemWindows(child)) {
            child.fitsSystemWindows = true
        }

        val savedTop: Int = child.top
        parent.onLayoutChild(child, layoutDirection)
        parentHeight = parent.height
        viewRef = WeakReference(child)

        lastPeekHeight = if(peekHeightAuto) { parentHeight - parent.width * 9 / 16 } else peekHeight
        fitToContentsOffset = 0
        halfExpandedOffset = -(child.height - parentHeight/2)
        calculateCollapsedOffset()

        when(state) {
            STATE_EXPANDED -> { ViewCompat.offsetTopAndBottom(child, getExpandedOffset()) }
            STATE_HALF_EXPANDED -> { ViewCompat.offsetTopAndBottom(child, halfExpandedOffset) }
            STATE_HIDDEN -> { if(hideable) { ViewCompat.offsetTopAndBottom(child, -child.height) }}
            STATE_COLLAPSED -> { ViewCompat.offsetTopAndBottom(child, collapsedOffset) }
            STATE_SETTLING, STATE_DRAGGING -> { ViewCompat.offsetTopAndBottom(child,savedTop - child.top) }
        }

        if (viewDragHelper == null) {
            viewDragHelper = ViewDragHelper.create(parent, dragCallback);
        }
        nestedScrollingChildRef = if(findScrollingChild(child) != null) WeakReference(this.findScrollingChild(child)!!) else null
        return true
    }

    override fun onInterceptTouchEvent(parent: CoordinatorLayout, child: V, event: MotionEvent): Boolean {
        if (!child.isShown) {
            this.ignoreEvents = true
            return false
        }
        else {
            val action: Int = event.actionMasked
            if (action == 0) {
                this.reset()
            }

            if (this.velocityTracker == null) {
                this.velocityTracker = VelocityTracker.obtain()
            }
            this.velocityTracker!!.addMovement(event)

            when (action) {
                MotionEvent.ACTION_UP, MotionEvent.ACTION_CANCEL-> {
                    this.touchingScrollingChild = false
                    activePointerId = MotionEvent.INVALID_POINTER_ID

                    if (ignoreEvents) {
                        ignoreEvents = false
                        return false
                    }
                }

                MotionEvent.ACTION_DOWN -> {
                    val initialX: Int = event.x.toInt()
                    initialY = event.y.toInt()

                    val scroll: View? = nestedScrollingChildRef?.get()

                    if (scroll != null && parent.isPointInChildBounds(scroll, initialX, initialY)) {
                        activePointerId = event.getPointerId(event.actionIndex)
                        touchingScrollingChild = true
                    }
                    ignoreEvents = activePointerId == MotionEvent.INVALID_POINTER_ID &&
                            !parent.isPointInChildBounds(child, initialX, initialY)
                }

            }

            if (!ignoreEvents && viewDragHelper!= null && viewDragHelper?.shouldInterceptTouchEvent(event)!!) {
                return true
            }

            val scroll: View? = nestedScrollingChildRef?.get()

            return action == MotionEvent.ACTION_MOVE && scroll != null &&
                    !ignoreEvents && state != STATE_DRAGGING &&
                    !parent.isPointInChildBounds(scroll, event.x.toInt(), event.y.toInt()) &&
                    viewDragHelper != null && abs(initialY.minus(event.y)) > viewDragHelper!!.touchSlop
        }
    }

    override fun onTouchEvent(parent: CoordinatorLayout, child: V, event: MotionEvent): Boolean {
        if (!child.isShown) {
            return false
        }
        else {
            val action: Int = event.actionMasked
            if (state == STATE_DRAGGING && action == MotionEvent.ACTION_DOWN) {
                return true
            }

            viewDragHelper?.processTouchEvent(event)

            if (action == MotionEvent.ACTION_DOWN) {
                reset()
            }

            if (velocityTracker == null) {
                velocityTracker = VelocityTracker.obtain()
            }
            velocityTracker!!.addMovement(event)

            if (action == MotionEvent.ACTION_MOVE && !ignoreEvents) {
                if (abs(initialY.minus(event.y.toFloat())) > viewDragHelper!!.touchSlop.toFloat()) {
                    viewDragHelper!!.captureChildView(child, event.getPointerId(event.actionIndex))
                }
            }
            return !ignoreEvents
        }
    }

    override fun onStartNestedScroll(coordinatorLayout: CoordinatorLayout, child: V, directTargetChild: View, target: View, axes: Int, type: Int): Boolean {
        lastNestedScrollDy = 0
        nestedScrolled = false

        return (axes and ViewCompat.SCROLL_AXIS_VERTICAL) != 0
    }

    override fun onNestedPreScroll(coordinatorLayout: CoordinatorLayout, child: V, target: View,
                                   dx: Int, dy: Int, consumed: IntArray, type: Int) {
        if (type != 1) {
            val scrollingChild: View? = this.nestedScrollingChildRef?.get()

            if (target == scrollingChild) {
                val currentTop: Int = child.top
                val newTop: Int = currentTop - dy;

                if (dy < 0) {
                    if (newTop < getExpandedOffset()) {
                        consumed[1] = dy
                        ViewCompat.offsetTopAndBottom(child, -dy);
                        setStateInternal(STATE_DRAGGING)
                    } else {
                        consumed[1] = currentTop - getExpandedOffset()
                        ViewCompat.offsetTopAndBottom(child, -consumed[1]);
                        setStateInternal(STATE_EXPANDED)
                    }
                }
                else if (dy > 0 && !target.canScrollVertically(1)) {
                        if (newTop >= collapsedOffset || hideable) {
                            consumed[1] = dy
                            ViewCompat.offsetTopAndBottom(child, -dy)
                            setStateInternal(STATE_DRAGGING)
                        } else {
                            consumed[1] = currentTop - collapsedOffset
                            ViewCompat.offsetTopAndBottom(child, -consumed[1]);
                            setStateInternal(STATE_COLLAPSED)
                        }
                }

                dispatchOnSlide(child.top)
                lastNestedScrollDy = dy
                nestedScrolled = true
            }
        }
    }

    override fun onStopNestedScroll(coordinatorLayout: CoordinatorLayout, child: V, target: View) {
        if (child.top == getExpandedOffset()) {
            setStateInternal(STATE_EXPANDED)
        }
        else if (target == nestedScrollingChildRef?.get() && nestedScrolled) {
            val top: Int
            val targetState: Int

            if (lastNestedScrollDy < 0) {
                top = getExpandedOffset()
                targetState = STATE_EXPANDED
            } else if (hideable && shouldHide(child, getYVelocity())) {
                top = -child.height
                targetState = STATE_HIDDEN
            } else if (lastNestedScrollDy == 0) {
                val currentTop: Int = child.top
                val currentBottom: Int = child.bottom

                if (this.fitToContents) {
                    if (abs(currentTop.minus(collapsedOffset)) > abs(currentTop.minus(fitToContentsOffset))) {
                        top = fitToContentsOffset
                        targetState = STATE_EXPANDED
                    } else {
                        top = collapsedOffset
                        targetState = STATE_COLLAPSED
                    }
                }
                else if(currentBottom > parentHeight/2){
                    if(abs(currentBottom.minus(parentHeight)) > abs(currentBottom.minus(parentHeight/2.0)) ) {
                        top = halfExpandedOffset
                        targetState = STATE_HALF_EXPANDED
                    }
                    else {
                        top = getExpandedOffset()
                        targetState = STATE_EXPANDED
                    }
                }
                else if(abs(currentBottom.minus(parentHeight/2)) < abs(currentBottom.minus(peekHeight))) {
                    top = halfExpandedOffset
                    targetState = STATE_HALF_EXPANDED
                }
                else {
                    top = collapsedOffset
                    targetState = STATE_COLLAPSED
                }
            } else {
                top = collapsedOffset
                targetState = STATE_COLLAPSED
            }

            if (viewDragHelper!!.smoothSlideViewTo(child, child.left, top)) {
                setStateInternal(STATE_SETTLING)
                ViewCompat.postOnAnimation(child, SettleRunnable(child, targetState))
            } else {
                setStateInternal(targetState)
            }
            nestedScrolled = false
        }
    }

    override fun onNestedPreFling(coordinatorLayout: CoordinatorLayout, child: V,
                                  target: View, velocityX: Float, velocityY: Float): Boolean {
        return target == nestedScrollingChildRef!!.get() && (state != STATE_EXPANDED ||
                super.onNestedPreFling(coordinatorLayout, child, target, velocityX, velocityY))
    }

    fun getPeekHeight(): Int {
        return peekHeight
    }

    fun isHideable(): Boolean {
        return hideable
    }

    fun setFitToContents(fitToContents: Boolean) {
        if(this.fitToContents != fitToContents) {
            this.fitToContents = fitToContents

            if(viewRef != null) {
                calculateCollapsedOffset()
            }
            setStateInternal(if(fitToContents && state == 6) 3 else state)
        }
    }

    fun setPeekHeight(peekHeight: Int) {
        var layout = false
        if (peekHeight == -1) {
            if (!peekHeightAuto) {
                peekHeightAuto = true
                layout = true
            }
        } else if (peekHeightAuto || this.peekHeight != peekHeight) {
            peekHeightAuto = false
            this.peekHeight = Math.max(0, peekHeight)
            if(viewRef != null)
                collapsedOffset = -(viewRef!!.get()!!.height-peekHeight)
            layout = true
        }

        if (layout && state == 4 && viewRef != null) {
            viewRef!!.get()?.requestLayout()
        }
    }

    fun setTopSheetCallback(callback: CustomSheetCallback) {
        this.callback = callback
    }

    fun setStateInternal(st: Int) {
        if (state == st)
            return
        state = st
        val topSheet: View? = viewRef?.get()  as View

        if (topSheet != null && callback != null) {
            callback!!.onStateChanged(topSheet, state)
        }
    }

    private fun reset() {
        activePointerId = ViewDragHelper.INVALID_POINTER
        if (velocityTracker != null) {
            velocityTracker!!.recycle()
            velocityTracker = null
        }
    }

    fun getState(): Int {
        return this.state
    }

    private fun calculateCollapsedOffset() {
        if(viewRef == null)
            return
        collapsedOffset = if(fitToContents)  min(-(viewRef!!.get()!!.height-lastPeekHeight), fitToContentsOffset)
                            else  -(viewRef!!.get()!!.height-lastPeekHeight)

    }

    fun shouldHide(child: View, yvel: Float): Boolean {
        if(skipCollapsed) {
            return true
        }
        if (child.top > collapsedOffset) {
            return false
        }
        val newTop: Float = child.top.toFloat() + yvel * HIDE_FRICTION
        return abs(newTop.minus(collapsedOffset)).div(peekHeight) > HIDE_THRESHOLD
    }

    private fun findScrollingChild(view: View?): View? {
        if(view == null)
            return null

        if (ViewCompat.isNestedScrollingEnabled(view)) {
            return view
        } else {
            if (view is ViewGroup) {
                val group: ViewGroup = view

                for (i in 0..group.childCount) {
                    val scrollingChild: View? = findScrollingChild(group.getChildAt((i)))

                    if (scrollingChild != null) {
                        return scrollingChild
                    }
                }
            }
        }
        return null
    }

    fun getExpandedOffset(): Int {
        return if(fitToContents) fitToContentsOffset else {if(viewRef!= null && viewRef!!.get()!!.height > parentHeight) 0 else  (parentHeight- viewRef!!.get()!!.height)}
    }

    private val dragCallback: ViewDragHelper.Callback = object : ViewDragHelper.Callback() {
        override fun tryCaptureView(child: View, pointerId: Int): Boolean {
            if (state == STATE_DRAGGING) {
                return false
            }
            if (touchingScrollingChild!!) {
                return false
            }
            if (state == STATE_EXPANDED && activePointerId == pointerId) {
                val scroll: View? = nestedScrollingChildRef?.get()

                if (scroll != null && scroll.canScrollVertically(1)) {
                    return false
                }
            }
            return viewRef != null && viewRef?.get() == child
        }

        override fun onViewPositionChanged(changedView: View, left: Int, top: Int, dx: Int, dy: Int) {
            dispatchOnSlide(top)
        }

        override fun onViewDragStateChanged(st: Int) {
            if (st == ViewDragHelper.STATE_DRAGGING) {
                setStateInternal(STATE_DRAGGING)
            }
        }

        override fun onViewReleased(releasedChild: View, xvel: Float, yvel: Float) {
            val top: Int
            val targetState: Int
            val currentTop: Int = releasedChild.top
            val currentBottom: Int = releasedChild.bottom

            if (yvel > 0.0F) {
                if(fitToContents) {
                    top = fitToContentsOffset
                    targetState = STATE_EXPANDED
                }
                else {
                    if(abs(currentBottom.minus(parentHeight)) > abs(currentBottom.minus(parentHeight/2.0)) ) {
                        top = halfExpandedOffset
                        targetState = STATE_HALF_EXPANDED
                    }
                    else {
                        top = getExpandedOffset()
                        targetState = STATE_EXPANDED
                    }
                }
            }
            else if (!hideable || !shouldHide(releasedChild, yvel) || releasedChild.top >= collapsedOffset && abs(xvel) >= abs(yvel)) {
                if(yvel != 0.0F && abs(xvel) <= abs(yvel)) {
                    top = collapsedOffset
                    targetState = STATE_COLLAPSED
                }
                else {
                    if(fitToContents) {
                        if (abs(currentTop.minus(collapsedOffset)) > abs(currentTop.minus(getExpandedOffset()))) {
                            top = fitToContentsOffset
                            targetState = STATE_EXPANDED
                        } else {
                            top  = collapsedOffset
                            targetState = STATE_COLLAPSED
                        }
                    }
                    else if(currentBottom > parentHeight/2.0){
                        if(abs(currentBottom.minus(parentHeight)) > abs(currentBottom.minus(parentHeight/2.0)) ) {
                            top = halfExpandedOffset
                            targetState = STATE_HALF_EXPANDED
                        }
                        else {
                            top = getExpandedOffset()
                            targetState = STATE_EXPANDED
                        }
                    }
                    else if(abs(currentBottom.minus(parentHeight/2.0)) < abs(currentBottom.minus(lastPeekHeight))) {
                        top = halfExpandedOffset
                        targetState = STATE_HALF_EXPANDED
                    }
                    else {
                        top = collapsedOffset
                        targetState = STATE_COLLAPSED
                    }
                }
            }
            else {
                top = -viewRef!!.get()!!.height
                targetState = STATE_HIDDEN
            }

            if (viewDragHelper!!.settleCapturedViewAt(releasedChild.left, top)) {
                setStateInternal(STATE_SETTLING)
                ViewCompat.postOnAnimation(releasedChild, SettleRunnable(releasedChild, targetState))
            } else {
                setStateInternal(targetState)
            }
        }

        override fun clampViewPositionVertical(child: View, top: Int, dy: Int): Int {
            return MathUtils.clamp(top, if (hideable) -child.height else collapsedOffset, getExpandedOffset())
        }

        override fun clampViewPositionHorizontal(child: View, left: Int, dx: Int): Int {
            return child.left
        }

        override fun getViewVerticalDragRange(child: View): Int {
            if (hideable) {
                return child.height
            }
            else {
                return  getExpandedOffset().minus(collapsedOffset)
            }
        }
    }

    private fun dispatchOnSlide(top: Int) {
        val topSheet: View? = viewRef?.get() as View

        if (topSheet != null && callback != null) {
            if (top < collapsedOffset) {
                callback!!.onSlide(topSheet, (top-collapsedOffset).div(lastPeekHeight.toFloat()))
            } else {
                callback!!.onSlide(topSheet, (top-collapsedOffset).div((getExpandedOffset()-collapsedOffset).toFloat()))
            }
        }

    }

    private inner class SettleRunnable(val view: View, val TargetState: Int) : Runnable {

        override fun run() {
            if (viewDragHelper != null && viewDragHelper!!.continueSettling(true)) {
                ViewCompat.postOnAnimation(view, this)
            } else {
                setStateInternal(TargetState)
            }
        }
    }

    private fun getYVelocity(): Float {
        return if (velocityTracker == null) { 0.0F }
            else {
                velocityTracker!!.computeCurrentVelocity(1000, maximumVelocity!!)
                velocityTracker!!.getYVelocity(activePointerId)
            }
    }

    internal class SavedState : AbsSavedState {
        val state: Int

        constructor(parcel: Parcel, loader: ClassLoader?) : super(parcel, loader) {
            state = parcel.readInt()
        }
        constructor(superState: Parcelable, state: Int) : super(superState) {
            this.state = state
        }

        override fun writeToParcel(out: Parcel, flags: Int) {
            super.writeToParcel(out, flags)
            out.writeInt(state)
        }

        companion object {
            @JvmField
            val CREATOR: Parcelable.Creator<SavedState> = object : ClassLoaderCreator<SavedState> {
                override fun createFromParcel(parcel : Parcel, loader: ClassLoader): SavedState {
                    return SavedState(parcel, loader)
                }
                override fun createFromParcel(parcel: Parcel): SavedState {
                    return SavedState(parcel, null as ClassLoader?)
                }
                override fun newArray(size: Int): Array<SavedState?> {
                    return arrayOfNulls(size)
                }
            }
        }
    }

    private fun startSettlingAnimation(child: View, st: Int) {
        var top: Int

        when(st) {
            STATE_COLLAPSED -> { top = collapsedOffset }
            STATE_HALF_EXPANDED-> {
                top = halfExpandedOffset
                if(fitToContents && top >= fitToContentsOffset) {
                    state = 3
                    top = fitToContentsOffset
                }
            }
            STATE_EXPANDED -> { top = getExpandedOffset() }
            else -> {
                if (!hideable || state != 5) {
                    throw IllegalArgumentException("Illegal state arguemnt: $st")
                }
                top = -child.height
            }
        }

        if (viewDragHelper!!.smoothSlideViewTo(child, child.left, top)) {
            setStateInternal(STATE_SETTLING)
            ViewCompat.postOnAnimation(child, SettleRunnable(child, st))
        } else {
            setStateInternal(st)
        }
    }

    fun setStateOuter(value: Int) {
        if (viewRef == null) {
            if (value == STATE_EXPANDED || value == STATE_COLLAPSED || (value == STATE_HIDDEN && hideable)) {
                state = value
            }
        }
        else {
            val child:V? = viewRef?.get() ?: return
            startSettlingAnimation(child!!, value)
        }
    }
}
```

## File: src/main/java/com/microsoft/fluentui/persistentbottomsheet/LockableNestedScrollView.kt
```kotlin
package com.microsoft.fluentui.persistentbottomsheet

import android.content.Context
import android.util.AttributeSet
import android.view.View
import androidx.core.widget.NestedScrollView


class LockableNestedScrollView : NestedScrollView {
    // by default is scrollable
    private var scrollable = true

    constructor(context: Context) : super(context)
    constructor(context: Context, attrs: AttributeSet?) : super(
        context,
        attrs
    )

    constructor(
        context: Context,
        attrs: AttributeSet?,
        defStyleAttr: Int
    ) : super(context, attrs, defStyleAttr)


    fun setScrollingEnabled(enabled: Boolean) {
        scrollable = enabled
    }

    override fun requestChildFocus(child: View?, focused: View?) {
        if (scrollable)
            super.requestChildFocus(child, focused)
        else {
            // avoid scrolling to focused view
            super.requestChildFocus(child, child)
        }
    }
}
```

## File: src/main/java/com/microsoft/fluentui/persistentbottomsheet/PersistentBottomSheet.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentui.persistentbottomsheet

import android.content.Context
import android.transition.ChangeBounds
import android.transition.TransitionManager
import android.util.AttributeSet
import android.view.KeyEvent
import android.view.View
import android.view.ViewGroup
import android.view.accessibility.AccessibilityEvent
import androidx.annotation.ColorRes
import androidx.annotation.LayoutRes
import androidx.annotation.RestrictTo
import androidx.annotation.StyleRes
import androidx.core.content.ContextCompat
import androidx.core.graphics.ColorUtils
import com.google.android.material.bottomsheet.BottomSheetBehavior
import com.microsoft.fluentui.drawer.OnDrawerContentCreatedListener
import com.microsoft.fluentui.drawer.R
import com.microsoft.fluentui.drawer.databinding.ViewPersistentSheetBinding
import com.microsoft.fluentui.persistentbottomsheet.sheetItem.BottomSheetParam
import com.microsoft.fluentui.persistentbottomsheet.sheetItem.PersistentBottomSheetContentViewProvider
import com.microsoft.fluentui.theming.FluentUIContextThemeWrapper
import com.microsoft.fluentui.view.TemplateView


/**
 * [PersistentBottomSheet] is used to display a bottomSheet with a persistent collapsed state of some peekHeight
 */
class PersistentBottomSheet @JvmOverloads constructor(context: Context, attrs: AttributeSet? = null, defStyleAttr: Int = 0) :
        TemplateView(FluentUIContextThemeWrapper(context,R.style.Theme_FluentUI_Drawer), attrs, defStyleAttr), SheetItem.OnClickListener {

    companion object {
        private const val FADE_OUT_THRESHOLD = 160
    }


    private lateinit var persistentSheetBehavior: BottomSheetBehavior<View>
    private lateinit var persistentSheetBinding: ViewPersistentSheetBinding
    private var onDrawerContentCreatedListener: OnDrawerContentCreatedListener? = null
    private var contentViewProvider: PersistentBottomSheetContentViewProvider? = null
    private var itemLayoutParam: BottomSheetParam.ItemLayoutParam
    private var sheetItemClickListener: SheetItem.OnClickListener? = null
    private var collapsedStateDrawerHandleContentDescription : String? = null
    private var expandedStateDrawerHandleContentDescription : String? = null

    private var colorBackground = ContextCompat.getColor(context, android.R.color.transparent)
    private var shouldInterceptTouch = false
    private var isDrawerHandleVisible = true
    private var sheetContainer: PersistentBottomSheetContentViewProvider.SheetContainerInfo? = null
    private var focusDrawerHandleInAccessibility = true
    var backgroundViews: List<View>? = null  //views in activity that will be hidden behind the Expanded sheet
    // so focus doesn't reach to background Views when sheet is expanded


    init {
        val attributes = context.obtainStyledAttributes(attrs, R.styleable.PersistentBottomSheet)
        isDrawerHandleVisible = attributes.getBoolean(R.styleable.PersistentBottomSheet_fluentui_isDrawerHandleVisible, true)
        val defaultPeekHeight = attributes.getDimensionPixelSize(R.styleable.PersistentBottomSheet_fluentui_peekHeight, 0)
        val itemsInRow = attributes.getInteger(R.styleable.PersistentBottomSheet_fluentui_itemsInRow, R.integer.fluentui_persistent_bottomsheet_max_item_row)
        val horizontalItemTextStyle = attributes.getResourceId(R.styleable.PersistentBottomSheet_fluentui_horizontalItemTextAppearance,
                R.style.TextAppearance_FluentUI_PersistentBottomSheetHorizontalItem)
        val verticalItemTextStyle = attributes.getResourceId(R.styleable.PersistentBottomSheet_fluentui_verticalItemTextAppearance,
                R.style.TextAppearance_FluentUI_PersistentBottomSheet_Item)
        val verticalSubTextStyle = attributes.getResourceId(R.styleable.PersistentBottomSheet_fluentui_verticalItemSubTextAppearance, 0)
        val headerTextStyle = attributes.getResourceId(R.styleable.PersistentBottomSheet_fluentui_headerTextAppearance,
                R.style.TextAppearance_FluentUI_PersistentBottomSheetHeading)

        itemLayoutParam = BottomSheetParam.ItemLayoutParam(defaultPeekHeight, itemsInRow,
                horizontalItemTextStyle, verticalItemTextStyle, verticalSubTextStyle, headerTextStyle)
        attributes.recycle()
    }

    private val persistentSheetCallback = object : BottomSheetBehavior.BottomSheetCallback() {
        override fun onStateChanged(bottomSheet: View, newState: Int) {
            if (newState == BottomSheetBehavior.STATE_EXPANDED) {
                persistentSheetBehavior.peekHeight = itemLayoutParam.defaultPeekHeight
                persistentSheetBinding.scrollContainer.setScrollingEnabled(true)
                persistentSheetBinding.scrollContainer.importantForAccessibility = IMPORTANT_FOR_ACCESSIBILITY_YES
                persistentSheetBinding.persistentBottomSheetOutlined.isClickable = true
                persistentSheetBinding.persistentBottomSheetOutlined.isFocusable = false
                persistentSheetBinding.persistentBottomSheetOutlined.setOnClickListener {
                    persistentSheetBehavior.state = BottomSheetBehavior.STATE_COLLAPSED
                }
            }
            else if (newState == BottomSheetBehavior.STATE_COLLAPSED) {
                persistentSheetBinding.scrollContainer.smoothScrollTo(0, 0)
                persistentSheetBinding.scrollContainer.setScrollingEnabled(false)
                persistentSheetBinding.scrollContainer.importantForAccessibility = IMPORTANT_FOR_ACCESSIBILITY_NO
                persistentSheetBinding.persistentBottomSheetOutlined.isFocusable = false
                persistentSheetBinding.persistentBottomSheetOutlined.isClickable = false
            }
            else if(newState == BottomSheetBehavior.STATE_HIDDEN) {
                persistentSheetBinding.scrollContainer.setScrollingEnabled(false)
                persistentSheetBinding.scrollContainer.importantForAccessibility = IMPORTANT_FOR_ACCESSIBILITY_NO
                persistentSheetBinding.persistentBottomSheetOutlined.isFocusable = false
                persistentSheetBinding.persistentBottomSheetOutlined.isClickable = false
            }
            setDrawerHandleContentDescription(collapsedStateDrawerHandleContentDescription,expandedStateDrawerHandleContentDescription)
        }

        override fun onSlide(bottomSheet: View, slideOffset: Float) {
            val colorOffset = (slideOffset * FADE_OUT_THRESHOLD).coerceIn(0f,255f)
            persistentSheetBinding.persistentBottomSheetOutlined.setBackgroundColor(ColorUtils.setAlphaComponent(colorBackground, colorOffset.toInt()))
        }

    }

    override val templateId: Int
        get() = R.layout.view_persistent_sheet

    override fun onTemplateLoaded() {
        persistentSheetBinding = ViewPersistentSheetBinding.bind(templateRoot!!)
        persistentSheetBehavior = BottomSheetBehavior.from(persistentSheetBinding.persistentBottomSheet)
        persistentSheetBehavior.isHideable = true
        persistentSheetBehavior.setBottomSheetCallback(persistentSheetCallback)
        persistentSheetBehavior.peekHeight = itemLayoutParam.defaultPeekHeight

        if (!isDrawerHandleVisible)
            persistentSheetBinding.sheetDrawerHandle.visibility = View.GONE

        updateSheetContent()
        super.onTemplateLoaded()
    }

    private fun createSheetContent(contentParam: BottomSheetParam.ContentParam) {
        contentParam.listener = this
        this.contentViewProvider = PersistentBottomSheetContentViewProvider(context, contentParam)
        updateSheetContent()
    }

    private fun updateSheetContent() {
        persistentSheetBinding.persistentSheetContainer.removeAllViews()
        contentViewProvider?.apply {
            val sheetContainerInfo = this.getSheetContentView(persistentSheetBinding.persistentSheetContainer, itemLayoutParam)
            sheetContainer = sheetContainerInfo
            onDrawerContentCreatedListener?.onDrawerContentCreated(sheetContainerInfo.Container)
            configureBottomSheetDrawerHandle(sheetContainerInfo)
        }
    }

    private fun configureBottomSheetDrawerHandle(sheetContainerInfo: PersistentBottomSheetContentViewProvider.SheetContainerInfo) {
        if (sheetContainerInfo.isSingleLineItem) {
            setDrawerHandleVisibility(View.GONE)
            persistentSheetBinding.persistentSheetContainer.setPadding(persistentSheetBinding.persistentSheetContainer.paddingLeft,
                    resources.getDimensionPixelSize(R.dimen.fluentui_persistent_bottomsheet_content_padding_vertical),
                    persistentSheetBinding.persistentSheetContainer.paddingRight,
                    persistentSheetBinding.persistentSheetContainer.paddingBottom)
            return
        }
        persistentSheetBinding.scrollContainer.importantForAccessibility = IMPORTANT_FOR_ACCESSIBILITY_NO
        persistentSheetBinding.scrollContainer.setScrollingEnabled(false)
        setDrawerHandleVisibility(View.VISIBLE)
        setDrawerHandleContentDescription(collapsedStateDrawerHandleContentDescription, expandedStateDrawerHandleContentDescription)
        persistentSheetBinding.persistentSheetContainer.setPadding(persistentSheetBinding.persistentSheetContainer.paddingLeft, 0,
                persistentSheetBinding.persistentSheetContainer.paddingRight,
                persistentSheetBinding.persistentSheetContainer.paddingBottom)
        persistentSheetBinding.sheetDrawerHandle.setOnClickListener {
            when {
                persistentSheetBehavior.state == BottomSheetBehavior.STATE_COLLAPSED -> expand()
                persistentSheetBehavior.state == BottomSheetBehavior.STATE_EXPANDED -> collapse()
                else -> {
                    // it's in transition state do nothing
                }
            }
        }
    }

    fun setDrawerHandleVisibility(visibility: Int) {
        isDrawerHandleVisible = View.VISIBLE == visibility
        persistentSheetBinding.sheetDrawerHandle.visibility = visibility
    }


    fun changePeekHeight(dy: Int) {
        val transition = ChangeBounds()
        transition.duration = context.resources.getInteger(R.integer.fluentui_persistent_bottomsheet_fade_in_milliseconds).toLong()
        TransitionManager.beginDelayedTransition(persistentSheetBinding.persistentBottomSheet, transition)
        val newY = persistentSheetBehavior.peekHeight + dy
        persistentSheetBehavior.peekHeight = newY
    }

    override fun dispatchKeyEvent(event: KeyEvent?): Boolean {
        if (event?.keyCode == KeyEvent.KEYCODE_ESCAPE) {
            event.dispatch(this, null, null)
            return true
        }
        return super.dispatchKeyEvent(event)
    }

    internal fun getSheetBehavior(): BottomSheetBehavior<View> {
        return persistentSheetBehavior
    }

    override fun addView(child: View, index: Int) {
        addView(child, index, persistentSheetBinding.persistentSheetContainer)
    }

    @RestrictTo(RestrictTo.Scope.LIBRARY)
    fun addView(child: View, index: Int = 0, parentViewGroup: ViewGroup) {
        parentViewGroup.addView(child, index)
        child.post {
            changePeekHeight(child.height)
        }
    }

    @RestrictTo(RestrictTo.Scope.LIBRARY)
    override fun removeViewAt(index: Int) {
        removeViewAt(index, persistentSheetBinding.persistentSheetContainer)
    }

    @RestrictTo(RestrictTo.Scope.LIBRARY)
    private fun removeViewAt(index: Int, parentViewGroup: ViewGroup) {
        val childHeight = parentViewGroup.getChildAt(index).height
        parentViewGroup.removeViewAt(index)
        if (persistentSheetBehavior.state != BottomSheetBehavior.STATE_EXPANDED)
            changePeekHeight(-childHeight)
    }

    @RestrictTo(RestrictTo.Scope.LIBRARY)
    override fun removeView(child: View) {
        removeView(child, persistentSheetBinding.persistentSheetContainer)
    }

    @RestrictTo(RestrictTo.Scope.LIBRARY)
    fun removeView(child: View, parentViewGroup: ViewGroup) {
        val childHeight = child.height
        parentViewGroup.removeView(child)
        if (persistentSheetBehavior.state != BottomSheetBehavior.STATE_EXPANDED)
            changePeekHeight(-childHeight)
    }

    @Deprecated("use hide() method instead")
    fun hidePersistentSheet() {
        changePeekHeight(-persistentSheetBehavior.peekHeight)
    }

    @Deprecated("use show() method instead")
    fun showPersistentSheet() {
        changePeekHeight(-persistentSheetBehavior.peekHeight + itemLayoutParam.defaultPeekHeight)
    }

    fun collapse(focusDrawerHandle: Boolean = true) {
        persistentSheetBehavior.state = BottomSheetBehavior.STATE_COLLAPSED
        focusDrawerHandleInAccessibility = focusDrawerHandle
        if(focusDrawerHandle) {
            persistentSheetBinding.sheetDrawerHandle.requestFocus()
        }
        backgroundViews?.let { setImportantForAccessibility(it, View.IMPORTANT_FOR_ACCESSIBILITY_YES) }
        backgroundViews?.forEach { view ->
            setDescendantsFocusable(view, true)
        }
    }

    fun expand(focusDrawerHandle: Boolean = true) {
        persistentSheetBehavior.state = BottomSheetBehavior.STATE_EXPANDED
        focusDrawerHandleInAccessibility = focusDrawerHandle
        if(focusDrawerHandle) {
            persistentSheetBinding.sheetDrawerHandle.requestFocus()
        }
        backgroundViews?.let { setImportantForAccessibility(it, View.IMPORTANT_FOR_ACCESSIBILITY_NO_HIDE_DESCENDANTS) }
        backgroundViews?.forEach { view ->
            setDescendantsFocusable(view, false)
        }
    }
    fun setDescendantsFocusable(view: View, focusable: Boolean) {
        view.isFocusable = focusable
        if (view is ViewGroup) {
            for (i in 0 until view.childCount) {
                val child = view.getChildAt(i)
                setDescendantsFocusable(child, focusable)
            }
        }
    }



    fun hide(){
        persistentSheetBehavior.state = BottomSheetBehavior.STATE_HIDDEN
        backgroundViews?.let { setImportantForAccessibility(it, View.IMPORTANT_FOR_ACCESSIBILITY_YES) }
        backgroundViews?.forEach { view ->
            setDescendantsFocusable(view, true)
        }
    }

    fun show(expanded: Boolean = false, focusDrawerHandle: Boolean = true) {
        if (expanded) {
            persistentSheetBehavior.state = BottomSheetBehavior.STATE_EXPANDED
        } else {
            persistentSheetBehavior.state = BottomSheetBehavior.STATE_COLLAPSED
        }
        focusDrawerHandleInAccessibility = focusDrawerHandle
        if(focusDrawerHandle) {
            persistentSheetBinding.sheetDrawerHandle.requestFocus()
        }
        backgroundViews?.let { setImportantForAccessibility(it, View.IMPORTANT_FOR_ACCESSIBILITY_YES) }
        backgroundViews?.forEach { view ->
            setDescendantsFocusable(view, true)
        }
    }

    fun updateBottomSheetLayoutParams(peekHeight: Int = itemLayoutParam.defaultPeekHeight,
                                      itemInRow: Int = itemLayoutParam.itemInRow,
                                      @StyleRes horizontalTextAppearance: Int = itemLayoutParam.horizontalTextAppearance,
                                      @StyleRes verticalItemTextAppearance: Int = itemLayoutParam.verticalItemTextAppearance,
                                      @StyleRes verticalSubTextAppearance: Int = itemLayoutParam.verticalSubTextAppearance,
                                      @StyleRes headerTextAppearance: Int = itemLayoutParam.headerTextAppearance)  {
        itemLayoutParam = BottomSheetParam.ItemLayoutParam(peekHeight, itemInRow, horizontalTextAppearance, verticalItemTextAppearance,verticalSubTextAppearance, headerTextAppearance)
        persistentSheetBehavior.peekHeight = itemLayoutParam.defaultPeekHeight
        updateSheetContent()
    }

    /**
     * Way to set content-description can be handled in better way
     *
     * public api call to set content description if it changes based on states.
     */
    fun setDrawerHandleContentDescription(collapsedStateDescription: String?, expandedStateDescription: String?) {
        collapsedStateDrawerHandleContentDescription = collapsedStateDescription
        expandedStateDrawerHandleContentDescription = expandedStateDescription

        val currentStateContentDescription: String?
        persistentSheetBinding.sheetDrawerHandle.importantForAccessibility = View.IMPORTANT_FOR_ACCESSIBILITY_YES
        when (persistentSheetBehavior.state) {
            BottomSheetBehavior.STATE_COLLAPSED -> {
                currentStateContentDescription =  collapsedStateDescription
            }
            BottomSheetBehavior.STATE_EXPANDED -> {
                currentStateContentDescription =  expandedStateDescription
            }
            else -> {
                persistentSheetBinding.sheetDrawerHandle.importantForAccessibility = View.IMPORTANT_FOR_ACCESSIBILITY_NO
                return
            }
        }
        currentStateContentDescription?.apply{
            persistentSheetBinding.sheetDrawerHandle.contentDescription = this
            if(focusDrawerHandleInAccessibility) {
                persistentSheetBinding.sheetDrawerHandle.sendAccessibilityEvent(AccessibilityEvent.TYPE_VIEW_FOCUSED)
            }
        }
    }

    fun getPeekHeight(): Int {
        return getSheetBehavior().peekHeight
    }

    fun getBottomSheetBehaviour(): BottomSheetBehavior<View> {
        return getSheetBehavior()
    }

    fun setItemClickListener(itemClickListener: SheetItem.OnClickListener) {
        sheetItemClickListener = itemClickListener
    }

    override fun onSheetItemClick(item: SheetItem) {
        sheetItemClickListener?.onSheetItemClick(item)
    }

    /**
     * calling this method is mandatory after changing the input
     * item list , otherwise related functionalities might not work
     */
    fun refreshSheetContent() {
        contentViewProvider?.updateSheetContentView(sheetContainer)
    }

    class DefaultContentBuilder(val context: Context) {

        private val contentParam: BottomSheetParam.ContentParam = BottomSheetParam.ContentParam(ArrayList(),
                context.resources.getDimensionPixelSize(R.dimen.fluentui_divider_height))

        /**
         * This will be used to add a horizontal view which
         * has a fixed (defined in *itemInRow* - property) grid size of items and it populates them in each line
         * equally spaced
         *
         *  ex.  in a list and itemsInRow count is 5
         *   if(** is a view) then will be shown like
         *
         *    5 items -->    | **   **   **   **   **   ** |
         *
         *    4 items -->    |   **     **     **    **    |
         *
         *    8 items -->  | **   **   **   **   **   ** |
         *                 |     **      **       **     |
         *
         *
         */
        @JvmOverloads
        fun addHorizontalItemList(itemSheet: List<SheetItem>, header: String? = null): DefaultContentBuilder {
            assertIfCustomIdSet()
            contentParam.add(BottomSheetParam.HorizontalItemList(itemSheet, header))
            return this
        }

        /**
         * This will be used to add a horizontal view which
         * has a fixed(defined in *itemInRow* - property) grid size of items and it populates them from start to end.
         *   ex.  8 items in a grid when itemsinRow count is 5
         *   if(** is a view) then will be shown like
         *
         *        **  **  **  **  **  **
         *        **  **  **
         *
         */
        @JvmOverloads
        fun addHorizontalGridItemList(itemSheet: List<SheetItem>, header: String? = null): DefaultContentBuilder {
            assertIfCustomIdSet()
            contentParam.add(BottomSheetParam.HorizontalGridItemList(itemSheet, header))
            return this
        }

        /**
         * add items vertically in a groups
         */
        @JvmOverloads
        fun addVerticalItemList(itemSheet: List<SheetItem>, header: String? = null): DefaultContentBuilder {
            assertIfCustomIdSet()
            contentParam.add(BottomSheetParam.VerticalItemList(itemSheet, header))
            return this
        }

        /**
         * adds a divider
         */
        @JvmOverloads
        fun addDivider(pixelHeight: Int = context.resources.getDimensionPixelSize(R.dimen.fluentui_divider_height), @ColorRes color: Int = 0): DefaultContentBuilder {
            assertIfCustomIdSet()
            contentParam.add(BottomSheetParam.DividerItemType(pixelHeight, color))
            return this
        }


        fun setCustomSheetContent(@LayoutRes layoutResId: Int): DefaultContentBuilder {
            contentParam.listOfItemList.clear()
            contentParam.layoutResId = layoutResId
            return this
        }

        fun setCustomSheetContent(child: View): DefaultContentBuilder {
            contentParam.listOfItemList.clear()
            contentParam.childContent = child
            return this
        }

        fun buildWith(persistentBottomSheet: PersistentBottomSheet) {
            persistentBottomSheet.createSheetContent(contentParam)
        }


        private fun assertIfCustomIdSet() {
            if (contentParam.layoutResId != null) {
                throw IllegalStateException(" custom resource Id is set you can not use default items with it${contentParam.layoutResId}")
            }
        }
    }

    override fun onKeyUp(keyCode: Int, event: KeyEvent?): Boolean {
        if (keyCode == KeyEvent.KEYCODE_ESCAPE
                && persistentSheetBehavior.state == BottomSheetBehavior.STATE_EXPANDED) {
            collapse()
            return true
        }
        return super.onKeyUp(keyCode, event)
    }

    fun setImportantForAccessibility(views: List<View>, important: Int) {
        if(views!=null) {
            for (view in views) {
                view.importantForAccessibility = important
            }
        }
    }

}
```

## File: src/main/java/com/microsoft/fluentui/persistentbottomsheet/SheetHorizontalGridItemList.kt
```kotlin
package com.microsoft.fluentui.persistentbottomsheet

import android.content.Context
import android.util.AttributeSet
import android.widget.LinearLayout

class SheetHorizontalGridItemList @JvmOverloads constructor(
        context: Context, attrs: AttributeSet? = null, defStyleAttr: Int = 0
) : SheetHorizontalItemList(context, attrs, defStyleAttr) {

    override fun getRowWrapper(columnCount: Int): LinearLayout {
        val listContainer = LinearLayout(context)
        listContainer.orientation = LinearLayout.HORIZONTAL
        listContainer.weightSum = columnCount.toFloat()
        listContainer.layoutParams = LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT)
        return listContainer
    }

}
```

## File: src/main/java/com/microsoft/fluentui/persistentbottomsheet/SheetHorizontalItemAdapter.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentui.persistentbottomsheet

import android.content.Context
import androidx.annotation.StyleRes
import androidx.recyclerview.widget.RecyclerView
import android.view.ContextThemeWrapper
import android.view.LayoutInflater
import android.view.ViewGroup
import androidx.annotation.ColorInt
import com.microsoft.fluentui.drawer.R
import com.microsoft.fluentui.util.createImageView


/**
 * [SheetHorizontalItemAdapter] is used for horizontal list in bottomSheet
 */
class SheetHorizontalItemAdapter(private val context: Context, items: ArrayList<SheetItem>, @StyleRes private val themeId: Int = R.style.Theme_FluentUI_Drawer, private val marginBetweenView: Int = 0, @ColorInt private val drawerTint: Int? = null) : RecyclerView.Adapter<RecyclerView.ViewHolder>() {
    var mOnSheetItemClickListener: SheetItem.OnClickListener? = null
    private val mItems: ArrayList<SheetItem> = items

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RecyclerView.ViewHolder {
        var inflater = LayoutInflater.from(parent.context)
        if (themeId != 0) {
            val contextThemeWrapper = ContextThemeWrapper(parent.context, themeId)
            inflater = inflater.cloneInContext(contextThemeWrapper)
        }

        val itemView = inflater.inflate(R.layout.view_sheet_horizontal_item_adapter, parent, false)
        val layoutParams = itemView.layoutParams as ViewGroup.MarginLayoutParams
        layoutParams.rightMargin = marginBetweenView
        return PersistentSheetItemViewHolder(itemView as SheetHorizontalItemView)
    }

    override fun getItemCount(): Int = mItems.size

    override fun onBindViewHolder(holder: RecyclerView.ViewHolder, position: Int) {
        (holder as? PersistentSheetItemViewHolder)?.setBottomSheetItem(mItems[position])
    }

    private inner class PersistentSheetItemViewHolder(itemView: SheetHorizontalItemView) : RecyclerView.ViewHolder(itemView) {
        private val listItemView: SheetHorizontalItemView = itemView

        fun setBottomSheetItem(item: SheetItem) {
            item.bitmap.let {
                if (it != null) {
                    listItemView.update(item.title, context.createImageView(it), item.disabled)
                } else {
                    listItemView.update(item.title, context.createImageView(item.drawable, imageTint = drawerTint), item.disabled)
                }
            }
            listItemView.setOnClickListener {
                mOnSheetItemClickListener?.onSheetItemClick(item)
            }
        }
    }
}
```

## File: src/main/java/com/microsoft/fluentui/persistentbottomsheet/SheetHorizontalItemList.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentui.persistentbottomsheet

import android.content.Context
import android.graphics.Bitmap
import android.util.AttributeSet
import android.view.View
import android.view.View.NO_ID
import android.view.ViewGroup
import android.widget.LinearLayout
import androidx.annotation.ColorInt
import androidx.annotation.DrawableRes
import androidx.core.view.AccessibilityDelegateCompat
import androidx.core.view.ViewCompat
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat.CollectionInfoCompat.SELECTION_MODE_NONE
import com.microsoft.fluentui.drawer.R
import com.microsoft.fluentui.persistentbottomsheet.sheetItem.BottomSheetParam
import com.microsoft.fluentui.theming.FluentUIContextThemeWrapper
import com.microsoft.fluentui.view.TemplateView
import kotlin.math.ceil


/**
* [SheetHorizontalItemList] is used to display a list of menu items in a horizontal fixed list
*/
open class SheetHorizontalItemList @JvmOverloads constructor(context: Context, attrs: AttributeSet? = null, defStyleAttr: Int = 0)
    : TemplateView(FluentUIContextThemeWrapper(context,R.style.Theme_FluentUI_Drawer), attrs, defStyleAttr), SheetItem.OnClickListener {
    private lateinit var itemSheet:List<SheetItem>
    private lateinit var itemListContainer:ViewGroup
    private var rowCount: Int = 0
    private var columnCount: Int = 0
    private var itemLayoutParam: BottomSheetParam.HorizontalItemLayoutParam

    var sheetItemClickListener: SheetItem.OnClickListener? = null

    init {
        itemLayoutParam = BottomSheetParam.HorizontalItemLayoutParam(
                context.resources.getInteger(R.integer.fluentui_persistent_bottomsheet_max_item_row),
                R.style.TextAppearance_FluentUI_PersistentBottomSheetHorizontalItem,
                R.style.TextAppearance_FluentUI_PersistentBottomSheetHeading)
    }

    override val templateId: Int
        get() = R.layout.view_sheet_horizontal_item_list

    fun createHorizontalItemLayout(sheet: List<SheetItem>, itemLayoutParam: BottomSheetParam.HorizontalItemLayoutParam? = null) {
        this.itemSheet = sheet
        val size = itemSheet.size

        if (itemLayoutParam != null) {
            this.itemLayoutParam = itemLayoutParam
        }

        createHorizontalView(size)
        setTextAppearance(this.itemLayoutParam.horizontalTextAppearance)
    }

    /**
     * public api to refresh horizontal views
     * this is a best effort based API it checks and
     * updates items which are required to be updated.
     * Also it adds oonly neccessary new view or remoove just extra view
     */
    fun refreshHorizontalItems(itemSheet: List<SheetItem>) {
        if (this.itemSheet.size != itemSheet.size) {
            addRemoveExtraSize(itemSheet.size - this.itemSheet.size)
            this.itemSheet = itemSheet
            updateAllItems(itemSheet)
            return
        } else {
            val oldSheetItems = this.itemSheet
            this.itemSheet = itemSheet
            for (index in itemSheet.indices) {
                if (oldSheetItems[index] != this.itemSheet[index]) {
                    updateItem(index)
                }
            }
        }
    }


    /**
     * add / remove extra items of size @param - size - if > 0 add else <0 remove
     */
    private fun addRemoveExtraSize(size: Int) {
        if (size > 0) {
            addPlaceHolderItems(size)
        } else if (size < 0) {
            removeExtraItems(size)
        }
    }

    private fun updateAllItems(newSheetItems: List<SheetItem>) {
        for (index in newSheetItems.indices){
            updateItem(index)
        }
    }

    private fun updateItem(sheetIndex: Int) {
        val rowColumnPair = getRowColumn(sheetIndex)
        val rowWrapper = itemListContainer.getChildAt(rowColumnPair.first) as ViewGroup
        (rowWrapper.getChildAt(rowColumnPair.second) as SheetHorizontalItemView).update(itemSheet[sheetIndex])
    }

    /**
     * adds place holder views when more items to be added via update.
     * This needs a follow up call to update items afterwards
     */
    private fun addPlaceHolderItems(size: Int) {
        var rowWrapper = itemListContainer.getChildAt(itemListContainer.childCount - 1) as ViewGroup
        var counter = 0
        while (counter++ < size) {
            if (rowWrapper.childCount == columnCount) {
                // when child in a row reaches column count(which is max)
                // add a new row to the upper container first
                rowWrapper = getRowWrapper(columnCount)
                itemListContainer.addView(rowWrapper)
            }
            // adds a view in row
            rowWrapper.addView(getColumnItem(itemListContainer.childCount - 1, 0))
        }
        // update row count
        rowCount = itemListContainer.childCount
    }

    private fun removeExtraItems(size: Int) {
        var rowWrapper = itemListContainer.getChildAt(itemListContainer.childCount - 1) as ViewGroup
        var counter = size
        while (counter++ < 0) {
            if (rowWrapper.childCount == 0) {
                // delete from previous row
                val previousRowWrapper = itemListContainer.getChildAt(itemListContainer.indexOfChild(rowWrapper) - 1) as ViewGroup
                // remove  row which is exhausted
                itemListContainer.removeView(rowWrapper)
                rowWrapper = previousRowWrapper
            }
            rowWrapper.removeView(rowWrapper.getChildAt(rowWrapper.childCount - 1))
        }
        // if at the end of removing children row does not have any child remove it
        if (rowWrapper.childCount == 0) {
            itemListContainer.removeView(rowWrapper)
        }
        // update row count
        rowCount = itemListContainer.childCount
    }

    private fun getRowColumn(index: Int): Pair<Int, Int> {
        return Pair(index / columnCount, index % columnCount)
    }

    private fun createHorizontalView(size: Int) {
        itemListContainer.removeAllViews()


        columnCount = itemLayoutParam.itemsInRow
        rowCount = ceil(size.toDouble() / columnCount).toInt()

        var index = 0

        setCollectionAccessibility(itemListContainer,size)

        for (row in 0 until rowCount) {
            val rowWrapper = getRowWrapper(columnCount)
            for (column in 0 until columnCount) {
                if (index >= size) {
                    itemListContainer.addView(rowWrapper)
                    return
                }
                val itemView = getColumnItem(row, index++)
                rowWrapper.addView(itemView)
            }
            itemListContainer.addView(rowWrapper)
        }
    }

    /**
     * sets collection accessibility for list or Grid
     */
    private fun setCollectionAccessibility(view: ViewGroup, size: Int) {
        ViewCompat.setAccessibilityDelegate(view, object : AccessibilityDelegateCompat() {
            override fun onInitializeAccessibilityNodeInfo(
                host: View,
                info: AccessibilityNodeInfoCompat
            ) {
                super.onInitializeAccessibilityNodeInfo(host, info)
                val collectionInfo = AccessibilityNodeInfoCompat.CollectionInfoCompat
                        .obtain(rowCount,
                                minOf(columnCount, size),
                                false,
                                SELECTION_MODE_NONE)
                info?.setCollectionInfo(collectionInfo)
            }
        })
    }

    /**
     * set collection item info of the children
     * for accessibility
     */
    private fun setChildAccessibilityCollectionItemInfo(container: View, rowIndex: Int, columnIndex: Int) {
        ViewCompat.setAccessibilityDelegate(container, object : AccessibilityDelegateCompat() {
            override fun onInitializeAccessibilityNodeInfo(
                host: View,
                info: AccessibilityNodeInfoCompat
            ) {
                super.onInitializeAccessibilityNodeInfo(host, info)
                info?.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(
                        rowIndex,
                        /*row span*/1,
                        columnIndex,
                        /*column span*/1,
                        /*heading*/false,
                        /*selected*/false
                ))
            }
        })
    }

    private fun getColumnItem(rowIndex: Int, index: Int): SheetHorizontalItemView {
        val itemView = SheetHorizontalItemView(context, itemSheet[index])
        itemView.updateTextAppearanceResId(itemLayoutParam.horizontalTextAppearance)
        itemView.layoutParams = LinearLayout.LayoutParams(0, LayoutParams.WRAP_CONTENT, 1.0f)
        itemView.onSheetItemClickListener = this
        itemView.addTemplateLoadListener(object : SheetHorizontalItemView.ChildItemInteractionListener {
            override fun onChildTemplateLoaded(container: View) {
                setChildAccessibilityCollectionItemInfo(container,rowIndex, index)
            }
        })
        return itemView
    }

    protected open fun getRowWrapper(columnCount: Int): LinearLayout {
        val listContainer = LinearLayout(context)
        listContainer.orientation = LinearLayout.HORIZONTAL
        listContainer.layoutParams = LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT)
        return listContainer
    }


    override fun onTemplateLoaded() {
        super.onTemplateLoaded()
        itemListContainer = findViewInTemplateById(R.id.sheet_item_list)!!
    }

    override fun onSheetItemClick(item: SheetItem) {
        sheetItemClickListener?.onSheetItemClick(item)
    }

    fun setTextAppearance(resId: Int) {
        for (i in 0 until itemListContainer.childCount) {
            val wrapperLayout = itemListContainer.getChildAt(i) as ViewGroup
            for (index in 0 until wrapperLayout.childCount) {
                (wrapperLayout.getChildAt(index) as SheetHorizontalItemView).updateTextAppearanceResId(resId)
            }
        }
    }
}


/**
 * SheetItem is a building block to create lists/grid in PersistentBottomSheet control.
 * The accessoryDrawable/accessoryBitmap is shown only in vertical list.
 */
class SheetItem @JvmOverloads constructor(val id: Int, var title: String = "", @DrawableRes var drawable: Int, @ColorInt var tint: Int? = null, var bitmap: Bitmap? = null, var contentDescription: String = "", var disabled: Boolean = false, @DrawableRes var accessoryDrawable: Int = NO_ID, var accessoryBitmap: Bitmap? = null) {

    // just a convenient constructor
    @JvmOverloads
    constructor(id: Int, title: String = "", bitmap: Bitmap, disabled: Boolean = false, accessoryBitmap: Bitmap? = null) : this(id, title, NO_ID, null, bitmap, "", disabled, NO_ID, accessoryBitmap)

    interface OnClickListener {
        fun onSheetItemClick(item: SheetItem)
    }

    override fun equals(other: Any?): Boolean {
        if (this === other) return true
        if (javaClass != other?.javaClass) return false

        other as SheetItem

        if (id != other.id) return false
        if (title != other.title) return false
        if (drawable != other.drawable) return false
        if (tint != other.tint) return false
        if (bitmap != other.bitmap) return false
        if (contentDescription != other.contentDescription) return false
        if (disabled != other.disabled) return false
        if (accessoryDrawable != other.accessoryDrawable) return false
        if (accessoryBitmap != other.accessoryBitmap) return false

        return true
    }

    override fun hashCode(): Int {
        var result = id
        result = 31 * result + title.hashCode()
        result = 31 * result + drawable
        result = 31 * result + (tint ?: 0)
        result = 31 * result + (bitmap?.hashCode() ?: 0)
        result = 31 * result + disabled.hashCode()
        result = 31 * result + accessoryDrawable
        result = 31 * result + (accessoryBitmap?.hashCode() ?: 0)
        return result
    }
}
```

## File: src/main/java/com/microsoft/fluentui/persistentbottomsheet/SheetHorizontalItemView.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentui.persistentbottomsheet

import android.annotation.SuppressLint
import android.content.Context
import android.util.AttributeSet
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import android.widget.TextView
import androidx.core.widget.TextViewCompat
import com.microsoft.fluentui.drawer.R
import com.microsoft.fluentui.theming.FluentUIContextThemeWrapper
import com.microsoft.fluentui.util.ThemeUtil
import com.microsoft.fluentui.util.createImageView
import com.microsoft.fluentui.util.getImageDrawable
import com.microsoft.fluentui.view.TemplateView


class SheetHorizontalItemView: TemplateView {
    private lateinit var sheetItemTitle:TextView
    private lateinit var mainContainer:ViewGroup
    private lateinit var imageContainer: ViewGroup
    private var listener: ChildItemInteractionListener? = null

    private var title: String = ""
    private var customView: View? = null
    private var disabled: Boolean = false
    private var mSheetItem: SheetItem? = null
    private var textAppearanceResId: Int = R.style.TextAppearance_FluentUI_HorizontalListItemTitle

    var onSheetItemClickListener: SheetItem.OnClickListener? = null

    companion object {
        private const val ALPHA_OPAQUE = 255
    }

    override val templateId: Int
        get() = R.layout.view_sheet_horizontal_item_view

    @JvmOverloads
    constructor(context: Context,  attrs: AttributeSet? = null, defStyleAttr: Int = 0) : super(FluentUIContextThemeWrapper(context,R.style.Theme_FluentUI_Drawer), attrs, defStyleAttr)

    @SuppressLint("ResourceType")
    constructor(context: Context, sheetItem: SheetItem, attrs: AttributeSet? = null, defStyleAttr: Int = 0) : super(FluentUIContextThemeWrapper(context,R.style.Theme_FluentUI_Drawer), attrs, defStyleAttr) {
        this.mSheetItem = sheetItem
        this.title = sheetItem.title
        this.disabled = sheetItem.disabled

        if (sheetItem.bitmap != null) {
            this.customView = context.createImageView(sheetItem.bitmap!!)
        } else if (sheetItem.drawable != NO_ID) {
            this.customView = context.createImageView(sheetItem.drawable, sheetItem.tint)
        }
    }

    override fun onTemplateLoaded() {
        super.onTemplateLoaded()

        sheetItemTitle = findViewInTemplateById(R.id.sheet_item_title)!!
        mainContainer = findViewInTemplateById(R.id.main_container)!!
        imageContainer = findViewInTemplateById(R.id.sheet_item_view_container)!!
        updateTitleView()
        updateCustomView()
        updateTextAppearance()

        if(mSheetItem != null)
            mainContainer.setOnClickListener {
                onSheetItemClickListener?.onSheetItemClick(mSheetItem!!)
            }

        mainContainer.isEnabled = !disabled
        sheetItemTitle.isEnabled = !disabled

        mainContainer.setBackgroundResource(R.drawable.bottom_sheet_item_ripple_background)
        listener?.onChildTemplateLoaded(mainContainer)
    }

    private fun updateTitleView() {
        sheetItemTitle.text = title

        if (mSheetItem != null && mSheetItem?.contentDescription!!.isNotEmpty()) {
            mainContainer.contentDescription = mSheetItem?.contentDescription
        }
        else {
            if (title.isNotEmpty()) {
                sheetItemTitle.visibility = View.VISIBLE
                mainContainer.contentDescription = sheetItemTitle.text
            } else {
                sheetItemTitle.visibility = View.GONE
                mainContainer.contentDescription = customView?.contentDescription
            }
        }
        sheetItemTitle.importantForAccessibility = View.IMPORTANT_FOR_ACCESSIBILITY_NO
    }

    private fun updateCustomView() {
        if (customView != null) {
            if (disabled)
                (customView as ImageView).imageAlpha = ThemeUtil.getThemeAttrColor(FluentUIContextThemeWrapper(context, R.style.Theme_FluentUI_Drawer), R.attr.fluentuiBottomSheetDisabledIconColor)
            else
                (customView as ImageView).imageAlpha = ALPHA_OPAQUE
            imageContainer.removeAllViews()
            imageContainer.addView(customView)
        }
    }

    fun update(title:String, customView:ImageView, disabled: Boolean = false) {
        this.title = title
        this.customView = customView
        this.disabled = disabled
        updateTitleView()
        updateCustomView()

        this.isEnabled = !disabled
        sheetItemTitle.isEnabled = !disabled
    }

    fun update(sheetItem: SheetItem) {
        this.mSheetItem = sheetItem
        this.title = sheetItem.title
        this.disabled = sheetItem.disabled
        updateTitleView()

        if (sheetItem.bitmap != null) {
            (customView as ImageView).setImageBitmap(sheetItem.bitmap)
        } else {
            (customView as ImageView).setImageDrawable(context.getImageDrawable(sheetItem.tint, sheetItem.drawable))
        }
        updateCustomView()

        sheetItemTitle.isEnabled = !disabled
        mainContainer.isEnabled = !disabled
    }

    fun updateTextAppearanceResId(resId: Int) {
        textAppearanceResId = resId
        updateTextAppearance()
    }

    private fun updateTextAppearance() {
        if(this::sheetItemTitle.isInitialized) {
            sheetItemTitle.let {
                TextViewCompat.setTextAppearance(it, textAppearanceResId) }
        }
    }

    /**
     * parent can set a listener to know if child is loaded/inflated or not
     */
    fun addTemplateLoadListener(listener:ChildItemInteractionListener){
        this.listener = listener
    }

    /**
     * interface for parent to interact with this child
     */
    interface ChildItemInteractionListener{
        fun onChildTemplateLoaded(container:View)
    }
}
```

## File: src/main/java/com/microsoft/fluentui/persistentbottomsheet/sheetItem/BottomSheetParam.kt
```kotlin
package com.microsoft.fluentui.persistentbottomsheet.sheetItem

import androidx.annotation.ColorRes
import androidx.annotation.StyleRes
import android.view.View
import com.microsoft.fluentui.persistentbottomsheet.SheetItem

/**
 * Persistent Bottom sheet layout and item params
 */
class BottomSheetParam {

    internal data class ContentParam(val listOfItemList: ArrayList<ItemTypeList>,
                                     val dividerHeight: Int,
                                     var listener: SheetItem.OnClickListener? = null,
                                     var layoutResId: Int? = null,
                                     var childContent: View? = null) {
        fun add(itemTypeList: ItemTypeList) {
            listOfItemList.add(itemTypeList)
        }
    }


    internal data class ItemLayoutParam(val defaultPeekHeight: Int,
                                        val itemInRow: Int,
                                        @StyleRes val horizontalTextAppearance: Int,
                                        @StyleRes val verticalItemTextAppearance: Int,
                                        @StyleRes val verticalSubTextAppearance: Int,
                                        @StyleRes val headerTextAppearance: Int)

    data class HorizontalItemLayoutParam(val itemsInRow: Int,
                                         @StyleRes val horizontalTextAppearance: Int,
                                         @StyleRes val headerTextAppearance: Int)

    data class VerticalItemLayoutParam(@StyleRes val verticalItemTextAppearance: Int,
                                       @StyleRes val verticalSubTextAppearance: Int,
                                       @StyleRes val headerTextAppearance: Int)

    // marker interface
    internal interface ItemTypeList

    // data class for list of horizontal Items
    internal data class HorizontalItemList(val horizontalItemSheet: List<SheetItem>, val header: String?) : ItemTypeList{
        val count = horizontalItemSheet.size
    }

    // data class for list of horizontal  grid Items
    internal data class HorizontalGridItemList(val horizontalItemSheet: List<SheetItem>, val header: String?) : ItemTypeList

    // data class for list of vertical Items
    internal data class VerticalItemList(val verticalItemSheet: List<SheetItem>, val header: String?) : ItemTypeList

    //data class for div
    internal data class DividerItemType(val pixelHeight: Int, @ColorRes val dividerColor: Int) : ItemTypeList

}
```

## File: src/main/java/com/microsoft/fluentui/persistentbottomsheet/sheetItem/DividerViewProvider.kt
```kotlin
package com.microsoft.fluentui.persistentbottomsheet.sheetItem

import android.content.Context
import androidx.core.content.ContextCompat
import android.view.View
import android.widget.LinearLayout
import com.microsoft.fluentui.drawer.R
import com.microsoft.fluentui.util.ThemeUtil

/**
 * class provides a view for divider height and color configurable
 */
internal class DividerViewProvider(val context: Context) : IViewProvider {

    override fun getContentView(itemTypeList: BottomSheetParam.ItemTypeList,
                                itemLayoutParam: BottomSheetParam.ItemLayoutParam,
                                contentParam: BottomSheetParam.ContentParam): View {
        val divider = itemTypeList as BottomSheetParam.DividerItemType
        val param = LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, divider.pixelHeight)
        param.topMargin = context.resources.getDimensionPixelSize(R.dimen.fluentui_persistent_bottomsheet_divider_margin_vertical)
        param.bottomMargin = context.resources.getDimensionPixelSize(R.dimen.fluentui_persistent_bottomsheet_divider_margin_vertical)
        val view = View(context)
        view.layoutParams = param
        if (divider.dividerColor == 0) {
            view.setBackgroundColor(ThemeUtil.getColor(context, R.attr.fluentuiBottomSheetDividerColor))
        } else {
            view.setBackgroundColor(ContextCompat.getColor(context, divider.dividerColor))
        }
        return view
    }

    override fun updateComponentView(itemTypeList: BottomSheetParam.ItemTypeList, view: View) {
        // Does nothing , can't update divider settings
        return
    }

}
```

## File: src/main/java/com/microsoft/fluentui/persistentbottomsheet/sheetItem/HorizontalGridProvider.kt
```kotlin
package com.microsoft.fluentui.persistentbottomsheet.sheetItem

import android.content.Context
import android.view.LayoutInflater
import android.view.View
import android.widget.TextView
import com.microsoft.fluentui.drawer.R
import com.microsoft.fluentui.persistentbottomsheet.SheetHorizontalGridItemList
import com.microsoft.fluentui.persistentbottomsheet.SheetItem

/**
 * A horizontal grid view provider returns a horizontal view which
 * has a fix grid size of items and it populates them from start to end.
 *   ex.  8 items in a grid when itemsinRow count is 5
 *   if(** is a view) then will be shown like
 *
 *        **  **  **  **  **  **
 *        **  **  **
 *
 */
internal class HorizontalGridProvider(val context: Context) : IViewProvider {

    override fun getContentView(itemTypeList: BottomSheetParam.ItemTypeList,
                                itemLayoutParam: BottomSheetParam.ItemLayoutParam,
                                contentParam: BottomSheetParam.ContentParam): View {
        val list = itemTypeList as BottomSheetParam.HorizontalGridItemList
        val view = LayoutInflater.from(context).inflate(R.layout.persistent_bottomsheet_horizontal_grid, null)
        val headerText = view.findViewById<TextView>(R.id.header_text)
        val horizontalGridView = view.findViewById<SheetHorizontalGridItemList>(R.id.horizontal_grid)

        if (itemTypeList.header.isNullOrEmpty()) {
            headerText.visibility = View.GONE
        } else {
            headerText.visibility = View.VISIBLE
            headerText.text = itemTypeList.header
        }
        horizontalGridView.createHorizontalItemLayout(getHorizontalItemList(list),
                BottomSheetParam.HorizontalItemLayoutParam(
                        itemLayoutParam.itemInRow,
                        itemLayoutParam.horizontalTextAppearance,
                        itemLayoutParam.headerTextAppearance))

        horizontalGridView.sheetItemClickListener = object : SheetItem.OnClickListener {
            override fun onSheetItemClick(item: SheetItem) {
                val originalItem = list.horizontalItemSheet.find {
                    it.id == item.id
                }
                        ?: throw IllegalStateException("Sheet Item data has been changed and refresh was not called")
                contentParam.listener?.onSheetItemClick(originalItem)
            }
        }

        return view

    }

    /**
     * updates previusly built compoonent
     * component is self capable of updating only items which have changed
     */
    override fun updateComponentView(itemTypeList: BottomSheetParam.ItemTypeList, view: View) {
        val horizontalGridView = view.findViewById<SheetHorizontalGridItemList>(R.id.horizontal_grid)
        val newList = getHorizontalItemList(itemTypeList as BottomSheetParam.HorizontalGridItemList)
        horizontalGridView.refreshHorizontalItems(newList)
    }

    override fun isSingleLineContent(itemTypeList: BottomSheetParam.ItemTypeList,
                                     itemLayoutParam: BottomSheetParam.ItemLayoutParam,
                                     contentParam: BottomSheetParam.ContentParam): Boolean {
        val list = itemTypeList as BottomSheetParam.HorizontalGridItemList
        return list.horizontalItemSheet.size <= itemLayoutParam.itemInRow
    }

    /**
     * creates a copy of list to be used to compare to existing list to change only required items
     */
    private fun getHorizontalItemList(itemTypeList: BottomSheetParam.HorizontalGridItemList): List<SheetItem> {
        return itemTypeList.horizontalItemSheet.filter {
            it.id != 0
        }.map {
            SheetItem(it.id, it.title, it.drawable, it.tint, it.bitmap, it.contentDescription, it.disabled)
        }
    }

}
```

## File: src/main/java/com/microsoft/fluentui/persistentbottomsheet/sheetItem/HorizontalViewProvider.kt
```kotlin
package com.microsoft.fluentui.persistentbottomsheet.sheetItem

import android.content.Context
import android.view.LayoutInflater
import android.view.View
import android.widget.TextView
import com.microsoft.fluentui.drawer.R
import com.microsoft.fluentui.persistentbottomsheet.SheetHorizontalGridItemList
import com.microsoft.fluentui.persistentbottomsheet.SheetHorizontalItemList
import com.microsoft.fluentui.persistentbottomsheet.SheetItem

/**
 * A horizontal grid view provider returns a horizontal view which
 * has a fix grid size of items and it populates them in each line
 * equally spaced
 *
 *  ex.  8 items in a list and itemsInRow count is 5
 *   if(** is a view) then will be shown like
 *
 *        **  **  **  **  **  **
 *           **     **     **
 *
 */
internal class HorizontalViewProvider(val context: Context) : IViewProvider {

    override fun getContentView(itemTypeList: BottomSheetParam.ItemTypeList,
                                itemLayoutParam: BottomSheetParam.ItemLayoutParam,
                                contentParam: BottomSheetParam.ContentParam): View {
        val list = itemTypeList as BottomSheetParam.HorizontalItemList
        val view = LayoutInflater.from(context).inflate(R.layout.horizontal_bottomsheet_content, null)
        val headerText = view.findViewById<TextView>(R.id.header_text)
        val horizontalListView = view.findViewById<SheetHorizontalItemList>(R.id.horizontal_list)

        if (itemTypeList.header.isNullOrEmpty()) {
            headerText.visibility = View.GONE
        } else {
            headerText.visibility = View.VISIBLE
            headerText.text = itemTypeList.header
        }
        horizontalListView.createHorizontalItemLayout(getHorizontalItemList(list),
                BottomSheetParam.HorizontalItemLayoutParam(
                        itemLayoutParam.itemInRow,
                        itemLayoutParam.horizontalTextAppearance,
                        itemLayoutParam.headerTextAppearance))
        horizontalListView.sheetItemClickListener = object : SheetItem.OnClickListener {
            override fun onSheetItemClick(item: SheetItem) {
                val originalItem = list.horizontalItemSheet.find {
                    it.id == item.id
                } ?: throw IllegalStateException("Sheet Item data has been changed and refresh was not called on BottoomSheet")
                contentParam.listener?.onSheetItemClick(originalItem)
            }

        }
        return view
    }

    /**
     * updates previously built component
     * component is self capable of updating only items which have changed
     */
    override fun updateComponentView(itemTypeList: BottomSheetParam.ItemTypeList, view: View) {
        val horizontalGridView = view.findViewById<SheetHorizontalItemList>(R.id.horizontal_list)
        val newList = getHorizontalItemList(itemTypeList as BottomSheetParam.HorizontalItemList)
        horizontalGridView.refreshHorizontalItems(newList)
    }
    override fun isSingleLineContent(itemTypeList: BottomSheetParam.ItemTypeList,
                                     itemLayoutParam: BottomSheetParam.ItemLayoutParam,
                                     contentParam: BottomSheetParam.ContentParam): Boolean {
        val list = itemTypeList as BottomSheetParam.HorizontalItemList
        return list.horizontalItemSheet.size <= itemLayoutParam.itemInRow
    }

    /**
     * creates a copy of list to be used to compare to existing list to change only required items
     */
    private fun getHorizontalItemList(itemTypeList: BottomSheetParam.HorizontalItemList): List<SheetItem> {
        return itemTypeList.horizontalItemSheet.filter {
            it.id != 0
        }.map {
            SheetItem(it.id, it.title, it.drawable, it.tint, it.bitmap, it.contentDescription, it.disabled)
        }
    }
}
```

## File: src/main/java/com/microsoft/fluentui/persistentbottomsheet/sheetItem/PersistentBottomSheetContentViewProvider.kt
```kotlin
package com.microsoft.fluentui.persistentbottomsheet.sheetItem

import android.content.Context
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.LinearLayout

internal class PersistentBottomSheetContentViewProvider(private val context: Context,
                                                        private val contentParam: BottomSheetParam.ContentParam) {

    fun getSheetContentView(container: LinearLayout, itemLayoutParam: BottomSheetParam.ItemLayoutParam): SheetContainerInfo {
        if (contentParam.layoutResId != null) {
            val view = LayoutInflater.from(context).inflate(contentParam.layoutResId!!, container, false)
            container.addView(view)
            return SheetContainerInfo(container, false)
        }
        if (contentParam.childContent != null) {
            container.addView(contentParam.childContent)
            return SheetContainerInfo(container, false)
        }
        if (contentParam.listOfItemList.isEmpty()) {
            return SheetContainerInfo(container, false)
        }
        var isSingleLineItem = false
        contentParam.listOfItemList.forEachIndexed { index, it ->
            val provider = getProvider(context, it)
            val partContainer = provider.getContentView(it, itemLayoutParam, contentParam)
            container.addView(partContainer)
            isSingleLineItem = index == 0 && provider.isSingleLineContent(it, itemLayoutParam, contentParam)
        }
        return SheetContainerInfo(container, isSingleLineItem)
    }

    /**
     * method iterates over available components in bottomsheets
     * and checks which compoenent needs a change
     */
    fun updateSheetContentView(sheetContainer: SheetContainerInfo?, componentIndex: Int = -1) {
        if (contentParam.layoutResId != null || contentParam.childContent != null) {
            return
        }
        if (componentIndex != -1) {
            updateComponent(sheetContainer, componentIndex)
        } else {
            contentParam.listOfItemList.forEachIndexed { index, it ->
                updateComponent(sheetContainer, index)
            }
        }
    }

    /**
     * ask particular viewprovider too check and update if required
     */
    private fun updateComponent(sheetContainer: SheetContainerInfo?, componentIndex: Int) {
        val component = sheetContainer?.Container?.getChildAt(componentIndex)
        component?.apply {
            val itemTypeList = contentParam.listOfItemList[componentIndex]
            val provider = getProvider(component.context, itemTypeList)
            provider.updateComponentView(itemTypeList, this)
        }
    }

    data class SheetContainerInfo(val Container: ViewGroup, val isSingleLineItem: Boolean)

    companion object {

        internal fun getProvider(context: Context, itemTypeList: BottomSheetParam.ItemTypeList): IViewProvider {
            return when (itemTypeList) {
                is BottomSheetParam.HorizontalItemList -> HorizontalViewProvider(context)
                is BottomSheetParam.HorizontalGridItemList -> HorizontalGridProvider(context)
                is BottomSheetParam.DividerItemType -> DividerViewProvider(context)
                is BottomSheetParam.VerticalItemList -> VerticalViewProvider(context)
                else -> throw UnsupportedOperationException("Type of item is not supported for : " + itemTypeList.javaClass.canonicalName)
            }

        }

    }
}


internal interface IViewProvider {
    fun getContentView(itemTypeList: BottomSheetParam.ItemTypeList,
                       itemLayoutParam: BottomSheetParam.ItemLayoutParam,
                       contentParam: BottomSheetParam.ContentParam): View

    fun updateComponentView(itemTypeList: BottomSheetParam.ItemTypeList, view: View);

    fun isSingleLineContent(itemTypeList: BottomSheetParam.ItemTypeList,
                            itemLayoutParam: BottomSheetParam.ItemLayoutParam,
                            contentParam: BottomSheetParam.ContentParam): Boolean {
        return false
    }
}
```

## File: src/main/java/com/microsoft/fluentui/persistentbottomsheet/sheetItem/VerticalViewProvider.kt
```kotlin
package com.microsoft.fluentui.persistentbottomsheet.sheetItem

import android.content.Context
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import android.view.LayoutInflater
import android.view.View
import android.widget.TextView
import com.microsoft.fluentui.drawer.R
import com.microsoft.fluentui.bottomsheet.BottomSheetAdapter
import com.microsoft.fluentui.bottomsheet.BottomSheetItem
import com.microsoft.fluentui.bottomsheet.BottomSheetItem.*
import com.microsoft.fluentui.bottomsheet.BottomSheetItemDivider

internal class VerticalViewProvider(val context: Context) : IViewProvider {

    override fun getContentView(itemTypeList: BottomSheetParam.ItemTypeList,
                                itemLayoutParam: BottomSheetParam.ItemLayoutParam,
                                contentParam: BottomSheetParam.ContentParam): View {
        val verticalItemList = itemTypeList as BottomSheetParam.VerticalItemList
        val view = LayoutInflater.from(context).inflate(R.layout.vertical_bottomsheet_content, null)
        val headerText = view.findViewById<TextView>(R.id.header_text)
        val recyclerView = view.findViewById<RecyclerView>(R.id.vertical_list)

        if (itemTypeList.header.isNullOrEmpty()) {
            headerText.visibility = View.GONE
        } else {
            headerText.visibility = View.VISIBLE
            headerText.text = itemTypeList.header
        }
        recyclerView.layoutManager =
            LinearLayoutManager(context)
        val verticalItemAdapter = BottomSheetAdapter(context, getVerticalItemList(verticalItemList), R.style.Theme_FluentUI_Drawer)

        contentParam.listener?.apply {
            val listener = this
            verticalItemAdapter.onBottomSheetItemClickListener = object : OnClickListener {
                override fun onBottomSheetItemClick(item: BottomSheetItem) {
                    val originalItem = verticalItemList.verticalItemSheet.find {
                        it.id == item.id && it.title == item.title
                    } ?: throw IllegalStateException("Sheet Item data has been changed and refresh was not called")
                    listener.onSheetItemClick(originalItem)
                }
            }
        }

        recyclerView.adapter = verticalItemAdapter
        recyclerView.addItemDecoration(BottomSheetItemDivider(context))
        return view
    }

    override fun updateComponentView(itemTypeList: BottomSheetParam.ItemTypeList, view: View) {
        val recyclerView = view.findViewById<RecyclerView>(R.id.vertical_list)
        val adapter = recyclerView.adapter as BottomSheetAdapter
        val newDataList = getVerticalItemList(itemTypeList as BottomSheetParam.VerticalItemList)
        adapter.updateDataList(newDataList)
    }

    private fun getVerticalItemList(itemTypeList: BottomSheetParam.VerticalItemList): MutableList<BottomSheetItem> {
        return itemTypeList.verticalItemSheet.filter {
            it.id != 0
        }.map {
            if (it.tint != null) {
                BottomSheetItem(it.id, it.drawable, it.title, customBitmap = it.bitmap, imageTint = it.tint!!, imageTintType = ImageTintType.CUSTOM, disabled = it.disabled, accessoryImageId = it.accessoryDrawable,  accessoryBitmap = it.accessoryBitmap)
            } else {
                BottomSheetItem(it.id, it.drawable, it.title, customBitmap = it.bitmap, imageTintType = ImageTintType.NONE, disabled = it.disabled, accessoryImageId = it.accessoryDrawable, accessoryBitmap = it.accessoryBitmap)
            }
        }.toMutableList()
    }

    override fun isSingleLineContent(itemTypeList: BottomSheetParam.ItemTypeList,
                                     itemLayoutParam: BottomSheetParam.ItemLayoutParam,
                                     contentParam: BottomSheetParam.ContentParam): Boolean {
        val verticalItemList = itemTypeList as BottomSheetParam.VerticalItemList
        return verticalItemList.verticalItemSheet.size == 1
    }


}
```

## File: src/main/java/com/microsoft/fluentui/tokenized/bottomsheet/BottomSheet.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentui.tokenized.bottomsheet

import android.content.Context
import android.content.res.Configuration
import android.view.*
import android.view.accessibility.AccessibilityEvent
import android.view.accessibility.AccessibilityManager
import androidx.compose.animation.core.AnimationSpec
import androidx.compose.foundation.*
import androidx.compose.foundation.gestures.Orientation
import androidx.compose.foundation.gestures.draggable
import androidx.compose.foundation.gestures.rememberDraggableState
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.*
import androidx.compose.runtime.*
import androidx.compose.runtime.saveable.Saver
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.draw.shadow
import androidx.compose.ui.focus.onFocusChanged
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.Shape
import androidx.compose.ui.input.nestedscroll.nestedScroll
import androidx.compose.ui.layout.*
import androidx.compose.ui.platform.LocalConfiguration
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalView
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.semantics.*
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.IntOffset
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.compose.*
import com.microsoft.fluentui.compose.FixedThreshold
import com.microsoft.fluentui.compose.SwipeableDefaults
import com.microsoft.fluentui.compose.SwipeableState
import com.microsoft.fluentui.drawer.R
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.ControlTokens
import com.microsoft.fluentui.theme.token.controlTokens.BottomSheetInfo
import com.microsoft.fluentui.theme.token.controlTokens.BottomSheetTokens
import com.microsoft.fluentui.theme.token.controlTokens.SheetAccessibilityAnnouncement
import com.microsoft.fluentui.tokenized.calculateFraction
import com.microsoft.fluentui.util.dpToPx
import com.microsoft.fluentui.util.pxToDp
import kotlinx.coroutines.CancellationException
import kotlinx.coroutines.launch
import kotlin.math.max
import kotlin.math.min
import kotlin.math.roundToInt
import com.microsoft.fluentui.tokenized.Scrim

/**
 * Possible values of [BottomSheetState].
 */

enum class BottomSheetValue {
    /**
     * The bottom sheet is not visible.
     */
    Hidden,

    /**
     * The bottom sheet is visible at full height if its height is less than 50% of screen.
     * If its height more than 50% then its visible to 50% of screen height.
     */
    Shown,

    /**
     * The bottom sheet is partially visible at 50% of the screen height. This state is only
     * enabled if the height of the bottom sheet is more than 50% of the screen height.
     */
    Expanded
}

/**
 * State of the [BottomSheet] composable.
 *
 * @param initialValue The initial value of the state which is set to [BottomSheetValue.Hidden].
 * @param animationSpec The default animation that will be used to animate to a new state.
 * @param confirmStateChange Optional callback invoked to confirm or veto a pending state change.
 */
class BottomSheetState(
    internal val initialValue: BottomSheetValue = BottomSheetValue.Hidden,
    animationSpec: AnimationSpec<Float> = SwipeableDefaults.AnimationSpec,
    confirmStateChange: (BottomSheetValue) -> Boolean = { true }
) : SwipeableState<BottomSheetValue>(
    initialValue = initialValue,
    animationSpec = animationSpec,
    confirmStateChange = confirmStateChange
) {
    /**
     * Whether the bottom sheet is visible.
     */
    var isVisible: Boolean = false
        get() = currentValue != BottomSheetValue.Hidden

    internal val hasExpandedState: Boolean
        get() = anchors.values.contains(BottomSheetValue.Expanded)

    /**
     * Fully expand the bottom sheet with animation and suspend until it if fully expanded or
     * animation has been cancelled.
     * *
     * @throws [CancellationException] if the animation is interrupted
     */
    suspend fun expand() {
        val targetValue = when {
            hasExpandedState -> BottomSheetValue.Expanded
            else -> BottomSheetValue.Shown
        }
        animateTo(targetValue = targetValue)
    }

    /**
     * Show the bottom sheet with animation and suspend until it's shown. The bottom sheet will have
     * peek height visibility.
     *
     * @throws [CancellationException] if the animation is interrupted
     */
    suspend fun show() = animateTo(BottomSheetValue.Shown)

    /**
     * Hide the bottom sheet with animation and suspend until it if fully hidden or animation has
     * been cancelled.
     *
     * @throws [CancellationException] if the animation is interrupted
     */
    suspend fun hide() {
        try {
            animateTo(BottomSheetValue.Hidden)
        } finally {
            isVisible = false
        }
    }

    companion object {
        /**
         * The default [Saver] implementation for [BottomSheetState].
         */
        fun Saver(
            animationSpec: AnimationSpec<Float>, confirmStateChange: (BottomSheetValue) -> Boolean
        ): Saver<BottomSheetState, *> = Saver(save = { it.currentValue }, restore = {
            BottomSheetState(
                initialValue = it,
                animationSpec = animationSpec,
                confirmStateChange = confirmStateChange
            )
        })
    }
}

/**
 * Create a [BottomSheetState] and [remember] it.
 *
 * @param initialValue The initial value of the state.
 * @param animationSpec The default animation that will be used to animate to a new state.
 * @param confirmStateChange Optional callback invoked to confirm or veto a pending state change.
 */
@Composable
fun rememberBottomSheetState(
    initialValue: BottomSheetValue,
    animationSpec: AnimationSpec<Float> = SwipeableDefaults.AnimationSpec,
    confirmStateChange: (BottomSheetValue) -> Boolean = { true }
): BottomSheetState {
    return rememberSaveable(
        initialValue, animationSpec, confirmStateChange, saver = BottomSheetState.Saver(
            animationSpec = animationSpec, confirmStateChange = confirmStateChange
        )
    ) {
        BottomSheetState(
            initialValue = initialValue,
            animationSpec = animationSpec,
            confirmStateChange = confirmStateChange
        )
    }
}

//Tag use for testing
const val BOTTOMSHEET_HANDLE_TAG = "Fluent Bottom Sheet Handle"
const val BOTTOMSHEET_CONTENT_TAG = "Fluent Bottom Sheet Content"
const val BOTTOMSHEET_SCRIM_TAG = "Fluent Bottom Sheet Scrim"

private const val BottomSheetOpenFraction = 0.5f

@Composable
internal fun AccesibilityBottomsheetAnnouncement(sheetState: BottomSheetState, talkbackAnnouncement: SheetAccessibilityAnnouncement){
    val view = LocalView.current
    var previousState by remember { mutableStateOf(sheetState.currentValue) }

    LaunchedEffect(sheetState.currentValue) {
        when (sheetState.currentValue) {
            BottomSheetValue.Expanded -> {
                when (previousState) {
                    BottomSheetValue.Shown -> {
                        view.announceForAccessibility(talkbackAnnouncement.shownToExpanded)
                    }
                    BottomSheetValue.Hidden -> {
                        view.announceForAccessibility(talkbackAnnouncement.collapsedToExpanded)
                    }
                    BottomSheetValue.Expanded -> {}
                }
            }
            BottomSheetValue.Shown -> {
                when (previousState) {
                    BottomSheetValue.Expanded -> {
                        view.announceForAccessibility(talkbackAnnouncement.expandedToShown)
                    }
                    BottomSheetValue.Hidden -> {
                        view.announceForAccessibility(talkbackAnnouncement.collapsedToShown)
                    }
                    BottomSheetValue.Shown -> {}
                }
            }
            BottomSheetValue.Hidden -> {
                when (previousState) {
                    BottomSheetValue.Expanded -> {
                        view.announceForAccessibility(talkbackAnnouncement.expandedToCollapsed)
                    }
                    BottomSheetValue.Shown -> {
                        view.announceForAccessibility(talkbackAnnouncement.shownToCollapsed)
                    }
                    BottomSheetValue.Hidden -> {}
                }
            }
        }
        previousState = sheetState.currentValue // Update previous state
    }
}

/**
 *
 * Bottom sheets present a set of choices while blocking interaction with the rest of the
 * screen. They are an alternative to inline menus and simple dialogs, providing
 * additional room for content, iconography, and actions.
 *
 *
 * @param sheetContent The content of the BottomSheet.
 * @param modifier Optional [Modifier] for the entire component.
 * @param sheetState The state of the bottom sheet.
 * @param expandable if true BottomSheet would expand on drag else BottomSheet open till
 * peeked/wrapped height. The default value is true
 * @param peekHeight The visible height of the BottomSheet in [BottomSheetValue.Shown] state. The
 * peek height should be less than or equal to half screen height. If more than half of the screen
 * height provided, then peek height would be consider half of the screen height.
 * @param scrimVisible create obscures background when scrim visible set to true when the
 * BottomSheet expand. Scrim also blocks interaction with the rest of the screen
 * when visible. The default value is true
 * @param showHandle if true, the handle would be visible on top of the BottomSheet. The default
 * value is true.
 * @param slideOver if true, then sheetContent would be drawn in full length & it just get slided
 * in the visible region. If false then, the sheetContainer placed at the bottom & its height could be at peekHeight, fullheight or hidden when dragged by Handle or swipe down.
 * @param enableSwipeDismiss if false, bottomSheet will not be dismissed after swipe down gesture. Default value is false.
 * @param stickyThresholdUpward The threshold for the upward drag gesture till which the sheet behaves sticky. Default value is 56f.
 * @param stickyThresholdDownward The threshold for the downward drag gesture till which the sheet behaves sticky. Default value is 56f.y
 * @param bottomSheetTokens tokens to provide appearance values. If not provided then bottomSheet
 * tokens will be picked from [AppThemeController]
 * @param content The content of rest of the screen.
 */

@Composable
fun BottomSheet(
    sheetContent: @Composable () -> Unit,
    modifier: Modifier = Modifier,
    sheetState: BottomSheetState = rememberBottomSheetState(BottomSheetValue.Hidden),
    expandable: Boolean = true,
    peekHeight: Dp = 110.dp,
    scrimVisible: Boolean = false,
    showHandle: Boolean = true,
    slideOver: Boolean = true,
    enableSwipeDismiss: Boolean = false,
    preventDismissalOnScrimClick: Boolean = false,  // if true, the sheet will not be dismissed when the scrim is clicked
    stickyThresholdUpward: Float = 56f,
    stickyThresholdDownward: Float = 56f,
    talkbackAnnouncement: SheetAccessibilityAnnouncement = SheetAccessibilityAnnouncement(),
    bottomSheetTokens: BottomSheetTokens? = null,
    onDismiss: () -> Unit = {}, // callback to be invoked after the sheet is closed
    content: @Composable () -> Unit
) {
    val themeID =
        FluentTheme.themeID    //Adding This only for recomposition in case of Token Updates. Unused otherwise.
    val tokens = bottomSheetTokens
        ?: FluentTheme.controlTokens.tokens[ControlTokens.ControlType.BottomSheetControlType] as BottomSheetTokens
    val bottomSheetInfo = BottomSheetInfo()
    AccesibilityBottomsheetAnnouncement(sheetState, talkbackAnnouncement)
    val sheetShape: Shape = RoundedCornerShape(
        topStart = tokens.cornerRadius(bottomSheetInfo),
        topEnd = tokens.cornerRadius(bottomSheetInfo)
    )
    val sheetElevation: Dp = tokens.elevation(bottomSheetInfo)
    val sheetBackgroundColor: Brush = tokens.backgroundBrush(bottomSheetInfo)
    val sheetHandleColor: Color = tokens.handleColor(bottomSheetInfo)
    val scrimOpacity: Float = tokens.scrimOpacity(bottomSheetInfo)
    val scrimColor: Color = tokens.scrimColor(bottomSheetInfo).copy(alpha = scrimOpacity)

    val scope = rememberCoroutineScope()
    val maxLandscapeWidth: Float = tokens.maxLandscapeWidth(bottomSheetInfo)

    BoxWithConstraints(modifier) {
        val fullHeight = constraints.maxHeight.toFloat()
        val sheetHeightState = remember(sheetContent.hashCode()) { mutableStateOf<Float?>(null) }

        Box(
            Modifier
                .fillMaxSize()
                .align(Alignment.Center)
                .semantics {
                    if (!sheetState.isVisible) {
                        expand {
                            if (sheetState.confirmStateChange(BottomSheetValue.Shown)) {
                                scope.launch { sheetState.show() }
                            }
                            true
                        }
                    }
                }) {
            content()
            if (scrimVisible) {
                Scrim(
                    color = scrimColor,
                    onClose = {
                        if (sheetState.confirmStateChange(BottomSheetValue.Hidden)) {
                            scope.launch { sheetState.hide() }
                        }
                    },
                    fraction = {
                        if (sheetState.anchors.isEmpty() || (sheetHeightState.value != null && sheetHeightState.value == 0f)) {
                            0.toFloat()
                        } else {
                            val targetValue: BottomSheetValue = if (slideOver) {
                                if (sheetState.anchors.entries.firstOrNull { it.value == BottomSheetValue.Expanded } != null) {
                                    BottomSheetValue.Expanded
                                } else if (sheetState.anchors.entries.firstOrNull { it.value == BottomSheetValue.Shown } != null) {
                                    BottomSheetValue.Shown
                                } else {
                                    BottomSheetValue.Hidden
                                }
                            } else {
                                BottomSheetValue.Shown
                            }
                            calculateFraction(
                                sheetState.anchors.entries.firstOrNull { it.value == BottomSheetValue.Hidden }?.key!!,
                                sheetState.anchors.entries.firstOrNull { it.value == targetValue }?.key!!,
                                sheetState.offset.value
                            )
                        }
                    },
                    open = sheetState.isVisible,
                    onScrimClick = onDismiss,
                    preventDismissalOnScrimClick = preventDismissalOnScrimClick,
                    tag = BOTTOMSHEET_SCRIM_TAG
                )
            }
        }
        val configuration = LocalConfiguration.current

        Box(
            Modifier
                .align(Alignment.TopCenter)
                .fillMaxWidth(
                    if (configuration.orientation == Configuration.ORIENTATION_LANDSCAPE) maxLandscapeWidth
                    else 1F
                )
                .nestedScroll(
                    if (!enableSwipeDismiss && sheetState.offset.value >= (fullHeight - dpToPx(
                            peekHeight
                        ))
                    ) sheetState.NonDismissiblePostDownNestedScrollConnection
                    else if (slideOver) sheetState.PreUpPostDownNestedScrollConnection
                    else sheetState.PostDownNestedScrollConnection
                )
                .offset {
                    val y = if (sheetState.anchors.isEmpty()) {
                        // if we don't know our anchors yet, render the sheet as hidden
                        fullHeight.roundToInt()
                    } else {
                        // if we do know our anchors, respect them
                        sheetState.offset.value.roundToInt()
                    }
                    IntOffset(0, y + tokens.additionalOffset(bottomSheetInfo))
                }
                .bottomSheetSwipeable(
                    sheetState,
                    expandable,
                    stickyThresholdDownward,
                    stickyThresholdUpward,
                    peekHeight,
                    fullHeight,
                    sheetHeightState.value,
                    slideOver
                )
                .onGloballyPositioned {
                    if (slideOver) {
                        val originalSize = it.size.height.toFloat()
                        sheetHeightState.value = if (expandable) {
                            originalSize
                        } else {
                            min(
                                originalSize,
                                min(dpToPx(peekHeight), fullHeight * BottomSheetOpenFraction)
                            )
                        }
                    }
                }
                .sheetHeight(
                    expandable, slideOver, fullHeight, peekHeight, sheetState
                )
                .clip(sheetShape)
                .shadow(sheetElevation)
                .background(sheetBackgroundColor)
                .semantics(mergeDescendants = false) {
                    if (sheetState.isVisible) {
                        if (enableSwipeDismiss) {
                            dismiss {
                                if (sheetState.confirmStateChange(BottomSheetValue.Hidden)) {
                                    scope.launch { sheetState.hide() }
                                }
                                onDismiss()
                                true
                            }
                        }
                        if (sheetState.currentValue == BottomSheetValue.Shown) {
                            expand {
                                if (sheetState.confirmStateChange(BottomSheetValue.Expanded)) {
                                    scope.launch { sheetState.expand() }
                                }
                                true
                            }
                        } else if (sheetState.hasExpandedState) {
                            collapse {
                                if (sheetState.confirmStateChange(BottomSheetValue.Shown)) {
                                    scope.launch { sheetState.show() }
                                }
                                true
                            }
                        }
                    }
                },
        ) {
            Column {
                if (showHandle) {
                    Column(
                        horizontalAlignment = Alignment.CenterHorizontally,
                        modifier = Modifier
                            .padding(vertical = 8.dp)
                            .fillMaxWidth()
                            //TODO : Revisit SwipeableState usage across module to abstract out common modifier.
                            .draggable(
                                orientation = Orientation.Vertical,
                                state = rememberDraggableState { delta ->
                                    if (!enableSwipeDismiss && sheetState.offset.value >= (fullHeight - dpToPx(
                                            peekHeight
                                        ))
                                    ) {
                                        if (delta < 0) {
                                            sheetState.performDrag(delta)
                                        }
                                    } else sheetState.performDrag(delta)
                                },
                                onDragStopped = { velocity ->
                                    launch {
                                        sheetState.performFling(velocity)
                                        if (!sheetState.isVisible) {
                                            if (enableSwipeDismiss) {
                                                scope.launch { sheetState.hide() }
                                                onDismiss()
                                            } else {
                                                scope.launch { sheetState.show() }
                                            }
                                        }
                                    }
                                },
                            )
                            .testTag(BOTTOMSHEET_HANDLE_TAG)
                    ) {
                        val collapsed = LocalContext.current.resources.getString(R.string.collapsed)
                        val expanded = LocalContext.current.resources.getString(R.string.expanded)
                        val accessibilityManager =
                            LocalContext.current.getSystemService(Context.ACCESSIBILITY_SERVICE) as? AccessibilityManager
                        Icon(painterResource(id = R.drawable.ic_drawer_handle),
                            contentDescription = if (sheetState.currentValue == BottomSheetValue.Expanded || (sheetState.hasExpandedState && sheetState.isVisible)) {
                                LocalContext.current.resources.getString(R.string.drag_handle)
                            } else {
                                null
                            },
                            tint = sheetHandleColor,
                            modifier = Modifier.clickable(
                                enabled = sheetState.hasExpandedState,
                                role = Role.Button,
                                onClickLabel = if (sheetState.currentValue == BottomSheetValue.Expanded) {
                                    LocalContext.current.resources.getString(R.string.collapse)
                                } else {
                                    if (sheetState.hasExpandedState && sheetState.isVisible) LocalContext.current.resources.getString(
                                        R.string.expand
                                    ) else null
                                }
                            ) {
                                if (sheetState.currentValue == BottomSheetValue.Expanded) {
                                    if (sheetState.confirmStateChange(BottomSheetValue.Shown)) {
                                        scope.launch { sheetState.show() }
                                        accessibilityManager?.let { manager ->
                                            if (manager.isEnabled) {
                                                val event =
                                                    AccessibilityEvent.obtain(AccessibilityEvent.TYPE_ANNOUNCEMENT)
                                                        .apply {
                                                            text.add(collapsed)
                                                        }
                                                manager.sendAccessibilityEvent(event)
                                            }
                                        }
                                    }
                                } else if (sheetState.hasExpandedState) {
                                    if (sheetState.confirmStateChange(BottomSheetValue.Expanded)) {
                                        scope.launch { sheetState.expand() }
                                        accessibilityManager?.let { manager ->
                                            if (manager.isEnabled) {
                                                val event =
                                                    AccessibilityEvent.obtain(AccessibilityEvent.TYPE_ANNOUNCEMENT)
                                                        .apply {
                                                            text.add(expanded)
                                                        }
                                                manager.sendAccessibilityEvent(event)
                                            }
                                        }
                                    }
                                }
                            })
                    }
                }
                Column(modifier = Modifier
                    .testTag(BOTTOMSHEET_CONTENT_TAG)
                    .then(if (slideOver) Modifier.onFocusChanged { focusState ->
                        if (focusState.hasFocus && sheetState.currentValue != BottomSheetValue.Expanded) {        // this expands the sheet when the content is focused
                            scope.launch { sheetState.expand() }
                        }
                    } else Modifier.fillMaxSize()), content = {
                        sheetContent()
                        Spacer(
                            modifier = Modifier
                                .fillMaxWidth()
                                .height(
                                    fullHeight.dp
                                )
                                .background(sheetBackgroundColor)
                                .onGloballyPositioned {
                                    sheetHeightState.value = sheetHeightState.value?.minus(it.size.height.toFloat())
                                }
                        )
                    })
            }
        }
    }
}

private fun Modifier.bottomSheetSwipeable(
    sheetState: BottomSheetState,
    expandable: Boolean,
    stickyThresholdDownward: Float,
    stickyThresholdUpward: Float,
    peekHeight: Dp,
    fullHeight: Float,
    sheetHeight: Float?,
    slideOver: Boolean

): Modifier {
    var peekHeightPx = min(dpToPx(peekHeight), fullHeight * BottomSheetOpenFraction)
    val keyCorrection = 0.05f
    val modifier = if (slideOver) {
        if (sheetHeight != null && sheetHeight != 0f) {
            val anchors = if (!expandable) {
                mapOf(
                    fullHeight to BottomSheetValue.Hidden, (fullHeight - min(
                        sheetHeight, peekHeightPx
                    )) + keyCorrection to BottomSheetValue.Shown
                )
            } else if (sheetHeight <= peekHeightPx) {
                mapOf(
                    fullHeight to BottomSheetValue.Hidden,
                    (fullHeight - sheetHeight) + keyCorrection to BottomSheetValue.Shown
                )
            } else {
                mapOf(
                    fullHeight to BottomSheetValue.Hidden,
                    (fullHeight - peekHeightPx) + keyCorrection to BottomSheetValue.Shown,
                    (max(
                        0f, fullHeight - sheetHeight
                    )) + (keyCorrection * 2) to BottomSheetValue.Expanded
                )
            }
            if (sheetState.initialValue == BottomSheetValue.Expanded && anchors.entries.firstOrNull { it.value == BottomSheetValue.Expanded } == null) {
                throw IllegalArgumentException(
                    "BottomSheet initial value must not be set to Expanded " + "if the whole content is visible in Shown state itself"
                )
            }
            Modifier.swipeable(
                state = sheetState,
                anchors = anchors,
                orientation = Orientation.Vertical,
                enabled = sheetState.currentValue != BottomSheetValue.Hidden,
                thresholds = { from, to ->
                    val fromKey = anchors.entries.firstOrNull { it.value == from }?.key
                    val toKey = anchors.entries.firstOrNull { it.value == to }?.key

                    if (fromKey == null || toKey == null) {
                        FixedThreshold(56.dp)
                    } //in case of null defaulting to 56.dp threshold
                    else if (fromKey < toKey) {
                        FixedThreshold(stickyThresholdDownward.dp)
                    } // Threshold for drag down
                    else {
                        FixedThreshold(stickyThresholdUpward.dp)
                    } // Threshold for drag up
                },
                resistance = null
            )

        } else {
            Modifier
        }
    } else {
        peekHeightPx = dpToPx(peekHeight)
        val anchors = if (expandable) {
            mapOf(
                fullHeight to BottomSheetValue.Hidden,
                fullHeight - peekHeightPx to BottomSheetValue.Shown,
                0F to BottomSheetValue.Expanded
            )
        } else {
            mapOf(
                fullHeight to BottomSheetValue.Hidden,
                fullHeight - peekHeightPx to BottomSheetValue.Shown
            )
        }
        Modifier.swipeable(
            state = sheetState,
            anchors = anchors,
            orientation = Orientation.Vertical,
            enabled = sheetState.currentValue != BottomSheetValue.Hidden,
            thresholds = { from, to ->
                val fromKey = anchors.entries.firstOrNull { it.value == from }?.key
                val toKey = anchors.entries.firstOrNull { it.value == to }?.key

                if (fromKey == null || toKey == null) {
                    FixedThreshold(56.dp)
                } //in case of null defaulting to 56 as a fallback
                else if (fromKey < toKey) {
                    FixedThreshold(stickyThresholdDownward.dp)
                } // Threshold for drag down
                else {
                    FixedThreshold(stickyThresholdUpward.dp)
                } // Threshold for drag up
            },
            resistance = null
        )

    }

    return this.then(modifier)
}

private fun Modifier.sheetHeight(
    expandable: Boolean,
    slideOver: Boolean,
    fullHeight: Float,
    peekHeight: Dp,
    sheetState: BottomSheetState
): Modifier {
    val modifier = if (slideOver) {
        if (expandable) {
            Modifier
        } else {
            Modifier.heightIn(
                0.dp, pxToDp(min(fullHeight * BottomSheetOpenFraction, dpToPx(peekHeight)))
            )
        }
    } else {
        Modifier.heightIn(0.dp, pxToDp(fullHeight - sheetState.offset.value))
    }
    return this.then(modifier)
}
```

## File: src/main/java/com/microsoft/fluentui/tokenized/drawer/BottomDrawer.kt
```kotlin
package com.microsoft.fluentui.tokenized.drawer

import android.content.Context
import android.content.res.Configuration
import android.view.accessibility.AccessibilityEvent
import android.view.accessibility.AccessibilityManager
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.focusable
import androidx.compose.foundation.gestures.Orientation
import androidx.compose.foundation.gestures.draggable
import androidx.compose.foundation.gestures.rememberDraggableState
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.BoxWithConstraints
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.heightIn
import androidx.compose.foundation.layout.offset
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.sizeIn
import androidx.compose.runtime.Composable
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.draw.shadow
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.Shape
import androidx.compose.ui.input.nestedscroll.nestedScroll
import androidx.compose.ui.layout.onGloballyPositioned
import androidx.compose.ui.platform.LocalConfiguration
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.semantics.Role
import androidx.compose.ui.semantics.collapse
import androidx.compose.ui.semantics.dismiss
import androidx.compose.ui.semantics.expand
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.IntOffset
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.compose.NonDismissiblePreUpPostDownNestedScrollConnection
import com.microsoft.fluentui.compose.PostDownNestedScrollConnection
import com.microsoft.fluentui.compose.swipeable
import com.microsoft.fluentui.drawer.R
import com.microsoft.fluentui.theme.token.Icon
import com.microsoft.fluentui.tokenized.calculateFraction
import com.microsoft.fluentui.util.pxToDp
import kotlinx.coroutines.launch
import kotlin.math.max
import kotlin.math.min
import kotlin.math.roundToInt


@Composable
internal fun BottomDrawer(
    modifier: Modifier,
    drawerState: DrawerState,
    drawerShape: Shape,
    drawerElevation: Dp,
    drawerBackground: Brush,
    drawerHandleColor: Color,
    scrimColor: Color,
    scrimVisible: Boolean,
    slideOver: Boolean,
    enableSwipeDismiss: Boolean = true,
    showHandle: Boolean,
    onDismiss: () -> Unit,
    drawerContent: @Composable () -> Unit,
    maxLandscapeWidthFraction : Float = 1F,
    preventDismissalOnScrimClick: Boolean = false,
    onScrimClick: () -> Unit = {}
) {
    BoxWithConstraints(modifier.fillMaxSize()) {
        val fullHeight = constraints.maxHeight.toFloat()
        val drawerHeight =
            remember(drawerContent.hashCode()) { mutableStateOf<Float?>(null) }
        val maxOpenHeight = fullHeight * DrawerOpenFraction

        val drawerConstraints = with(LocalDensity.current) {
            Modifier
                .sizeIn(
                    maxWidth = constraints.maxWidth.toDp(),
                    maxHeight = constraints.maxHeight.toDp()
                )
        }
        val scope = rememberCoroutineScope()

        Scrim(
            open = !drawerState.isClosed || (drawerHeight != null && drawerHeight.value == 0f),
            onClose = onDismiss,
            fraction = {
                if (drawerState.anchors.isEmpty() || (drawerHeight != null && drawerHeight.value == 0f)) {
                    0.toFloat()
                } else {
                    var targetValue: DrawerValue = if (slideOver) {
                        drawerState.anchors.maxBy { it.value }.value
                    } else if (drawerState.skipOpenState) {
                        DrawerValue.Expanded
                    } else {
                        DrawerValue.Open
                    }
                    calculateFraction(
                        drawerState.anchors.entries.firstOrNull { it.value == DrawerValue.Closed }?.key!!,
                        drawerState.anchors.entries.firstOrNull { it.value == targetValue }?.key!!,
                        drawerState.offset.value
                    )
                }
            },
            color = if (scrimVisible) scrimColor else Color.Transparent,
            preventDismissalOnScrimClick = preventDismissalOnScrimClick,
            onScrimClick = onScrimClick
        )
        val configuration = LocalConfiguration.current
        Box(
            drawerConstraints
                .fillMaxWidth(
                    if (configuration.orientation == Configuration.ORIENTATION_LANDSCAPE) maxLandscapeWidthFraction
                    else 1F
                )
                .nestedScroll(
                    if (!enableSwipeDismiss && drawerState.offset.value >= maxOpenHeight) drawerState.NonDismissiblePreUpPostDownNestedScrollConnection else
                        if (slideOver) drawerState.nestedScrollConnection else drawerState.PostDownNestedScrollConnection
                )
                .offset {
                    val y = if (drawerState.anchors == null) {
                        fullHeight.roundToInt()
                    } else {
                        drawerState.offset.value.roundToInt()
                    }
                    IntOffset(x = 0, y = y)
                }
                .then(
                    if (maxLandscapeWidthFraction != 1F
                        && configuration.orientation == Configuration.ORIENTATION_LANDSCAPE
                    ) Modifier.align(Alignment.TopCenter)
                    else Modifier
                )
                .onGloballyPositioned { layoutCoordinates ->
                    if (!drawerState.animationInProgress
                        && drawerState.currentValue == DrawerValue.Closed
                        && drawerState.targetValue == DrawerValue.Closed
                    ) {
                        onDismiss()
                    }

                    if (slideOver) {
                        val originalSize = layoutCoordinates.size.height.toFloat()
                        drawerHeight.value = if (drawerState.expandable) {
                            originalSize
                        } else {
                            min(
                                originalSize,
                                maxOpenHeight
                            )
                        }
                    }
                }
                .bottomDrawerSwipeable(
                    drawerState,
                    slideOver,
                    maxOpenHeight,
                    fullHeight,
                    drawerHeight.value
                )
                .drawerHeight(
                    slideOver,
                    maxOpenHeight,
                    fullHeight,
                    drawerState
                )
                .shadow(drawerElevation)
                .clip(drawerShape)
                .background(drawerBackground)
                .semantics {
                    if (!drawerState.isClosed) {
                        dismiss {
                            onDismiss()
                            true
                        }
                        if (drawerState.currentValue == DrawerValue.Open && drawerState.hasExpandedState) {
                            expand {
                                if (drawerState.confirmStateChange(DrawerValue.Expanded)) {
                                    scope.launch { drawerState.expand() }
                                }
                                true
                            }
                        } else if (drawerState.hasExpandedState && drawerState.hasOpenedState) {
                            collapse {
                                if (drawerState.confirmStateChange(DrawerValue.Open)) {
                                    scope.launch { drawerState.open() }
                                }
                                true
                            }
                        }
                    }
                }
                .focusable(false),
        ) {
            Column {
                if (showHandle) {
                    Column(
                        horizontalAlignment = Alignment.CenterHorizontally,
                        modifier = Modifier
                            .padding(vertical = 8.dp)
                            .fillMaxWidth()
                            .draggable(
                                orientation = Orientation.Vertical,
                                state = rememberDraggableState { delta ->
                                    if (!enableSwipeDismiss && drawerState.offset.value >= maxOpenHeight) {
                                        if (delta < 0) {
                                            drawerState.performDrag(delta)
                                        }
                                    } else {
                                        drawerState.performDrag(delta)
                                    }
                                },
                                onDragStopped = { velocity ->
                                    launch {
                                        drawerState.performFling(
                                            velocity
                                        )
                                        if (drawerState.isClosed) {
                                            if (enableSwipeDismiss)
                                                onDismiss()
                                            else
                                                scope.launch { drawerState.open() }
                                        }
                                    }
                                },
                            )
                            .testTag(DRAWER_HANDLE_TAG)
                    ) {
                        val collapsed = LocalContext.current.resources.getString(R.string.collapsed)
                        val expanded = LocalContext.current.resources.getString(R.string.expanded)
                        val accessibilityManager  = LocalContext.current.getSystemService(Context.ACCESSIBILITY_SERVICE) as? AccessibilityManager
                        Icon(
                            painterResource(id = R.drawable.ic_drawer_handle),
                            contentDescription = LocalContext.current.resources.getString(R.string.drag_handle),
                            tint = drawerHandleColor,
                            modifier = Modifier
                                .clickable(
                                    enabled = drawerState.hasExpandedState,
                                    role = Role.Button,
                                    onClickLabel =
                                    if (drawerState.currentValue == DrawerValue.Expanded) {
                                        LocalContext.current.resources.getString(R.string.collapse)
                                    } else {
                                        if (drawerState.hasExpandedState && !drawerState.isClosed) LocalContext.current.resources.getString(
                                            R.string.expand
                                        ) else null
                                    }
                                ) {
                                    if (drawerState.currentValue == DrawerValue.Expanded) {
                                        if (drawerState.hasOpenedState && drawerState.confirmStateChange(
                                                DrawerValue.Open
                                            )
                                        ) {
                                            scope.launch { drawerState.open() }
                                            accessibilityManager?.let { manager ->
                                                if(manager.isEnabled){
                                                    val event = AccessibilityEvent.obtain(
                                                        AccessibilityEvent.TYPE_ANNOUNCEMENT).apply {
                                                        text.add(collapsed)
                                                    }
                                                    manager.sendAccessibilityEvent(event)
                                                }
                                            }
                                        }
                                    } else if (drawerState.hasExpandedState) {
                                        if (drawerState.confirmStateChange(DrawerValue.Expanded)) {
                                            scope.launch { drawerState.expand() }
                                            accessibilityManager?.let { manager ->
                                                if(manager.isEnabled){
                                                    val event = AccessibilityEvent.obtain(
                                                        AccessibilityEvent.TYPE_ANNOUNCEMENT).apply {
                                                        text.add(expanded)
                                                    }
                                                    manager.sendAccessibilityEvent(event)
                                                }
                                            }
                                        }
                                    }
                                }
                        )
                    }
                }
                Column(modifier = Modifier
                    .testTag(DRAWER_CONTENT_TAG), content = { drawerContent() })
            }
        }
    }
}


private fun Modifier.bottomDrawerSwipeable(
    drawerState: DrawerState,
    slideOver: Boolean,
    maxOpenHeight: Float,
    fullHeight: Float,
    drawerHeight: Float?
): Modifier {
    val modifier = if (slideOver) {
        if (drawerHeight != null) {
            val minHeight = 0f
            val bottomOpenStateY = max(maxOpenHeight, fullHeight - drawerHeight)
            val bottomExpandedStateY = max(minHeight, fullHeight - drawerHeight)
            val anchors =
                if (drawerHeight <= maxOpenHeight) {  // when contentHeight is less than maxOpenHeight
                    if (drawerState.anchors.containsValue(DrawerValue.Expanded)) {
                        /*
                        *For dynamic content when drawerHeight was previously greater than maxOpenHeight and now less than maxOpenHEight
                        *The old anchors won't have Open state, so we need to continue with Expanded state.
                        */
                        mapOf(
                            bottomOpenStateY to DrawerValue.Expanded,
                            fullHeight to DrawerValue.Closed,
                        )
                    } else {
                        mapOf(
                            bottomOpenStateY to DrawerValue.Open,
                            fullHeight to DrawerValue.Closed
                        )
                    }
                } else {
                    if (drawerState.expandable) {
                        if (drawerState.skipOpenState) {
                            if (drawerState.anchors.containsValue(DrawerValue.Open)) {
                                /*
                                *For dynamic content when drawerHeight was previously less than maxOpenHeight and now greater than maxOpenHEight
                                *The old anchors won't have Expanded state, so we need to continue with Open state.
                                */
                                mapOf(
                                    bottomExpandedStateY to DrawerValue.Open, // when drawerHeight is greater than maxOpenHeight but less than fullHeight, then Expanded state starts from fullHeight-drawerHeight
                                    fullHeight to DrawerValue.Closed
                                )
                            } else {
                                mapOf(
                                    bottomExpandedStateY to DrawerValue.Expanded, // when drawerHeight is greater than maxOpenHeight but less than fullHeight, then Expanded state starts from fullHeight-drawerHeight
                                    fullHeight to DrawerValue.Closed,
                                )
                            }
                        } else {
                            mapOf(
                                maxOpenHeight to DrawerValue.Open,
                                bottomExpandedStateY to DrawerValue.Expanded,
                                fullHeight to DrawerValue.Closed
                            )
                        }
                    } else {
                        mapOf(
                            maxOpenHeight to DrawerValue.Open,
                            fullHeight to DrawerValue.Closed
                        )
                    }
                }
            Modifier.swipeable(
                state = drawerState,
                anchors = anchors,
                orientation = Orientation.Vertical,
                enabled = false,
                resistance = null
            )
        } else {
            Modifier
        }
    } else {
        val anchors = if (drawerState.expandable) {
            if (drawerState.skipOpenState) {
                mapOf(
                    0F to DrawerValue.Expanded,
                    fullHeight to DrawerValue.Closed,
                )
            } else {
                mapOf(
                    maxOpenHeight to DrawerValue.Open,
                    0F to DrawerValue.Expanded,
                    fullHeight to DrawerValue.Closed
                )
            }
        } else {
            mapOf(
                maxOpenHeight to DrawerValue.Open,
                fullHeight to DrawerValue.Closed
            )
        }
        Modifier.swipeable(
            state = drawerState,
            anchors = anchors,
            orientation = Orientation.Vertical,
            enabled = false,
            resistance = null
        )
    }
    return this.then(modifier)
}


private fun Modifier.drawerHeight(
    slideOver: Boolean,
    fixedHeight: Float,
    fullHeight: Float,
    drawerState: DrawerState
): Modifier {
    val modifier = if (slideOver) {
        if (drawerState.expandable) {
            Modifier
        } else {
            Modifier.heightIn(
                0.dp,
                pxToDp(fixedHeight)
            )
        }
    } else {
        Modifier.height(pxToDp(fullHeight - drawerState.offset.value))
    }

    return this.then(modifier)
}
```

## File: src/main/java/com/microsoft/fluentui/tokenized/drawer/Drawer.kt
```kotlin
package com.microsoft.fluentui.tokenized.drawer

import androidx.compose.foundation.Canvas
import androidx.compose.foundation.gestures.detectTapGestures
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.saveable.Saver
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.Shape
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.platform.LocalView
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.IntOffset
import androidx.compose.ui.unit.IntRect
import androidx.compose.ui.unit.IntSize
import androidx.compose.ui.unit.LayoutDirection
import androidx.compose.ui.window.Popup
import androidx.compose.ui.window.PopupPositionProvider
import androidx.compose.ui.window.PopupProperties
import androidx.core.view.WindowInsetsCompat
import com.microsoft.fluentui.compose.ModalPopup
import com.microsoft.fluentui.compose.PreUpPostDownNestedScrollConnection
import com.microsoft.fluentui.compose.SwipeableState
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.ControlTokens
import com.microsoft.fluentui.theme.token.controlTokens.BehaviorType
import com.microsoft.fluentui.theme.token.controlTokens.DrawerAccessibilityAnnouncement
import com.microsoft.fluentui.theme.token.controlTokens.DrawerInfo
import com.microsoft.fluentui.theme.token.controlTokens.DrawerTokens
import kotlinx.coroutines.CancellationException
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch

/**
 * State of the [Drawer] composable.
 *
 * @param initialValue The initial value of the state.
 * @param expandable defines if the drawer is allowed to take the Expanded state.
 * @param skipOpenState defines if the drawer is allowed to take the Open state. (Open State is skipped in case of true)
 * expandable = true & skipOpenState = false -> Drawer can take all the three states.
 * expandable = true & skipOpenState = true -> Drawer can take only Closed & Expanded states.
 * expandable = false & skipOpenState = false -> Drawer can take only Closed & Open states.
 * expandable = false & skipOpenState = true -> Invalid state.
 * @param confirmStateChange Optional callback invoked to confirm or veto a pending state change.
 */
class DrawerState(
    private val initialValue: DrawerValue = DrawerValue.Closed,
    internal val expandable: Boolean = true,
    internal val skipOpenState: Boolean = false,
    confirmStateChange: (DrawerValue) -> Boolean = { true }
) : SwipeableState<DrawerValue>(
    initialValue = initialValue,
    animationSpec = AnimationSpec,
    confirmStateChange = confirmStateChange
) {
    init {
        if (skipOpenState) {
            require(initialValue != DrawerValue.Open) {
                "The initial value must not be set to Open if skipOpenState is set to" +
                        " true."
            }
            require(expandable) {
                "Invalid state: expandable = false & skipOpenState = true"
            }
        }
        if (!expandable) {
            require(initialValue != DrawerValue.Expanded) {
                "The initial value must not be set to Expanded if expandable is set to" +
                        " false."
            }
        }
    }

    var enable: Boolean by mutableStateOf(initialValue != DrawerValue.Closed)

    /**
     * Whether drawer has Open state.
     * It is false in case of skipOpenState is true.
     */
    internal val hasOpenedState: Boolean
        get() = anchors.values.contains(DrawerValue.Open)

    /**
     * Whether the drawer is closed.
     */
    val isClosed: Boolean
        get() = currentValue == DrawerValue.Closed

    /**
     * Whether drawer has expanded state.
     */
    internal val hasExpandedState: Boolean
        get() = anchors.values.contains(DrawerValue.Expanded)

    var animationInProgress: Boolean = false

    /**
     * Open the drawer with animation and suspend until it if fully opened or animation has been
     * cancelled. This method will throw [CancellationException] if the animation is
     * interrupted
     *
     * @return the reason the open animation ended
     */
    suspend fun open() {
        enable = true
        animationInProgress = true
        do {
            delay(50)
        } while (!anchorsFilled)
        /*
        * first try to open the drawer
        * if not possible then try to expand the drawer
         */
        var targetValue = when {
            hasOpenedState -> DrawerValue.Open
            hasExpandedState -> DrawerValue.Expanded
            else -> DrawerValue.Closed
        }
        if (targetValue != currentValue) {
            try {
                animateTo(targetValue = targetValue, AnimationSpec)

            } catch (e: Exception) {
                //TODO: When previous instance of drawer changes its content & closed then on
                // re-triggering the same drawer, it open but stuck to end of screen due to
                // JobCancellationException thrown with message "ScopeCoroutine was cancelled".
                // Hence re-triggering "animateTo". Check for better sol
                animateTo(targetValue = targetValue, AnimationSpec)
            } finally {
                animationInProgress = false
            }
        } else {
            animationInProgress = false
        }
    }

    /**
     * Close the drawer with animation and suspend until it if fully closed or animation has been
     * cancelled. This method will throw [CancellationException] if the animation is
     * interrupted
     *
     * @return the reason the close animation ended
     */
    suspend fun close() {
        animationInProgress = true
        try {
            animateTo(DrawerValue.Closed, AnimationSpec)
        } catch (e: Exception) {
            animateTo(DrawerValue.Closed, AnimationSpec)
        } finally {
            animationInProgress = false
            enable = false
            anchors = emptyMap()
            anchorsFilled = false
        }
    }

    /**
     * Fully expand the drawer with animation and suspend until it if fully expanded or
     * animation has been cancelled.
     * *
     * @throws [CancellationException] if the animation is interrupted
     */
    suspend fun expand() {
        enable = true
        animationInProgress = true
        do {
            delay(50)
        } while (!anchorsFilled)
        /*
        * first try to expand the drawer
        * if not possible then try to open the drawer
         */
        val targetValue = when {
            hasExpandedState -> DrawerValue.Expanded
            hasOpenedState -> DrawerValue.Open
            else -> DrawerValue.Closed
        }
        if (targetValue != currentValue) {
            try {
                animateTo(targetValue = targetValue, AnimationSpec)
            } catch (e: Exception) {
                animateTo(targetValue = targetValue, AnimationSpec)
            } finally {
                animationInProgress = false
            }
        } else {
            animationInProgress = false
        }
    }

    val nestedScrollConnection = this.PreUpPostDownNestedScrollConnection

    companion object {
        /**
         * The default [Saver] implementation for [DrawerState].
         */
        fun Saver(
            expandable: Boolean,
            skipOpenState: Boolean,
            confirmStateChange: (DrawerValue) -> Boolean
        ) =
            Saver<DrawerState, DrawerValue>(
                save = { it.currentValue },
                restore = {
                    DrawerState(
                        initialValue = it,
                        expandable = expandable,
                        skipOpenState = skipOpenState,
                        confirmStateChange = confirmStateChange
                    )
                }
            )

        /**
         * The default [Saver] implementation for [DrawerState].
         */
        @Deprecated(
            message = "Please specify the expandable And/Or skipOpenState parameter",
            replaceWith = ReplaceWith(
                "DrawerState.Saver(" +
                        "expandable = ," +
                        "skipOpenState = ," +
                        "confirmStateChange = confirmStateChange" +
                        ")"
            )
        )
        fun Saver(confirmStateChange: (DrawerValue) -> Boolean): Saver<DrawerState, DrawerValue> =
            Saver(expandable = true, skipOpenState = false, confirmStateChange = confirmStateChange)

    }
}

/**
 * Create and [remember] a [DrawerState].
 * @param confirmStateChange Optional callback invoked to confirm or veto a pending state change.
 */
@Composable
fun rememberDrawerState(confirmStateChange: (DrawerValue) -> Boolean = { true }): DrawerState {
    return rememberSaveable(
        saver = DrawerState.Saver(
            expandable = true,
            skipOpenState = false,
            confirmStateChange = confirmStateChange
        )
    ) {
        DrawerState(
            initialValue = DrawerValue.Closed,
            expandable = true,
            skipOpenState = false,
            confirmStateChange
        )
    }
}

@Composable
fun rememberBottomDrawerState(
    initialValue: DrawerValue = DrawerValue.Closed,
    expandable: Boolean = true,
    skipOpenState: Boolean = false,
    confirmStateChange: (DrawerValue) -> Boolean = { true }
): DrawerState {
    return rememberSaveable(
        initialValue, confirmStateChange, expandable, skipOpenState,
        saver = DrawerState.Saver(expandable, skipOpenState, confirmStateChange)
    ) {
        DrawerState(initialValue, expandable, skipOpenState, confirmStateChange)
    }
}

private class DrawerPositionProvider(val offset: IntOffset?) : PopupPositionProvider {
    override fun calculatePosition(
        anchorBounds: IntRect,
        windowSize: IntSize,
        layoutDirection: LayoutDirection,
        popupContentSize: IntSize
    ): IntOffset {
        if (offset != null) {
            return IntOffset(anchorBounds.left + offset.x, anchorBounds.top + offset.y)
        }
        return IntOffset(0, 0)
    }
}

@Composable
internal fun Scrim(
    open: Boolean,
    onClose: () -> Unit,
    fraction: () -> Float,
    color: Color,
    preventDismissalOnScrimClick: Boolean = false,
    onScrimClick: () -> Unit = {},
) {
    val dismissDrawer = if (open) {
        Modifier.pointerInput(onClose) {
            detectTapGestures {
                if (!preventDismissalOnScrimClick) {
                    onClose()
                }
                onScrimClick() //this function runs post onClose() so that the drawer is closed before the callback is invoked
            }
        }
    } else {
        Modifier
    }

    Canvas(
        Modifier
            .fillMaxSize()
            .then(dismissDrawer)
            .testTag(DRAWER_SCRIM_TAG)
    ) {
        drawRect(color, alpha = fraction())
    }
}

@Composable
internal fun AnnounceDrawerActions(
    drawerState: DrawerState,
    talkbackAnnouncement: DrawerAccessibilityAnnouncement
) { // Announces actions for drawer through Talkback
    val view = LocalView.current
    var previousState by remember { mutableStateOf(drawerState.enable) }

    LaunchedEffect(drawerState.enable) {
        if (drawerState.enable != previousState) {
            if (drawerState.enable) {
                view.announceForAccessibility(talkbackAnnouncement.opened)
            } else {
                view.announceForAccessibility(talkbackAnnouncement.closed)
            }
            previousState = drawerState.enable
        }
    }

}

/**
 *
 * Drawer block interaction with the rest of an app’s content with a scrim.
 * They are elevated above most of the app’s UI and don’t affect the screen’s layout grid.
 *
 * @param modifier optional modifier for the drawer
 * @param behaviorType opening behaviour of drawer. Default is BOTTOM
 * @param drawerState state of the drawer
 * @param scrimVisible create obscures background when scrim visible set to true when the drawer is open. The default value is true
 * @param offset offset of the drawer from the anchor. The default value is (0,0).
 * @param drawerTokens tokens to provide appearance values. If not provided then drawer tokens will be picked from [FluentTheme]
 * @param drawerContent composable that represents content inside the drawer
 * @param preventDismissalOnScrimClick when true, the drawer will not be dismissed when the scrim is clicked
 * @param onScrimClick callback to be invoked when the scrim is clicked
 *
 * @throws IllegalStateException when parent has [Float.POSITIVE_INFINITY] width
 */

@Composable
fun Drawer(
    modifier: Modifier = Modifier,
    behaviorType: BehaviorType = BehaviorType.BOTTOM,
    drawerState: DrawerState = rememberDrawerState(),
    scrimVisible: Boolean = true,
    offset: IntOffset? = null,
    talkbackAnnouncement: DrawerAccessibilityAnnouncement = DrawerAccessibilityAnnouncement(),
    drawerTokens: DrawerTokens? = null,
    drawerContent: @Composable () -> Unit,
    preventDismissalOnScrimClick: Boolean = false,
    onScrimClick: () -> Unit = {}
) {
    val tokens = drawerTokens
        ?: FluentTheme.controlTokens.tokens[ControlTokens.ControlType.DrawerControlType] as DrawerTokens
    val drawerInfo = DrawerInfo(type = behaviorType)
    AnnounceDrawerActions(drawerState, talkbackAnnouncement = talkbackAnnouncement)

    if (drawerState.enable) {
        val themeID =
            FluentTheme.themeID    //Adding This only for recomposition in case of Token Updates. Unused otherwise.
        val popupPositionProvider = DrawerPositionProvider(offset)
        val scope = rememberCoroutineScope()
        val close: () -> Unit = {
            if (drawerState.confirmStateChange(DrawerValue.Closed)) {
                scope.launch { drawerState.close() }
            }
        }
        Popup(
            onDismissRequest = close,
            popupPositionProvider = popupPositionProvider,
            properties = PopupProperties(focusable = true, clippingEnabled = (offset == null))
        )
        {
            val drawerShape: Shape =
                when (behaviorType) {
                    BehaviorType.BOTTOM, BehaviorType.BOTTOM_SLIDE_OVER -> RoundedCornerShape(
                        topStart = tokens.borderRadius(drawerInfo),
                        topEnd = tokens.borderRadius(drawerInfo)
                    )

                    BehaviorType.TOP -> RoundedCornerShape(
                        bottomStart = tokens.borderRadius(drawerInfo),
                        bottomEnd = tokens.borderRadius(drawerInfo)
                    )

                    else -> RoundedCornerShape(tokens.borderRadius(drawerInfo))
                }
            val drawerElevation: Dp = tokens.elevation(drawerInfo)
            val drawerBackgroundColor: Brush =
                tokens.backgroundBrush(drawerInfo)
            val drawerHandleColor: Color = tokens.handleColor(drawerInfo)
            val scrimOpacity: Float = tokens.scrimOpacity(drawerInfo)
            val scrimColor: Color =
                tokens.scrimColor(drawerInfo).copy(alpha = scrimOpacity)

            when (behaviorType) {
                BehaviorType.BOTTOM, BehaviorType.BOTTOM_SLIDE_OVER -> BottomDrawer(
                    modifier = modifier,
                    drawerState = drawerState,
                    drawerShape = drawerShape,
                    drawerElevation = drawerElevation,
                    drawerBackground = drawerBackgroundColor,
                    drawerHandleColor = drawerHandleColor,
                    scrimColor = scrimColor,
                    scrimVisible = scrimVisible,
                    slideOver = behaviorType == BehaviorType.BOTTOM_SLIDE_OVER,
                    showHandle = true,
                    onDismiss = close,
                    drawerContent = drawerContent,
                    preventDismissalOnScrimClick = preventDismissalOnScrimClick,
                    onScrimClick = onScrimClick
                )

                BehaviorType.TOP -> TopDrawer(
                    modifier = modifier,
                    drawerState = drawerState,
                    drawerShape = drawerShape,
                    drawerElevation = drawerElevation,
                    drawerBackground = drawerBackgroundColor,
                    drawerHandleColor = drawerHandleColor,
                    scrimColor = scrimColor,
                    scrimVisible = scrimVisible,
                    onDismiss = close,
                    drawerContent = drawerContent,
                    preventDismissalOnScrimClick = preventDismissalOnScrimClick,
                    onScrimClick = onScrimClick
                )

                BehaviorType.LEFT_SLIDE_OVER, BehaviorType.RIGHT_SLIDE_OVER -> HorizontalDrawer(
                    behaviorType = behaviorType,
                    modifier = modifier,
                    drawerState = drawerState,
                    drawerShape = drawerShape,
                    drawerElevation = drawerElevation,
                    drawerBackground = drawerBackgroundColor,
                    scrimColor = scrimColor,
                    scrimVisible = scrimVisible,
                    onDismiss = close,
                    drawerContent = drawerContent,
                    preventDismissalOnScrimClick = preventDismissalOnScrimClick,
                    onScrimClick = onScrimClick
                )
            }
        }
    }
}


/**
 *
 * BottomDrawer block interaction with the rest of an app’s content with a scrim.
 * They are elevated above most of the app’s UI and don’t affect the screen’s layout grid.
 *
 * @param modifier optional modifier for the drawer
 * @param drawerState state of the drawer
 * @param slideOver if true, then BottomDrawer would be drawn in full length & only covering up to half screen when open & it get slided more
 * in the visible region on expand. If false then, the BottomDrawer end at the bottom & hence the content get only the visible region height to draw itself.The default value is true
 * @param scrimVisible create obscures background when scrim visible set to true when the drawer is open. The default value is true
 * @param showHandle if true drawer handle would be visible. The default value is true
 * @param windowInsetsType Type window insets to be passed to the bottom drawer window via PaddingValues params. The default value is WindowInsetsCompat.Type.systemBars()
 * @param drawerTokens tokens to provide appearance values. If not provided then drawer tokens will be picked from [FluentTheme]
 * @param drawerContent composable that represents content inside the drawer
 * @param maxLandscapeWidthFraction max width of bottomDrawer wrt to screen width in landscape mode. The default value is 1F
 * @param preventDismissalOnScrimClick when true, the drawer will not be dismissed when the scrim is clicked
 * @param onScrimClick callback to be invoked when the scrim is clicked
 *
 * @throws IllegalStateException when parent has [Float.POSITIVE_INFINITY] width
 */

@Composable
fun BottomDrawer(
    modifier: Modifier = Modifier,
    drawerState: DrawerState = rememberDrawerState(),
    slideOver: Boolean = true,
    scrimVisible: Boolean = true,
    showHandle: Boolean = true,
    enableSwipeDismiss: Boolean = true,
    windowInsetsType: Int = WindowInsetsCompat.Type.systemBars(),
    talkbackAnnouncement: DrawerAccessibilityAnnouncement = DrawerAccessibilityAnnouncement(),
    drawerTokens: DrawerTokens? = null,
    drawerContent: @Composable () -> Unit,
    maxLandscapeWidthFraction: Float = 1F,
    preventDismissalOnScrimClick: Boolean = false,
    onScrimClick: () -> Unit = {},
) {
    val behaviorType =
        if (slideOver) BehaviorType.BOTTOM_SLIDE_OVER else BehaviorType.BOTTOM
    val drawerInfo = DrawerInfo(type = behaviorType)
    val tokens = drawerTokens
        ?: FluentTheme.controlTokens.tokens[ControlTokens.ControlType.DrawerControlType] as DrawerTokens
    AnnounceDrawerActions(drawerState, talkbackAnnouncement = talkbackAnnouncement)
    if (drawerState.enable) {
        val themeID =
            FluentTheme.themeID    //Adding This only for recomposition in case of Token Updates. Unused otherwise.
        val scope = rememberCoroutineScope()
        val close: () -> Unit = {
            if (drawerState.confirmStateChange(DrawerValue.Closed)) {
                scope.launch { drawerState.close() }
            }
        }
        ModalPopup(
            windowInsetsType = windowInsetsType,
            properties = PopupProperties(
                focusable = true,
                dismissOnBackPress = true,
                dismissOnClickOutside = false
            ),
            onDismissRequest = {
                close()
            },
        )
        {
            val drawerShape: Shape =
                RoundedCornerShape(
                    topStart = tokens.borderRadius(drawerInfo),
                    topEnd = tokens.borderRadius(drawerInfo)
                )

            val drawerElevation: Dp = tokens.elevation(drawerInfo)
            val drawerBackgroundColor: Brush =
                tokens.backgroundBrush(drawerInfo)
            val drawerHandleColor: Color = tokens.handleColor(drawerInfo)
            val scrimOpacity: Float = tokens.scrimOpacity(drawerInfo)
            val scrimColor: Color =
                tokens.scrimColor(drawerInfo).copy(alpha = scrimOpacity)
            BottomDrawer(
                modifier = modifier,
                drawerState = drawerState,
                drawerShape = drawerShape,
                drawerElevation = drawerElevation,
                drawerBackground = drawerBackgroundColor,
                drawerHandleColor = drawerHandleColor,
                scrimColor = scrimColor,
                scrimVisible = scrimVisible,
                slideOver = slideOver,
                showHandle = showHandle,
                enableSwipeDismiss = enableSwipeDismiss,
                onDismiss = close,
                drawerContent = drawerContent,
                preventDismissalOnScrimClick = preventDismissalOnScrimClick,
                maxLandscapeWidthFraction = maxLandscapeWidthFraction,
                onScrimClick = onScrimClick
            )
        }
    }
}
```

## File: src/main/java/com/microsoft/fluentui/tokenized/drawer/DrawerUtils.kt
```kotlin
package com.microsoft.fluentui.tokenized.drawer

import androidx.compose.animation.core.TweenSpec
import androidx.compose.ui.unit.dp

val EndDrawerPadding = 56.dp
val DrawerVelocityThreshold = 400.dp

val AnimationSpec = TweenSpec<Float>(durationMillis = 256)

const val DrawerOpenFraction = 0.5f

//Tag use for testing
const val DRAWER_HANDLE_TAG = "Fluent Drawer Handle"
const val DRAWER_CONTENT_TAG = "Fluent Drawer Content"
const val DRAWER_SCRIM_TAG = "Fluent Drawer Scrim"

//Drawer Handle height + padding
val DrawerHandleHeightOffset = 20.dp

/**
 * Possible values of [DrawerState].
 */
enum class DrawerValue {
    /**
     * The state of the drawer when it is closed.
     */
    Closed,

    /**
     * The state of the drawer when it is open.
     */
    Open,

    /**
     * The state of the bottom drawer when it is expanded (i.e. at 100% height).
     */
    Expanded
}
```

## File: src/main/java/com/microsoft/fluentui/tokenized/drawer/HorizontalDrawer.kt
```kotlin
package com.microsoft.fluentui.tokenized.drawer

import androidx.compose.foundation.background
import androidx.compose.foundation.gestures.Orientation
import androidx.compose.foundation.gestures.draggable
import androidx.compose.foundation.gestures.rememberDraggableState
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.BoxWithConstraints
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.offset
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.sizeIn
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.draw.shadow
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.Shape
import androidx.compose.ui.layout.layout
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.platform.LocalLayoutDirection
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.semantics.dismiss
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.IntOffset
import androidx.compose.ui.unit.LayoutDirection
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.compose.FixedThreshold
import com.microsoft.fluentui.compose.swipeable
import com.microsoft.fluentui.theme.token.controlTokens.BehaviorType
import com.microsoft.fluentui.tokenized.calculateFraction
import com.microsoft.fluentui.util.dpToPx
import com.microsoft.fluentui.util.pxToDp
import kotlinx.coroutines.launch
import kotlin.math.max
import kotlin.math.roundToInt

/**
 *
 *
 * Side drawers block interaction with the rest of an app’s content with a scrim.
 * They are elevated above most of the app’s UI and don’t affect the screen’s layout grid.
 *
 * @param drawerContent composable that represents content inside the drawer
 * @param modifier optional modifier for the drawer
 * @param drawerState state of the drawer
 * @param drawerShape shape of the drawer sheet
 * @param drawerElevation drawer sheet elevation. This controls the size of the shadow below the
 * drawer sheet
 * @param drawerBackground background color to be used for the drawer sheet
 * @param scrimColor color of the scrim that obscures content when the drawer is open
 * @param preventDismissalOnScrimClick when true, the drawer will not be dismissed when the scrim is clicked
 * @param onScrimClick callback to be invoked when the scrim is clicked
 *
 * @throws IllegalStateException when parent has [Float.POSITIVE_INFINITY] width
 */


@Composable
internal fun HorizontalDrawer(
    modifier: Modifier,
    behaviorType: BehaviorType,
    drawerState: DrawerState,
    drawerShape: Shape,
    drawerElevation: Dp,
    drawerBackground: Brush,
    scrimColor: Color,
    scrimVisible: Boolean,
    onDismiss: () -> Unit,
    drawerContent: @Composable () -> Unit,
    preventDismissalOnScrimClick: Boolean = false,
    onScrimClick: () -> Unit = {}
) {
    BoxWithConstraints(modifier.fillMaxSize()) {
        val modalDrawerConstraints = constraints

        // TODO : think about Infinite max bounds case
        if (!modalDrawerConstraints.hasBoundedWidth) {
            throw IllegalStateException("Drawer shouldn't have infinite width")
        }

        val fullWidth = modalDrawerConstraints.maxWidth.toFloat()
        var drawerWidth by remember(fullWidth) { mutableStateOf(fullWidth) }
        //Hack to get exact drawerHeight wrt to content.
        val visible = remember { mutableStateOf(true) }
        if (visible.value) {
            Box(
                modifier = Modifier
                    .layout { measurable, constraints ->
                        val placeable = measurable.measure(constraints)
                        layout(placeable.width, placeable.height) {
                            drawerWidth = placeable.width.toFloat()
                            visible.value = false
                        }
                    }
            ) {
                drawerContent()
            }
        } else {
            val paddingPx = pxToDp(max(dpToPx(EndDrawerPadding), (fullWidth - drawerWidth)))
            val leftSlide = behaviorType == BehaviorType.LEFT_SLIDE_OVER

            val minValue =
                modalDrawerConstraints.maxWidth.toFloat() * (if (leftSlide) (-1F) else (1F))
            val maxValue = 0f

            val anchors = mapOf(minValue to DrawerValue.Closed, maxValue to DrawerValue.Open)
            val isRtl = LocalLayoutDirection.current == LayoutDirection.Rtl
            Scrim(
                open = !drawerState.isClosed,
                onClose = onDismiss,
                fraction = {
                    calculateFraction(minValue, maxValue, drawerState.offset.value)
                },
                color = if (scrimVisible) scrimColor else Color.Transparent,
                preventDismissalOnScrimClick = preventDismissalOnScrimClick,
                onScrimClick = onScrimClick
            )

            Box(
                modifier = with(LocalDensity.current) {
                    Modifier
                        .sizeIn(
                            minWidth = modalDrawerConstraints.minWidth.toDp(),
                            minHeight = modalDrawerConstraints.minHeight.toDp(),
                            maxWidth = modalDrawerConstraints.maxWidth.toDp(),
                            maxHeight = modalDrawerConstraints.maxHeight.toDp()
                        )
                }
                    .offset { IntOffset(drawerState.offset.value.roundToInt(), 0) }
                    .padding(
                        start = if (leftSlide) 0.dp else paddingPx,
                        end = if (leftSlide) paddingPx else 0.dp
                    )
                    .semantics {
                        if (!drawerState.isClosed) {
                            dismiss {
                                onDismiss()
                                true
                            }
                        }
                    }
                    .shadow(drawerElevation)
                    .clip(drawerShape)
                    .background(drawerBackground)
                    .swipeable(
                        state = drawerState,
                        anchors = anchors,
                        thresholds = { _, _ -> FixedThreshold(pxToDp(value = drawerWidth / 2)) },
                        orientation = Orientation.Horizontal,
                        enabled = false,
                        reverseDirection = isRtl,
                        velocityThreshold = DrawerVelocityThreshold,
                        resistance = null
                    ),
            ) {
                Column(
                    Modifier
                        .draggable(
                            orientation = Orientation.Horizontal,
                            state = rememberDraggableState { delta ->
                                drawerState.performDrag(delta)
                            },
                            onDragStopped = { velocity ->
                                launch {
                                    drawerState.performFling(
                                        velocity
                                    )
                                    if (drawerState.isClosed) {
                                        onDismiss()
                                    }
                                }
                            },
                        )
                        .testTag(DRAWER_CONTENT_TAG), content = { drawerContent() })
            }
        }
    }
}
```

## File: src/main/java/com/microsoft/fluentui/tokenized/drawer/TopDrawer.kt
```kotlin
package com.microsoft.fluentui.tokenized.drawer

import androidx.compose.foundation.background
import androidx.compose.foundation.focusable
import androidx.compose.foundation.gestures.Orientation
import androidx.compose.foundation.gestures.draggable
import androidx.compose.foundation.gestures.rememberDraggableState
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.BoxWithConstraints
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.offset
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.sizeIn
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.alpha
import androidx.compose.ui.draw.clip
import androidx.compose.ui.draw.shadow
import androidx.compose.ui.focus.focusTarget
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.Shape
import androidx.compose.ui.layout.layout
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.semantics.dismiss
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.IntOffset
import androidx.compose.ui.unit.dp
import androidx.constraintlayout.compose.ConstraintLayout
import com.microsoft.fluentui.compose.swipeable
import com.microsoft.fluentui.drawer.R
import com.microsoft.fluentui.theme.token.Icon
import com.microsoft.fluentui.tokenized.calculateFraction
import com.microsoft.fluentui.util.dpToPx
import com.microsoft.fluentui.util.pxToDp
import kotlinx.coroutines.launch
import kotlin.math.min


@Composable
internal fun TopDrawer(
    modifier: Modifier,
    drawerState: DrawerState,
    drawerShape: Shape,
    drawerElevation: Dp,
    drawerBackground: Brush,
    drawerHandleColor: Color,
    scrimColor: Color,
    scrimVisible: Boolean,
    onDismiss: () -> Unit,
    drawerContent: @Composable () -> Unit,
    preventDismissalOnScrimClick: Boolean = false,
    onScrimClick: () -> Unit = {}
) {
    BoxWithConstraints(modifier.fillMaxSize()) {
        val fullHeight = constraints.maxHeight.toFloat()
        var drawerHeight by remember(fullHeight) { mutableStateOf(fullHeight) }

        Box(
            modifier = Modifier
                .alpha(0f)
                .layout { measurable, constraints ->
                    val placeable = measurable.measure(constraints)
                    layout(placeable.width, placeable.height) {
                        drawerHeight =
                            placeable.height.toFloat() + dpToPx(DrawerHandleHeightOffset)
                    }
                }
        ) {
            drawerContent()
        }
        val maxOpenHeight = fullHeight * DrawerOpenFraction
        val minHeight = 0f
        val topCloseHeight = minHeight
        val topOpenHeight = min(maxOpenHeight, drawerHeight)

        val minValue: Float = topCloseHeight
        val maxValue: Float = topOpenHeight

        val anchors = mapOf(
            topCloseHeight to DrawerValue.Closed,
            topOpenHeight to DrawerValue.Open
        )

        val drawerConstraints = with(LocalDensity.current) {
            Modifier
                .sizeIn(
                    maxWidth = constraints.maxWidth.toDp(),
                    maxHeight = constraints.maxHeight.toDp()
                )
        }

        Scrim(
            open = !drawerState.isClosed,
            onClose = onDismiss,
            fraction = {
                calculateFraction(minValue, maxValue, drawerState.offset.value)
            },
            color = if (scrimVisible) scrimColor else Color.Transparent,
            preventDismissalOnScrimClick = preventDismissalOnScrimClick,
            onScrimClick = onScrimClick
        )

        Box(
            drawerConstraints
                .offset { IntOffset(0, 0) }
                .semantics {
                    if (!drawerState.isClosed) {
                        dismiss {
                            onDismiss()
                            true
                        }
                    }
                }
                .height(
                    pxToDp(drawerState.offset.value)
                )
                .shadow(drawerElevation)
                .clip(drawerShape)
                .background(drawerBackground)
                .swipeable(
                    state = drawerState,
                    anchors = anchors,
                    orientation = Orientation.Vertical,
                    enabled = false,
                    resistance = null
                )
                .focusable(false),
        ) {
            ConstraintLayout(modifier = Modifier.padding(bottom = 8.dp)) {
                val (drawerContentConstrain, drawerHandleConstrain) = createRefs()
                Column(modifier = Modifier
                    .offset { IntOffset(0, 0) }
                    .padding(bottom = 8.dp)
                    .constrainAs(drawerContentConstrain) {
                        top.linkTo(parent.top)
                        bottom.linkTo(drawerHandleConstrain.top)
                    }
                    .focusTarget()
                    .testTag(DRAWER_CONTENT_TAG), content = { drawerContent() }
                )
                Column(horizontalAlignment = Alignment.CenterHorizontally,
                    modifier = Modifier
                        .constrainAs(drawerHandleConstrain) {
                            top.linkTo(drawerContentConstrain.bottom)
                            bottom.linkTo(parent.bottom)
                        }
                        .fillMaxWidth()
                        .draggable(
                            orientation = Orientation.Vertical,
                            state = rememberDraggableState { delta ->
                                drawerState.performDrag(delta)
                            },
                            onDragStopped = { velocity ->
                                launch {
                                    drawerState.performFling(
                                        velocity
                                    )
                                    if (drawerState.isClosed) {
                                        onDismiss()
                                    }
                                }
                            },
                        )
                        .testTag(DRAWER_HANDLE_TAG)
                ) {
                    Icon(
                        painterResource(id = R.drawable.ic_drawer_handle),
                        contentDescription = null,
                        tint = drawerHandleColor
                    )
                }
            }
        }
    }
}
```

## File: src/main/java/com/microsoft/fluentui/tokenized/Utils.kt
```kotlin
package com.microsoft.fluentui.tokenized

import androidx.compose.foundation.Canvas
import androidx.compose.foundation.gestures.detectTapGestures
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.platform.testTag

internal fun calculateFraction(a: Float, b: Float, pos: Float) =
    ((pos - a) / (b - a)).coerceIn(0f, 1f)

@Composable
internal fun Scrim(
    open: Boolean,
    color: Color,
    onClose: () -> Unit,
    fraction: () -> Float,
    preventDismissalOnScrimClick: Boolean = false,
    onScrimClick: () -> Unit = {},
    tag: String
) {
    val dismissDrawer = if (open) {
        Modifier.pointerInput(onClose) {
            detectTapGestures {
                if (!preventDismissalOnScrimClick) {
                    onClose()
                }
                onScrimClick() //this function runs post onClose() so that the drawer is closed before the callback is invoked
            }
        }
    } else {
        Modifier
    }

    Canvas(
        Modifier
            .fillMaxSize()
            .then(dismissDrawer)
            .testTag(tag)

    ) {
        drawRect(color = color, alpha = fraction())
    }
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
    <!--BottomSheet-->
    <attr name="fluentuiBottomSheetBackgroundColor" format="reference|color"/>
    <attr name="fluentuiBottomSheetBackgroundPressedColor" format="reference|color"/>
    <attr name="fluentuiBottomSheetIconColor" format="reference|color"/>
    <attr name="fluentuiBottomSheetDisabledIconColor" format="reference|color"/>
    <attr name="fluentuiBottomSheetDividerColor" format="reference|color"/>
    <!--Drawer-->
    <attr name="fluentuiDrawerBackgroundColor" format="reference|color"/>
    <attr name="fluentuiDrawerHandleColor" format="reference|color"/>


    <!--Persistent bottomsheet-->
    <attr name="fluentuiPersistentBottomSheetHeadingColor" format="reference|color"/>
    <attr name="fluentuiPersistentBottomSheetItemColor" format="reference|color"/>
    <attr name="fluentuiPersistentBottomSheetItemDisabledColor" format="reference|color"/>
    <attr name="fluentuiPersistentBottomSheetHorizontalItemColor" format="reference|color"/>

    <!-- Bottomsheet Horizontal ListItem -->
    <attr name="fluentuiHorizontalListItemTitleColor" format="reference|color"/>
    <attr name="fluentuiHorizontalListItemTitleDisabledColor" format="reference|color"/>

    <!-- SheetBehavior-->
    <declare-styleable name="SheetBehaviorLayout">
        <attr format="string" name="fluentui_behaviorType"/>
        <attr format="dimension" name="fluentui_behaviorPeekHeight"/>
        <attr format="dimension" name="fluentui_behaviorPeekWidth" />
        <attr format="boolean" name="fluentui_behaviorHideable"/>
        <attr format="boolean" name="fluentui_behaviorSkipCollapsed"/>
        <attr format="boolean" name="fluentui_behaviorFitToContents"/>
    </declare-styleable>
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

    <!--BottomSheet-->
    <dimen name="fluentui_bottom_sheet_bottom_padding">8dp</dimen>

    <!--Drawer-->
    <dimen name="fluentui_drawer_corner_radius">@dimen/fluentui_corner_radius_8</dimen>
    <dimen name="fluentui_drawer_peek_height">0dp</dimen>
    <dimen name="fluentui_drawer_peek_width">0dp</dimen>
    <dimen name="fluentui_drawer_elevation">5dp</dimen>
    <dimen name="fluentui_drawer_handle_vertical_margin">8dp</dimen>
    <dimen name="fluentui_drawer_handle_horizontal_margin">8dp</dimen>

    <!--Persistent BottomSheet-->
    <dimen name="fluentui_persistent_bottomsheet_horizontal_textview_padding_vertical">1dp</dimen>
    <dimen name="fluentui_persistent_bottomsheet_horizontal_icon_text_gap">4dp</dimen>
    <dimen name="fluentui_persistent_bottomsheet_horizontal_item_paddingTop">10dp</dimen>
    <dimen name="fluentui_persistent_bottomsheet_horizontal_item_paddingBottom">8dp</dimen>
    <dimen name="fluentui_persistent_bottomsheet_content_offset">8dp</dimen>
    <dimen name="fluentui_persistent_bottomsheet_header_content_offset">16dp</dimen>
    <dimen name="fluentui_persistent_bottomsheet_divider_margin_vertical">8dp</dimen>
    <dimen name="fluentui_persistent_bottomsheet_content_padding_vertical">8dp</dimen>
    <dimen name="fluentui_persistent_bottomsheet_horizontalitem_padding_horizontal">3dp</dimen>
    <dimen name="fluentui_persistent_bottomsheet_header_marginTop">15dp</dimen>
    <dimen name="fluentui_persistent_bottomsheet_header_marginBottom">15dp</dimen>
    <dimen name="fluentui_persistent_bottomsheet_vertical_list_delta_offset">10dp</dimen>
    <dimen name="fluentui_bottomsheet_horizontalItem_min_width">64dp</dimen>
    <dimen name="fluentui_persistentbottomsheet_elevation">24dp</dimen>
    <dimen name="fluentui_persistentbottomsheet_corner_radius">16dp</dimen>
    <dimen name="fluentui_persistent_bottomsheet_item_view_margin">12dp</dimen>

</resources>
```

## File: src/main/res/values/styles.xml
```xml
<?xml version="1.0" encoding="utf-8"?>
<!--
  ~ Copyright (c) Microsoft Corporation. All rights reserved.
  ~ Licensed under the MIT License.
  -->
<resources xmlns:tools="http://schemas.android.com/tools">
    <!--Drawer-->
    <style name="Drawer.FluentUI" parent="@style/Theme.AppCompat.Dialog">
        <item name="android:windowBackground">@android:color/transparent</item>
        <item name="android:windowAnimationStyle">@style/Drawer.FluentUI.Animation</item>
        <item name="android:windowTranslucentStatus">true</item>
    </style>
    <style name="Drawer.FluentUI.Animation">
        <item name="android:windowEnterAnimation">@anim/drawer_background_fade_in</item>
        <item name="android:windowExitAnimation">@anim/drawer_background_fade_out</item>
    </style>
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

    <style name="Theme.FluentUI.Drawer.Base" parent="Base.Theme.FluentUI" >

        <!--Persistent BottomSheet-->
        <item name="fluentuiPersistentBottomSheetHeadingColor">?attr/fluentuiForegroundSecondaryColor</item>
        <item name="fluentuiPersistentBottomSheetItemColor">?attr/fluentuiForegroundSecondaryColor</item>
        <item name="fluentuiPersistentBottomSheetItemDisabledColor">@color/fluentui_gray_300</item>
        <item name="fluentuiPersistentBottomSheetHorizontalItemColor">?attr/fluentuiForegroundSecondaryColor</item>

        <!--BottomSheet-->
        <item name="fluentuiBottomSheetBackgroundColor">?attr/fluentuiBackgroundColor</item>
        <item name="fluentuiBottomSheetBackgroundPressedColor">?attr/fluentuiBackgroundPressedColor</item>
        <item name="fluentuiBottomSheetIconColor">?attr/fluentuiForegroundSecondaryIconColor</item>
        <item name="fluentuiBottomSheetDisabledIconColor">@color/fluentui_gray_300</item>
        <item name="fluentuiBottomSheetDividerColor">?attr/fluentuiDividerColor</item>

        <!--Drawer-->
        <item name="fluentuiDrawerBackgroundColor">?attr/fluentuiBackgroundColor</item>
        <item name="fluentuiDrawerHandleColor">?attr/fluentuiForegroundSecondaryIconColor</item>

        <!-- Bottomsheet Horizontal ListItem -->
        <item name="fluentuiHorizontalListItemTitleColor">?attr/fluentuiForegroundSecondaryColor</item>
        <item name="fluentuiHorizontalListItemTitleDisabledColor">@color/fluentui_gray_300</item>

    </style>

    <style name="Theme.FluentUI.Drawer" parent="Theme.FluentUI.Drawer.Base"/>
</resources>
```
