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
src/main/java/com/microsoft/fluentui/actionbar/ActionBarLayout.kt
src/main/java/com/microsoft/fluentui/actionbar/Indicator.kt
src/main/java/com/microsoft/fluentui/actionbar/IndicatorView.kt
src/main/java/com/microsoft/fluentui/tokenized/acrylicpane/AcrylicPane.kt
src/main/java/com/microsoft/fluentui/tokenized/actionbar/ActionBar.kt
src/main/java/com/microsoft/fluentui/widget/BottomNavigation.kt
src/main/java/com/microsoft/fluentui/widget/Button.kt
src/main/res/values/attrs.xml
src/main/res/values/colors.xml
src/main/res/values/dimens.xml
src/main/res/values/styles.xml
src/main/res/values/themes.xml
```

# Files

## File: src/main/java/com/microsoft/fluentui/actionbar/ActionBarLayout.kt
```kotlin
package com.microsoft.fluentui.actionbar

import android.content.Context
import android.content.res.ColorStateList
import android.util.AttributeSet
import android.view.View
import android.view.accessibility.AccessibilityNodeInfo
import android.widget.ImageView
import android.widget.TextView
import androidx.core.content.ContextCompat
import androidx.viewpager.widget.ViewPager
import com.microsoft.fluentui.R
import com.microsoft.fluentui.theming.FluentUIContextThemeWrapper
import com.microsoft.fluentui.view.TemplateView


class ActionBarLayout @JvmOverloads constructor(appContext: Context, attrs: AttributeSet? = null) : TemplateView(FluentUIContextThemeWrapper(appContext,R.style.Theme_FluentUI_Components), attrs) {
    companion object {
        private val DEFAULT_TYPE = Type.BASIC
    }

    enum class Type {
        BASIC, ICON, CAROUSEL
    }

    override val templateId: Int
        get() = R.layout.view_action_bar

    private lateinit var viewPager: ViewPager
    private var finalPageString: String
    private var currentPosition: Int = 0
    private var itemCount: Int = 0
    private var viewPagerAttr: Int = -1
    private var typeAttr = DEFAULT_TYPE
    private var rightAction: () -> Unit = { viewPager.currentItem = ++currentPosition }
    private var leftAction:  () -> Unit = { viewPager.currentItem = itemCount - 1 }
    private var launchMainScreen: () -> Unit = fun() {}
    private var viewpagerAccessibilityDelegate: AccessibilityDelegate = defaultViewpagerAccessibilityDelegate()
    private lateinit var rightActionIcon: ImageView
    private lateinit var rightActionText: TextView
    private lateinit var rightActionContainer: View
    private lateinit var leftActionText: TextView
    private lateinit var actionBarCarousel: IndicatorView
    private lateinit var actionBarCarouselLayout: View

    init {
        val styledAttributes = context.obtainStyledAttributes(attrs, R.styleable.ActionBarLayout)
        viewPagerAttr = styledAttributes.getResourceId(R.styleable.ActionBarLayout_fluentui_viewPager, View.NO_ID)
        typeAttr = Type.values()[styledAttributes.getInt(R.styleable.ActionBarLayout_fluentui_type, DEFAULT_TYPE.ordinal)]
        styledAttributes.recycle()
        finalPageString = context.getString(R.string.action_bar_default_final_action)
    }

    override fun onAttachedToWindow() {
        super.onAttachedToWindow()
        updateMode()
        try {
            if (viewPagerAttr != NO_ID) {
                setPager((parent as View).findViewById(viewPagerAttr))
            }
        } catch (e: IllegalStateException) {
        }
    }

    override fun onTemplateLoaded() {
        super.onTemplateLoaded()
        rightActionIcon = findViewInTemplateById(R.id.action_bar_right_icon)!!
        rightActionText = findViewInTemplateById(R.id.action_bar_right_text)!!
        rightActionContainer = findViewInTemplateById(R.id.action_bar_right_action)!!
        leftActionText = findViewInTemplateById(R.id.action_bar_left_action)!!
        actionBarCarousel = findViewInTemplateById(R.id.action_bar_carousel)!!
        actionBarCarouselLayout = findViewInTemplateById(R.id.action_bar_container_layout)!!
    }

    /**
     * This function is used to update the visibility of various componenets of ActionBarLayout based on layout mode set by the user.
     */
    private fun updateMode() = when (typeAttr) {
        Type.BASIC -> {
            setViewVisibility(rightActionIcon, View.GONE)
            setViewVisibility(actionBarCarousel, View.GONE)
        }
        Type.ICON -> {
            setViewVisibility(actionBarCarousel, View.GONE)
        }
        Type.CAROUSEL -> {
            carouselMode()
            setViewVisibility(rightActionText, View.GONE)
        }
    }

    /**
     * This function is used to make changes specific to carousel mode of ActionBarLayout.
     */
    private fun carouselMode() {
        rightActionIcon.setImageDrawable(ContextCompat.getDrawable(context, R.drawable.ms_ic_arrow_left_24_filled))
        rightActionIcon.rotation = 180f
        rightActionIcon.contentDescription = resources.getString(R.string.action_bar_right_icon_description)
        rightActionIcon.setColorFilter(ContextCompat.getColor(context, R.color.fluentui_white))
        leftActionText.setTextColor(ContextCompat.getColor(context, R.color.fluentui_white))
        actionBarCarouselLayout.backgroundTintList = ColorStateList.valueOf(ContextCompat.getColor(context, R.color.fluentui_action_bar_carousel_background))
    }

