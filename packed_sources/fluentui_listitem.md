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
src/main/java/com/microsoft/fluentui/listitem/ListItemDivider.kt
src/main/java/com/microsoft/fluentui/listitem/ListItemView.kt
src/main/java/com/microsoft/fluentui/listitem/ListSubHeaderView.kt
src/main/java/com/microsoft/fluentui/tokenized/contentBuilder/ListContentBuilder.kt
src/main/java/com/microsoft/fluentui/tokenized/divider/Divider.kt
src/main/java/com/microsoft/fluentui/tokenized/listitem/ListItem.kt
src/main/java/com/microsoft/fluentui/tokenized/listitem/Utils.kt
src/main/java/com/microsoft/fluentui/tokenized/tabItem/TabItem.kt
src/main/res/values/attrs.xml
src/main/res/values/dimens.xml
src/main/res/values/themes.xml
```

# Files

## File: src/main/java/com/microsoft/fluentui/listitem/ListItemDivider.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentui.listitem

import android.content.Context
import android.graphics.Canvas
import android.graphics.Rect
import androidx.recyclerview.widget.DividerItemDecoration
import androidx.recyclerview.widget.RecyclerView
import android.view.View
import com.microsoft.fluentui.view.BaseDividerItemDecoration
import kotlin.math.ceil

/**
 * This [DividerItemDecoration] is designed to be used with [RecyclerView]s containing [ListItemView]s.
 * [ListItemDivider] will have an inset matching the text views' inset,
 * which increases at the start of the list item view when a [ListItemView.customView] is present.
 * Dividers after [ListSubHeaderView]s are removed.
 * If your view has multiple [ListSubHeaderView]s, this class draws a section divider with no inset
 * between the last list item view in the section and next section's sub header view.
 */
class ListItemDivider(context: Context, orientation: Int) : BaseDividerItemDecoration(context, orientation) {
    override fun getItemOffsets(outRect: Rect, view: View, parent: RecyclerView, state: RecyclerView.State) {
        val viewPosition = parent.getChildAdapterPosition(view)
        val previousView = parent.getChildAt(viewPosition - 1)

        outRect.top = when {
            viewPosition == 0 && view is ListSubHeaderView -> subHeaderDividerPadding.toInt()
            view is ListSubHeaderView -> ((subHeaderDividerPadding * 2) + dividerHeight).toInt()
            previousView is ListSubHeaderView -> 0
            else -> ceil(dividerHeight).toInt()
        }

        outRect.bottom = 0
    }

    override fun onDraw(canvas: Canvas, parent: RecyclerView, state: RecyclerView.State) {
        for (listItemIndex in 1 until parent.childCount) {
            val itemView = parent.getChildAt(listItemIndex)
            val listItemView = itemView as? ListItemView
            val previousView = parent.getChildAt(listItemIndex - 1)

            // SubHeaders have no dividers.
            if (previousView is ListSubHeaderView)
                continue

            val useSectionDivider = itemView is ListSubHeaderView

            val spacerLeft = itemView.left.toFloat()
            val spacerRight = itemView.right.toFloat()

            val leftOfDivider = if (useSectionDivider) 0f else listItemView?.textAreaStartInset ?: 0f
            val rightOfDivider = itemView.right - if (useSectionDivider) 0f else listItemView?.textAreaEndInset ?: 0f

            if (useSectionDivider)
                drawTopSpacer(canvas, itemView, spacerLeft, spacerRight)

            drawDivider(canvas, itemView, leftOfDivider, rightOfDivider, useSectionDivider)

            if (useSectionDivider)
                drawBottomSpacer(canvas, itemView, spacerLeft, spacerRight)
        }
    }
}
```

## File: src/main/java/com/microsoft/fluentui/listitem/ListItemView.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentui.listitem

import android.content.Context
import androidx.annotation.DrawableRes
import androidx.core.widget.TextViewCompat
import android.text.TextUtils
import android.util.AttributeSet
import android.view.Gravity
import android.view.View
import android.widget.LinearLayout
import android.widget.RelativeLayout
import android.widget.TextView
import com.microsoft.fluentui.theming.FluentUIContextThemeWrapper
import com.microsoft.fluentui.util.setContentAndUpdateVisibility
import com.microsoft.fluentui.view.TemplateView

/**
 * [ListItemView] is designed to be used as content for rows in RecyclerViews, ListViews, etc.
 * It provides a text area with customizable options for a [title], [subtitle], and [footer]
 * and secondary visual and action areas with [customView] and [customAccessoryView].
 *
 * TODO: Variants still needed:
 * - Large preview
 */
open class ListItemView : TemplateView {
    companion object {
        val DEFAULT_TRUNCATION: TextUtils.TruncateAt = TextUtils.TruncateAt.END
        val DEFAULT_LAYOUT_DENSITY: LayoutDensity = LayoutDensity.REGULAR
        val DEFAULT_CUSTOM_VIEW_SIZE: CustomViewSize = CustomViewSize.MEDIUM

        const val DEFAULT_MAX_LINES: Int = 1
    }

    /**
     * Defines the width and height of the [customView] via [customViewSize].
     */
    enum class CustomViewSize(private val id: Int) {
        SMALL(R.dimen.fluentui_list_item_custom_view_size_small),
        MEDIUM(R.dimen.fluentui_list_item_custom_view_size_medium),
        // Using a large custom view will apply "Large Header" style text appearance and margins to your list item.
        LARGE(R.dimen.fluentui_list_item_custom_view_size_large);

        /**
         * This method provides the actual physical size that is applied to custom view.
         */
        fun getDisplayValue(context: Context): Int = context.resources.getDimension(id).toInt()
    }

    /**
     * Defines the list item view vertical padding densities via [layoutDensity].
     */
    enum class LayoutDensity {
        REGULAR, COMPACT
    }

    private enum class LayoutType {
        ONE_LINE, TWO_LINES, THREE_LINES
    }

    /**
     * First level of hierarchy in the text area.
     */
    var title: String = ""
        set(value) {
            if (field == value)
                return
            field = value
            updateTemplate()
        }
    /**
     * Second level of hierarchy in the text area.
     */
    var subtitle: String = ""
        set(value) {
            if (field == value)
                return
            field = value
            updateTemplate()
        }
    /**
     * Third level of hierarchy in the text area.
     */
    var footer: String = ""
        set(value) {
            if (field == value)
                return
            field = value
            updateTemplate()
        }

    /**
     * Sets the maxLines for the title view.
     */
    var titleMaxLines: Int = DEFAULT_MAX_LINES
        set(value) {
            if (field == value)
                return
            field = value
            updateTemplate()
        }
    /**
     * Sets the maxLines for the subtitle view.
     */
    var subtitleMaxLines: Int = DEFAULT_MAX_LINES
        set(value) {
            if (field == value)
                return
            field = value
            updateTemplate()
        }
    /**
     * Sets the maxLines for the footer view.
     */
    var footerMaxLines: Int = DEFAULT_MAX_LINES
        set(value) {
            if (field == value)
                return
            field = value
            updateTemplate()
        }

    /**
     * Determines where the title view will truncate.
     */
    var titleTruncateAt: TextUtils.TruncateAt = DEFAULT_TRUNCATION
        set(value) {
            if (field == value)
                return
            field = value
            updateTemplate()
        }
    /**
     * Determines where the subtitle view will truncate.
     */
    var subtitleTruncateAt: TextUtils.TruncateAt = DEFAULT_TRUNCATION
        set(value) {
            if (field == value)
                return
            field = value
            updateTemplate()
        }
    /**
     * Determines where the footer view will truncate.
     */
    var footerTruncateAt: TextUtils.TruncateAt = DEFAULT_TRUNCATION
        set(value) {
            if (field == value)
                return
            field = value
            updateTemplate()
        }

    /**
     * This view will be displayed at the start of the list item view.
     */
    var customView: View? = null
        set(value) {
            if (field == value)
                return
            field = value
            updateTemplate()
        }
    /**
     * Determines the width and height of the [customView].
     */
    var customViewSize: CustomViewSize = DEFAULT_CUSTOM_VIEW_SIZE
        set(value) {
            if (field == value)
                return
            field = value
            updateTemplate()
        }

    /**
     * This view will be displayed at the end of the list item view.
     */
    var customAccessoryView: View? = null
        set(value) {
            if (field == value)
                return

            resetCustomAccessoryViewPadding()
            field = value
            updateCustomAccessoryViewPadding()
            updateTemplate()
        }

    /**
     * This view will be displayed at the end of subtitle view.
     */
    var customSecondarySubtitleView: View? = null
        set(value) {
            if (field == value)
                return
            field = value
            updateTemplate()
        }

    /**
     * Determines the list item view vertical padding density.
     */
    var layoutDensity: LayoutDensity = DEFAULT_LAYOUT_DENSITY
        set(value) {
            if (field == value)
                return
            field = value
            updateTemplate()
        }

    /**
     * Determines the list item view vertical padding density.
     */
    var titleStyleRes: Int = 0
        set(value) {
            if (field == value)
                return
            field = value
            updateTextAppearance()
        }

    /**
     * Determines the list item view vertical padding density.
     */
    var subTitleStyleRes: Int = 0
        set(value) {
            if (field == value)
                return
            field = value
            updateTextAppearance()
        }

    /**
     * Sets the background color or drawable resource.
     * The default drawable has a ripple animation for selection state.
     */
    @DrawableRes
    var background: Int = R.drawable.list_item_view_background
        set(value) {
            if (field == value)
                return
            field = value
            updateTemplate()
        }

    /**
     * Sets the boolean for disabled state of the item.
     * The default value is false. Item is enabled.
     */
    var disabled: Boolean = false
        set(value) {
            if (field == value)
                return
            field = value
            updateTemplate()
        }

    /**
     * Defines the start inset for the text area.
     */
    internal val textAreaStartInset: Float
        get() {
            return when {
                useLargeHeaderStyle -> resources.getDimension(R.dimen.fluentui_list_item_text_area_inset_custom_view_large_header)
                customView != null -> resources.getDimension(R.dimen.fluentui_list_item_text_area_inset_custom_view)
                else -> resources.getDimension(R.dimen.fluentui_list_item_horizontal_margin_regular)
            }
        }

    /**
     * Defines the end inset for the text area.
     */
    internal val textAreaEndInset: Float
        get() = resources.getDimension(R.dimen.fluentui_list_item_horizontal_margin_regular)

    private val layoutType: LayoutType
        get() {
            return if (subtitle.isNotEmpty() && footer.isEmpty())
                LayoutType.TWO_LINES
            else if (subtitle.isNotEmpty() && footer.isNotEmpty())
                LayoutType.THREE_LINES
            else
                LayoutType.ONE_LINE
        }

    private var customAccessoryViewOriginalPaddingStart: Int = 0
    private var customAccessoryViewOriginalPaddingTop: Int = 0
    private var customAccessoryViewOriginalPaddingEnd: Int = 0
    private var customAccessoryViewOriginalPaddingBottom: Int = 0

    private val useLargeHeaderStyle: Boolean
        get() = customView != null && customViewSize == CustomViewSize.LARGE

