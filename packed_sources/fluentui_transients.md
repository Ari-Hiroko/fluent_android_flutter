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
src/main/java/com/microsoft/fluentui/snackbar/Snackbar.kt
src/main/java/com/microsoft/fluentui/tooltip/Tooltip.kt
src/main/res/values/attrs.xml
src/main/res/values/dimens.xml
src/main/res/values/themes.xml
```

# Files

## File: src/main/java/com/microsoft/fluentui/snackbar/Snackbar.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentui.snackbar

import android.annotation.SuppressLint
import android.content.Context
import com.google.android.material.snackbar.BaseTransientBottomBar
import androidx.coordinatorlayout.widget.CoordinatorLayout
import androidx.core.content.ContextCompat
import androidx.appcompat.widget.AppCompatButton
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.FrameLayout
import android.widget.RelativeLayout
import android.widget.TextView
import com.microsoft.fluentui.transients.R
import com.microsoft.fluentui.transients.R.id.*
import com.microsoft.fluentui.theming.FluentUIContextThemeWrapper
import com.microsoft.fluentui.transients.databinding.ViewSnackbarBinding
import com.microsoft.fluentui.util.ThemeUtil

/**
 * Snackbars provide lightweight feedback about an operation by showing a brief message at the bottom of the screen.
 * [Snackbar] can contain a custom action or use a style geared towards making special announcements to your users
 * in addition to custom text and duration.
 *
 * To use a Snackbar with a FAB, it is recommended that your parent layout be a CoordinatorLayout.
 */
class Snackbar : BaseTransientBottomBar<Snackbar> {
    companion object {
        const val LENGTH_INDEFINITE: Int = BaseTransientBottomBar.LENGTH_INDEFINITE
        const val LENGTH_SHORT: Int = BaseTransientBottomBar.LENGTH_SHORT
        const val LENGTH_LONG: Int = BaseTransientBottomBar.LENGTH_LONG

        /**
         * Use [make] to create your Snackbar and attach it to a given [view]'s parent.
         */
        @SuppressLint("WrongConstant")
        fun make(view: View, text: CharSequence, duration: Int = LENGTH_SHORT, style: Style = Style.REGULAR): Snackbar {
            val parent = findSuitableParent(view) ?:
                throw IllegalArgumentException("No suitable parent found from the given view. Please provide a valid view.")
            // Need the theme wrapper to avoid crashing in Dark theme.
            val content = LayoutInflater.from(FluentUIContextThemeWrapper(parent.context,R.style.Theme_FluentUI_Transients)).inflate(R.layout.view_snackbar, parent, false)
            val snackbar = Snackbar(parent, content, ContentViewCallback(content))
            snackbar.duration = duration
            snackbar.setStyle(style)
            snackbar.setText(text)
            return snackbar
        }

        /**
         * This is adapted from android.support.design.widget.Snackbar
         * It ensures we can use Snackbars in complex ViewGroups like RecyclerView.
         */
        private fun findSuitableParent(view: View): ViewGroup? {
            var currentView: View? = view
            var fallbackParent: ViewGroup? = null

            do {
                if (currentView is CoordinatorLayout)
                    // We've found a CoordinatorLayout, use it
                    return currentView

                if (currentView is FrameLayout)
                    if (currentView.id == android.R.id.content)
                        // If we've hit the decor content view, then we didn't find a CoL in the
                        // hierarchy, so use it.
                        return currentView
                    else
                        // It's not the content view but we'll use it as our fallback
                        fallbackParent = currentView

                // Else, we will loop and crawl up the view hierarchy and try to find a parent
                currentView = currentView?.parent as? View
            } while (currentView != null)

            // If we reach here then we didn't find a CoL or a suitable content view so we'll fallback
            return fallbackParent
        }
    }

    /**
     * Defines the height and width applied to the Snackbar's [customView].
     */
    enum class CustomViewSize(private val id: Int) {
        SMALL(R.dimen.fluentui_snackbar_custom_view_size_small),
        MEDIUM(R.dimen.fluentui_snackbar_custom_view_size_medium);

        /**
         * This method uses [context] to convert the [id] resource into an Int that becomes
         * [Snackbar.customView]'s layout width and height
         */
        fun getDimension(context: Context): Int = context.resources.getDimension(id).toInt()
    }

    /**
     * Defines which style can be applied to the Snackbar.
     * Includes background color, text color, and action button placement.
     */
    enum class Style {
        REGULAR, ANNOUNCEMENT, PRIMARY, LIGHT, WARNING, DANGER
    }

    private val snackbarContainer: RelativeLayout
    private var customView: View? = null
    private val textView: TextView
    private val actionButtonView: AppCompatButton

    private var customViewSize: CustomViewSize = CustomViewSize.SMALL
    private var style: Style = Style.REGULAR

    private val customViewVerticalMargin: Int
        get() {
            val marginResourceId = if (style == Style.ANNOUNCEMENT)
                R.dimen.fluentui_snackbar_custom_view_margin_vertical_announcement
            else
                when(customViewSize) {
                    CustomViewSize.SMALL ->
                        R.dimen.fluentui_snackbar_custom_view_margin_vertical_small
                    CustomViewSize.MEDIUM ->
                        R.dimen.fluentui_snackbar_custom_view_margin_vertical_medium
                }
            return context.resources.getDimension(marginResourceId).toInt()
        }

    private constructor(parent: ViewGroup, content: View, contentViewCallback: ContentViewCallback) : super(parent, content, contentViewCallback) {
        val binding = ViewSnackbarBinding.bind(content)
        textView = binding.snackbarText
        snackbarContainer = binding.snackbarContainer
        actionButtonView = binding.snackbarAction

        updateBackground()
    }

    /**
     * Use [setText] to set or update text on a Snackbar.
     */
    fun setText(text: CharSequence): Snackbar {
        textView.text = text
        // Update style, but not background. Otherwise the background gets extra margins added when text is updated.
        updateStyle()
        return this
    }

    fun setTextColor(color: Int): Snackbar {
        textView.setTextColor(color)
        return this
    }

    fun setActionTextColor(color: Int): Snackbar {
        actionButtonView.setTextColor(color)
        return this
    }

    /**
     * Use [setAction] to add a button to your Snackbar to prompt a user action.
     */
    fun setAction(text: CharSequence, listener: View.OnClickListener): Snackbar {
        actionButtonView.text = text
        actionButtonView.visibility = View.VISIBLE
        actionButtonView.setOnClickListener { view ->
            listener.onClick(view)
            // dismiss the Snackbar
            dispatchDismiss(BaseCallback.DISMISS_EVENT_ACTION)
        }

        updateStyle()

        return this
    }

    /**
     * Use [setCustomView] to add or update an icon or other custom view at the start of the Snackbar.
     */
    fun setCustomView(customView: View?, customViewSize: CustomViewSize = CustomViewSize.SMALL): Snackbar {
        snackbarContainer.removeView(this.customView)

        this.customView = customView
        this.customView?.id = fluentui_snackbar_custom_view
        this.customViewSize = customViewSize

        updateCustomViewLayoutParams()

        if (this.customView != null)
            snackbarContainer.addView(this.customView, 0)

        updateStyle()

        return this
    }

    /**
     * Defines which [Style] is applied to the Snackbar.
     */
    fun setStyle(style: Style): Snackbar {
        if (this.style == style)
            return this

        this.style = style
        updateStyle()
        updateBackground()
        return this
    }

    private fun updateCustomViewLayoutParams() {
        val size = customViewSize.getDimension(context)
        val lp = RelativeLayout.LayoutParams(size, size)
        lp.addRule(RelativeLayout.CENTER_VERTICAL)
        lp.marginStart = context.resources.getDimension(R.dimen.fluentui_snackbar_custom_view_margin_start).toInt()
        customView?.layoutParams = lp
    }

    @SuppressLint("RestrictedApi")
    private fun updateBackground() {
        when (style) {
            Style.REGULAR -> view.background = ContextCompat.getDrawable(FluentUIContextThemeWrapper(context,R.style.Theme_FluentUI_Transients), R.drawable.snackbar_background)
            Style.ANNOUNCEMENT -> view.background = ContextCompat.getDrawable(FluentUIContextThemeWrapper(context,R.style.Theme_FluentUI_Transients), R.drawable.snackbar_background_announcement)
            Style.PRIMARY -> view.background = ContextCompat.getDrawable(FluentUIContextThemeWrapper(context,R.style.Theme_FluentUI_Transients), R.drawable.snackbar_background_primary)
            Style.LIGHT -> view.background = ContextCompat.getDrawable(FluentUIContextThemeWrapper(context,R.style.Theme_FluentUI_Transients), R.drawable.snackbar_background_light)
            Style.WARNING -> view.background = ContextCompat.getDrawable(FluentUIContextThemeWrapper(context,R.style.Theme_FluentUI_Transients), R.drawable.snackbar_background_warning)
            Style.DANGER -> view.background = ContextCompat.getDrawable(FluentUIContextThemeWrapper(context,R.style.Theme_FluentUI_Transients), R.drawable.snackbar_background_danger)
        }
    }

    private fun updateStyle() {
        layoutTextAndActionButton()

        val customViewLayoutParams = customView?.layoutParams as? RelativeLayout.LayoutParams

        when (style) {
            Style.REGULAR -> {
                actionButtonView.setTextColor(ThemeUtil.getThemeAttrColor(FluentUIContextThemeWrapper(context,R.style.Theme_FluentUI_Transients), R.attr.fluentuiSnackbarActionTextColor))
                textView.setTextColor(ThemeUtil.getThemeAttrColor(FluentUIContextThemeWrapper(context,R.style.Theme_FluentUI_Transients), R.attr.fluentuiSnackbarTextColor))
                customViewLayoutParams?.addRule(RelativeLayout.CENTER_VERTICAL)
            }
            Style.ANNOUNCEMENT -> {
                actionButtonView.setTextColor(ThemeUtil.getThemeAttrColor(FluentUIContextThemeWrapper(context,R.style.Theme_FluentUI_Transients), R.attr.fluentuiSnackbarActionTextAnnouncementColor))
                textView.setTextColor(ThemeUtil.getThemeAttrColor(FluentUIContextThemeWrapper(context,R.style.Theme_FluentUI_Transients), R.attr.fluentuiSnackbarActionTextAnnouncementColor))
                customViewLayoutParams?.removeRule(RelativeLayout.CENTER_VERTICAL)
            }
            Style.PRIMARY -> {
                actionButtonView.setTextColor(ThemeUtil.getThemeAttrColor(FluentUIContextThemeWrapper(context,R.style.Theme_FluentUI_Transients), R.attr.fluentuiSnackbarTextPrimaryColor))
                textView.setTextColor(ThemeUtil.getThemeAttrColor(FluentUIContextThemeWrapper(context,R.style.Theme_FluentUI_Transients), R.attr.fluentuiSnackbarTextPrimaryColor))
                customViewLayoutParams?.addRule(RelativeLayout.CENTER_VERTICAL)
            }
            Style.LIGHT -> {
                actionButtonView.setTextColor(ThemeUtil.getThemeAttrColor(FluentUIContextThemeWrapper(context,R.style.Theme_FluentUI_Transients), R.attr.fluentuiSnackbarTextLightColor))
                textView.setTextColor(ThemeUtil.getThemeAttrColor(FluentUIContextThemeWrapper(context,R.style.Theme_FluentUI_Transients), R.attr.fluentuiSnackbarTextLightColor))
                customViewLayoutParams?.addRule(RelativeLayout.CENTER_VERTICAL)
            }
            Style.WARNING -> {
                actionButtonView.setTextColor(ThemeUtil.getThemeAttrColor(FluentUIContextThemeWrapper(context,R.style.Theme_FluentUI_Transients), R.attr.fluentuiSnackbarTextWarningColor))
                textView.setTextColor(ThemeUtil.getThemeAttrColor(FluentUIContextThemeWrapper(context,R.style.Theme_FluentUI_Transients), R.attr.fluentuiSnackbarTextWarningColor))
                customViewLayoutParams?.addRule(RelativeLayout.CENTER_VERTICAL)
            }
            Style.DANGER -> {
                actionButtonView.setTextColor(ThemeUtil.getThemeAttrColor(FluentUIContextThemeWrapper(context,R.style.Theme_FluentUI_Transients), R.attr.fluentuiSnackbarTextDangerColor))
                textView.setTextColor(ThemeUtil.getThemeAttrColor(FluentUIContextThemeWrapper(context,R.style.Theme_FluentUI_Transients), R.attr.fluentuiSnackbarTextDangerColor))
                customViewLayoutParams?.addRule(RelativeLayout.CENTER_VERTICAL)
            }
        }

        customViewLayoutParams?.topMargin = customViewVerticalMargin
        customViewLayoutParams?.bottomMargin = customViewVerticalMargin
        customView?.layoutParams = customViewLayoutParams
    }

    private fun layoutTextAndActionButton() {
        val contentInset = context.resources.getDimension(R.dimen.fluentui_snackbar_content_inset).toInt()
        val textLayoutParams = RelativeLayout.LayoutParams(RelativeLayout.LayoutParams.WRAP_CONTENT, RelativeLayout.LayoutParams.WRAP_CONTENT)
        val buttonLayoutParams = RelativeLayout.LayoutParams(RelativeLayout.LayoutParams.WRAP_CONTENT, RelativeLayout.LayoutParams.WRAP_CONTENT)

        val textWidth = actionButtonView.paint.measureText(actionButtonView.text.toString())
        if (textWidth > context.resources.getDimension(R.dimen.fluentui_snackbar_action_text_wrapping_width) || style == Style.ANNOUNCEMENT) {
            // Action button moves to the bottom of the root view
            textLayoutParams.removeRule(RelativeLayout.START_OF)
            textLayoutParams.removeRule(RelativeLayout.CENTER_VERTICAL)
            textLayoutParams.marginEnd = contentInset
            buttonLayoutParams.addRule(RelativeLayout.BELOW, snackbar_text)
            actionButtonView.setPaddingRelative(contentInset, contentInset, contentInset, contentInset)
        } else {
            // Action button moves to the end of the text view
            textLayoutParams.addRule(RelativeLayout.START_OF, snackbar_action)
            textLayoutParams.addRule(RelativeLayout.CENTER_VERTICAL)
            textLayoutParams.bottomMargin = contentInset
            if (actionButtonView.text.isNullOrEmpty())
                textLayoutParams.marginEnd = contentInset
            buttonLayoutParams.removeRule(RelativeLayout.BELOW)
            actionButtonView.setPaddingRelative(
                context.resources.getDimension(R.dimen.fluentui_snackbar_action_spacing).toInt(),
                contentInset,
                contentInset,
                contentInset
            )
        }

        if (customView != null)
            textLayoutParams.addRule(RelativeLayout.END_OF, fluentui_snackbar_custom_view)
        else
            textLayoutParams.addRule(RelativeLayout.ALIGN_PARENT_START)

        textLayoutParams.alignWithParent = true
        textLayoutParams.marginStart = contentInset
        textLayoutParams.topMargin = contentInset
        textView.layoutParams = textLayoutParams

        buttonLayoutParams.addRule(RelativeLayout.CENTER_VERTICAL)
        buttonLayoutParams.addRule(RelativeLayout.ALIGN_PARENT_END)
        actionButtonView.layoutParams = buttonLayoutParams
    }

    private class ContentViewCallback(private val content: View) : BaseTransientBottomBar.ContentViewCallback {
        val viewBinding = ViewSnackbarBinding.bind(content)
        override fun animateContentIn(delay: Int, duration: Int) {
            // These animations are from the Android Snackbar
            viewBinding.snackbarText.alpha = 0f
            viewBinding.snackbarText.animate().alpha(1f).setDuration(duration.toLong()).setStartDelay(delay.toLong()).start()

            if (viewBinding.snackbarAction.visibility == View.VISIBLE) {
                viewBinding.snackbarAction.alpha = 0f
                viewBinding.snackbarAction.animate().alpha(1f).setDuration(duration.toLong()).setStartDelay(delay.toLong()).start()
            }
        }

        override fun animateContentOut(delay: Int, duration: Int) {
            // These animations are from the Android Snackbar
            viewBinding.snackbarText.alpha = 1f
            viewBinding.snackbarText.animate().alpha(0f).setDuration(duration.toLong()).setStartDelay(delay.toLong()).start()

            if (viewBinding.snackbarAction.visibility == View.VISIBLE) {
                viewBinding.snackbarAction.alpha = 1f
                viewBinding.snackbarAction.animate().alpha(0f).setDuration(duration.toLong()).setStartDelay(delay.toLong()).start()
            }
        }
    }
}
```