    /**
     * This function is used to set the viewPager associated with the ActionBarLayout.
     * @param viewPager the [ViewPager] to be associated with the ActionBar. The ViewPager should have PagerAdapter set, else this method throws [NoAdapterFoundError].
     * @throws [NoAdapterFoundError] when adapter is not set for the associated [ViewPager].
     */
    fun setPager(viewPager: ViewPager) {
        this.viewPager = viewPager
        try {
            this.itemCount = viewPager.adapter!!.count
        } catch (e: KotlinNullPointerException) {
            throw NoAdapterFoundError("No Adapter found for the current view pager")
        }
        viewPager.setAccessibilityDelegate(viewpagerAccessibilityDelegate)
        actionBarCarousel.setItemCount(itemCount)
        actionBarCarousel.setCurrentPosition(0)

        updateButtons()
    }

    /**
     * This function updates the actions for Left and Right buttons on ActionBar. It also sets the [ViewPager.OnPageChangeListener] for the ViewPager
     * associated with the ActionBarLayout.
     */
    private fun updateButtons() {
        viewPager.addOnPageChangeListener(object : ViewPager.OnPageChangeListener {
            override fun onPageScrollStateChanged(state: Int) {
            }

            override fun onPageScrolled(position: Int, positionOffset: Float, positionOffsetPixels: Int) {
                actionBarCarousel.onPageScrolled(position, positionOffset)
            }

            override fun onPageSelected(position: Int) {
                currentPosition = position
                if (currentPosition < itemCount - 1) {
                    setViewVisibility(leftActionText, View.VISIBLE)
                    setRightActionText(context.getString(R.string.action_bar_default_right_action))
                    resetActions()
                } else{
                    setViewVisibility(leftActionText, View.INVISIBLE)
                    setRightActionText(finalPageString)
                    updateRightAction(launchMainScreen)
                }
                announcePageForAccessibility()
            }
        })
        resetActions()
    }

    private fun announcePageForAccessibility() {
        announceForAccessibility(resources.getString(R.string.action_bar_accessibility_page_announcement, currentPosition+1, itemCount))
    }

    /**
     * This function is used to change the visibility of a given view. It used for modifying the layout as per the mode set.
     */
    private fun setViewVisibility(view: View, visibility: Int) {
        view.visibility = visibility
    }

    /**
     * This function is used to reset the actions. It is used to set actions for the first time and whenever the user moves to a prior page than last.
     */
    private fun resetActions() {
        updateRightAction(rightAction)
        updateLeftAction(leftAction)
    }

    /**
     * Change the dimensions of the carousel indicator.
     * @param size the size of the indicator dots.
     * @param length the length of the indicator.
     * @param padding the padding between each indicator dots.
     */
    fun customizeIndicatorDimensions(size: Int, length: Float, padding: Float) = actionBarCarousel.customizeIndicatorDimens(size, length, padding)

    /**
     * This function is used to set/change the text for the left action button.
     * @param text String to be set.
     */
    fun setLeftActionText(text: String) {
        leftActionText.text = text
    }

    /**
     * This function is used to set/change the text for the right action button.
     * @param text String to be set.
     */
    fun setRightActionText(text: String) {
        rightActionText.text = text
    }

    /**
     * This function updates the onClickListener for the left action button.
     */
    private fun updateLeftAction(onClickListener: () -> Unit) {
        leftActionText.setOnClickListener { onClickListener() }
    }

    /**
     * This function updates the onClickListener for the right action button.
     */
    private fun updateRightAction(onClickListener: () -> Unit) {
        rightActionContainer.setOnClickListener { onClickListener() }
    }

    /**
     * This function is used to set the left action.
     * @param func is the lamda function definition for the left action.
     */
    fun setLeftAction(func: () -> Unit) {
        this.leftAction = func
        resetActions()
    }

    /**
     * This function is used to set the right action.
     * @param func is the lambda function definition for the right action.
     */
    fun setRightAction(func: () -> Unit) {
        this.rightAction = func
        resetActions()
    }

    /**
     * This function is used to set the final action when on last screen of viewpager.
     * @param func is the lambda function definition for the final action.
     */
    fun setLaunchMainScreen(func: () -> Unit) {
        this.launchMainScreen = func
    }

    /**
     * This function is used to set layout mode programmatically
     * @param mode can take the values [Type.BASIC], [Type.CAROUSEL] or [Type.ICON].
     */
    fun setMode(mode: Int) {
        this.typeAttr = Type.values()[mode]
        updateMode()
    }

    /**
     * This error is thrown when the Adapter is not set for the given ViewPager.
     */
    class NoAdapterFoundError(message: String) : Exception(message)

    // Accessibility
    private inner class defaultViewpagerAccessibilityDelegate() : AccessibilityDelegate() {
        override fun onInitializeAccessibilityNodeInfo(host: View, info: AccessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(host, info)
            info.contentDescription = resources.getString(R.string.action_bar_accessibility_viewpager_description, currentPosition+1, itemCount)
        }
    }

    /**
     * This function is used to set viewpagerAccessibilityDelegate programmatically
     */
    fun setViewpagerAccessibilityDelegate(accessibilityDelegate: AccessibilityDelegate) {
        this.viewpagerAccessibilityDelegate = accessibilityDelegate
    }
}
```

## File: src/main/java/com/microsoft/fluentui/actionbar/Indicator.kt
```kotlin
package com.microsoft.fluentui.actionbar

import android.graphics.Canvas
import android.graphics.Color
import android.graphics.Paint
import android.graphics.Rect
import android.util.DisplayMetrics
import android.util.TypedValue
import kotlin.math.abs