    @JvmOverloads
    constructor(context: Context, attrs: AttributeSet? = null, defStyleAttr: Int = 0) : super(FluentUIContextThemeWrapper(context,R.style.Theme_FluentUI_ListItem), attrs, defStyleAttr) {
        // TODO: Add need examples in the demo that tests these attributes. Can inflate a layout in the adapter.
        val styledAttrs = context.obtainStyledAttributes(attrs, R.styleable.ListItemView)

        title = styledAttrs.getString(R.styleable.ListItemView_fluentui_title) ?: ""
        subtitle = styledAttrs.getString(R.styleable.ListItemView_fluentui_subtitle) ?: ""
        footer = styledAttrs.getString(R.styleable.ListItemView_fluentui_footer) ?: ""

        titleMaxLines = styledAttrs.getInt(R.styleable.ListItemView_fluentui_titleMaxLines, DEFAULT_MAX_LINES)
        subtitleMaxLines = styledAttrs.getInt(R.styleable.ListItemView_fluentui_subtitleMaxLines, DEFAULT_MAX_LINES)
        footerMaxLines = styledAttrs.getInt(R.styleable.ListItemView_fluentui_footerMaxLines, DEFAULT_MAX_LINES)

        val titleTruncateAtOrdinal = styledAttrs.getInt(R.styleable.ListItemView_fluentui_titleTruncateAt, DEFAULT_TRUNCATION.ordinal)
        titleTruncateAt = TextUtils.TruncateAt.values()[titleTruncateAtOrdinal]
        val subtitleTruncateAtOrdinal = styledAttrs.getInt(R.styleable.ListItemView_fluentui_subtitleTruncateAt, DEFAULT_TRUNCATION.ordinal)
        subtitleTruncateAt = TextUtils.TruncateAt.values()[subtitleTruncateAtOrdinal]
        val footerTruncateAtOrdinal = styledAttrs.getInt(R.styleable.ListItemView_fluentui_footerTruncateAt, DEFAULT_TRUNCATION.ordinal)
        footerTruncateAt = TextUtils.TruncateAt.values()[footerTruncateAtOrdinal]

        val layoutDensityOrdinal = styledAttrs.getInt(R.styleable.ListItemView_fluentui_layoutDensity, DEFAULT_LAYOUT_DENSITY.ordinal)
        layoutDensity = LayoutDensity.values()[layoutDensityOrdinal]

        val customViewSizeOrdinal = styledAttrs.getInt(R.styleable.ListItemView_fluentui_customViewSize, DEFAULT_CUSTOM_VIEW_SIZE.ordinal)
        customViewSize = CustomViewSize.values()[customViewSizeOrdinal]

        disabled = styledAttrs.getBoolean(R.styleable.ListItemView_fluentui_disabled, false)

        styledAttrs.recycle()
    }

    // Template

    override val templateId: Int
        get() = R.layout.view_list_item

    private var titleView: TextView? = null
    private var subtitleView: TextView? = null
    private var footerView: TextView? = null

    private var container: LinearLayout? = null
    private var customViewContainer: RelativeLayout? = null
    private var customAccessoryViewContainer: RelativeLayout? = null
    private var customSecondarySubtitleViewContainer: RelativeLayout? = null
    private var textViewContainer: LinearLayout? = null

    override fun onTemplateLoaded() {
        super.onTemplateLoaded()

        titleView = findViewInTemplateById(R.id.list_item_title)
        subtitleView = findViewInTemplateById(R.id.list_item_subtitle)
        footerView = findViewInTemplateById(R.id.list_item_footer)

        container = findViewInTemplateById(R.id.list_item)
        customViewContainer = findViewInTemplateById(R.id.list_item_custom_view_container)
        customAccessoryViewContainer = findViewInTemplateById(R.id.list_item_custom_accessory_view_container)
        customSecondarySubtitleViewContainer = findViewInTemplateById(R.id.list_item_custom_secondary_subtitle_view_container)
        textViewContainer = findViewInTemplateById(R.id.list_item_text_view_container)

        updateTemplate()
    }

    private fun updateTemplate() {
        this.isEnabled = !disabled
        titleView?.isEnabled = !disabled
        subtitleView?.isEnabled = !disabled
        footerView?.isEnabled = !disabled
        customView?.isEnabled = !disabled

        updateTextAppearance()
        updateTextView(titleView, title, titleMaxLines, titleTruncateAt)
        updateTextView(subtitleView, subtitle, subtitleMaxLines, subtitleTruncateAt)
        updateTextView(footerView, footer, footerMaxLines, footerTruncateAt)

        updateCustomViewContainerLayout()
        updateTextViewContainerLayout()

        customViewContainer?.setContentAndUpdateVisibility(customView, ::updateCustomViewLayout)
        customAccessoryViewContainer?.setContentAndUpdateVisibility(customAccessoryView)
        customSecondarySubtitleViewContainer?.setContentAndUpdateVisibility(customSecondarySubtitleView)

        setBackgroundResource(background)
    }

    private fun updateTextAppearance() {
        if (useLargeHeaderStyle) {
            titleView?.let { TextViewCompat.setTextAppearance(it, R.style.TextAppearance_FluentUI_ListItemTitle_LargeHeader) }
            subtitleView?.let { TextViewCompat.setTextAppearance(it, R.style.TextAppearance_FluentUI_ListItemSubtitle_LargeHeader) }
            footerView?.let { TextViewCompat.setTextAppearance(it, R.style.TextAppearance_FluentUI_ListItemFooter_LargeHeader) }
        } else {
            titleView?.let { TextViewCompat.setTextAppearance(it, R.style.TextAppearance_FluentUI_ListItemTitle) }
            subtitleView?.let { TextViewCompat.setTextAppearance(it, R.style.TextAppearance_FluentUI_ListItemSubtitle) }
            footerView?.let { TextViewCompat.setTextAppearance(it, R.style.TextAppearance_FluentUI_ListItemFooter) }
        }
        setCustomTextStyle()
    }

    private fun setCustomTextStyle() {
        if (titleStyleRes != 0) {
            titleView?.let { TextViewCompat.setTextAppearance(it, titleStyleRes) }
        }
        if (subTitleStyleRes != 0) {
            subtitleView?.let { TextViewCompat.setTextAppearance(it, subTitleStyleRes) }
        }
    }

    private fun updateTextView(textView: TextView?, text: String, maxLines: Int, truncateAt: TextUtils.TruncateAt) {
        textView?.text = text
        textView?.maxLines = maxLines
        textView?.ellipsize = truncateAt
        textView?.visibility = if (text.isNotEmpty()) View.VISIBLE else View.GONE
    }

    private fun updateCustomViewLayout() {
        val customView = customView ?: return
        val customViewSizeDisplayValue = customViewSize.getDisplayValue(context)
        val lp = RelativeLayout.LayoutParams(customViewSizeDisplayValue, customViewSizeDisplayValue)
        lp.addRule(RelativeLayout.CENTER_IN_PARENT)
        customView.layoutParams = lp
    }

    private fun resetCustomAccessoryViewPadding() {
        // Reset paddings with cached values to ensure paddings set in updateCustomAccessoryViewPadding
        // only get adjusted once (which is an issue in RecyclerViews).
        customAccessoryView?.setPaddingRelative(
            customAccessoryViewOriginalPaddingStart,
            customAccessoryViewOriginalPaddingTop,
            customAccessoryViewOriginalPaddingEnd,
            customAccessoryViewOriginalPaddingBottom
        )
    }

    private fun updateCustomAccessoryViewPadding() {
        val customAccessoryView = customAccessoryView ?: return

        // Cache original paddings to preserve paddings set by the consumer.
        customAccessoryViewOriginalPaddingStart = customAccessoryView.paddingStart
        customAccessoryViewOriginalPaddingTop = customAccessoryView.paddingTop
        customAccessoryViewOriginalPaddingEnd = customAccessoryView.paddingEnd
        customAccessoryViewOriginalPaddingBottom = customAccessoryView.paddingBottom

        // Use padding instead of margins here to increase touch area for potential click listeners.
        val verticalPadding = resources.getDimension(R.dimen.fluentui_list_item_vertical_margin_custom_view_minimum).toInt()
        customAccessoryView.setPaddingRelative(
            customAccessoryView.paddingStart + resources.getDimension(R.dimen.fluentui_list_item_horizontal_spacing_custom_accessory_view_start).toInt(),
            customAccessoryView.paddingTop + verticalPadding,
            customAccessoryView.paddingEnd + resources.getDimension(R.dimen.fluentui_list_item_horizontal_margin_regular).toInt(),
            customAccessoryView.paddingBottom + verticalPadding
        )
    }

    // Container layout

    private fun updateCustomViewContainerLayout() {
        val customViewContainer = customViewContainer ?: return
        val customViewSizeDisplayValue = customViewSize.getDisplayValue(context)
        val lp = LinearLayout.LayoutParams(customViewSizeDisplayValue, customViewSizeDisplayValue)

        val customViewContainerVerticalMargin = if (!useLargeHeaderStyle)
            resources.getDimension(R.dimen.fluentui_list_item_vertical_margin_custom_view_minimum).toInt()
        else
            resources.getDimension(R.dimen.fluentui_list_item_vertical_margin_large_header).toInt()

        val customViewSmallMarginEnd = resources.getDimension(R.dimen.fluentui_list_item_margin_end_custom_view_small).toInt()
        val listItemHorizontalMargin = resources.getDimension(R.dimen.fluentui_list_item_spacing).toInt()

        lp.gravity = Gravity.CENTER_VERTICAL

        val extraMarginEnd = if (customViewSize == CustomViewSize.SMALL) customViewSmallMarginEnd else 0

        lp.marginStart = 0
        lp.marginEnd = extraMarginEnd + listItemHorizontalMargin
        lp.topMargin = customViewContainerVerticalMargin
        lp.bottomMargin = customViewContainerVerticalMargin

        customViewContainer.layoutParams = lp
    }