## File: src/main/java/com/microsoft/fluentui/tooltip/Tooltip.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentui.tooltip

import android.content.Context
import android.content.res.ColorStateList
import android.graphics.Color
import android.graphics.Rect
import android.graphics.drawable.ColorDrawable
import android.view.Gravity
import android.view.LayoutInflater
import android.view.View
import android.widget.*
import androidx.annotation.ColorInt
import androidx.annotation.DrawableRes
import androidx.core.content.ContextCompat
import androidx.core.view.AccessibilityDelegateCompat
import androidx.core.view.ViewCompat
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat
import androidx.core.widget.ImageViewCompat
import com.microsoft.fluentui.theming.FluentUIContextThemeWrapper
import com.microsoft.fluentui.transients.R
import com.microsoft.fluentui.transients.databinding.ViewTooltipBinding
import com.microsoft.fluentui.util.*

/**
 * Tooltips contain brief helper text shown next to a view that anchors it.
 * [Tooltip] exists within a PopUpWindow and appears above or below its anchor view.
 * Its maximum width is 196dp after which the text wraps.
 */
class Tooltip {
    enum class TouchDismissLocation {
        ANYWHERE,
        INSIDE
    }

    var onDismissListener: OnDismissListener? = null

    val isShowing: Boolean
        get() = popupWindow.isShowing