class Indicator {

    private var itemLength = 0F
    private var itemSize = 0F
    private var itemPadding = 0F

    private val bounds = Rect()
    private var maxDisplayedItems = 3

    private val paint = Paint()
    private var colorFocused = 0
    private var colorBackground = 0

    private var displayMetric: DisplayMetrics? = null

    init {
        paint.strokeCap = Paint.Cap.ROUND
        paint.isAntiAlias = true
    }

    fun getWidth(items: Int): Int {
        val actualItems = maxDisplayedItems.coerceAtMost(items)
        return if (actualItems == 0) 0 else (actualItems * itemLength + (actualItems) * itemPadding).toInt()
    }

    fun getHeight(): Int {
        return itemSize.toInt()
    }

    fun setBounds(width: Int, height: Int) {
        bounds[0, 0, width] = height
    }

    private fun getBounds(): Rect {
        return bounds
    }

    fun draw(canvas: Canvas, items: Int, active: Int, progress: Float) {
        val nonAnimatedOffset = maxDisplayedItems / 2
        val isAnimating = maxDisplayedItems < items && active >= nonAnimatedOffset && active < items - nonAnimatedOffset - 1
        val animationOffset: Float
        animationOffset = if (isAnimating) {
            (itemLength + itemPadding) * -progress
        } else {
            0f
        }
        val bounds = getBounds()
        val maxPossibleItems = (1 + (bounds.width() - itemLength) / (itemLength + itemPadding)).toInt()
        val itemsToDraw = maxPossibleItems.coerceAtMost(maxDisplayedItems.coerceAtMost(items))
        val itemMeasuredWidth = getWidth(itemsToDraw)
        val itemMeasuredHeight = getHeight()
        val offsetX = (bounds.width() - itemMeasuredWidth) / 2
        val offsetY = bounds.height() - itemMeasuredHeight
        val saveBackground = canvas.save()
        canvas.translate(offsetX + animationOffset, offsetY.toFloat())
        drawBackground(canvas, progress, isAnimating, itemsToDraw)
        canvas.restoreToCount(saveBackground)
        val saveActive = canvas.save()
        canvas.translate(offsetX + animationOffset, offsetY.toFloat())
        val activeItem = getNormalizedActiveItem(items, active, nonAnimatedOffset)
        drawActiveIndicator(canvas, progress, activeItem)
        canvas.restoreToCount(saveActive)
    }

    private fun drawBackground(canvas: Canvas, progress: Float, isAnimating: Boolean, itemsToDraw: Int) {
        drawIndicator(canvas, if (isAnimating) 1 - progress else 1f)
        canvas.translate(itemLength + itemPadding, 0f)
        for (i in 1 until itemsToDraw) {
            drawIndicator(canvas, 1f)
            canvas.translate(itemLength + itemPadding, 0f)
        }
        if (isAnimating && progress > 0f) {
            drawIndicator(canvas, progress)
        }
    }

    private fun getNormalizedActiveItem(items: Int, active: Int, nonAnimatedOffset: Int): Int {
        return when {
            active < nonAnimatedOffset -> {
                active
            }
            items - nonAnimatedOffset <= active -> {
                maxDisplayedItems - (items - active)
            }
            else -> {
                nonAnimatedOffset
            }
        }
    }

    private fun drawActiveIndicator(canvas: Canvas, progress: Float) {
        paint.color = colorFocused
        paint.style = Paint.Style.FILL

        val radius = if (progress < 0) abs(progress) * itemSize / 2f
        else (1 - progress) * itemSize / 2f

        canvas.drawCircle(
                (itemPadding + itemLength) / 2f,
                itemSize / 2f,
                radius,
                paint
        )
    }

    private fun drawActiveIndicator(canvas: Canvas, progress: Float, activeItem: Int) {
        canvas.translate(activeItem * itemLength + activeItem * itemPadding, 0f)
        drawActiveIndicator(canvas, progress)
        if (progress != 0f) {
            canvas.translate(itemLength + itemPadding, 0f)
            drawActiveIndicator(canvas, -progress)
        }
    }

    private fun drawIndicator(canvas: Canvas, visibility: Float) {
        paint.color = colorBackground
        paint.strokeWidth = itemSize
        paint.alpha = (visibility * Color.alpha(colorBackground)).toInt()
        paint.style = Paint.Style.FILL

        val radius = itemSize / 2f

        canvas.drawCircle(
                (itemPadding + itemLength) / 2f,
                itemSize / 2f,
                radius,
                paint
        )
    }

    fun setItemSize(size: Int){ this.itemSize = getDisplayUnit(size.toFloat()) }

    fun setItemLength(length: Float) { this.itemLength = getDisplayUnit(length) }

    fun setItemPadding(padding: Float) { this.itemPadding = getDisplayUnit(padding) }

    fun setMaxDisplayedItems(max: Int) { maxDisplayedItems = max }

    fun setColorBackground(colorBackground: Int) { this.colorBackground = colorBackground }

    fun setColorFocused(colorFocused: Int) { this.colorFocused = colorFocused }

    fun setDisplayMetrics(displayMetrics: DisplayMetrics) { this.displayMetric = displayMetrics}

    private fun getDisplayUnit(data: Float): Float{ return TypedValue.applyDimension(TypedValue.COMPLEX_UNIT_DIP, data, displayMetric!!) }
}
```

## File: src/main/java/com/microsoft/fluentui/actionbar/IndicatorView.kt
```kotlin
package com.microsoft.fluentui.actionbar