    private fun updateTextViewContainerLayout() {
        val textViewContainer = textViewContainer ?: return
        val lp = LinearLayout.LayoutParams(0, LinearLayout.LayoutParams.WRAP_CONTENT, 1f)

        val largeHeaderVerticalMargin = resources.getDimension(R.dimen.fluentui_list_item_vertical_margin_large_header).toInt()
        val oneLineVerticalMargin = resources.getDimension(R.dimen.fluentui_list_item_vertical_margin_text_one_line).toInt()
        val twoLineVerticalMargin = resources.getDimension(R.dimen.fluentui_list_item_vertical_margin_text_two_line).toInt()
        val twoLineCompactVerticalMargin = resources.getDimension(R.dimen.fluentui_list_item_vertical_margin_text_two_line_compact).toInt()
        val threeLineVerticalMargin = resources.getDimension(R.dimen.fluentui_list_item_vertical_margin_text_three_line).toInt()
        val horizontalMargin = resources.getDimension(R.dimen.fluentui_list_item_horizontal_margin_regular).toInt()

        lp.gravity = Gravity.CENTER_VERTICAL
        lp.topMargin = when {
            useLargeHeaderStyle -> largeHeaderVerticalMargin
            layoutType == LayoutType.TWO_LINES && layoutDensity == LayoutDensity.REGULAR -> twoLineVerticalMargin
            layoutType == LayoutType.TWO_LINES && layoutDensity == LayoutDensity.COMPACT -> twoLineCompactVerticalMargin
            layoutType == LayoutType.THREE_LINES -> threeLineVerticalMargin
            else -> oneLineVerticalMargin
        }
        lp.bottomMargin = lp.topMargin
        lp.marginEnd = if (customAccessoryView == null) horizontalMargin else 0

        textViewContainer.layoutParams = lp
    }
}
```

## File: src/main/java/com/microsoft/fluentui/listitem/ListSubHeaderView.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentui.listitem

import android.content.Context
import androidx.annotation.ColorInt
import androidx.core.widget.TextViewCompat
import android.text.TextUtils
import android.util.AttributeSet
import android.view.View
import android.widget.LinearLayout
import android.widget.RelativeLayout
import android.widget.TextView
import com.microsoft.fluentui.theming.FluentUIContextThemeWrapper
import com.microsoft.fluentui.util.ThemeUtil
import com.microsoft.fluentui.util.setContentAndUpdateVisibility
import com.microsoft.fluentui.view.TemplateView

/**
 * Sub header for list sections with a styled title view and [customAccessoryView].
 *
 * TODO add examples in the demo for [titleColor] and [customAccessoryView].
 */
class ListSubHeaderView : TemplateView {
    companion object {
        val DEFAULT_TITLE_COLOR = TitleColor.PRIMARY
        val DEFAULT_TRUNCATION = TextUtils.TruncateAt.END
    }

    enum class TitleColor {
        PRIMARY, SECONDARY, TERTIARY
    }

    /**
     * Text for the title view that will be displayed at the start of the [ListSubHeaderView].
     */
    var title: String = ""
        set(value) {
            if (field == value)
                return
            field = value
            updateTemplate()
        }

    /**
     * Sets the text color for the title view.
     */
    var titleColor: TitleColor = DEFAULT_TITLE_COLOR
        set(value) {
            if (field == value)
                return
            field = value
            updateTemplate()
        }

    /**
     * Sets the text truncation for the title view.
     */
    var titleTruncateAt: TextUtils.TruncateAt = DEFAULT_TRUNCATION
        set(value) {
            if (field == value)
                return
            field = value
            updateTemplate()
        }

    /**
     * This view will be displayed at the end of the [ListSubHeaderView].
     */
    var customAccessoryView: View? = null
        set(value) {
            if (field == value)
                return
            resetCustomAccessoryViewPadding()
            field = value
            updateCustomAccessoryViewPadding()
            updateTemplate()
        }

    /**
     * Sets the background color.
     */
    @ColorInt
    var background: Int = ThemeUtil.getThemeAttrColor(context, R.attr.fluentuiListItemBackgroundColor)
        set(value) {
            if (field == value)
                return
            field = value
            updateTemplate()
        }

    private var customAccessoryViewOriginalPaddingStart: Int = 0
    private var customAccessoryViewOriginalPaddingTop: Int = 0
    private var customAccessoryViewOriginalPaddingEnd: Int = 0
    private var customAccessoryViewOriginalPaddingBottom: Int = 0

    @JvmOverloads
    constructor(context: Context, attrs: AttributeSet? = null, defStyleAttr: Int = 0) : super(FluentUIContextThemeWrapper(context,R.style.Theme_FluentUI_ListItem), attrs, defStyleAttr) {
        // TODO: Add need examples in the demo that tests these attributes. Can inflate a layout in the adapter.
        val styledAttrs = context.obtainStyledAttributes(attrs, R.styleable.ListSubHeaderView)

        title = styledAttrs.getString(R.styleable.ListSubHeaderView_fluentui_title) ?: ""

        val titleColorOrdinal = styledAttrs.getInt(R.styleable.ListSubHeaderView_fluentui_titleColor, DEFAULT_TITLE_COLOR.ordinal)
        titleColor = TitleColor.values()[titleColorOrdinal]

        val titleTruncateAtOrdinal = styledAttrs.getInt(R.styleable.ListSubHeaderView_fluentui_titleTruncateAt, DEFAULT_TRUNCATION.ordinal)
        titleTruncateAt = TextUtils.TruncateAt.values()[titleTruncateAtOrdinal]

        styledAttrs.recycle()
    }

    // Template

    override val templateId: Int
        get() = R.layout.view_list_sub_header

    private var titleView: TextView? = null
    private var customAccessoryViewContainer: RelativeLayout? = null

    override fun onTemplateLoaded() {
        super.onTemplateLoaded()

        titleView = findViewInTemplateById(R.id.list_sub_header_title)
        customAccessoryViewContainer = findViewInTemplateById(R.id.list_sub_header_custom_accessory_view_container)

        updateTemplate()
    }

    private fun updateTemplate() {
        updateTitleView()
        customAccessoryViewContainer?.setContentAndUpdateVisibility(customAccessoryView)
        setBackgroundColor(background)
    }

    private fun updateTitleView() {
        val titleView = titleView ?: return

        titleView.text = title
        titleView.ellipsize = titleTruncateAt

        when (titleColor) {
            TitleColor.PRIMARY -> TextViewCompat.setTextAppearance(titleView, R.style.TextAppearance_FluentUI_ListSubHeaderTitle_Primary)
            TitleColor.SECONDARY -> TextViewCompat.setTextAppearance(titleView, R.style.TextAppearance_FluentUI_ListSubHeaderTitle_Secondary)
            TitleColor.TERTIARY -> TextViewCompat.setTextAppearance(titleView, R.style.TextAppearance_FluentUI_ListSubHeaderTitle_Tertiary)
        }

        val lp = titleView.layoutParams as LinearLayout.LayoutParams
        lp.marginEnd = if (customAccessoryView == null)
            resources.getDimension(R.dimen.fluentui_list_item_horizontal_margin_regular).toInt()
        else
            0
    }

    private fun resetCustomAccessoryViewPadding() {
        // Reset paddings with cached values to ensure paddings set in updateCustomAccessoryViewPadding
        // only get adjusted once (which is an issue in RecyclerViews).
        customAccessoryView?.setPaddingRelative(
            customAccessoryViewOriginalPaddingStart,
            customAccessoryViewOriginalPaddingTop,
            customAccessoryViewOriginalPaddingEnd,
            customAccessoryViewOriginalPaddingBottom
        )
    }

    private fun updateCustomAccessoryViewPadding() {
        val customAccessoryView = customAccessoryView ?: return

        // Cache original paddings to preserve paddings set by the consumer.
        customAccessoryViewOriginalPaddingStart = customAccessoryView.paddingStart
        customAccessoryViewOriginalPaddingTop = customAccessoryView.paddingTop
        customAccessoryViewOriginalPaddingEnd = customAccessoryView.paddingEnd
        customAccessoryViewOriginalPaddingBottom = customAccessoryView.paddingBottom

        // Use padding instead of margins here to increase touch area for potential click listeners.
        val verticalPadding = resources.getDimension(R.dimen.fluentui_list_item_vertical_margin_custom_view_minimum).toInt()
        val paddingStart = resources.getDimension(R.dimen.fluentui_list_item_horizontal_spacing_custom_accessory_view_start).toInt()
        val paddingEnd = resources.getDimension(R.dimen.fluentui_list_item_horizontal_margin_regular).toInt()
        customAccessoryView.setPaddingRelative(
            customAccessoryView.paddingStart + paddingStart,
            customAccessoryView.paddingTop + verticalPadding,
            customAccessoryView.paddingEnd + paddingEnd,
            customAccessoryView.paddingBottom + verticalPadding
        )
    }
}
```

## File: src/main/java/com/microsoft/fluentui/tokenized/contentBuilder/ListContentBuilder.kt
```kotlin
package com.microsoft.fluentui.tokenized.contentBuilder

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.lazy.*
import androidx.compose.runtime.Composable
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.ui.Modifier
import androidx.compose.ui.focus.onFocusEvent
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.layout.Layout
import androidx.compose.ui.semantics.contentDescription
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.ControlTokens
import com.microsoft.fluentui.theme.token.FluentStyle
import com.microsoft.fluentui.theme.token.Icon
import com.microsoft.fluentui.theme.token.controlTokens.*
import com.microsoft.fluentui.tokenized.divider.Divider
import com.microsoft.fluentui.tokenized.listitem.ListItem
import com.microsoft.fluentui.tokenized.tabItem.TabItem
import kotlinx.coroutines.launch
import kotlin.math.ceil
import kotlin.math.max
import kotlin.math.min

data class ItemData(
    var title: String,
    var subTitle: String? = null,
    var enabled: Boolean = true,
    var onClick: () -> Unit,
    var accessory: @Composable (() -> Unit)? = null,
    var icon: ImageVector
)

// marker interface
internal interface ContentData

// data class for list of Items to be placed horizontally
internal data class HorizontalListContentData(
    val itemDataList: List<ItemData>,
    val header: String? = null,
    val fixedWidth: Boolean = false,
    val tabItemTokens: TabItemTokens? = null
) : ContentData

// data class for list of Items to be placed vertically
internal data class VerticalListContentData(
    val itemDataList: List<ItemData>,
    val header: String? = null,
    val listItemTokens: ListItemTokens? = null
) : ContentData

// data class for list of Items to be placed in vertical grid
internal data class VerticalGridContentData(
    val itemDataList: List<ItemData>,
    val header: String? = null,
    val maxItemInRow: Int,
    val equidistant: Boolean = false,
    val tabItemTokens: TabItemTokens? = null
) : ContentData

//data class for divider
internal data class DividerContentData(val heightDp: Dp, val dividerToken: DividerTokens?) :
    ContentData

/*
* Builder to create list of list (vertical, horizontal), grid.
* */
class ListContentBuilder {
    private val listOfContentData: ArrayList<ContentData> = ArrayList()

    private fun add(contentData: ContentData) {
        listOfContentData.add(contentData)
    }

    fun addHorizontalList(
        itemDataList: List<ItemData>,
        header: String? = null,
        fixedWidth: Boolean = false,
        tabItemTokens: TabItemTokens? = null
    ): ListContentBuilder {
        add(HorizontalListContentData(itemDataList, header, fixedWidth, tabItemTokens))
        return this
    }

    fun addVerticalList(
        itemDataList: List<ItemData>,
        header: String? = null,
        listItemTokens: ListItemTokens? = null
    ): ListContentBuilder {
        add(VerticalListContentData(itemDataList, header, listItemTokens))
        return this
    }

    fun addVerticalGrid(
        itemDataList: List<ItemData>,
        header: String? = null,
        maxItemInRow: Int = 4,
        equidistant: Boolean = false,
        tabItemTokens: TabItemTokens? = TabItemTokens()
    ): ListContentBuilder {
        add(VerticalGridContentData(itemDataList, header, maxItemInRow, equidistant, tabItemTokens))
        return this
    }

    fun addDivider(
        heightDp: Dp = 1.dp,
        dividerToken: DividerTokens? = null
    ): ListContentBuilder {
        add(DividerContentData(heightDp, dividerToken))
        return this
    }

    fun getContent(): @Composable () -> Unit {
        //TODO As per the thread https://issuetracker.google.com/issues/184670295#comment34 focus
        // navigation issues should resolve with compose version 1.3.0.
        return {
            LazyColumn {
                for (contentData in listOfContentData) {
                    when (contentData) {
                        is HorizontalListContentData -> createHorizontalList(
                            contentData.itemDataList,
                            contentData.header,
                            contentData.fixedWidth,
                            contentData.tabItemTokens
                        )()

                        is VerticalListContentData -> createVerticalList(
                            contentData.itemDataList,
                            contentData.header,
                            contentData.listItemTokens
                        )()

                        is VerticalGridContentData -> createVerticalGrid(
                            contentData.itemDataList,
                            contentData.header,
                            contentData.maxItemInRow,
                            contentData.equidistant,
                            contentData.tabItemTokens
                        )()

                        is DividerContentData -> createDivider(
                            contentData.heightDp,
                            contentData.dividerToken
                        )()
                    }
                }
            }
        }
    }

    private fun createVerticalGrid(
        itemDataList: List<ItemData>,
        header: String?,
        maxItemsInRow: Int,
        equidistant: Boolean,
        tabItemTokens: TabItemTokens? = TabItemTokens()
    ): LazyListScope.() -> Unit {
        return {
            if (header != null) {
                item {
                    ListItem.Header(title = header)
                }
            }
            val size = itemDataList.size
            val itemsInRow = min(size, maxItemsInRow)

            items(ceil(size * 1.0 / itemsInRow).toInt()) { row ->
                val token =
                    tabItemTokens
                        ?: FluentTheme.controlTokens.tokens[ControlTokens.ControlType.TabItemControlType] as TabItemTokens
                Layout(
                    modifier = Modifier
                        .background(
                            token.backgroundBrush(
                                tabItemInfo =TabItemInfo(
                                TabTextAlignment.VERTICAL,
                                FluentStyle.Brand
                            )).rest
                        )
                        .padding(start = 16.dp, end = 16.dp),
                    content = {
                        var col = 0
                        val widthRatio = if ((row + 1) * itemsInRow <= size || !equidistant)
                            1.0f / maxItemsInRow
                        else
                            1.0f / min(itemsInRow, (size - (row * itemsInRow)))
                        while (col < itemsInRow && (row * itemsInRow + col) < size) {
                            val titleString = itemDataList[row * itemsInRow + col].title
                            TabItem(
                                title = titleString,
                                enabled = itemDataList[row * itemsInRow + col].enabled,
                                onClick = itemDataList[row * itemsInRow + col].onClick,
                                accessory = itemDataList[row * itemsInRow + col].accessory,
                                icon = itemDataList[row * itemsInRow + col].icon,
                                modifier = Modifier.fillMaxWidth(widthRatio).semantics {
                                    contentDescription = titleString
                                },
                                tabItemTokens = tabItemTokens
                            )
                            col++
                        }
                    }) { measurables, constraints ->
                    val count = measurables.size
                    val placeables = measurables.map { measurable ->
                        measurable.measure(constraints)
                    }
                    var layoutHeight = 0

                    placeables.forEach {
                        layoutHeight = layoutHeight.coerceAtLeast(it.height)
                    }

                    layout(constraints.maxWidth, layoutHeight) {
                        var xPosition = 0
                        val width = if (equidistant)
                            constraints.maxWidth / count
                        else
                            constraints.maxWidth / maxItemsInRow

                        placeables.forEach { placeable ->
                            placeable.placeRelative(y = 0, x = xPosition)
                            if (placeable != placeables.last())
                                xPosition += width
                        }
                    }
                }
            }
        }
    }

    private fun createHorizontalList(
        itemDataList: List<ItemData>,
        header: String?,
        fixedWidth: Boolean = false,
        tabItemTokens: TabItemTokens? = TabItemTokens()
    ): LazyListScope.() -> Unit {
        return {
            if (header != null) {
                item {
                    ListItem.Header(title = header)
                }
            }
            item {
                val rowScope = rememberCoroutineScope()
                val rowLazyListState = rememberLazyListState()
                val token =
                    tabItemTokens
                        ?: FluentTheme.controlTokens.tokens[ControlTokens.ControlType.TabItemControlType] as TabItemTokens
                LazyRow(
                    state = rowLazyListState, modifier = Modifier
                        .background(
                            token.backgroundBrush(
                                TabItemInfo(
                                    TabTextAlignment.VERTICAL,
                                    FluentStyle.Brand
                                )
                            ).rest
                        )
                        .padding(start = 16.dp)
                        .fillMaxWidth()
                ) {
                    itemsIndexed(itemDataList) { index, item ->
                        TabItem(
                            title = item.title,
                            enabled = item.enabled,
                            fixedWidth = fixedWidth,
                            onClick = item.onClick,
                            accessory = item.accessory,
                            icon = item.icon,
                            modifier = Modifier
                                .onFocusEvent { focusState ->
                                    if (focusState.isFocused) {
                                        rowScope.launch {
                                            rowLazyListState.animateScrollToItem(
                                                max(0, index - 2)
                                            )
                                        }
                                    }
                                }
                                .semantics {
                                    contentDescription = item.title
                                },
                            tabItemTokens = tabItemTokens
                        )
                    }
                }
            }
        }
    }

    private fun createVerticalList(
        itemDataList: List<ItemData>,
        header: String?,
        listItemTokens: ListItemTokens? = ListItemTokens()
    ): LazyListScope.() -> Unit {
        return {
            if (header != null) {
                item {
                    ListItem.Header(title = header)
                }
            }

            items(itemDataList) { item ->
                val themeID =
                    FluentTheme.themeID    //Adding This only for recomposition in case of Token Updates. Unused otherwise.
                val token = listItemTokens
                    ?: FluentTheme.controlTokens.tokens[ControlTokens.ControlType.ListItemControlType] as ListItemTokens
                ListItem.Item(
                    text = item.title,
                    subText = item.subTitle,
                    leadingAccessoryContent = {
                        if (item.icon != null) {
                            Icon(
                                item.icon, null,
                                tint = token.iconColor(ListItemInfo()).let {
                                    if (item.enabled) it.rest else it.disabled
                                }
                            )
                        }
                    },
                    trailingAccessoryContent = item.accessory,
                    enabled = item.enabled,
                    onClick = item.onClick,
                    listItemTokens = listItemTokens
                )
            }
        }
    }

    private fun createDivider(
        heightDp: Dp,
        dividerToken: DividerTokens?
    ): LazyListScope.() -> Unit {
        return {
            item {
                Divider(
                    heightDp, dividerToken
                )
            }
        }
    }
}
```