    private val context: Context
    private val popupWindow: PopupWindow
    private val tooltipView: View
    private val contentFrame: FrameLayout
    private val arrowUpView: ImageView
    private val arrowDownView: ImageView
    private val arrowLeftView: ImageView
    private val arrowRightView: ImageView
    private val tooltipBackGround: View

    private var isAboveAnchor: Boolean = false
    private var isSideAnchor: Boolean = false

    private val margin: Int
    private var positionX: Int = 0
    private var positionY: Int = 0

    private var contentWidth: Int = 0
    private var contentHeight: Int = 0

    private val displayWidth: Int
    private val displayHeight: Int
    private var requireReadjustment = false
    private var requireReinit = false
    private lateinit var toolTipArrow: View

    constructor(context: Context) {
        this.context = context

        // Need the theme wrapper to avoid crashing in Dark theme.
        // TODO Change to inflate(R.layout.view_tooltip, parent, false) and refactor dismiss inside listener accordingly.
        tooltipView = LayoutInflater.from(
            FluentUIContextThemeWrapper(
                context,
                R.style.Theme_FluentUI_Transients
            )
        ).inflate(R.layout.view_tooltip, null)
        val binding = ViewTooltipBinding.bind(tooltipView)
        contentFrame = binding.tooltipContentFrame
        arrowUpView = binding.tooltipArrowUp
        arrowDownView = binding.tooltipArrowDown
        arrowLeftView = binding.tooltipArrowLeft
        arrowRightView = binding.tooltipArrowRight
        tooltipBackGround = binding.tooltipBackground

        margin = context.resources.getDimensionPixelSize(R.dimen.fluentui_tooltip_margin)

        popupWindow = PopupWindow(context).apply {
            isClippingEnabled = true
            isFocusable = context.isAccessibilityEnabled
            isOutsideTouchable = true
            width = context.displaySize.x
            height = context.displaySize.y
            contentView = tooltipView
            setBackgroundDrawable(ColorDrawable(Color.TRANSPARENT))
        }

        displayWidth = context.displaySize.x
        displayHeight = context.displaySize.y
    }