import android.content.Context
import android.graphics.Canvas
import androidx.core.content.ContextCompat
import android.util.AttributeSet
import android.view.View
import com.microsoft.fluentui.R

class IndicatorView(context: Context, attrs: AttributeSet?) : View(context, attrs, 0, 0) {
    private var itemCount = 5
    private var currentPosition = 0
    private var currentPositionOffset = 0f
    private val indicator = Indicator()

    init {
        indicator.setDisplayMetrics(resources.displayMetrics)
        customizeIndicatorDimens(5,5F, 5F)
        indicator.setColorBackground(ContextCompat.getColor(context, R.color.fluentui_action_bar_indicator_background))
        indicator.setColorFocused(ContextCompat.getColor(context, R.color.fluentui_white))
        indicator.setMaxDisplayedItems(itemCount+1)
    }


    fun setItemCount(count: Int){
        this.itemCount = count
        invalidate()
    }

    fun setCurrentPosition(position: Int){
        this.currentPosition = position
        invalidate()
    }

    fun onPageScrolled(position: Int, positionOffset: Float){
        this.currentPosition = position
        this.currentPositionOffset =  positionOffset
        invalidate()
    }

    override fun onMeasure(widthMeasureSpec: Int, heightMeasureSpec: Int) {
        val widthMode = MeasureSpec.getMode(widthMeasureSpec)
        val width: Int
        width = when (widthMode) {
            MeasureSpec.EXACTLY -> MeasureSpec.getSize(widthMeasureSpec)
            MeasureSpec.AT_MOST, MeasureSpec.UNSPECIFIED -> (indicator.getWidth(itemCount) + paddingLeft + paddingRight).coerceAtMost(MeasureSpec.getSize(widthMeasureSpec))
            else -> throw IllegalArgumentException()
        }
        val heightMode = MeasureSpec.getMode(heightMeasureSpec)
        val height: Int
        height = when (heightMode) {
            MeasureSpec.EXACTLY -> MeasureSpec.getSize(heightMeasureSpec)
            MeasureSpec.AT_MOST, MeasureSpec.UNSPECIFIED -> (indicator.getHeight() + paddingTop + paddingBottom).coerceAtMost(MeasureSpec.getSize(heightMeasureSpec))
            else -> throw IllegalArgumentException()
        }
        this.setMeasuredDimension(width, height)
    }

    override fun onLayout(changed: Boolean, left: Int, top: Int, right: Int, bottom: Int) {
        super.onLayout(changed, left, top, right, bottom)
        indicator.setBounds(
                width - paddingLeft - paddingRight,
                height - paddingTop - paddingBottom
        )
    }

    override fun onDraw(canvas: Canvas) {
        super.onDraw(canvas)
        val save = canvas.save()
        canvas.translate(paddingLeft.toFloat(), paddingTop.toFloat())
        indicator.draw(canvas, itemCount, currentPosition, currentPositionOffset)
        canvas.restoreToCount(save)
    }

    fun customizeIndicatorDimens(size: Int, length:Float, padding:Float){
        indicator.setItemSize(size)
        indicator.setItemLength(length)
        indicator.setItemPadding(padding)
        invalidate()
    }

}
```

## File: src/main/java/com/microsoft/fluentui/tokenized/acrylicpane/AcrylicPane.kt
```kotlin
package com.microsoft.fluentui.tokenized.acrylicpane

import android.os.Build
import android.view.Gravity
import android.view.WindowManager
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.runtime.SideEffect
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.platform.LocalView
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.IntOffset
import androidx.compose.ui.window.Dialog
import androidx.compose.ui.window.DialogProperties
import androidx.compose.ui.window.DialogWindowProvider
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.ControlTokens
import com.microsoft.fluentui.theme.token.FluentStyle
import com.microsoft.fluentui.theme.token.controlTokens.AcrylicPaneInfo
import com.microsoft.fluentui.theme.token.controlTokens.AcrylicPaneOrientation
import com.microsoft.fluentui.theme.token.controlTokens.AcrylicPaneTokens

@Composable
private fun BlurBehindDialog(
    orientation: AcrylicPaneOrientation = AcrylicPaneOrientation.BOTTOM,
    blurRadius: Int = 60,
    offset: IntOffset = IntOffset(0, 0),
    content: @Composable () -> Unit
) {
    val dialogProperties = DialogProperties(
        usePlatformDefaultWidth = false,
        decorFitsSystemWindows = false,
        dismissOnBackPress = false,
        dismissOnClickOutside = false
    )

    Dialog(
        onDismissRequest = {},
        properties = dialogProperties
    ) {
        val window = (LocalView.current.parent as? DialogWindowProvider)?.window

        SideEffect {
            if (window != null) {
                window.addFlags(WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL)
                window.addFlags(WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE)
                if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.S) {
                    window.addFlags(WindowManager.LayoutParams.FLAG_BLUR_BEHIND)
                    window.setBackgroundBlurRadius(blurRadius)
                }
                window.setDimAmount(0f)
                window.setGravity(
                    when (orientation) {
                        AcrylicPaneOrientation.TOP -> Gravity.TOP
                        AcrylicPaneOrientation.BOTTOM -> Gravity.BOTTOM
                        AcrylicPaneOrientation.CENTER -> Gravity.CENTER
                    }
                )
                window.attributes.x = offset.x
                window.attributes.y = offset.y
                window.decorView.setBackgroundColor(android.graphics.Color.TRANSPARENT)
            }
        }
        content()
    }
}