## File: src/main/java/com/microsoft/fluentui/tokenized/divider/Divider.kt
```kotlin
package com.microsoft.fluentui.tokenized.divider

import androidx.compose.foundation.background
import androidx.compose.foundation.focusable
import androidx.compose.foundation.layout.*
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.ControlTokens
import com.microsoft.fluentui.theme.token.controlTokens.DividerInfo
import com.microsoft.fluentui.theme.token.controlTokens.DividerTokens

@Composable
fun Divider(
    height: Dp = 1.dp,
    dividerToken: DividerTokens? = null
) {
    val themeID =
        FluentTheme.themeID    //Adding This only for recomposition in case of Token Updates. Unused otherwise.
    val token =
        dividerToken
            ?: FluentTheme.controlTokens.tokens[ControlTokens.ControlType.DividerControlType] as DividerTokens
    val dividerInfo = DividerInfo()

    Column(
        Modifier
            .fillMaxWidth()
            .background(token.backgroundBrush(dividerInfo))
            .focusable(false)
            .padding(token.verticalPadding(dividerInfo))
    ) {
        Box(
            Modifier
                .fillMaxWidth()
                .requiredHeight(height)
                .background(token.dividerBrush(dividerInfo))
                .padding(start = token.startIndent(dividerInfo))
        )
    }
}
```