    private fun hideAllArrows() {
        arrowUpView.visibility = View.GONE
        arrowDownView.visibility = View.GONE
        arrowLeftView.visibility = View.GONE
        arrowRightView.visibility = View.GONE
    }

    fun setFocusable(focusable: Boolean = false): Tooltip {
        popupWindow.isFocusable = focusable
        return this
    }

    /**
     * Shows the text in a tooltip
     * @param config the configuration of the tooltip
     */
    fun show(anchor: View, text: String, config: Config = Config()): Tooltip {
        val tooltipTextView: View = LayoutInflater.from(
            FluentUIContextThemeWrapper(
                this.context,
                R.style.Theme_FluentUI_Transients
            )
        ).inflate(R.layout.view_tooltip_text, null)
        val tooltipText: TextView = tooltipTextView.findViewById(R.id.tooltip_text)
        tooltipText.text = text
        return show(anchor, tooltipTextView, config)
    }

    /**
     * Shows the tooltip
     * @param config the configuration of the tooltip
     */
    fun show(anchor: View, content: View, config: Config = Config()): Tooltip {
        if (!(anchor.isAttachedToWindow && anchor.isVisibleOnScreen))
            return this

        initContentView(content)

        // Get location of anchor view on screen
        val screenPos = IntArray(2)
        anchor.getLocationInWindow(screenPos)
        // Get rect for anchor view
        val anchorRect = Rect(
            screenPos[0],
            screenPos[1],
            screenPos[0] + anchor.width,
            screenPos[1] + anchor.height
        )

        measureContentSize()

        setPositionX(
            anchorRect.centerX(),
            if (anchor.layoutIsRtl) -config.offsetX else config.offsetX
        )
        setPositionY(anchorRect, config.offsetY, config.touchDismissLocation)

        initTooltipArrow(anchorRect, anchor.layoutIsRtl, config.offsetX)
        checkEdgeCase(anchorRect)
        if (requireReinit) initTooltipArrow(anchorRect, anchor.layoutIsRtl, config.offsetX)
        if (requireReadjustment) readjustTooltip(anchorRect, anchor.layoutIsRtl, config)

        popupWindow.width = contentWidth
        popupWindow.height = contentHeight
        anchor.post {
            if (anchor.isAttachedToWindow) {
                popupWindow.showAtLocation(anchor, Gravity.NO_GRAVITY, positionX, positionY)
            }
        }

        if (config.touchDismissLocation == TouchDismissLocation.INSIDE) {
            // If focusable is true, outside touchable cannot become denied.
            // https://developer.android.com/reference/android/widget/PopupWindow#setOutsideTouchable%28boolean%29
            popupWindow.isFocusable = false
            popupWindow.isOutsideTouchable = false
        }

        // popupWindow may get dismissed by outside touch for TouchDismissLocation.ANYWHERE
        popupWindow.setOnDismissListener {
            dismissSideEffects()
        }

        return this
    }