fun roundToNearestTen(value: Int): Int { // Added for anti-aliasing
    return ((value + 5) / 10) * 10
}

/**
 * A composable function that creates an AcrylicPane with specified properties and content.
 * This component leverages a real-time, window-level blur to create its acrylic effect.
 * This behavior is subject to specific system conditions.
 *
 * Platform-Specific Behavior & Requirements:
 * API Level: The background blur is only supported on Android 12 (API 31) and newer.
 * Device Setting: For the blur to be visible, the "Allow window-level blurs" option must be enabled in the device's Developer Options.
 *
 * Fallback Mechanism:
 * On devices running older Android versions (below API 31) or when the necessary developer
 * option is disabled, the AcrylicPane will gracefully fall back to a semi-transparent gradient effect.
 * This ensures the UI remains functional and aesthetically pleasing even when the blur effect is not available.
 *
 * @param modifier The modifier to be applied to the AcrylicPane.
 * @param orientation The orientation of the AcrylicPane, default is AcrylicPaneOrientation.BOTTOM.
 * @param offset The offset of the pane from the top-left corner of the screen, default is IntOffset(0, 0).
 * @param paneHeight The height of the pane, default is 300.dp.
 * @param acrylicPaneStyle The style of the pane, default is FluentStyle.Neutral.
 * @param component The main composable content to be displayed within the pane.
 * @param backgroundContent The composable content to be displayed as the background of the pane.
 * @param acrylicPaneTokens Optional tokens to customize the appearance of the AcrylicPane.
 */

@Composable
fun AcrylicPane(
    modifier: Modifier = Modifier,
    orientation: AcrylicPaneOrientation = AcrylicPaneOrientation.BOTTOM,
    offset: IntOffset = IntOffset(0, 0),
    paneHeight: Dp = 300.dp,
    acrylicPaneStyle: FluentStyle = FluentStyle.Neutral,
    component: @Composable () -> Unit,
    backgroundContent: @Composable () -> Unit,
    acrylicPaneTokens: AcrylicPaneTokens? = null
) {
    val paneInfo: AcrylicPaneInfo =
        AcrylicPaneInfo(style = acrylicPaneStyle, orientation = orientation)
    val newPaneHeight = roundToNearestTen(paneHeight.value.toInt()).dp
    val themeID =
        FluentTheme.themeID    //Adding This only for recomposition in case of Token Updates. Unused otherwise.
    val token = acrylicPaneTokens
        ?: FluentTheme.controlTokens.tokens[ControlTokens.ControlType.AcrylicPaneControlType] as AcrylicPaneTokens
    val backgroundColor: Brush = token.acrylicPaneGradient(acrylicPaneInfo = paneInfo)
    val blurRadius: Int = token.acrylicPaneBlurRadius(acrylicPaneInfo = paneInfo)
    Box(
        modifier = Modifier.fillMaxSize()
    ) {
        backgroundContent()

        BlurBehindDialog(
            orientation = orientation,
            blurRadius = blurRadius,
            offset = offset
        ) {
            Box(
                modifier = modifier
                    .fillMaxWidth()
                    .height(newPaneHeight)
                    .background(
                        backgroundColor
                    )
            ) {
                component()
            }
        }
    }
}
```

## File: src/main/java/com/microsoft/fluentui/tokenized/actionbar/ActionBar.kt
```kotlin
package com.microsoft.fluentui.tokenized.actionbar

import androidx.compose.foundation.ExperimentalFoundationApi
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.pager.PagerState
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.ActionBarIcons
import com.microsoft.fluentui.icons.actionbaricons.Arrowright
import com.microsoft.fluentui.icons.actionbaricons.Chevron
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.ControlTokens
import com.microsoft.fluentui.theme.token.controlTokens.ACTIONBARTYPE
import com.microsoft.fluentui.theme.token.controlTokens.ActionBarInfo
import com.microsoft.fluentui.theme.token.controlTokens.ActionBarTokens
import com.microsoft.fluentui.theme.token.controlTokens.ButtonStyle
import com.microsoft.fluentui.tokenized.controls.Button
import kotlinx.coroutines.launch

/**
 * ActionBar is a composable that provides a way to navigate between pages.
 *
 * @param pagerState: PagerState
 * @param modifier: Modifier
 * @param type: Int
 * @param startCallback: () -> Unit
 * @param actionBarTokens: ActionBarTokens?
 */