## File: src/main/java/com/microsoft/fluentui/tokenized/listitem/ListItem.kt
```kotlin
package com.microsoft.fluentui.tokenized.listitem

import androidx.compose.animation.*
import androidx.compose.animation.core.animateFloatAsState
import androidx.compose.foundation.Canvas
import androidx.compose.foundation.ExperimentalFoundationApi
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.combinedClickable
import androidx.compose.foundation.focusable
import androidx.compose.foundation.interaction.MutableInteractionSource
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.text.BasicText
import androidx.compose.foundation.text.InlineTextContent
import androidx.compose.foundation.text.appendInlineContent
import androidx.compose.material.*
import androidx.compose.material.ripple.rememberRipple
import androidx.compose.runtime.*
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.composed
import androidx.compose.ui.draw.drawBehind
import androidx.compose.ui.draw.rotate
import androidx.compose.ui.focus.focusProperties
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.drawscope.Fill
import androidx.compose.ui.graphics.vector.rememberVectorPainter
import androidx.compose.ui.layout.SubcomposeLayout
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.platform.LocalLayoutDirection
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.semantics.*
import androidx.compose.ui.text.*
import androidx.compose.ui.unit.*
import com.microsoft.fluentui.listitem.R
import com.microsoft.fluentui.icons.ListItemIcons
import com.microsoft.fluentui.icons.listitemicons.Chevron
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.ControlTokens.ControlType
import com.microsoft.fluentui.theme.token.FluentGlobalTokens
import com.microsoft.fluentui.theme.token.controlTokens.*
import com.microsoft.fluentui.theme.token.controlTokens.BorderInset.None
import com.microsoft.fluentui.theme.token.controlTokens.BorderType.NoBorder
import com.microsoft.fluentui.theme.token.controlTokens.ListItemType.*
import com.microsoft.fluentui.theme.token.controlTokens.TextPlacement.Bottom
import com.microsoft.fluentui.theme.token.controlTokens.TextPlacement.Top
import com.microsoft.fluentui.util.dpToPx

object ListItem {

    private fun clearSemantics(properties: (SemanticsPropertyReceiver.() -> Unit)?): Modifier {
        return if (properties != null) {
            Modifier.clearAndSetSemantics(properties)
        } else {
            Modifier
        }
    }

    @OptIn(ExperimentalFoundationApi::class)
    private fun Modifier.longPressSemanticsModifier(
        interactionSource: MutableInteractionSource,
        onClick: () -> Unit,
        onLongClick: () -> Unit,
        enabled: Boolean,
        rippleColor: Color
    ): Modifier = composed {
        Modifier.combinedClickable(
            interactionSource = interactionSource,
            indication = rememberRipple(color = rippleColor),
            onClickLabel = null,
            onLongClickLabel = null,
            enabled = enabled,
            onClick = onClick,
            onLongClick = onLongClick
        )
    }

    private fun Modifier.borderModifier(
        border: BorderType, borderColor: Color, borderSize: Float, borderInset: Float
    ): Modifier = drawBehind {
        when (border) {
            BorderType.Top -> drawLine(
                borderColor, Offset(0f, 0f), Offset(size.width, 0f), borderSize * density
            )

            BorderType.Bottom -> drawLine(
                borderColor,
                Offset(borderInset, size.height),
                Offset(size.width, size.height),
                borderSize * density
            )

            BorderType.TopBottom -> {
                drawLine(
                    borderColor, Offset(0f, 0f), Offset(size.width, 0f), borderSize * density
                )
                drawLine(
                    borderColor,
                    Offset(borderInset, size.height),
                    Offset(size.width, size.height),
                    borderSize * density
                )
            }

            NoBorder -> {

            }
        }

    }

    /*
    This function calculates the placeholder width for action text
     */
    @Composable
    fun PlaceholderForActionText(
        actionTextComposable: @Composable () -> Unit,
        content: @Composable (width: Dp) -> Unit,
    ) {
        SubcomposeLayout { constraints ->
            val calculatedWidth = subcompose(
                "textToCalculate",
                actionTextComposable
            )[0].measure(Constraints()).width.toDp()

            val contentPlaceable = subcompose("inlineText") {
                content(calculatedWidth)
            }[0].measure(constraints)
            layout(contentPlaceable.width, contentPlaceable.height) {
                contentPlaceable.place(0, 0)
            }
        }
    }

    @Composable
    private fun InlineText(
        description: String,
        actionText: String,
        onClick: () -> Unit,
        descriptionTextColor: Color,
        actionTextColor: Color,
        descriptionTextTypography: TextStyle,
        actionTextTypography: TextStyle,
        backgroundColor: Brush
    ) {
        PlaceholderForActionText(actionTextComposable = {
            BasicText(
                text = actionText,
                style = actionTextTypography,
            )
        }) { measuredWidth ->
            val text = buildAnnotatedString {
                if (description.isNotEmpty()) {
                    withStyle(
                        style = SpanStyle(
                            color = descriptionTextColor,
                            fontSize = descriptionTextTypography.fontSize,
                            fontWeight = descriptionTextTypography.fontWeight
                        )
                    ) {
                        append("$description ")
                    }
                }
                //below alternate text will be replaced by composable
                appendInlineContent("key", actionText)
            }
            val widthInDp: TextUnit = with(LocalDensity.current) {
                measuredWidth.toSp()
            }
            val inlineContent = mapOf(
                Pair("key", InlineTextContent(
                    Placeholder(
                        width = widthInDp,
                        height = 16.sp,
                        placeholderVerticalAlign = PlaceholderVerticalAlign.TextCenter
                    )
                ) {
                    Box(
                        Modifier
                            .background(backgroundColor)
                            .clickable(
                                onClick = onClick
                            )
                    ) {
                        BasicText(
                            text = actionText,
                            style = actionTextTypography.merge(TextStyle(color = actionTextColor))
                        )
                    }
                })
            )
            BasicText(
                text = text, inlineContent = inlineContent
            )
        }

    }

    @Composable
    internal fun InternalItem(
        text: String,
        modifier: Modifier = Modifier,
        subText: String? = null,
        secondarySubText: String? = null,
        secondarySubTextAnnotated: AnnotatedString? = null,
        secondarySubTextInlineContent: Map<String, InlineTextContent> = mapOf(),
        textAlignment: ListItemTextAlignment = ListItemTextAlignment.Regular,
        unreadDot: Boolean = false,
        enabled: Boolean = true,
        selected: Boolean = false,
        textMaxLines: Int = 1,
        subTextMaxLines: Int = 1,
        secondarySubTextMaxLines: Int = 1,
        onClick: (() -> Unit)? = null,
        onLongClick: (() -> Unit)? = null,
        primaryTextLeadingContent: (@Composable () -> Unit)? = null,
        primaryTextTrailingContent: (@Composable () -> Unit)? = null,
        secondarySubTextLeadingContent: (@Composable () -> Unit)? = null,
        secondarySubTextTrailingContent: (@Composable () -> Unit)? = null,
        border: BorderType = NoBorder,
        borderInset: BorderInset = None,
        interactionSource: MutableInteractionSource = remember { MutableInteractionSource() },
        bottomContent: (@Composable () -> Unit)? = null,
        leadingAccessoryContent: (@Composable () -> Unit)? = null,
        trailingAccessoryContent: (@Composable () -> Unit)? = null,
        leadingAccessoryContentAlignment: Alignment.Vertical = Alignment.CenterVertically,
        trailingAccessoryContentAlignment: Alignment.Vertical = Alignment.CenterVertically,
        textAccessibilityProperties: (SemanticsPropertyReceiver.() -> Unit)? = null,
        listItemTokens: ListItemTokens? = null
    ) {
        val listItemType = if (subText == null && secondarySubText == null) {
            OneLine
        } else if ((secondarySubText == null && subText != null) || (secondarySubText != null && subText == null)) {
            TwoLine
        } else {
            ThreeLine
        }
        val themeID =
            FluentTheme.themeID    //Adding This only for recomposition in case of Token Updates. Unused otherwise.
        val token = listItemTokens
            ?: FluentTheme.controlTokens.tokens[ControlType.ListItemControlType] as ListItemTokens
        val listItemInfo = ListItemInfo(
            listItemType = listItemType,
            borderInset = borderInset,
            horizontalSpacing = FluentGlobalTokens.SizeTokens.Size160,
            verticalSpacing = FluentGlobalTokens.SizeTokens.Size120,
            unreadDot = unreadDot
        )
        val backgroundColor =
            token.backgroundBrush(listItemInfo).getBrushByState(
                enabled = true, selected = selected, interactionSource = interactionSource
            )
        val primaryTextTypography = token.primaryTextTypography(listItemInfo)
        val subTextTypography = token.subTextTypography(listItemInfo)
        val secondarySubTextTypography =
            token.secondarySubTextTypography(listItemInfo)
        val primaryTextColor = token.primaryTextColor(
            listItemInfo
        ).getColorByState(
            enabled = enabled, selected = selected, interactionSource = interactionSource
        )
        val subTextColor = token.subTextColor(
            listItemInfo
        ).getColorByState(
            enabled = enabled, selected = selected, interactionSource = interactionSource
        )
        val secondarySubTextColor = token.secondarySubTextColor(
            listItemInfo
        ).getColorByState(
            enabled = enabled, selected = selected, interactionSource = interactionSource
        )
        val rippleColor = token.rippleColor(listItemInfo)
        val unreadDotColor = token.unreadDotColor(listItemInfo)
        val padding = token.padding(listItemInfo)
        val borderSize = token.borderSize(listItemInfo).value
        val borderInsetToPx = with(LocalDensity.current) {
            token.borderInset(listItemInfo).toPx()
        }
        val borderColor = token.borderColor(listItemInfo).getColorByState(
            enabled = enabled, selected = selected, interactionSource = interactionSource
        )
        val textAccessoryContentTextSpacing = token.textAccessoryContentTextSpacing(listItemInfo)
        val leadingAccessoryAlignment = when (leadingAccessoryContentAlignment) {
            Alignment.Top -> Alignment.TopCenter
            Alignment.Bottom -> Alignment.BottomCenter
            else -> Alignment.Center
        }
        val trailingAccessoryAlignment = when (trailingAccessoryContentAlignment) {
            Alignment.Top -> Alignment.TopEnd
            Alignment.Bottom -> Alignment.BottomEnd
            else -> Alignment.CenterEnd
        }
        val textOverflow = token.textOverflow(listItemInfo)
        Row(
            modifier
                .background(backgroundColor)
                .fillMaxWidth()
                .height(IntrinsicSize.Max)
                .borderModifier(border, borderColor, borderSize, borderInsetToPx)
                .then(
                    if (onClick != null) {
                        Modifier.longPressSemanticsModifier(
                            interactionSource,
                            onClick = onClick,
                            onLongClick = onLongClick ?: {},
                            enabled,
                            rippleColor
                        )
                    } else Modifier
                ),
            verticalAlignment = Alignment.CenterVertically
        ) {
            if (leadingAccessoryContent != null && textAlignment == ListItemTextAlignment.Regular) {
                Box(
                    modifier = Modifier
                        .padding(
                            start = if (unreadDot) 4.dp else padding.calculateStartPadding(
                                LocalLayoutDirection.current
                            ),
                            top = if (leadingAccessoryContentAlignment == Alignment.Top) padding.calculateTopPadding() else 0.dp,
                            bottom = if (leadingAccessoryContentAlignment == Alignment.Bottom) padding.calculateBottomPadding() else 0.dp
                        )
                        .fillMaxHeight(), contentAlignment = leadingAccessoryAlignment
                ) {
                    Row(verticalAlignment = Alignment.CenterVertically) {
                        if (unreadDot) {
                            Canvas(
                                modifier = Modifier
                                    .sizeIn(minWidth = 8.dp, minHeight = 8.dp)
                            ) {
                                drawCircle(
                                    color = unreadDotColor, style = Fill, radius = dpToPx(4.dp)
                                )
                            }
                            Spacer(modifier = Modifier.width(4.dp))
                        }
                        leadingAccessoryContent()
                    }
                }
            }
            val contentAlignment =
                if (textAlignment == ListItemTextAlignment.Regular) Alignment.CenterStart else Alignment.Center
            Box(
                Modifier
                    .padding(horizontal = padding.calculateStartPadding(LocalLayoutDirection.current))
                    .weight(1f)
                    .then(clearSemantics(textAccessibilityProperties)),
                contentAlignment = contentAlignment
            ) {
                Column(Modifier.padding(top = padding.calculateTopPadding(), bottom = padding.calculateBottomPadding())) {
                    Row(
                        verticalAlignment = Alignment.CenterVertically,
                        horizontalArrangement = Arrangement.spacedBy(textAccessoryContentTextSpacing)
                    ) {
                        if (primaryTextLeadingContent != null) {
                            primaryTextLeadingContent()
                        }

                        BasicText(
                            modifier = Modifier.weight(1f, false),
                            text = text,
                            style = primaryTextTypography.merge(TextStyle(color = primaryTextColor)),
                            maxLines = textMaxLines,
                            overflow = textOverflow
                        )
                        if (primaryTextTrailingContent != null) {
                            primaryTextTrailingContent()
                        }
                    }
                    Row(verticalAlignment = Alignment.CenterVertically) {
                        if (subText != null && textAlignment == ListItemTextAlignment.Regular) {
                            BasicText(
                                text = subText,
                                style = subTextTypography.merge(TextStyle(color = subTextColor)),
                                maxLines = subTextMaxLines,
                                overflow = textOverflow
                            )
                        }
                    }
                    if (textAlignment == ListItemTextAlignment.Regular) {
                        Row(
                            verticalAlignment = Alignment.CenterVertically,
                            horizontalArrangement = Arrangement.spacedBy(textAccessoryContentTextSpacing)
                        ) {
                            if (bottomContent != null) {
                                Row(modifier.padding(top = 7.dp, bottom = 7.dp)) {
                                    bottomContent()
                                }
                            } else {
                                if (secondarySubTextLeadingContent != null) {
                                    secondarySubTextLeadingContent()
                                }
                                if (secondarySubText != null) {
                                    BasicText(
                                        modifier = Modifier.weight(1f, false),
                                        text = secondarySubText,
                                        style = secondarySubTextTypography.merge(TextStyle(color = secondarySubTextColor)),
                                        maxLines = secondarySubTextMaxLines,
                                        overflow = textOverflow
                                    )
                                } else if (secondarySubTextAnnotated != null) {
                                    BasicText(
                                        modifier = Modifier.weight(1f, false),
                                        text = secondarySubTextAnnotated,
                                        inlineContent = secondarySubTextInlineContent,
                                        maxLines = secondarySubTextMaxLines,
                                        overflow = textOverflow
                                    )
                                }
                                if (secondarySubTextTrailingContent != null) {
                                    secondarySubTextTrailingContent()
                                }
                            }
                        }
                    }
                }
            }
            if (trailingAccessoryContent != null && textAlignment == ListItemTextAlignment.Regular) {
                Box(
                    Modifier
                        .padding(
                            top = if (trailingAccessoryContentAlignment == Alignment.Top) padding.calculateTopPadding() else 0.dp,
                            bottom = if (trailingAccessoryContentAlignment == Alignment.Bottom) padding.calculateBottomPadding() else 0.dp,
                            end = padding.calculateEndPadding(LocalLayoutDirection.current)
                        )
                        .fillMaxHeight(),
                    contentAlignment = trailingAccessoryAlignment
                ) {
                    trailingAccessoryContent()
                }
            }
        }
    }

    /**
     * Create a Single line or a multi line List item. A multi line list can be formed by providing either a secondary text or a tertiary text. Use this if secondarySubText is a String
     *
     * @param text Primary text.
     * @param modifier Optional modifier for List item.
     * @param subText Optional secondaryText or a subtitle.
     * @param secondarySubText Optional tertiary text or a footer.
     * @param textAlignment Optional [ListItemTextAlignment] to align text in the center or start at the lead.
     * @param unreadDot Option boolean value that display a dot on leading edge of the accessory Content and makes the primary text bold on true
     * @param enabled Optional enable/disable List item
     * @param selected Optional selected state for List item.
     * @param textMaxLines Optional max visible lines for primary text.
     * @param subTextMaxLines Optional max visible lines for secondary text.
     * @param secondarySubTextMaxLines Optional max visible lines for tertiary text.
     * @param onClick Optional onClick action for list item.
     * @param onLongClick Optional onLongClick action for list item.
     * @param primaryTextLeadingContent Optional primary text leading Content.
     * @param primaryTextTrailingContent Optional primary text trailing Content.
     * @param secondarySubTextLeadingContent Optional secondary text leading Content.
     * @param secondarySubTextTrailingContent Optional secondary text trailing Content.
     * @param border [BorderType] Optional border for the list item.
     * @param borderInset [BorderInset]Optional borderInset for list item.
     * @param bottomContent Optional bottom Content under Text field.
     * @param leadingAccessoryContent Optional composable leading accessory Content.
     * @param trailingAccessoryContent Optional composable trailing accessory Content.
     * @param leadingAccessoryContentAlignment Alignment for leading accessory Content to align Top, Bottom or Center
     * @param trailingAccessoryContentAlignment Alignment for trailing accessory Content to align Top, Bottom or Center
     * @param textAccessibilityProperties Accessibility properties for the text in list item.
     * @param listItemTokens Optional list item tokens for list item appearance.If not provided then list item tokens will be picked from [AppThemeController]
     *
     */
    @Composable
    fun Item(
        text: String,
        modifier: Modifier = Modifier,
        subText: String? = null,
        secondarySubText: String? = null,
        textAlignment: ListItemTextAlignment = ListItemTextAlignment.Regular,
        unreadDot: Boolean = false,
        enabled: Boolean = true,
        selected: Boolean = false,
        textMaxLines: Int = 1,
        subTextMaxLines: Int = 1,
        secondarySubTextMaxLines: Int = 1,
        onClick: (() -> Unit)? = null,
        onLongClick: (() -> Unit)? = null,
        primaryTextLeadingContent: (@Composable () -> Unit)? = null,
        primaryTextTrailingContent: (@Composable () -> Unit)? = null,
        secondarySubTextLeadingContent: (@Composable () -> Unit)? = null,
        secondarySubTextTrailingContent: (@Composable () -> Unit)? = null,
        border: BorderType = NoBorder,
        borderInset: BorderInset = None,
        interactionSource: MutableInteractionSource = remember { MutableInteractionSource() },
        bottomContent: (@Composable () -> Unit)? = null,
        leadingAccessoryContent: (@Composable () -> Unit)? = null,
        trailingAccessoryContent: (@Composable () -> Unit)? = null,
        leadingAccessoryContentAlignment: Alignment.Vertical = Alignment.CenterVertically,
        trailingAccessoryContentAlignment: Alignment.Vertical = Alignment.CenterVertically,
        textAccessibilityProperties: (SemanticsPropertyReceiver.() -> Unit)? = null,
        listItemTokens: ListItemTokens? = null
    ) {
        InternalItem(
            text = text,
            modifier = modifier,
            subText = subText,
            secondarySubText = secondarySubText,
            textAlignment = textAlignment,
            unreadDot = unreadDot,
            enabled = enabled,
            selected = selected,
            textMaxLines = textMaxLines,
            subTextMaxLines = subTextMaxLines,
            secondarySubTextMaxLines = secondarySubTextMaxLines,
            onClick = onClick,
            onLongClick = onLongClick,
            primaryTextLeadingContent = primaryTextLeadingContent,
            primaryTextTrailingContent = primaryTextTrailingContent,
            secondarySubTextLeadingContent = secondarySubTextLeadingContent,
            secondarySubTextTrailingContent = secondarySubTextTrailingContent,
            border = border,
            borderInset = borderInset,
            interactionSource = interactionSource,
            bottomContent = bottomContent,
            leadingAccessoryContent = leadingAccessoryContent,
            trailingAccessoryContent = trailingAccessoryContent,
            leadingAccessoryContentAlignment = leadingAccessoryContentAlignment,
            trailingAccessoryContentAlignment = trailingAccessoryContentAlignment,
            textAccessibilityProperties = textAccessibilityProperties,
            listItemTokens = listItemTokens
        )
    }

    /**
     * Create a Single line or a multi line List item. A multi line list can be formed by providing either a secondary text or a tertiary text. Use this if the secondarySubtext is an Annotated String
     *
     * @param text Primary text.
     * @param modifier Optional modifier for List item.
     * @param subText Optional secondaryText or a subtitle.
     * @param secondarySubTextAnnotated Optional tertiary text (Annotated) or a footer.
     * @param secondarySubTextInlineContent Map of composables to replace certain ranges of text in [secondarySubTextAnnotated].
     * @param textAlignment Optional [ListItemTextAlignment] to align text in the center or start at the lead.
     * @param unreadDot Option boolean value that display a dot on leading edge of the accessory Content and makes the primary text bold on true
     * @param enabled Optional enable/disable List item
     * @param selected Optional selected state for the list item.
     * @param textMaxLines Optional max visible lines for primary text.
     * @param subTextMaxLines Optional max visible lines for secondary text.
     * @param secondarySubTextMaxLines Optional max visible lines for tertiary text.
     * @param onClick Optional onClick action for list item.
     * @param onLongClick Optional onLongClick action for list item.
     * @param primaryTextLeadingContent Optional primary text leading Content.
     * @param primaryTextTrailingContent Optional primary text trailing Content.
     * @param secondarySubTextLeadingContent Optional secondary text leading Content.
     * @param secondarySubTextTrailingContent Optional secondary text trailing Content.
     * @param border [BorderType] Optional border for the list item.
     * @param borderInset [BorderInset]Optional borderInset for list item.
     * @param bottomContent Optional bottom Content under Text field.
     * @param leadingAccessoryContent Optional composable leading accessory Content.
     * @param trailingAccessoryContent Optional composable trailing accessory Content.
     * @param leadingAccessoryContentAlignment Alignment for leading accessory Content to align Top, Bottom or Center
     * @param trailingAccessoryContentAlignment Alignment for trailing accessory Content to align Top, Bottom or Center
     * @param textAccessibilityProperties Accessibility properties for the text in list item.
     * @param listItemTokens Optional list item tokens for list item appearance.If not provided then list item tokens will be picked from [AppThemeController]
     *
     */
    @Composable
    fun Item(
        text: String,
        modifier: Modifier = Modifier,
        subText: String? = null,
        secondarySubTextAnnotated: AnnotatedString? = null,
        secondarySubTextInlineContent: Map<String, InlineTextContent> = mapOf(),
        textAlignment: ListItemTextAlignment = ListItemTextAlignment.Regular,
        unreadDot: Boolean = false,
        enabled: Boolean = true,
        selected: Boolean = false,
        textMaxLines: Int = 1,
        subTextMaxLines: Int = 1,
        secondarySubTextMaxLines: Int = 1,
        onClick: (() -> Unit)? = null,
        onLongClick: (() -> Unit)? = null,
        primaryTextLeadingContent: (@Composable () -> Unit)? = null,
        primaryTextTrailingContent: (@Composable () -> Unit)? = null,
        secondarySubTextLeadingContent: (@Composable () -> Unit)? = null,
        secondarySubTextTrailingContent: (@Composable () -> Unit)? = null,
        border: BorderType = NoBorder,
        borderInset: BorderInset = None,
        interactionSource: MutableInteractionSource = remember { MutableInteractionSource() },
        bottomContent: (@Composable () -> Unit)? = null,
        leadingAccessoryContent: (@Composable () -> Unit)? = null,
        trailingAccessoryContent: (@Composable () -> Unit)? = null,
        leadingAccessoryContentAlignment: Alignment.Vertical = Alignment.CenterVertically,
        trailingAccessoryContentAlignment: Alignment.Vertical = Alignment.CenterVertically,
        textAccessibilityProperties: (SemanticsPropertyReceiver.() -> Unit)? = null,
        listItemTokens: ListItemTokens? = null
    ) {
        InternalItem(
            text = text,
            modifier = modifier,
            subText = subText,
            secondarySubTextAnnotated = secondarySubTextAnnotated,
            secondarySubTextInlineContent = secondarySubTextInlineContent,
            textAlignment = textAlignment,
            unreadDot = unreadDot,
            enabled = enabled,
            selected = selected,
            textMaxLines = textMaxLines,
            subTextMaxLines = subTextMaxLines,
            secondarySubTextMaxLines = secondarySubTextMaxLines,
            onClick = onClick,
            onLongClick = onLongClick,
            primaryTextLeadingContent = primaryTextLeadingContent,
            primaryTextTrailingContent = primaryTextTrailingContent,
            secondarySubTextLeadingContent = secondarySubTextLeadingContent,
            secondarySubTextTrailingContent = secondarySubTextTrailingContent,
            border = border,
            borderInset = borderInset,
            interactionSource = interactionSource,
            bottomContent = bottomContent,
            leadingAccessoryContent = leadingAccessoryContent,
            trailingAccessoryContent = trailingAccessoryContent,
            leadingAccessoryContentAlignment = leadingAccessoryContentAlignment,
            trailingAccessoryContentAlignment = trailingAccessoryContentAlignment,
            textAccessibilityProperties = textAccessibilityProperties,
            listItemTokens = listItemTokens
        )
    }

    /**
     * Create a Section header. Section headers are list tiles that delineates sections of a list or grid list
     *
     * @param modifier Optional modifier for List item.
     * @param title Section header title.
     * @param titleMaxLines Optional max visible lines for title.
     * @param accessoryTextTitle Optional accessory text.
     * @param accessoryTextOnClick Optional onClick action for accessory text.
     * @param enabled Optional enable/disable List item
     * @param style [SectionHeaderStyle] Section header style.
     * @param enableChevron Adds a chevron icon before text
     * @param chevronOrientation Pass [ChevronOrientation] to apply chevron icon transition when clicked on the list item. Defaults to static (enter and exit transition are same).
     * @param border [BorderType] Optional border for the list item.
     * @param borderInset [BorderInset] Optional borderInset for list item.
     * @param listItemTokens Optional list item tokens for list item appearance.If not provided then list tokens will be picked from [AppThemeController]
     * @param enter [EnterTransition] used for content appearing transition
     * @param exit [ExitTransition] used for content disappearing transition
     * @param trailingAccessoryContent Optional composable trailing accessory Content.
     * @param content Composable content to appear or disappear on clicking the list item
     *
     */

    @Composable
    fun SectionHeader(
        title: String,
        modifier: Modifier = Modifier,
        titleMaxLines: Int = 1,
        accessoryTextTitle: String? = null,
        accessoryTextOnClick: (() -> Unit)? = null,
        enabled: Boolean = true,
        titleLeadingContent: (@Composable () -> Unit)? = null,
        titleTrailingContent: (@Composable () -> Unit)? = null,
        style: SectionHeaderStyle = SectionHeaderStyle.Bold,
        enableChevron: Boolean = true,
        chevronOrientation: ChevronOrientation = ChevronOrientation(0f, 0f),
        border: BorderType = NoBorder,
        borderInset: BorderInset = None,
        enableContentOpenCloseTransition: Boolean = false,
        enter: EnterTransition = expandVertically(),
        exit: ExitTransition = shrinkVertically(),
        interactionSource: MutableInteractionSource = remember { MutableInteractionSource() },
        trailingAccessoryContent: (@Composable () -> Unit)? = null,
        listItemTokens: ListItemTokens? = null,
        content: (@Composable () -> Unit)? = null
    ) {
        val themeID =
            FluentTheme.themeID    //Adding This only for recomposition in case of Token Updates. Unused otherwise.
        val token = listItemTokens
            ?: FluentTheme.controlTokens.tokens[ControlType.ListItemControlType] as ListItemTokens
        val listItemInfo = ListItemInfo(
            listItemType = SectionHeader,
            borderInset = borderInset,
            horizontalSpacing = FluentGlobalTokens.SizeTokens.Size160,
            verticalSpacing = FluentGlobalTokens.SizeTokens.Size120,
            style = style
        )
        val backgroundColor =
            token.backgroundBrush(listItemInfo).getBrushByState(
                enabled = true, selected = false, interactionSource = interactionSource
            )
        val cellHeight = token.cellHeight(listItemInfo)
        val primaryTextTypography =
            token.sectionHeaderPrimaryTextTypography(listItemInfo)
        val actionTextTypography =
            token.sectionHeaderActionTextTypography(listItemInfo)
        val primaryTextColor = token.primaryTextColor(
            listItemInfo
        ).getColorByState(
            enabled = enabled, selected = false, interactionSource = interactionSource
        )
        val actionTextColor = token.actionTextColor(
            listItemInfo
        ).getColorByState(
            enabled = enabled, selected = false, interactionSource = interactionSource
        )
        val rippleColor = token.rippleColor(listItemInfo)
        val padding = token.padding(listItemInfo)
        val borderSize = token.borderSize(listItemInfo).value
        val borderInsetToPx = with(LocalDensity.current) {
            token.borderInset(listItemInfo).toPx()
        }
        val borderColor = token.borderColor(listItemInfo).getColorByState(
            enabled = enabled, selected = false, interactionSource = interactionSource
        )
        val textAccessoryContentTextSpacing = token.textAccessoryContentTextSpacing(listItemInfo)
        val chevronTint = token.chevronTint(listItemInfo)
        var expandedState by rememberSaveable { mutableStateOf(false) }
        val rotationState by animateFloatAsState(
            targetValue = if (!enableContentOpenCloseTransition || expandedState) chevronOrientation.enterTransition else chevronOrientation.exitTransition
        )
        val expandedString = LocalContext.current.resources.getString(R.string.fluentui_expanded)
        val collapsedString = LocalContext.current.resources.getString(R.string.fluentui_collapsed)
        val textOverflow = token.textOverflow(listItemInfo)
        Box(
            modifier = modifier
                .fillMaxWidth()
                .heightIn(min = cellHeight)
                .background(backgroundColor)
                .then(
                    if (enableContentOpenCloseTransition && content != null) {
                        Modifier.longPressSemanticsModifier(
                            interactionSource,
                            onClick = {
                                expandedState = !expandedState
                            },
                            onLongClick = {
                                expandedState = !expandedState
                            },
                            enabled,
                            rippleColor
                        )
                    } else Modifier
                )
                .semantics(mergeDescendants = true) {
                    contentDescription =
                        "{$title}." + if (enableContentOpenCloseTransition) {
                            if (expandedState) {
                                expandedString
                            } else {
                                collapsedString
                            }
                        } else {
                            ""
                        }
                }
        ) {
            Column {
                Row(
                    Modifier
                        .background(backgroundColor)
                        .fillMaxWidth()
                        .heightIn(min = cellHeight)
                        .borderModifier(border, borderColor, borderSize, borderInsetToPx)
                        .padding(bottom = padding.calculateBottomPadding()),
                    verticalAlignment = Alignment.Bottom
                ) {

                    Box(
                        Modifier
                            .padding(
                                horizontal = padding.calculateStartPadding(
                                    LocalLayoutDirection.current
                                )
                            )
                            .weight(1f), contentAlignment = Alignment.BottomStart
                    ) {

                        Row(verticalAlignment = Alignment.CenterVertically) {
                            if (enableChevron) {
                                Icon(
                                    painter = rememberVectorPainter(image = ListItemIcons.Chevron),
                                    contentDescription = null,
                                    Modifier
                                        .rotate(rotationState)
                                        .testTag("Chevron"),
                                    tint = chevronTint
                                )
                            }
                            Row(
                                verticalAlignment = Alignment.CenterVertically,
                                horizontalArrangement = Arrangement.spacedBy(textAccessoryContentTextSpacing)
                            ) {
                                if(titleLeadingContent != null){
                                    titleLeadingContent()
                                }
                                BasicText(
                                    modifier = Modifier.clearAndSetSemantics { },
                                    text = title,
                                    style = primaryTextTypography.merge(TextStyle(color = primaryTextColor)),
                                    maxLines = titleMaxLines,
                                    overflow = textOverflow
                                )
                                if(titleTrailingContent != null){
                                    titleTrailingContent()
                                }
                            }
                        }

                    }
                    Row(Modifier.padding(end = padding.calculateEndPadding(LocalLayoutDirection.current))) {
                        if (accessoryTextTitle != null) {
                            BasicText(
                                text = accessoryTextTitle,
                                Modifier.clickable(
                                    onClick = accessoryTextOnClick ?: {})
                                    .clearAndSetSemantics { contentDescription = accessoryTextTitle
                                        role = Role.Button },
                                style = actionTextTypography.merge(TextStyle(color = actionTextColor))
                            )
                        }
                    }
                    if (trailingAccessoryContent != null) {
                        Box(
                            Modifier.padding(
                                end = padding.calculateEndPadding(
                                    LocalLayoutDirection.current
                                )
                            ), contentAlignment = Alignment.BottomStart
                        ) {
                            trailingAccessoryContent()
                        }
                    }
                }
                Row {
                    if (content != null) {
                        AnimatedVisibility(
                            visible = !enableContentOpenCloseTransition || expandedState,
                            enter = enter,
                            exit = exit
                        ) {
                            content()
                        }
                    }

                }
            }
        }
    }

    /**
     * Create a Section description. Section description are lists that provide added context to a list.
     *
     * @param modifier Optional modifier for List item.
     * @param description description text.
     * @param enabled Optional enable/disable List item
     * @param listItemTokens Optional list item tokens for list item appearance.If not provided then list tokens will be picked from [AppThemeController]
     * @param actionText Option boolean to append "Action" text button to the description text.
     * @param descriptionPlacement [TextPlacement] Enum value for placing the description text in the list item.
     * @param onClick Optional onClick action for list item.
     * @param onLongClick Optional onLongClick action for list item.
     * @param onActionClick Optional onClick action for actionText.
     * @param border [BorderType] Optional border for the list item.
     * @param borderInset [BorderInset] Optional borderInset for list item.
     * @param leadingAccessoryContent Optional composable leading accessory Content.
     * @param trailingAccessoryContent Optional composable trailing accessory Content.
     *
     */
    @Composable
    fun SectionDescription(
        description: String,
        modifier: Modifier = Modifier,
        enabled: Boolean = true,
        actionText: String? = null,
        descriptionPlacement: TextPlacement = Top,
        border: BorderType = NoBorder,
        borderInset: BorderInset = None,
        onClick: (() -> Unit)? = null,
        onLongClick: (() -> Unit)? = null,
        onActionClick: (() -> Unit)? = null,
        interactionSource: MutableInteractionSource = remember { MutableInteractionSource() },
        leadingAccessoryContent: (@Composable () -> Unit)? = null,
        trailingAccessoryContent: (@Composable () -> Unit)? = null,
        listItemTokens: ListItemTokens? = null
    ) {
        val themeID =
            FluentTheme.themeID    //Adding This only for recomposition in case of Token Updates. Unused otherwise.
        val token = listItemTokens
            ?: FluentTheme.controlTokens.tokens[ControlType.ListItemControlType] as ListItemTokens
        val listItemInfo = ListItemInfo(
            listItemType = SectionDescription,
            horizontalSpacing = FluentGlobalTokens.SizeTokens.Size160,
            verticalSpacing = FluentGlobalTokens.SizeTokens.Size80,
            borderInset = borderInset,
            placement = descriptionPlacement
        )
        val backgroundColor =
            token.backgroundBrush(listItemInfo).getBrushByState(
                enabled = true, selected = false, interactionSource = interactionSource
            )
        val cellHeight = token.cellHeight(listItemInfo)
        val descriptionTextTypography =
            token.descriptionTextTypography(listItemInfo)
        val actionTextTypography = token.actionTextTypography(listItemInfo)
        val descriptionTextColor = token.descriptionTextColor(
            listItemInfo
        ).getColorByState(
            enabled = enabled, selected = false, interactionSource = interactionSource
        )
        val actionTextColor = token.actionTextColor(
            listItemInfo
        ).getColorByState(
            enabled = enabled, selected = false, interactionSource = interactionSource
        )
        val rippleColor = token.rippleColor(listItemInfo)
        val borderSize = token.borderSize(listItemInfo).value
        val borderInsetToPx = with(LocalDensity.current) {
            token.borderInset(listItemInfo).toPx()
        }
        val borderColor = token.borderColor(listItemInfo).getColorByState(
            enabled = enabled, selected = false, interactionSource = interactionSource
        )
        val descriptionAlignment = token.descriptionPlacement(listItemInfo)
        val padding = token.padding(listItemInfo)
        Row(
            modifier
                .fillMaxWidth()
                .heightIn(min = cellHeight)
                .background(backgroundColor)
                .borderModifier(border, borderColor, borderSize, borderInsetToPx)
                .longPressSemanticsModifier(
                    interactionSource, onClick = onClick ?: {}, onLongClick = onLongClick ?: {} ,enabled, rippleColor
                ), verticalAlignment = descriptionAlignment
        ) {
            if (leadingAccessoryContent != null && descriptionPlacement == Top) {
                Box(
                    Modifier.padding(padding.calculateStartPadding(LocalLayoutDirection.current)),
                    contentAlignment = Alignment.Center
                ) {
                    leadingAccessoryContent()
                }
            }
            Box(
                Modifier
                    .padding(
                        start = if (leadingAccessoryContent == null) padding.calculateStartPadding(
                            LocalLayoutDirection.current
                        ) else 0.dp,
                        end = padding.calculateEndPadding(LocalLayoutDirection.current),
                        top = if (descriptionPlacement == Top) padding.calculateTopPadding() else 0.dp,
                        bottom = if (descriptionPlacement == Bottom) padding.calculateTopPadding() else 0.dp
                    )
                    .weight(1f)
            ) {
                if (!actionText.isNullOrBlank()) {
                    InlineText(
                        description = description,
                        actionText = actionText,
                        onClick = onActionClick ?: {},
                        actionTextTypography = actionTextTypography,
                        actionTextColor = actionTextColor,
                        descriptionTextColor = descriptionTextColor,
                        descriptionTextTypography = descriptionTextTypography,
                        backgroundColor = backgroundColor
                    )
                } else {
                    BasicText(
                        text = description,
                        style = descriptionTextTypography.merge(TextStyle(color = descriptionTextColor))
                    )
                }
            }
            if (trailingAccessoryContent != null) {
                Box(
                    Modifier.padding(end = padding.calculateEndPadding(LocalLayoutDirection.current)),
                    contentAlignment = Alignment.Center
                ) {
                    trailingAccessoryContent()
                }
            }
        }
    }

    /**
     * Create a Header. Headers are list tiles that delineates heading of a list or grid list
     *
     * @param modifier Optional modifier for List item.
     * @param title Section header title.
     * @param titleMaxLines Optional max visible lines for title.
     * @param accessoryTextTitle Optional accessory text.
     * @param accessoryTextOnClick Optional onClick action for accessory text.
     * @param enabled Optional enable/disable List item
     * @param style [SectionHeaderStyle] Section header style.
     * @param border [BorderType] Optional border for the list item.
     * @param borderInset [BorderInset] Optional borderInset for list item.
     * @param listItemTokens Optional list item tokens for list item appearance.If not provided then list tokens will be picked from [AppThemeController]
     * @param trailingAccessoryContent Optional composable trailing accessory Content.
     *
     */

    @Composable
    fun Header(
        title: String,
        modifier: Modifier = Modifier,
        titleMaxLines: Int = 1,
        accessoryTextTitle: String? = null,
        accessoryTextOnClick: (() -> Unit)? = null,
        enabled: Boolean = true,
        style: SectionHeaderStyle = SectionHeaderStyle.Bold,
        border: BorderType = NoBorder,
        borderInset: BorderInset = None,
        interactionSource: MutableInteractionSource = remember { MutableInteractionSource() },
        trailingAccessoryContent: (@Composable () -> Unit)? = null,
        listItemTokens: ListItemTokens? = null
    ) {
        val themeID =
            FluentTheme.themeID    //Adding This only for recomposition in case of Token Updates. Unused otherwise.
        val token = listItemTokens
            ?: FluentTheme.controlTokens.tokens[ControlType.ListItemControlType] as ListItemTokens
        val listItemInfo = ListItemInfo(
            listItemType = OneLine,
            style = style,
            horizontalSpacing = FluentGlobalTokens.SizeTokens.Size160,
            verticalSpacing = FluentGlobalTokens.SizeTokens.Size80,
            borderInset = borderInset
        )
        val backgroundColor =
            token.backgroundBrush(listItemInfo).getBrushByState(
                enabled = true, selected = false, interactionSource = interactionSource
            )
        val cellHeight = token.cellHeight(listItemInfo)
        val primaryTextTypography =
            token.sectionHeaderPrimaryTextTypography(listItemInfo)
        val actionTextTypography =
            token.sectionHeaderActionTextTypography(listItemInfo)
        val primaryTextColor = token.primaryTextColor(
            listItemInfo
        ).getColorByState(
            enabled = enabled, selected = false, interactionSource = interactionSource
        )
        val actionTextColor = token.actionTextColor(
            listItemInfo
        ).getColorByState(
            enabled = enabled, selected = false, interactionSource = interactionSource
        )
        val padding = token.padding(listItemInfo)
        val borderSize = token.borderSize(listItemInfo).value
        val borderInsetToPx = with(LocalDensity.current) {
            token.borderInset(listItemInfo).toPx()
        }
        val borderColor = token.borderColor(listItemInfo).getColorByState(
            enabled = enabled, selected = false, interactionSource = interactionSource
        )
        val textOverflow = token.textOverflow(listItemInfo)
        Box(
            modifier = modifier
                .fillMaxWidth()
                .heightIn(min = cellHeight)
                .background(backgroundColor)
                .focusProperties { canFocus = false }
        ) {
            Row(
                Modifier
                    .fillMaxWidth()
                    .heightIn(min = cellHeight)
                    .background(backgroundColor)
                    .borderModifier(border, borderColor, borderSize, borderInsetToPx)
                    .focusable(true), verticalAlignment = Alignment.Bottom
            ) {
                BasicText(
                    text = title,
                    modifier = Modifier
                        .padding(
                            start = padding.calculateStartPadding(LocalLayoutDirection.current),
                            end = padding.calculateEndPadding(LocalLayoutDirection.current),
                            bottom = padding.calculateBottomPadding()
                        )
                        .weight(1f),
                    style = primaryTextTypography.merge(TextStyle(color = primaryTextColor)),
                    maxLines = titleMaxLines,
                    overflow = textOverflow
                )

                if (accessoryTextTitle != null) {
                    BasicText(
                        text = accessoryTextTitle,
                        Modifier
                            .padding(
                                end = padding.calculateEndPadding(LocalLayoutDirection.current),
                                bottom = padding.calculateBottomPadding()
                            )
                            .clickable(
                                onClick = accessoryTextOnClick ?: {})
                            .clearAndSetSemantics { contentDescription = accessoryTextTitle
                                role = Role.Button },
                        style = actionTextTypography.merge(TextStyle(color = actionTextColor)),
                        overflow = textOverflow,
                    )
                }
                if (trailingAccessoryContent != null) {
                    Box(
                        Modifier.padding(
                            end = padding.calculateEndPadding(LocalLayoutDirection.current),
                            bottom = padding.calculateBottomPadding()
                        ), contentAlignment = Alignment.BottomStart
                    ) {
                        trailingAccessoryContent()
                    }
                }
            }
        }
    }
}
```