    fun setCustomBackgroundColor(@ColorInt color: Int) {
        var drawable = tooltipBackGround.background.constantState?.newDrawable()?.mutate()
        drawable?.setTint(color)
        tooltipBackGround.background = drawable
        ImageViewCompat.setImageTintList(arrowUpView, ColorStateList.valueOf(color))
        ImageViewCompat.setImageTintList(arrowDownView, ColorStateList.valueOf(color))
        ImageViewCompat.setImageTintList(arrowLeftView, ColorStateList.valueOf(color))
        ImageViewCompat.setImageTintList(arrowRightView, ColorStateList.valueOf(color))
    }

    fun setCustomBackground(@DrawableRes drawable: Int) {
        tooltipBackGround.background = ContextCompat.getDrawable(context, drawable)
    }

    private fun dismissSideEffects() {
        tooltipView.announceForAccessibility(context.getString(R.string.tooltip_accessibility_dismiss_announcement))
        onDismissListener?.onDismiss()
    }

    fun dismiss() {
        popupWindow.dismiss()
    }

    private fun measureContentSize() {
        val widthMeasureSpec = View.MeasureSpec.makeMeasureSpec(
            context.resources.getDimensionPixelSize(R.dimen.fluentui_tooltip_max_width),
            View.MeasureSpec.AT_MOST
        )
        val heightMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, View.MeasureSpec.UNSPECIFIED)
        tooltipView.measure(widthMeasureSpec, heightMeasureSpec)
        contentWidth = tooltipView.measuredWidth
        contentHeight = tooltipView.measuredHeight
    }

    private fun setPositionX(anchorCenter: Int, offsetX: Int) {
        positionX = anchorCenter - contentWidth / 2 + offsetX

        // Navigation Bar in Nougat+ can appear on the left on phones at 270 rotation and adds
        // its height to the left of the display creating an offset that needs to be corrected to get
        // accurate horizontal position.
        val softNavBarOffsetX = context.softNavBarOffsetX
        if (positionX + contentWidth + margin - softNavBarOffsetX > displayWidth)
            positionX = displayWidth - contentWidth - margin + softNavBarOffsetX
        else if (positionX < softNavBarOffsetX + margin)
            positionX = margin + softNavBarOffsetX
    }

    // We manually convert position x for Rtl as the space inside the popup window places the 0 on the right
    private fun resetPositionXForRtl(): Float =
        contentWidth + positionX.toFloat() - context.displaySize.x.toFloat()

    private fun setPositionY(anchor: Rect, offsetY: Int, dismissLocation: TouchDismissLocation) {
        positionY = anchor.bottom

        isAboveAnchor = context.activity?.let {
            positionY + contentHeight + margin > displayHeight
        } ?: false
        if (isAboveAnchor) {
            positionY = anchor.top - contentHeight - offsetY
        }
    }

    private fun initContentView(content: View) {
        contentFrame.addView(content)
        contentFrame.setOnClickListener { dismiss() }

        ViewCompat.setAccessibilityDelegate(contentFrame, object : AccessibilityDelegateCompat() {
            override fun onInitializeAccessibilityNodeInfo(
                host: View,
                info: AccessibilityNodeInfoCompat
            ) {
                super.onInitializeAccessibilityNodeInfo(host, info)
                val clickAction = AccessibilityNodeInfoCompat.AccessibilityActionCompat(
                    AccessibilityNodeInfoCompat.ACTION_CLICK,
                    context.resources.getString(R.string.tooltip_accessibility_dismiss_action)
                )
                info.addAction(clickAction)
            }
        })
    }

    private fun initTooltipArrow(anchorRect: Rect, isRTL: Boolean, offsetX: Int) {
        hideAllArrows()

        toolTipArrow =
            if (isAboveAnchor && !isSideAnchor) arrowDownView else
                if (!isAboveAnchor && !isSideAnchor) arrowUpView else
                    if (!isAboveAnchor) arrowLeftView
                    else arrowRightView

        toolTipArrow.visibility = View.VISIBLE

        val tooltipArrowWidth =
            context.resources.getDimensionPixelSize(R.dimen.fluentui_tooltip_arrow_height)

        // In RTL scenario "x" axis is still left to right with 0 being at the left most edge of the display.
        // The offset calculation places the tooltip arrow in the correct position in reference to its anchor.
        val layoutParams = toolTipArrow.layoutParams as LinearLayout.LayoutParams
        val cornerRadius = context.resources.getDimensionPixelSize(R.dimen.fluentui_tooltip_radius)
        if (!isSideAnchor) { // Normal Top/Bottom arrow
            val anchorCenterX = anchorRect.centerX()

            val offset = if (isRTL)
                positionX + contentWidth - anchorCenterX - tooltipArrowWidth
            else
                (anchorCenterX - positionX - tooltipArrowWidth)
            layoutParams.gravity = Gravity.START
            layoutParams.marginStart = offset + offsetX
        } else {// Edge Case Left/Right arrow
            layoutParams.gravity = Gravity.TOP
            var topMargin = anchorRect.centerY() - positionY - tooltipArrowWidth
            if (positionY + contentHeight >= displayHeight) topMargin -= cornerRadius
            layoutParams.topMargin = topMargin
        }
    }

    private fun checkEdgeCase(anchorRect: Rect) {
        // It is used to check if the set positionX leads to a cut in the tooltip arrow wrt display size.
        // If the tooltip or the triangular arrow will get cut then the tooltip is readjusted with a side arrow.
        isAboveAnchor = false // Enables left arrow

        val layoutParams = toolTipArrow.layoutParams as LinearLayout.LayoutParams
        val upArrowWidth =
            context.resources.getDimensionPixelSize(R.dimen.fluentui_tooltip_arrow_width)
        val cornerRadius = context.resources.getDimensionPixelSize(R.dimen.fluentui_tooltip_radius)
        val startPosition = positionX + layoutParams.marginStart
        val topBarHeight = context.statusBarHeight
        val doesNotFitAboveOrBelow =
            (positionY < topBarHeight) || (positionY + contentHeight > displayHeight)
        val rightSpace = displayWidth - anchorRect.right + context.softNavBarOffsetX
        val rightEdge =
            (startPosition + upArrowWidth + cornerRadius + margin - context.softNavBarOffsetX > displayWidth) || (doesNotFitAboveOrBelow && anchorRect.left > rightSpace)
        val leftEdge =
            (startPosition - cornerRadius - margin - context.softNavBarOffsetX < 0) || (doesNotFitAboveOrBelow && anchorRect.left < rightSpace)

        if (leftEdge) { // checks if the arrow is cut by the left edge of the screen and sets positionX to the left of the anchor with proper width.
            positionX = anchorRect.right
        }

        if (rightEdge) { // checks if the arrow is cut by the right edge of the screen and sets positionX to the left of the anchor with proper width.
            isAboveAnchor = true // Enables right arrow
            positionX = anchorRect.left - contentWidth - upArrowWidth / 2
        }

        if (leftEdge || rightEdge)
            requireReadjustment = true
    }

    private fun readjustTooltip(anchorRect: Rect, isRTL: Boolean, config: Config) {
        val upArrowWidth =
            context.resources.getDimensionPixelSize(R.dimen.fluentui_tooltip_arrow_width)
        val cornerRadius = context.resources.getDimensionPixelSize(R.dimen.fluentui_tooltip_radius)
        val topBarHeight = context.activity!!.supportActionBar?.height ?: 0

        isSideAnchor = true // Enables side arrow

        // As the arrow on Top/Bottom is hidden, content height decreases
        contentHeight -= upArrowWidth / 2

        // As the arrow on Left/Right is visible, content width increases
        contentWidth += upArrowWidth / 2

        positionY =
                // Sets positionY such that the tooltip is symmetric about the anchor if there is enough space above and below the anchor
            if (anchorRect.centerY() + contentHeight / 2 + margin < displayHeight && anchorRect.centerY() - contentHeight / 2 - margin > topBarHeight + context.statusBarHeight)
                anchorRect.centerY() - contentHeight / 2

            // Otherwise sets positionY as the top of the anchor if enough space is available below for the content
            else if (anchorRect.top + contentHeight < displayHeight)
                anchorRect.top

            // Otherwise sets positionY such that the content ends at the bottom of anchor
            else anchorRect.bottom - contentHeight


        // Readjusts positionY if it crosses AppBar on the top
        if (positionY < topBarHeight + context.statusBarHeight)
            positionY = topBarHeight + margin + context.statusBarHeight
        if (config.touchDismissLocation == TouchDismissLocation.INSIDE)
            positionY -= context.statusBarHeight

        // Reinitialize tooltip with side arrow
        initTooltipArrow(anchorRect, isRTL, config.offsetX)
        if (config.touchDismissLocation == TouchDismissLocation.INSIDE)
            (toolTipArrow.layoutParams as LinearLayout.LayoutParams).topMargin -= context.statusBarHeight
        requireReadjustment = false
    }

    data class Config(
        var offsetX: Int = 0,
        var offsetY: Int = 0,
        var touchDismissLocation: TouchDismissLocation = TouchDismissLocation.ANYWHERE
    )

    interface OnDismissListener {
        fun onDismiss()
    }
}
```

## File: src/main/res/values/attrs.xml
```xml
<?xml version="1.0" encoding="utf-8"?>
<resources>

    <!--Snackbar-->
    <attr name="fluentuiSnackbarBackgroundColor" format="reference|color"/>
    <attr name="fluentuiSnackbarBackgroundAnnouncementColor" format="reference|color"/>
    <attr name="fluentuiSnackbarBackgroundPrimaryColor" format="reference|color"/>
    <attr name="fluentuiSnackbarBackgroundLightColor" format="reference|color"/>
    <attr name="fluentuiSnackbarBackgroundWarningColor" format="reference|color"/>
    <attr name="fluentuiSnackbarBackgroundDangerColor" format="reference|color"/>
    <attr name="fluentuiSnackbarTextColor" format="reference|color"/>
    <attr name="fluentuiSnackbarTextAnnouncementColor" format="reference|color"/>
    <attr name="fluentuiSnackbarTextPrimaryColor" format="reference|color"/>
    <attr name="fluentuiSnackbarTextLightColor" format="reference|color"/>
    <attr name="fluentuiSnackbarTextWarningColor" format="reference|color"/>
    <attr name="fluentuiSnackbarTextDangerColor" format="reference|color"/>
    <attr name="fluentuiSnackbarActionTextColor" format="reference|color"/>
    <attr name="fluentuiSnackbarActionTextAnnouncementColor" format="reference|color"/>

    <!--Tooltip-->
    <attr name="fluentuiTooltipBackgroundColor" format="reference|color"/>
    <attr name="fluentuiTooltipTextColor" format="reference|color"/>

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

    <!-- Snackbar -->
    <dimen name="fluentui_snackbar_action_min_size">0dp</dimen>
    <dimen name="fluentui_snackbar_action_spacing">7dp</dimen>
    <dimen name="fluentui_snackbar_action_text_wrapping_width">100dp</dimen>
    <dimen name="fluentui_snackbar_background_inset">8dp</dimen>
    <dimen name="fluentui_snackbar_background_corner_radius">@dimen/fluentui_corner_radius_4</dimen>
    <dimen name="fluentui_snackbar_content_inset">@dimen/fluentui_content_inset</dimen>
    <dimen name="fluentui_snackbar_custom_view_size_small">24dp</dimen>
    <dimen name="fluentui_snackbar_custom_view_size_medium">32dp</dimen>
    <dimen name="fluentui_snackbar_custom_view_margin_start">@dimen/fluentui_snackbar_content_inset</dimen>
    <dimen name="fluentui_snackbar_custom_view_margin_vertical_medium">8dp</dimen>
    <dimen name="fluentui_snackbar_custom_view_margin_vertical_small">12dp</dimen>
    <dimen name="fluentui_snackbar_custom_view_margin_vertical_announcement">16dp</dimen>

    <!--Tooltip-->
    <dimen name="fluentui_tooltip_max_width">300dp</dimen>
    <dimen name="fluentui_tooltip_arrow_width">14dp</dimen>
    <dimen name="fluentui_tooltip_arrow_height">7dp</dimen>
    <dimen name="fluentui_tooltip_margin">2dp</dimen>
    <dimen name="fluentui_tooltip_padding_vertical">8dp</dimen>
    <dimen name="fluentui_tooltip_padding_horizontal">12dp</dimen>
    <dimen name="fluentui_tooltip_radius">@dimen/fluentui_corner_radius_4</dimen>
    <dimen name="fluentui_tooltip_background_padding">2dp</dimen>

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
    <style name="Theme.FluentUI.Transients.Base" parent="Base.Theme.FluentUI">
        <!--Snackbar-->
        <item name="fluentuiSnackbarBackgroundColor">?attr/fluentuiBackgroundSecondaryColor</item>
        <item name="fluentuiSnackbarBackgroundAnnouncementColor">?attr/fluentuiBackgroundPrimaryColor</item>
        <item name="fluentuiSnackbarBackgroundPrimaryColor">?attr/fluentuiBackgroundPrimaryColor</item>
        <item name="fluentuiSnackbarBackgroundLightColor">@color/fluentui_black</item>
        <item name="fluentuiSnackbarBackgroundWarningColor">@color/fluentui_yellow</item>
        <item name="fluentuiSnackbarBackgroundDangerColor">@color/fluentui_red</item>
        <item name="fluentuiSnackbarTextColor">?attr/fluentuiForegroundOnSecondaryColor</item>
        <item name="fluentuiSnackbarTextAnnouncementColor">?attr/fluentuiForegroundOnSecondaryColor</item>
        <item name="fluentuiSnackbarTextPrimaryColor">?attr/fluentuiForegroundOnPrimaryColor</item>
        <item name="fluentuiSnackbarTextLightColor">@color/fluentui_white</item>
        <item name="fluentuiSnackbarTextWarningColor">@color/fluentui_gray_900</item>
        <item name="fluentuiSnackbarTextDangerColor">@color/fluentui_white</item>
        <item name="fluentuiSnackbarActionTextColor">?attr/fluentuiColorPrimaryLight</item>
        <item name="fluentuiSnackbarActionTextAnnouncementColor">?attr/fluentuiForegroundOnPrimaryColor</item>
        <!--Tooltip-->
        <item name="fluentuiTooltipBackgroundColor">?attr/fluentuiBackgroundSecondaryColor</item>
        <item name="fluentuiTooltipTextColor">?attr/fluentuiForegroundOnSecondaryColor</item>
    </style>

    <style name="Theme.FluentUI.Transients" parent="Theme.FluentUI.Transients.Base"/>
</resources>
```