@Composable
@OptIn(ExperimentalFoundationApi::class)
fun ActionBar(
    pagerState: PagerState,
    modifier: Modifier = Modifier,
    type: Int = ACTIONBARTYPE.BASIC.ordinal,
    startCallback: () -> Unit,
    actionBarTokens: ActionBarTokens? = null
) {
    val token =
        actionBarTokens
            ?: FluentTheme.controlTokens.tokens[ControlTokens.ControlType.ActionBarControlType] as ActionBarTokens
    val noOfPages = pagerState.pageCount
    val actionBarInfo = ActionBarInfo()
    val height = token.actionBarHeight(actionBarInfo)
    Box(
        modifier = modifier.fillMaxWidth().height(height).background(
            token.actionBarColor(actionBarInfo)
        )
    ) {
        val scope = rememberCoroutineScope()
        var selectedPage by rememberSaveable { mutableStateOf(0) }

        // carousel indicator
        if (type == ACTIONBARTYPE.CAROUSEL.ordinal) {
            Row(
                Modifier
                    .wrapContentHeight()
                    .fillMaxWidth()
                    .align(Alignment.Center),
                horizontalArrangement = Arrangement.Center
            ) {
                repeat(pagerState.pageCount) { iteration ->
                    val color =
                        if (pagerState.currentPage == iteration) Color.DarkGray else Color.LightGray
                    Box(
                        modifier = Modifier
                            .padding(2.dp)
                            .clip(CircleShape)
                            .background(color)
                            .size(8.dp)
                    )
                }
            }
        }

        // left action
        if (selectedPage < noOfPages - 1) {
            Button(
                style = ButtonStyle.TextButton,
                onClick = {
                    scope.launch {
                        selectedPage = noOfPages - 1
                        pagerState.animateScrollToPage(noOfPages - 1)
                    }
                },
                modifier = Modifier.align(Alignment.CenterStart),
                text = "Skip"
            )
        }

        // right action
        val rightActionText =
            if (type == ACTIONBARTYPE.CAROUSEL.ordinal) "" else if (selectedPage == noOfPages - 1) "Start" else "Next"
        val trailingIcon =
            if (type == ACTIONBARTYPE.ICON.ordinal) {
                ActionBarIcons.Chevron
            } else if (type == ACTIONBARTYPE.CAROUSEL.ordinal) {
                ActionBarIcons.Arrowright
            } else {
                null
            }

        Button(
            style = ButtonStyle.TextButton,
            trailingIcon = trailingIcon,
            onClick = {
                if (selectedPage < noOfPages - 1) {
                    selectedPage += 1
                    scope.launch {
                        pagerState.animateScrollToPage(selectedPage)
                    }
                } else {
                    startCallback()
                }
            },
            modifier = Modifier.align(Alignment.CenterEnd),
            text = rightActionText
        )

    }
}
```

## File: src/main/java/com/microsoft/fluentui/widget/BottomNavigation.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentui.widget

import android.content.Context
import com.google.android.material.bottomnavigation.LabelVisibilityMode
import com.google.android.material.bottomnavigation.BottomNavigationView
import android.util.AttributeSet
import com.microsoft.fluentui.R
import com.microsoft.fluentui.theming.FluentUIContextThemeWrapper

/**
 * Use this [BottomNavigationView] to get access to the FluentUI theme attribute default values via [FluentUIContextThemeWrapper]
 * without needing to extend Theme.FluentUI in your app's theme.
 */
class BottomNavigationView :
    BottomNavigationView {
    private var userIconSize = 0
    private var defaultIconSize = 0

    @JvmOverloads
    constructor(context: Context, attrs: AttributeSet? = null, defStyleAttr: Int = 0)
        : super(FluentUIContextThemeWrapper(context,R.style.Theme_FluentUI_Components), attrs, defStyleAttr)

    override fun setLabelVisibilityMode(labelVisibilityMode: Int) {
        // The super call in the constructor runs setLabelVisibilityMode() before the constructor.
        // We capture the value for itemIconSize set by user during this call. If the value differs
        // from the default value of 24dp, the icon size set by user is used for icons. It remains
        // constant for labeled and unlabeled view.
        if(userIconSize == 0){
            // sets initial values for userIconSize and defaultIconSize
            defaultIconSize = adjustIconSize()
            userIconSize = this.itemIconSize
        }
        super.setLabelVisibilityMode(labelVisibilityMode)
        this.itemIconSize = adjustIconSize()
    }

    private fun adjustIconSize(): Int {
        // Icon Size Behavior
        // itemIconSize not set -> labeled = 24x24, unlabeled = 28x28.
        // itemIconSize is set  -> labeled, unlabeled = set value.
        if(userIconSize != defaultIconSize)
            return userIconSize
        else if(this.labelVisibilityMode == LabelVisibilityMode.LABEL_VISIBILITY_UNLABELED)
            return context.resources.getDimensionPixelSize(R.dimen.fluentui_bottom_navigation_icon_unlabeled).toInt()
        else
            return context.resources.getDimensionPixelSize(R.dimen.fluentui_bottom_navigation_icon_labeled).toInt()
    }
}
```

## File: src/main/java/com/microsoft/fluentui/widget/Button.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentui.widget

import android.content.Context
import androidx.appcompat.widget.AppCompatButton
import android.util.AttributeSet
import com.microsoft.fluentui.R
import com.microsoft.fluentui.theming.FluentUIContextThemeWrapper

/**
 * Use this [Button] to get access to the FluentUI theme attribute default values via [FluentUIContextThemeWrapper]
 * without needing to extend Theme.FluentUI in your app's theme.
 */
class Button : AppCompatButton {
    @JvmOverloads
    constructor(context: Context, attrs: AttributeSet? = null, defStyleAttr: Int = R.attr.buttonStyle)
        : super(FluentUIContextThemeWrapper(context,R.style.Theme_FluentUI_Components), attrs, defStyleAttr)
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

    <!-- *** Semantic Colors *** -->

    <!--BottomNavigation-->
    <attr name="fluentuiBottomNavigationBackgroundColor" format="reference|color"/>
    <attr name="fluentuiBottomNavigationForegroundActiveColor" format="reference|color"/>
    <attr name="fluentuiBottomNavigationForegroundInactiveColor" format="reference|color"/>

    <!--Button-->
    <attr name="fluentuiButtonBackgroundDefaultColor" format="reference|color"/>
    <attr name="fluentuiButtonBackgroundDisabledColor" format="reference|color"/>
    <attr name="fluentuiButtonBackgroundPressedColor" format="reference|color"/>
    <attr name="fluentuiButtonTextDefaultColor" format="reference|color"/>
    <attr name="fluentuiButtonTextDisabledColor" format="reference|color"/>