## File: src/main/java/com/microsoft/fluentui/tokenized/listitem/Utils.kt
```kotlin
package com.microsoft.fluentui.tokenized.listitem

import androidx.compose.runtime.Composable

data class ChevronOrientation(val enterTransition: Float = 0f, val exitTransition: Float = 0f)
```

## File: src/main/java/com/microsoft/fluentui/tokenized/tabItem/TabItem.kt
```kotlin
package com.microsoft.fluentui.tokenized.tabItem

import androidx.compose.animation.AnimatedVisibility
import androidx.compose.animation.animateColorAsState
import androidx.compose.animation.core.tween
import androidx.compose.animation.expandHorizontally
import androidx.compose.animation.fadeIn
import androidx.compose.animation.fadeOut
import androidx.compose.animation.shrinkHorizontally
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.interaction.MutableInteractionSource
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.text.BasicText
import androidx.compose.material.ripple.rememberRipple
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.ExperimentalComposeUiApi
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.draw.drawWithCache
import androidx.compose.ui.graphics.BlendMode
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.graphicsLayer
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.layout.Layout
import androidx.compose.ui.layout.layoutId
import androidx.compose.ui.semantics.Role
import androidx.compose.ui.semantics.invisibleToUser
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.constraintlayout.compose.ChainStyle
import androidx.constraintlayout.compose.ConstraintLayout
import androidx.constraintlayout.compose.Dimension
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.ControlTokens
import com.microsoft.fluentui.theme.token.FluentGlobalTokens
import com.microsoft.fluentui.theme.token.FluentStyle
import com.microsoft.fluentui.theme.token.Icon
import com.microsoft.fluentui.theme.token.controlTokens.TabItemInfo
import com.microsoft.fluentui.theme.token.controlTokens.TabItemTokens
import com.microsoft.fluentui.theme.token.controlTokens.TabTextAlignment

@OptIn(ExperimentalComposeUiApi::class)
@Composable
fun TabItem(
    title: String,
    icon: ImageVector,
    onClick: () -> Unit,
    accessory: (@Composable () -> Unit)?,
    modifier: Modifier = Modifier,
    style: FluentStyle = FluentStyle.Neutral,
    textAlignment: TabTextAlignment = TabTextAlignment.VERTICAL,
    enabled: Boolean = true,
    selected: Boolean = false,
    fixedWidth: Boolean = false,
    showIndicator: Boolean = false,
    interactionSource: MutableInteractionSource = remember { MutableInteractionSource() },
    tabItemTokens: TabItemTokens? = null
) {
    val themeID =
        FluentTheme.themeID    //Adding This only for recomposition in case of Token Updates. Unused otherwise.
    val token =
        tabItemTokens
            ?: FluentTheme.controlTokens.tokens[ControlTokens.ControlType.TabItemControlType] as TabItemTokens

    val tabItemInfo = TabItemInfo(textAlignment, style)
    val textColor by animateColorAsState(
        token.textColor(tabItemInfo = tabItemInfo).getColorByState(
            enabled = enabled,
            selected = selected,
            interactionSource = interactionSource
        ),
        animationSpec = tween(durationMillis = 300)
    )
    val iconColorBrush: Brush = token.iconColor(tabItemInfo = tabItemInfo).getBrushByState(
        enabled = enabled,
        selected = selected,
        interactionSource = interactionSource
    )

    val indicatorColor: Brush = token.indicatorColor(tabItemInfo = tabItemInfo).getBrushByState(
        enabled = enabled, selected = selected, interactionSource = interactionSource
    )

    val padding = token.padding(tabItemInfo = tabItemInfo)
    val backgroundColor = token.backgroundBrush(tabItemInfo = tabItemInfo).getBrushByState(
        enabled = enabled, selected = selected, interactionSource = interactionSource
    )
    val rippleColor = token.rippleColor(tabItemInfo = tabItemInfo)
    val clickableModifier = Modifier
        .clickable(
            interactionSource = interactionSource,
            indication = if (showIndicator) null else rememberRipple(color = rippleColor),
            onClickLabel = null,
            enabled = enabled,
            onClick = onClick,
            role = Role.Tab,
        )

    val widthModifier = if (fixedWidth) {
        Modifier.width(token.width(tabItemInfo = tabItemInfo))
    } else {
        Modifier
    }
    val iconContent: @Composable () -> Unit = {
        Icon(
            imageVector = icon,
            modifier = Modifier
                        .semantics {
                            invisibleToUser()
                        }
                        .size(if (textAlignment == TabTextAlignment.NO_TEXT) 28.dp else 24.dp)
                        .graphicsLayer(alpha = 0.99f)
                        .drawWithCache {
                            onDrawWithContent {
                                drawContent()
                                drawRect(brush = iconColorBrush, blendMode = BlendMode.SrcAtop)
                            }
                        },
            contentDescription = if (textAlignment == TabTextAlignment.NO_TEXT) title else null,
        )
    }

    if (textAlignment == TabTextAlignment.HORIZONTAL) {
        ConstraintLayout(
            modifier = modifier
                .then(clickableModifier)
                .then(
                    if(showIndicator)
                        Modifier.background(backgroundColor)
                    else
                        Modifier
                )
                .padding(padding)
                .then(widthModifier)
        )
        {
            val (iconConstrain, textConstrain, badgeConstrain) = createRefs()

            Box(modifier = Modifier.constrainAs(iconConstrain) {
                start.linkTo(parent.start)
                end.linkTo(textConstrain.start)
            }
            ) {
                iconContent()
            }

            BasicText(
                text = title,
                modifier = Modifier
                    .semantics {
                        invisibleToUser()
                    }
                    .constrainAs(textConstrain) {
                        start.linkTo(iconConstrain.end)
                        end.linkTo(badgeConstrain.start)
                        width = Dimension.preferredWrapContent
                    }
                    .padding(start = 8.dp),
                style = TextStyle(color = textColor, textAlign = TextAlign.Center),
                overflow = TextOverflow.Ellipsis,
                maxLines = 1
            )

            if (accessory != null) {
                Box(modifier = Modifier
                    .constrainAs(badgeConstrain) {
                        start.linkTo(textConstrain.end)
                        end.linkTo(parent.end)
                    }
                ) {
                    accessory()
                }
            }
            createHorizontalChain(
                iconConstrain,
                textConstrain,
                badgeConstrain,
                chainStyle = ChainStyle.Packed
            )
        }
    } else {
        val badgeWithIcon: @Composable () -> Unit = {
            Layout(
                {
                    Box(
                        modifier = Modifier.layoutId("anchor"),
                        contentAlignment = Alignment.Center
                    ) {
                        iconContent()
                    }

                    Box(modifier = Modifier.layoutId("badge")) {
                        if (accessory != null)
                            accessory()
                    }

                }
            ) { measurables, constraints ->
                val badgePlaceable = measurables.first { it.layoutId == "badge" }.measure(
                    // Measure with loose constraints for height as we don't want the text to take up more
                    // space than it needs.
                    constraints.copy(minHeight = 0)
                )

                val anchorPlaceable =
                    measurables.first { it.layoutId == "anchor" }.measure(constraints)

                // Use the width of the badge to infer whether it has any content (based on radius used
                // in [Badge]) and determine its horizontal offset.
                val hasContent = badgePlaceable.width > 16.dp.roundToPx()
                val contentOffset = if (hasContent) -2.dp.roundToPx() else 0
                val badgeHorizontalOffset = -anchorPlaceable.width / 2 + contentOffset
                val badgeVerticalOffset = (-4).dp

                val totalWidth = anchorPlaceable.width
                val totalHeight = anchorPlaceable.height

                layout(
                    totalWidth,
                    totalHeight
                ) {
                    
                    anchorPlaceable.placeRelative(0, 0)
                    val badgeX = anchorPlaceable.width + badgeHorizontalOffset
                    val badgeY = badgeVerticalOffset.roundToPx()
                    badgePlaceable.placeRelative(badgeX, badgeY)
                }
            }
        }

        val indicatorCornerRadiusSize = FluentGlobalTokens.CornerRadiusTokens.CornerRadiusCircle.value
        val indicatorWidth = FluentGlobalTokens.SizeTokens.Size160.value
        Column(
            horizontalAlignment = Alignment.CenterHorizontally,
            verticalArrangement = Arrangement.Center,
            modifier = modifier
                .then(clickableModifier)
                .then(
                    if(showIndicator)
                        Modifier.background(backgroundColor)
                    else
                        Modifier
                )
                .padding(padding)
                .then(widthModifier)
        ) {
            badgeWithIcon()

            val textTypography = token.textTypography(tabItemInfo = tabItemInfo)
            var fontSize = remember { mutableStateOf(textTypography.fontSize) }
            var textStyle by remember(textColor) {
                mutableStateOf(
                    textTypography.merge(TextStyle(color = textColor, fontSize = fontSize.value))
                )
            }

            if (textAlignment == TabTextAlignment.VERTICAL) {
                Spacer(modifier = Modifier.height(2.dp))
                BasicText(
                    text = title,
                    style = textStyle,
                    maxLines = 1,
                    overflow = TextOverflow.Ellipsis,
                    modifier = Modifier.semantics {
                        invisibleToUser()
                    }
                )
            }
            if(showIndicator){
                Spacer(modifier = Modifier.height(3.5.dp))
                AnimatedVisibility(
                    visible = selected,
                    enter = fadeIn(animationSpec = tween(durationMillis = 300))+ expandHorizontally(animationSpec = tween(durationMillis = 300)),
                    exit = fadeOut(animationSpec = tween(durationMillis = 300))+ shrinkHorizontally(animationSpec = tween(durationMillis = 300)),
                )
                {
                    Box(
                        modifier = Modifier
                            .height(3.dp)
                            .width(indicatorWidth)
                            .background(shape = RoundedCornerShape(indicatorCornerRadiusSize), brush = indicatorColor)
                            .clip(RoundedCornerShape(indicatorCornerRadiusSize))
                    )
                }
            }
        }
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
    <!--ListItemView-->
    <attr name="fluentuiListItemBackgroundColor" format="reference|color"/>
    <attr name="fluentuiListItemTitleColor" format="reference|color"/>
    <attr name="fluentuiListItemSubtitleColor" format="reference|color"/>
    <attr name="fluentuiListItemSubtitleLargeHeaderColor" format="reference|color"/>
    <attr name="fluentuiListItemFooterColor" format="reference|color"/>
    <attr name="fluentuiListItemRippleColor" format="reference|color"/>

    <!--ListSubHeader-->
    <attr name="fluentuiListSubHeaderTitlePrimaryColor" format="reference|color"/>
    <attr name="fluentuiListSubHeaderTitleSecondaryColor" format="reference|color"/>
    <attr name="fluentuiListSubHeaderTitleTertiaryColor" format="reference|color"/>
    <!--Module attributes-->

    <attr name="fluentui_titleColor" format="enum">
        <enum name="primary" value="0" />
        <enum name="secondary" value="1" />
        <enum name="tertiary" value="2" />
    </attr>

    <attr name="fluentuiListItemDisabledStateColor" format="reference|color"/>
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
    <!--ListItem-->
    <dimen name="fluentui_list_item_min_height">48dp</dimen>
    <dimen name="fluentui_list_item_text_area_inset_custom_view">72dp</dimen>
    <dimen name="fluentui_list_item_text_area_inset_custom_view_large_header">96dp</dimen>
    <!--ListItem Custom view sizes-->
    <dimen name="fluentui_list_item_custom_view_size_small">24dp</dimen>
    <dimen name="fluentui_list_item_custom_view_size_medium">40dp</dimen>
    <dimen name="fluentui_list_item_custom_view_size_large">64dp</dimen>
    <!--List item margins and spacing-->
    <dimen name="fluentui_list_item_vertical_margin_text_one_line">13dp</dimen>
    <dimen name="fluentui_list_item_vertical_margin_text_two_line">15dp</dimen>
    <dimen name="fluentui_list_item_vertical_margin_text_two_line_compact">11dp</dimen>
    <dimen name="fluentui_list_item_vertical_margin_text_three_line">14dp</dimen>
    <dimen name="fluentui_list_item_vertical_margin_large_header">12dp</dimen>
    <dimen name="fluentui_list_item_vertical_margin_custom_view_minimum">8dp</dimen>
    <dimen name="fluentui_list_item_horizontal_margin_regular">@dimen/fluentui_content_inset</dimen>
    <dimen name="fluentui_list_item_margin_end_custom_view_small">16dp</dimen>
    <dimen name="fluentui_list_item_text_vertical_spacing">2dp</dimen>
    <dimen name="fluentui_list_item_spacing">16dp</dimen>
    <dimen name="fluentui_list_item_horizontal_spacing_custom_accessory_view_start">8dp</dimen>

    <!--ListSubHeader-->
    <dimen name="fluentui_list_sub_header_height">48dp</dimen>
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
    <style name="Theme.FluentUI.ListItem.Base" parent="Base.Theme.FluentUI">
    <!--ListItemView-->
    <item name="fluentuiListItemBackgroundColor">?attr/fluentuiBackgroundColor</item>
    <item name="fluentuiListItemTitleColor">?attr/fluentuiForegroundColor</item>
    <item name="fluentuiListItemSubtitleColor">?attr/fluentuiForegroundSecondaryColor</item>
    <item name="fluentuiListItemSubtitleLargeHeaderColor">?attr/fluentuiForegroundColor</item>
    <item name="fluentuiListItemFooterColor">?attr/fluentuiForegroundSecondaryColor</item>
    <item name="fluentuiListItemRippleColor">?attr/fluentuiBackgroundPressedColor</item>

    <!--ListSubHeader-->
    <item name="fluentuiListSubHeaderTitlePrimaryColor">?attr/colorPrimary</item>
    <item name="fluentuiListSubHeaderTitleSecondaryColor">?attr/fluentuiForegroundColor</item>
    <item name="fluentuiListSubHeaderTitleTertiaryColor">?attr/fluentuiForegroundSecondaryColor</item>

    <item name="fluentuiListItemDisabledStateColor">@color/fluentui_gray_300</item>

    </style>

    <style name="Theme.FluentUI.ListItem" parent="Theme.FluentUI.ListItem.Base"/>
</resources>
```