    <!--Button Borderless-->
    <attr name="fluentuiButtonBorderlessBackgroundDefaultColor" format="reference|color"/>
    <attr name="fluentuiButtonBorderlessBackgroundDisabledColor" format="reference|color"/>
    <attr name="fluentuiButtonBorderlessBackgroundPressedColor" format="reference|color"/>
    <attr name="fluentuiButtonBorderlessTextDefaultColor" format="reference|color"/>
    <attr name="fluentuiButtonBorderlessTextDisabledColor" format="reference|color"/>
    <attr name="fluentuiButtonBorderlessTextPressedColor" format="reference|color"/>

    <!--Button Outlined-->
    <attr name="fluentuiButtonOutlinedTextDefaultColor" format="reference|color"/>
    <attr name="fluentuiButtonOutlinedTextDisabledColor" format="reference|color"/>
    <attr name="fluentuiButtonOutlinedTextPressedColor" format="reference|color"/>
    <attr name="fluentuiButtonOutlinedStrokeDefaultColor" format="reference|color"/>
    <attr name="FluentuiButtonOutlinedStrokeDisabledColor" format="reference|color"/>
    <attr name="FluentuiButtonOutlinedStrokePressedColor" format="reference|color"/>

    <!--Compound Buttons-->
    <attr name="fluentuiCompoundButtonTintDefaultColor" format="reference|color"/>
    <attr name="fluentuiCompoundButtonTintCheckedColor" format="reference|color"/>

    <!--common fluentui_others Module attributes-->
    <!--ActionBarLayout-->
    <attr name="fluentui_type" format="enum">
        <enum name="basic" value="0"/>
        <enum name="icon" value="1"/>
        <enum name="carousel" value="2"/>
    </attr>

</resources>
```

## File: src/main/res/values/colors.xml
```xml
<?xml version="1.0" encoding="utf-8"?>
<!--
  ~ Copyright (c) Microsoft Corporation. All rights reserved.
  ~ Licensed under the MIT License.
  -->

<resources>
    <!-- *** Semantic Colors *** -->

    <!--ActionBarLayout-->
    <color name="fluentui_action_bar_indicator_background">@color/fluentui_communication_tint_20</color>
    <color name="fluentui_action_bar_carousel_background">@color/fluentui_communication_blue</color>

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
    <!--ActionBarLayout-->
    <dimen name="fluentui_action_bar_layout_height">48dp</dimen>
    <dimen name="fluentui_action_bar_layout_button_width">50dp</dimen>

    <!--BottomNavigation-->
    <dimen name="fluentui_bottom_navigation_icon_labeled">24dp</dimen>
    <dimen name="fluentui_bottom_navigation_icon_unlabeled">28dp</dimen>

    <!--Button-->
    <dimen name="fluentui_button_base_padding_horizontal">8dp</dimen>
    <dimen name="fluentui_button_base_padding_vertical">8.5dp</dimen>
    <dimen name="fluentui_button_min_height">36dp</dimen>
    <dimen name="fluentui_button_padding_horizontal">@dimen/fluentui_content_inset</dimen>
    <dimen name="fluentui_button_corner_radius">@dimen/fluentui_corner_radius_2</dimen>
    <dimen name="fluentui_button_large_padding_vertical">16dp</dimen>
    <dimen name="fluentui_button_large_min_height">48dp</dimen>
    <dimen name="fluentui_button_outlined_min_height">30dp</dimen>
    <dimen name="fluentui_button_outlined_padding_vertical">8dp</dimen>
    <dimen name="fluentui_button_outlined_stroke_width">1dp</dimen>

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


    <!--BottomNavigation-->
    <style name="Widget.FluentUI.BottomNavigation" parent="Widget.Design.BottomNavigationView">
        <item name="android:layout_gravity">bottom</item>
        <item name="android:background">?attr/fluentuiBottomNavigationBackgroundColor</item>
        <item name="itemBackground">@drawable/ms_ripple_transparent_background_borderless</item>
        <item name="itemTextAppearanceActive">@style/TextAppearance.FluentUI.BottomNavigation.Active</item>
        <item name="itemTextAppearanceInactive">@style/TextAppearance.FluentUI.BottomNavigation.Inactive</item>
        <item name="itemIconTint">@color/bottom_navigation_icon_tint</item>
        <item name="labelVisibilityMode">labeled</item>
    </style>
    <style name="Widget.FluentUI.BottomNavigation.Unlabeled">
        <item name="labelVisibilityMode">unlabeled</item>
    </style>

    <!--Base Button-->
    <style name="Widget.FluentUI.BaseButton" parent="Widget.AppCompat.Button">
        <item name="android:background">@drawable/button_background</item>
        <item name="android:textAppearance">@style/TextAppearance.FluentUI.Button</item>
        <item name="android:paddingStart">@dimen/fluentui_button_base_padding_horizontal</item>
        <item name="android:paddingEnd">@dimen/fluentui_button_base_padding_horizontal</item>
        <item name="android:paddingTop">@dimen/fluentui_button_base_padding_vertical</item>
        <item name="android:paddingBottom">@dimen/fluentui_button_base_padding_vertical</item>
        <item name="android:minHeight">@dimen/fluentui_button_min_height</item>
        <item name="android:stateListAnimator" tools:ignore="NewApi">@null</item>
    </style>

    <!--Primary Button-->
    <style name="Widget.FluentUI.Button" parent="Widget.FluentUI.BaseButton">
        <item name="android:paddingStart">@dimen/fluentui_button_padding_horizontal</item>
        <item name="android:paddingEnd">@dimen/fluentui_button_padding_horizontal</item>
    </style>

    <!--We use Borderless button style as the parent to avoid drop shadow issues in some APIs.-->
    <style name="Widget.FluentUI.Button.Borderless" parent="Widget.FluentUI.BaseButton">
        <item name="android:background">@drawable/button_borderless_background</item>
        <item name="android:textAppearance">@style/TextAppearance.FluentUI.Button.Borderless</item>
    </style>

    <!--Large Buttons -->
    <style name="Widget.FluentUI.Button.Large" parent="Widget.FluentUI.BaseButton">
        <item name="android:paddingTop">@dimen/fluentui_button_large_padding_vertical</item>
        <item name="android:paddingBottom">@dimen/fluentui_button_large_padding_vertical</item>
        <item name="android:minHeight">@dimen/fluentui_button_large_min_height</item>
    </style>

    <!--Outlined Buttons -->
    <style name="Widget.FluentUI.Button.Outlined" parent="Widget.FluentUI.BaseButton">
        <item name="android:background">@drawable/button_outlined</item>
        <item name="android:textAppearance">@style/TextAppearance.FluentUI.Button.Outlined</item>
        <item name="android:paddingTop">@dimen/fluentui_button_outlined_padding_vertical</item>
        <item name="android:paddingBottom">@dimen/fluentui_button_outlined_padding_vertical</item>
        <item name="android:minHeight">@dimen/fluentui_button_outlined_min_height</item>
    </style>

    <!--Compound Buttons-->
    <style name="Widget.FluentUI.RadioButton" parent="@style/Widget.AppCompat.CompoundButton.RadioButton">
        <item name="android:buttonTint">@color/compound_button_tint</item>
    </style>
    <style name="Widget.FluentUI.CheckBox" parent="@style/Widget.AppCompat.CompoundButton.CheckBox">
        <item name="android:buttonTint">@color/compound_button_tint</item>
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

    <!--
        All semantic colors should be defined here in their light theme state as the default.
        If they have a different semantic color for dark theme, define that color in "themes.xml (night)" as well.
    -->
    <style name="Theme.FluentUI.Components" parent="Base.Theme.FluentUI">
        <item name="buttonStyle">@style/Widget.FluentUI.Button</item>
        <item name="checkboxStyle">@style/Widget.FluentUI.CheckBox</item>
        <item name="radioButtonStyle">@style/Widget.FluentUI.RadioButton</item>
        <!-- *** Semantic Colors *** -->

        <!--BottomNavigation-->
        <item name="fluentuiBottomNavigationBackgroundColor">?attr/fluentuiBackgroundColor</item>
        <item name="fluentuiBottomNavigationForegroundActiveColor">?attr/colorPrimary</item>
        <item name="fluentuiBottomNavigationForegroundInactiveColor">?attr/fluentuiForegroundSecondaryColor</item>


        <!--Button-->
        <item name="fluentuiButtonBackgroundDefaultColor">?attr/fluentuiBackgroundPrimaryColor</item>
        <item name="fluentuiButtonBackgroundDisabledColor">@color/fluentui_gray_50</item>
        <item name="fluentuiButtonBackgroundPressedColor">?attr/colorControlHighlight</item>
        <item name="fluentuiButtonTextDefaultColor">?attr/fluentuiForegroundOnPrimaryColor</item>
        <item name="fluentuiButtonTextDisabledColor">@color/fluentui_gray_300</item>

        <!--Button Borderless-->
        <item name="fluentuiButtonBorderlessBackgroundDefaultColor">@android:color/transparent</item>
        <item name="fluentuiButtonBorderlessBackgroundDisabledColor">@android:color/transparent</item>
        <item name="fluentuiButtonBorderlessBackgroundPressedColor">?attr/colorControlHighlight</item>
        <item name="fluentuiButtonBorderlessTextDefaultColor">?attr/colorPrimary</item>
        <item name="fluentuiButtonBorderlessTextDisabledColor">@color/fluentui_gray_300</item>
        <item name="fluentuiButtonBorderlessTextPressedColor">?attr/fluentuiButtonBorderlessTextDefaultColor</item>

        <!--Button Outlined-->
        <item name="fluentuiButtonOutlinedTextDefaultColor">@color/fluentui_communication_blue</item>
        <item name="fluentuiButtonOutlinedTextPressedColor">@color/fluentui_communication_tint_20</item>
        <item name="fluentuiButtonOutlinedTextDisabledColor">@color/fluentui_gray_300</item>
        <item name="fluentuiButtonOutlinedStrokeDefaultColor">@color/fluentui_communication_blue</item>
        <item name="FluentuiButtonOutlinedStrokePressedColor">@color/fluentui_communication_tint_30</item>
        <item name="FluentuiButtonOutlinedStrokeDisabledColor">@color/fluentui_gray_50</item>

        <!--Compound Buttons-->
        <item name="fluentuiCompoundButtonTintDefaultColor">?attr/fluentuiForegroundSecondaryIconColor</item>
        <item name="fluentuiCompoundButtonTintCheckedColor">?attr/fluentuiForegroundSelectedColor</item>

    </style>

    <!--
        All light theme semantic colors should be defined in the base theme as the default.
        Dark theme specific semantic colors should be defined in "themes.xml (night)".
    -->
    <style name="Theme.FluentUI.Others" parent="Theme.FluentUI.Components"/>

</resources>
```
