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
src/main/java/com/microsoft/fluentui/calendar/CalendarAdapter.kt
src/main/java/com/microsoft/fluentui/calendar/CalendarDaySelectionDrawable.kt
src/main/java/com/microsoft/fluentui/calendar/CalendarDayView.kt
src/main/java/com/microsoft/fluentui/calendar/CalendarView.kt
src/main/java/com/microsoft/fluentui/calendar/WeekHeadingView.kt
src/main/java/com/microsoft/fluentui/calendar/WeeksView.kt
src/main/java/com/microsoft/fluentui/datetimepicker/DateTimePicker.kt
src/main/java/com/microsoft/fluentui/datetimepicker/DateTimePickerDialog.kt
src/main/java/com/microsoft/fluentui/datetimepicker/TimePicker.kt
src/main/java/com/microsoft/fluentui/datetimepicker/TimeSlot.kt
src/main/java/com/microsoft/fluentui/managers/PreferencesManager.kt
src/main/java/com/microsoft/fluentui/util/DateStringUtils.kt
src/main/java/com/microsoft/fluentui/util/DateTimeUtils.kt
src/main/java/com/microsoft/fluentui/view/NumberPicker.kt
src/main/java/com/microsoft/fluentui/view/Scroller.kt
src/main/java/com/microsoft/fluentui/view/WrapContentViewPager.kt
src/main/res/values/attrs.xml
src/main/res/values/dimens.xml
src/main/res/values/styles.xml
src/main/res/values/themes.xml
```

# Files

## File: src/main/java/com/microsoft/fluentui/calendar/CalendarAdapter.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentui.calendar

import android.content.Context
import android.graphics.drawable.Drawable
import android.os.Bundle
import androidx.collection.SimpleArrayMap
import androidx.core.view.AccessibilityDelegateCompat
import androidx.core.view.ViewCompat
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat
import androidx.recyclerview.widget.RecyclerView
import android.view.View
import android.view.ViewGroup
import com.microsoft.fluentui.calendar.CalendarDaySelectionDrawable.Mode
import com.microsoft.fluentui.managers.PreferencesManager
import com.microsoft.fluentui.util.DateTimeUtils
import java.lang.StringBuilder
import java.time.DayOfWeek
import java.time.Duration
import java.time.LocalDate
import java.time.LocalDateTime
import java.time.LocalTime
import java.time.ZoneId
import java.time.ZonedDateTime
import java.time.temporal.ChronoUnit
import java.util.concurrent.TimeUnit

/**
 * [CalendarAdapter] is the adapter for the [CalendarView]
 */
internal class CalendarAdapter : RecyclerView.Adapter<CalendarAdapter.CalendarDayViewHolder>, View.OnClickListener {
    companion object {
        private const val MONTH_LIMIT = 1200L
        private val DAY_IN_SECONDS = TimeUnit.DAYS.toSeconds(1).toInt()
    }

    /**
     * @return [LocalDate] the earliest date displayed
     */
    var minDate: LocalDate
        private set

    /**
     * @return [LocalDate] the selected date
     */
    var selectedDate: LocalDate? = null
        private set

    /**
     * @return [Int] the today's position
     */
    val todayPosition: Int
        get() = ChronoUnit.DAYS.between(minDate, ZonedDateTime.now().truncatedTo(ChronoUnit.DAYS)).toInt() + 1

    private val LocalDate.getLocalDateToZonedDateTime: ZonedDateTime
        get() = ZonedDateTime.of(this, LocalTime.MIDNIGHT, ZoneId.systemDefault())

    private val firstDayOfWeekIndices = SimpleArrayMap<DayOfWeek, Int>(DayOfWeek.values().size)
    private val lastDayOfWeekIndices = SimpleArrayMap<DayOfWeek, Int>(DayOfWeek.values().size)

    private val context: Context
    private val config: CalendarView.Config
    private val onDateSelectedListener: OnDateSelectedListener
    private var selectedDuration: Duration? = null

    private val selectionDrawableCircle: CalendarDaySelectionDrawable
    private val selectionDrawableStart: CalendarDaySelectionDrawable
    private val selectionDrawableMiddle: CalendarDaySelectionDrawable
    private val selectionDrawableEnd: CalendarDaySelectionDrawable

    private val dayViewAccessibilityDelegate = DayViewAccessibilityDelegate()

    private var firstDayOfWeek: DayOfWeek? = null
    private var dayCount: Int
    private var viewHeight: Int = 0

    constructor(context: Context, config: CalendarView.Config, onDateSelectedListener: OnDateSelectedListener) {
        this.context = context
        this.config = config
        this.onDateSelectedListener = onDateSelectedListener

        selectionDrawableCircle = CalendarDaySelectionDrawable(this.context, Mode.SINGLE)
        selectionDrawableStart = CalendarDaySelectionDrawable(this.context, Mode.START)
        selectionDrawableMiddle = CalendarDaySelectionDrawable(this.context, Mode.MIDDLE)
        selectionDrawableEnd = CalendarDaySelectionDrawable(this.context, Mode.END)

        updateDayIndicesAndHeading()

        val today = LocalDate.now()
        minDate = today.minusMonths(MONTH_LIMIT)
        minDate = minDate.minusDays(firstDayOfWeekIndices.get(minDate.dayOfWeek)!!.toLong())

        var maxDate = today.plusMonths(MONTH_LIMIT)
        maxDate = maxDate.plusDays(lastDayOfWeekIndices.get(maxDate.dayOfWeek)!!.toLong())

        dayCount = ChronoUnit.DAYS.between(minDate, maxDate).toInt() + 1
    }

    /**
     * Sets the selected date range
     */
    fun setSelectedDateRange(date: LocalDate?, duration: Duration) {
        if (selectedDate != null && selectedDuration != null && selectedDate == date && selectedDuration == duration)
            return

        val previousSelectedDate = selectedDate
        val previousSelectedDuration = selectedDuration

        selectedDate = date
        selectedDuration = duration

        if (date == null) {
            notifyDataSetChanged()
            return
        }

        val selectedDatePosition = ChronoUnit.DAYS.between(minDate, selectedDate).toInt()
        val selectedDateCount = (duration.seconds / DAY_IN_SECONDS).toInt() + 1
        notifyItemRangeChanged(selectedDatePosition, selectedDateCount)

        if (previousSelectedDuration != null && previousSelectedDate != null) {
            val datePosition = ChronoUnit.DAYS.between(minDate, previousSelectedDate).toInt()
            val dateCount = (previousSelectedDuration.seconds / DAY_IN_SECONDS).toInt() + 1
            notifyItemRangeChanged(datePosition, dateCount)
        }
    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): CalendarDayViewHolder {
        val dayView = CalendarDayView(parent.context, config)
        dayView.layoutParams = ViewGroup.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, viewHeight)
        dayView.setOnClickListener(this)
        ViewCompat.setAccessibilityDelegate(dayView, dayViewAccessibilityDelegate)
        return CalendarDayViewHolder(dayView)
    }

    override fun onBindViewHolder(holder: CalendarDayViewHolder, position: Int) {
        val date = minDate.plusDays(position.toLong())
        holder.date = date

        val selectedDate = selectedDate ?: return
        val selectedDuration = selectedDuration ?: return

        val selectedDateEnd = LocalDateTime.of(selectedDate, LocalTime.MIDNIGHT).plus(selectedDuration).toLocalDate()
        holder.isSelected = DateTimeUtils.isBetween(date, selectedDate, selectedDateEnd)

        holder.selectedDrawable = when {
            date == null -> null
            date.isEqual(selectedDate) -> if (selectedDuration.toDays() < 1) selectionDrawableCircle else selectionDrawableStart
            date.isEqual(selectedDateEnd) -> selectionDrawableEnd
            else -> selectionDrawableMiddle
        }
    }

    override fun getItemCount() = dayCount

    override fun onClick(v: View) {
        onDateSelectedListener.onDateSelected((v as CalendarDayView).date.getLocalDateToZonedDateTime)
        v.announceForAccessibility(StringBuilder(v.contentDescription).append(" ").append(context.getString(R.string.calendar_adapter_accessibility_item_selected)))
    }

    private fun updateDayIndicesAndHeading() {
        val weekStart = PreferencesManager.getWeekStart(context)
        if (weekStart == firstDayOfWeek)
            return

        firstDayOfWeek = weekStart

        var dayOfWeek = weekStart
        var i = 0
        while (i < 7) {
            firstDayOfWeekIndices.put(dayOfWeek, i)
            lastDayOfWeekIndices.put(dayOfWeek, 6 - i)
            dayOfWeek = dayOfWeek.plus(1)
            ++i
        }
    }

    fun setViewHeight(viewHeight: Int) {
        this.viewHeight = viewHeight
    }

    /**
     * ViewHolder for the [CalendarDayView]
     */
    inner class CalendarDayViewHolder(itemView: View) : RecyclerView.ViewHolder(itemView) {
        /**
         * Sets and gets the selected date in the [CalendarDayView]
         */
        var date: LocalDate
            get() =  calendarDayView.date
            set(value) {  calendarDayView.date = value }

        /**
         * Sets and gets the selected Drawable in the [CalendarDayView]
         */
        var selectedDrawable: Drawable?
            get() =  calendarDayView.selectedDrawable
            set(value) { calendarDayView.selectedDrawable = value }

        /**
         * Sets and gets the selected state of the [CalendarDayView]
         */
        var isSelected: Boolean
            get() = calendarDayView.isChecked
            set(value) { calendarDayView.isChecked = value }

        private val calendarDayView = itemView as CalendarDayView
    }

    private inner class DayViewAccessibilityDelegate : AccessibilityDelegateCompat() {
        override fun onInitializeAccessibilityNodeInfo(host: View, info: AccessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(host, info)
            info.addAction(
                AccessibilityNodeInfoCompat.AccessibilityActionCompat(
                    R.id.fluentui_calendar_view_action_goto_next_week,
                    host.resources.getString(R.string.accessibility_goto_next_week)
                )
            )
            info.addAction(
                AccessibilityNodeInfoCompat.AccessibilityActionCompat(
                    R.id.fluentui_calendar_view_action_goto_previous_week,
                    host.resources.getString(R.string.accessibility_goto_previous_week)
                )
            )
        }

        override fun performAccessibilityAction(host: View, action: Int, args: Bundle?): Boolean {
            val selectedDate = selectedDate ?: return super.performAccessibilityAction(host, action, args)
            val date: LocalDate = when(action) {
                R.id.fluentui_calendar_view_action_goto_next_week -> selectedDate.plusDays(7)
                R.id.fluentui_calendar_view_action_goto_previous_week -> selectedDate.minusDays(7)
                else -> return super.performAccessibilityAction(host, action, args)
            }

            onDateSelectedListener.onDateSelected(date.getLocalDateToZonedDateTime)
            return true
        }
    }
}
```

## File: src/main/java/com/microsoft/fluentui/calendar/CalendarDaySelectionDrawable.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentui.calendar

import android.content.Context
import android.graphics.Canvas
import android.graphics.ColorFilter
import android.graphics.Paint
import android.graphics.PixelFormat
import android.graphics.drawable.Drawable

/**
 * [CalendarDaySelectionDrawable] is a drawable added to a [CalendarDayView] displaying selected state
 */
internal class CalendarDaySelectionDrawable : Drawable {
    enum class Mode {
        SINGLE, START, END, MIDDLE
    }

    private val context: Context
    private val mode: Mode
    private val paint = Paint(Paint.ANTI_ALIAS_FLAG)
    private val circleSize: Int

    constructor(context: Context, mode: Mode) {
        this.context = context
        this.mode = mode
        circleSize = context.resources.getDimensionPixelSize(R.dimen.fluentui_calendar_day_selection_size)
    }

    override fun draw(canvas: Canvas) {
        val width = intrinsicWidth.toFloat()
        val height = intrinsicHeight.toFloat()
        val centerX = width / 2
        val centerY = height / 2
        val radius = circleSize / 2

        when (mode) {
            Mode.SINGLE -> canvas.drawCircle(centerX, centerY, radius.toFloat(), paint)
            Mode.START -> {
                canvas.drawCircle(centerX, centerY, radius.toFloat(), paint)
                canvas.drawRect(centerX, (centerY - radius), width, (centerY + radius), paint)
            }
            Mode.MIDDLE -> canvas.drawRect(0f, (centerY - radius), width, (centerY + radius), paint)
            Mode.END -> {
                canvas.drawCircle(centerX, centerY, radius.toFloat(), paint)
                canvas.drawRect(0f, (centerY - radius), centerX, (centerY + radius), paint)
            }
        }
    }

    override fun getIntrinsicHeight() = bounds.height()

    override fun getIntrinsicWidth() = bounds.width()

    override fun setAlpha(alpha: Int) {
        paint.alpha = alpha
        invalidateSelf()
    }

    override fun setColorFilter(colorFilter: ColorFilter?) {
        paint.colorFilter = colorFilter
        invalidateSelf()
    }

    override fun getOpacity() = PixelFormat.TRANSLUCENT
}
```

## File: src/main/java/com/microsoft/fluentui/calendar/CalendarDayView.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentui.calendar

import android.content.Context
import android.content.res.ColorStateList
import android.graphics.Canvas
import android.graphics.Color
import android.graphics.Paint
import android.graphics.PorterDuff
import android.graphics.drawable.Drawable
import androidx.core.content.ContextCompat
import androidx.core.view.ViewCompat
import androidx.core.widget.TextViewCompat
import androidx.appcompat.widget.AppCompatButton
import android.text.SpannableStringBuilder
import android.text.Spanned
import android.text.style.AbsoluteSizeSpan
import android.util.AttributeSet
import android.util.TypedValue
import android.view.Gravity
import android.view.View
import android.view.accessibility.AccessibilityEvent
import android.view.accessibility.AccessibilityNodeInfo
import android.widget.Checkable
import com.microsoft.fluentui.theming.FluentUIContextThemeWrapper
import com.microsoft.fluentui.util.DateStringUtils
import com.microsoft.fluentui.util.DateTimeUtils
import com.microsoft.fluentui.util.isAccessibilityEnabled
import java.time.LocalDate
import java.time.ZonedDateTime
import java.time.format.DateTimeFormatter
import java.time.temporal.ChronoUnit
import java.util.*

/**
 * [CalendarDayView] View that displays a day of the week
 */
internal class CalendarDayView: AppCompatButton, Checkable {
    companion object {
        private const val MIN_TEXT_SIZE = 2
        private const val AUTO_SIZE_TEXT_GRANULARITY_STEP = 2
    }
    /**
     * sets the date of the View
     */
    var date: LocalDate = LocalDate.now()
        set(value) {
            field = value
            val today = LocalDate.now()
            updateBackgroundColor(today)
            updateText()
            setTextColor(textDayColor)
            updateContentDescription()
            isActivated = DateTimeUtils.isSameDay(today, field)

            ViewCompat.postInvalidateOnAnimation(this)
        }

    /**
     * sets the selected drawable to use
     */
    var selectedDrawable: Drawable? = null
        set(value) {
            field = value
            field?.setBounds(0, 0, measuredWidth, measuredHeight)
            field?.setColorFilter(config.selectionAccentColor, PorterDuff.Mode.SRC_ATOP)

            ViewCompat.postInvalidateOnAnimation(this)
        }

    // underscore prevents JVM platform declaration clash
    private var _foregroundDrawable: Drawable? = null
        set(value) {
            if (field == value)
                return

            // reset foreground drawable
            field?.callback = null
            unscheduleDrawable(field)

            // set foreground drawable
            field = value
            field?.let {
                it.callback = this
                it.state = drawableState
            }

            ViewCompat.postInvalidateOnAnimation(this)
        }

    private lateinit var config: CalendarView.Config

    private var paint = Paint()

    private var _isChecked = false

    private var regularAppearance = 0
    private var todayAppearance = 0
    private var checkedAppearance = 0

    private var todayBackgroundDrawable: Drawable? = null

    private var textDayColor: ColorStateList? = null
    private var viewBackgroundColor = Color.TRANSPARENT

    /**
     * @param [context] Context
     * @param [calendarConfig] Config passes CalendarView attributes
     * @constructor creates an instance of a CalendarDayView
     */
    constructor(appContext: Context, calendarConfig: CalendarView.Config) : super(FluentUIContextThemeWrapper(appContext,R.style.Theme_FluentUI_Calendar)) {
        config = calendarConfig
        setWillNotDraw(false)

        todayBackgroundDrawable = ContextCompat.getDrawable(context, R.drawable.calendar_background_today)

        paint.isAntiAlias = true

        regularAppearance = R.style.TextAppearance_FluentUI_CalendarDay
        todayAppearance = R.style.TextAppearance_FluentUI_CalendarDay2
        checkedAppearance = R.style.TextAppearance_FluentUI_CalendarDay2

        textDayColor = config.calendarDayTextColor

        background = null
        gravity = Gravity.CENTER
        includeFontPadding = false
        TextViewCompat.setTextAppearance(this, regularAppearance)
        setTextSize(TypedValue.COMPLEX_UNIT_PX, config.calendarDayTextSize.toFloat())
        isAllCaps = false

        _foregroundDrawable = ContextCompat.getDrawable(context, R.drawable.calendar_day_background)

        setPadding(0, 0, 0, 0)
    }

    @JvmOverloads
    constructor(context: Context, attrs: AttributeSet? = null, defStyleAttr: Int = 0) : super(context, attrs, defStyleAttr)

    override fun setChecked(checked: Boolean) {
        if (_isChecked == checked)
            return

        _isChecked = checked
        updateTypeface()
        updateText()
        refreshDrawableState()

        if (context.isAccessibilityEnabled) {
            sendAccessibilityEvent(AccessibilityEvent.CONTENT_CHANGE_TYPE_UNDEFINED)
        }

        ViewCompat.postInvalidateOnAnimation(this)
    }

    override fun isChecked(): Boolean {
        return _isChecked
    }

    override fun toggle() {
        _isChecked = !_isChecked
    }

    override fun setActivated(activated: Boolean) {
        val wasActivated = isActivated
        super.setActivated(activated)
        if (wasActivated == activated)
            return

        setTextColor(textDayColor)
        updateTypeface()
        updateText()

        ViewCompat.postInvalidateOnAnimation(this)
    }

    override fun setOnClickListener(listener: View.OnClickListener?) {
        super.setOnClickListener(listener)
        isClickable = listener != null
    }

    override fun onMeasure(widthMeasureSpec: Int, heightMeasureSpec: Int) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec)
        todayBackgroundDrawable?.setBounds(0, 0, measuredWidth, measuredHeight)
        selectedDrawable?.setBounds(0, 0, measuredWidth, measuredHeight)
        _foregroundDrawable?.setBounds(0, 0, measuredWidth, measuredHeight)
    }

    override fun onDraw(canvas: Canvas) {
        val width = measuredWidth
        val height = measuredHeight

        if (viewBackgroundColor != Color.TRANSPARENT) {
            paint.color = viewBackgroundColor
            canvas.drawRect(0f, 0f, width.toFloat(), height.toFloat(), paint)
        }

        if (isChecked && selectedDrawable != null) {
            selectedDrawable?.setBounds(0, 0, measuredWidth, measuredHeight)
            selectedDrawable?.draw(canvas)
        } else if (isActivated) {
            todayBackgroundDrawable?.draw(canvas)
        }

        _foregroundDrawable?.draw(canvas)

        super.onDraw(canvas)
    }

    override fun onCreateDrawableState(extraSpace: Int): IntArray {
        val drawableState = super.onCreateDrawableState(extraSpace + 1)
        if (isChecked) {
            View.mergeDrawableStates(drawableState, intArrayOf(android.R.attr.state_checked))
        }
        return drawableState
    }

    override fun verifyDrawable(who: Drawable): Boolean {
        return super.verifyDrawable(who) || who === _foregroundDrawable
    }

    override fun jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState()
        _foregroundDrawable?.let { if (it.isStateful) it.jumpToCurrentState() }
    }

    override fun drawableStateChanged() {
        super.drawableStateChanged()
        _foregroundDrawable?.let { if (it.isStateful) it.state = drawableState }
    }

    override fun drawableHotspotChanged(x: Float, y: Float) {
        super.drawableHotspotChanged(x, y)
        _foregroundDrawable?.setHotspot(x, y)
    }

    override fun onInitializeAccessibilityNodeInfo(info: AccessibilityNodeInfo) {
        updateContentDescription()
        super.onInitializeAccessibilityNodeInfo(info)
    }

    private fun updateText() {
        val dayOfMonth = date.dayOfMonth
        if (dayOfMonth == 1 && !isChecked) {
            val stringBuilder = SpannableStringBuilder()

            stringBuilder.append(DateTimeFormatter.ofPattern("MMM").format(date))
            val monthEndIdx = stringBuilder.length
            stringBuilder.append("\n")
            stringBuilder.append(Integer.toString(date.dayOfMonth))

            var maxTextSize = config.calendarDayTextSize

            if (date.year != ZonedDateTime.now().year) {
                stringBuilder.append("\n")
                stringBuilder.append(Integer.toString(date.year))
                maxTextSize = config.calendarDayMonthYearTextSize
            } else {
                stringBuilder.setSpan(AbsoluteSizeSpan(config.calendarDayMonthYearTextSize),
                    0,
                    monthEndIdx,
                    Spanned.SPAN_EXCLUSIVE_EXCLUSIVE
                )
            }

            TextViewCompat.setAutoSizeTextTypeUniformWithConfiguration(
                this,
                MIN_TEXT_SIZE,
                maxTextSize,
                AUTO_SIZE_TEXT_GRANULARITY_STEP,
                TypedValue.COMPLEX_UNIT_PX
            )

            text = stringBuilder
        } else {
            TextViewCompat.setAutoSizeTextTypeWithDefaults(this, TextViewCompat.AUTO_SIZE_TEXT_TYPE_NONE)
            setTextSize(TypedValue.COMPLEX_UNIT_PX, config.calendarDayTextSize.toFloat())
            text = String.format(Locale.ROOT, Integer.toString(dayOfMonth))
        }
    }

    private fun updateBackgroundColor(localDate: LocalDate) {
        val numMonths = Math.abs(ChronoUnit.MONTHS.between(date.withDayOfMonth(1), localDate.withDayOfMonth(1)))
        viewBackgroundColor =
            if (config.differentiateOddEvenMonth) {
                if (numMonths % 2 == 0L) Color.TRANSPARENT else config.otherMonthBackgroundColor
            } else {
                if (date.isBefore(LocalDate.now())) config.otherMonthBackgroundColor else Color.TRANSPARENT
            }
    }

    private fun updateContentDescription() {
        val formattedDate = DateStringUtils.formatDateWithWeekDay(context, date)
        val stringBuilder = StringBuilder(formattedDate)

        if (isActivated) {
            stringBuilder.append(", ")
            stringBuilder.append(resources.getString(R.string.accessibility_today))
        }

        if (isChecked) {
            stringBuilder.append(", ")
            stringBuilder.append(resources.getString(R.string.accessibility_selected))
        }

        contentDescription = stringBuilder.toString()
    }

    private fun updateTypeface() {
        val appearance = when {
            isActivated -> todayAppearance
            isChecked -> checkedAppearance
            else -> regularAppearance
        }
        TextViewCompat.setTextAppearance(this, appearance)
    }
}
```

## File: src/main/java/com/microsoft/fluentui/calendar/CalendarView.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentui.calendar

import android.animation.Animator
import android.animation.AnimatorListenerAdapter
import android.animation.ObjectAnimator
import android.content.Context
import android.content.res.ColorStateList
import androidx.core.content.ContextCompat
import androidx.recyclerview.widget.RecyclerView
import android.util.AttributeSet
import android.util.Property
import android.view.View
import android.widget.LinearLayout
import com.microsoft.fluentui.theming.FluentUIContextThemeWrapper
import com.microsoft.fluentui.util.ThemeUtil
import java.time.Duration
import java.time.LocalDate
import java.time.LocalDateTime
import java.time.LocalTime
import java.time.ZonedDateTime

// TODO: Convert to TemplateView along with other things that extend LinearLayout
// TODO: implement ability to add icon to CalendarDayView
// TODO: implement ability to change background color of CalendarDayView cell
// TODO: ability to change month differentiation behavior through View attributes

/**
 * [CalendarView] is a custom LinearLayout that groups together views used to display
 * calendar dates and allows a user to select a date
 */
class CalendarView : LinearLayout, OnDateSelectedListener {
    companion object {
        const val DAYS_IN_WEEK = 7
        const val WEEK_MID = 3
        private const val VIEW_MODE_CHANGE_ANIMATION_DURATION = 300L
        private const val HEIGHT = "height"
    }

    /**
     * Enums for visible rows in DisplayModes
     * @param [visibleRows] number of rows to show
     */
    enum class DisplayMode(val visibleRows: Int) {
        NONE_MODE(0),
        NORMAL_MODE(2),
        PREVIEW_MODE(3),
        FULL_MODE(5),
        LENGTHY_MODE(15)
    }

    /**
     * Callback implementation for date picking onDateTimePickedListener
     */
    var onDateSelectedListener: OnDateSelectedListener? = null

    /**
     * Integer returning the calendar width for tablet
     */
    var calendarViewWidthForTablet: Int = 0
        private set

    /**
     * Integer returning the fullModeHeight
     */
    val fullModeHeight: Int
        get() = computeHeight(DisplayMode.FULL_MODE)

    /**
     * LocalDate used to set the selected date
     */
    private var date: LocalDate?
        get() = weeksView.selectedDate
        set(value) {
            setSelectedDateRange(value, Duration.ZERO, false)
        }

    private var dividerHeight = 0
    private val config: Config

    private lateinit var weekHeading: WeekHeadingView
    private lateinit var weeksView: WeeksView

    private var rowHeight = 0
    private var isViewModeChanging = false
    private var resizeAnimator: ObjectAnimator? = null
    private var displayMode: DisplayMode = DisplayMode.FULL_MODE

    private val heightProperty: Property<View, Int> = object : Property<View, Int>(Int::class.java, HEIGHT) {
        override fun get(`object`: View): Int {
            return `object`.measuredHeight
        }

        override fun set(`object`: View, value: Int?) {
            val value = value ?: return
            val lp = `object`.layoutParams
            lp.height = value
            `object`.layoutParams = lp
        }
    }

    private val viewModeChangeAnimationListener = object : AnimatorListenerAdapter() {
        override fun onAnimationEnd(animation: Animator) {
            super.onAnimationEnd(animation)
            weeksView.ensureDateVisible(date, displayMode, rowHeight, dividerHeight)
            isViewModeChanging = false
        }
    }

    @JvmOverloads
    constructor(context: Context, attrs: AttributeSet? = null, defStyleAttr: Int = 0) : super(FluentUIContextThemeWrapper(context,R.style.Theme_FluentUI_Calendar), attrs, defStyleAttr) {
        dividerHeight = Math.round(resources.getDimension(R.dimen.fluentui_divider_height))
        calendarViewWidthForTablet = Math.round(resources.getDimension(R.dimen.fluentui_calendar_weeks_max_width))

        config = Config()

        orientation = VERTICAL
        setBackgroundColor(config.backgroundColor)

        initSubViews()
    }

    /**
     * Sets the [DisplayMode] with a flag to animate the resize of the [CalendarView]
     */
    @JvmOverloads
    fun setDisplayMode(mode: DisplayMode, animateResize: Boolean = true) {
        if (mode == displayMode)
            return

        displayMode = mode

        resizeAnimator?.cancel()
        resizeAnimator = null

        if (animateResize) {
            resizeAnimator = ObjectAnimator.ofInt(this, heightProperty, heightProperty.get(this), computeHeight(displayMode))
            resizeAnimator?.addListener(viewModeChangeAnimationListener)
            resizeAnimator?.duration = VIEW_MODE_CHANGE_ANIMATION_DURATION
            resizeAnimator?.start()
        }

        isViewModeChanging = true
    }

    fun setSelectedDateRange(startDate: LocalDate?, duration: Duration, scrollToEnd: Boolean) {
        weeksView.setSelectedDateRange(startDate, duration)
        val date = if (scrollToEnd)
            LocalDateTime.of(startDate, LocalTime.MIDNIGHT).plus(duration).toLocalDate()
        else
            startDate
        weeksView.ensureDateVisible(date, displayMode, rowHeight, dividerHeight)
    }

    fun leaveLengthyMode() {
        if (displayMode != DisplayMode.LENGTHY_MODE)
            return

        // Change height without animation
        displayMode = DisplayMode.FULL_MODE
        val lp = layoutParams
        lp.height = computeHeight(displayMode)
        layoutParams = lp

        weeksView.ensureDateVisible(date, displayMode, rowHeight, dividerHeight)
    }

    /**
     * Reset the views to load latest settings, eg. Start of Week
     */
    fun reset() {
        removeView(weekHeading)
        removeView(weeksView)
        initSubViews()
    }

    public override fun onMeasure(widthMeasureSpec: Int, heightMeasureSpec: Int) {
        var widthMeasureSpec = widthMeasureSpec
        val viewWidth = MeasureSpec.getSize(widthMeasureSpec)
        rowHeight = viewWidth / DAYS_IN_WEEK
        weeksView.setRowHeight(rowHeight)
        widthMeasureSpec = MeasureSpec.makeMeasureSpec(rowHeight * DAYS_IN_WEEK, View.MeasureSpec.EXACTLY)
        resizeAnimator?.let {
            if (it.isRunning) {
                super.onMeasure(widthMeasureSpec, heightMeasureSpec)
                return
            }
        }

        super.onMeasure(widthMeasureSpec, MeasureSpec.makeMeasureSpec(computeHeight(displayMode), View.MeasureSpec.EXACTLY))
    }

    override fun onDateSelected(dateTime: ZonedDateTime) {
        this.date = dateTime.toLocalDate()
        onDateSelectedListener?.onDateSelected(dateTime)
    }

    private fun computeHeight(mode: DisplayMode): Int {
        val visibleRows = mode.visibleRows
        val visibleRowsHeight = rowHeight * visibleRows
        val visibleDividersHeight = dividerHeight * visibleRows - 1
        return config.weekHeadingHeight + visibleRowsHeight + visibleDividersHeight
    }

    private fun canExpand(): Boolean {
        return displayMode != DisplayMode.FULL_MODE && displayMode != DisplayMode.LENGTHY_MODE && weeksView.isUserTouchOccurring
    }

    private fun initSubViews() {
        weekHeading = WeekHeadingView(context, config)
        addView(weekHeading)

        weeksView = WeeksView(context, config, this)
        weeksView.isSnappingEnabled = true
        weeksView.importantForAccessibility = View.IMPORTANT_FOR_ACCESSIBILITY_NO
        addView(weeksView)
        weeksView.addOnScrollListener(object : RecyclerView.OnScrollListener() {
            override fun onScrolled(recyclerView: RecyclerView, dx: Int, dy: Int) {
                if (canExpand())
                    displayMode = DisplayMode.FULL_MODE
            }
        })

        dividerDrawable = ContextCompat.getDrawable(context, R.drawable.ms_row_divider)
        showDividers = SHOW_DIVIDER_MIDDLE
    }

    /**
     * The [Config] contains attributes allowing for objects down the line to consume them
     */
    inner class Config {
        val fluentuiContext = FluentUIContextThemeWrapper(context, R.style.Theme_FluentUI_Calendar)
        val backgroundColor = ThemeUtil.getThemeAttrColor(fluentuiContext, R.attr.fluentuiCalendarBackgroundColor)
        val weekHeadingBackgroundColor = ThemeUtil.getThemeAttrColor(fluentuiContext, R.attr.fluentuiCalendarWeekHeadingBackgroundColor)
        val weekdayHeadingTextColor = ThemeUtil.getThemeAttrColor(fluentuiContext, R.attr.fluentuiCalendarWeekHeadingWeekDayTextColor)
        val weekendHeadingTextColor = ThemeUtil.getThemeAttrColor(fluentuiContext, R.attr.fluentuiCalendarWeekHeadingWeekendTextColor)
        val weekHeadingHeight = context.resources.getDimensionPixelSize(R.dimen.fluentui_calendar_week_heading_height)

        val selectionAccentColor = ThemeUtil.getThemeAttrColor(fluentuiContext, R.attr.fluentuiCalendarSelectedColor)

        val monthOverlayBackgroundColor = ThemeUtil.getThemeAttrColor(fluentuiContext, R.attr.fluentuiCalendarMonthOverlayBackgroundColor, 0.7f)
        val monthOverlayTextSize = context.resources.getDimensionPixelSize(R.dimen.fluentui_calendar_month_overlay_text_size)
        val monthOverlayTextColor = ThemeUtil.getThemeAttrColor(fluentuiContext, R.attr.fluentuiCalendarMonthOverlayTextColor)

        val differentiateOddEvenMonth = true
        val otherMonthBackgroundColor = ThemeUtil.getThemeAttrColor(fluentuiContext, R.attr.fluentuiCalendarOtherMonthBackgroundColor)
        val calendarDayMonthYearTextSize = context.resources.getDimensionPixelSize(R.dimen.fluentui_calendar_month_year_font_size)
        val calendarDayTextSize = context.resources.getDimensionPixelSize(R.dimen.fluentui_calendar_week_day_font_size)

        // Create this in code instead of xml to support Lollipop, which does not allow attributes in xml selectors.
        val calendarDayTextColor = ColorStateList(
            arrayOf(
                intArrayOf(android.R.attr.state_activated, -android.R.attr.state_checked),
                intArrayOf(android.R.attr.state_activated, android.R.attr.state_checked),
                intArrayOf(-android.R.attr.state_activated, android.R.attr.state_checked),
                intArrayOf(android.R.attr.state_focused, -android.R.attr.state_checked),
                intArrayOf()
            ),
            intArrayOf(
                ThemeUtil.getThemeAttrColor(fluentuiContext, R.attr.fluentuiCalendarDayTextActiveColor),
                ThemeUtil.getThemeAttrColor(fluentuiContext, R.attr.fluentuiCalendarDayTextActiveCheckedColor),
                ThemeUtil.getThemeAttrColor(fluentuiContext, R.attr.fluentuiCalendarDayTextInactiveCheckedColor),
                ThemeUtil.getThemeAttrColor(fluentuiContext, R.attr.fluentuiCalendarDayKeyboardFocusTextColor),
                ThemeUtil.getThemeAttrColor(fluentuiContext, R.attr.fluentuiCalendarDayTextDefaultColor)
            )
        )
    }
}

interface OnDateSelectedListener {
    /**
     * Method called when a user selects a date
     * @param [dateTime] the selected date
     */
    fun onDateSelected(dateTime: ZonedDateTime)
}
```

## File: src/main/java/com/microsoft/fluentui/calendar/WeekHeadingView.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentui.calendar

import android.content.Context
import androidx.core.view.ViewCompat
import androidx.core.widget.TextViewCompat
import android.util.AttributeSet
import android.view.Gravity
import android.view.View
import android.widget.LinearLayout
import android.widget.TextView
import com.microsoft.fluentui.calendar.CalendarView.Companion.WEEK_MID
import com.microsoft.fluentui.managers.PreferencesManager
import com.microsoft.fluentui.util.activity
import java.time.DayOfWeek

/**
 * [WeekHeadingView] is a LinearLayout holding the [CalendarView] header with views for
 * the week day letters, S, M, T, W, T, F, S
 */
internal class WeekHeadingView : LinearLayout {
    private lateinit var config: CalendarView.Config

    constructor(context: Context, calendarConfig: CalendarView.Config) : super(context) {
        config = calendarConfig
        setBackgroundColor(config.weekHeadingBackgroundColor)

        var dayOfWeek = PreferencesManager.getWeekStart(context)

        val headingTextAppearance = R.style.TextAppearance_FluentUI_WeekDayHeader

        val weekDayHeadingColor = config.weekdayHeadingTextColor
        val weekendHeadingColor = config.weekendHeadingTextColor

        val strDayOfWeek = resources.getStringArray(R.array.weekday_initial)
        for (currentDay in 1..CalendarView.DAYS_IN_WEEK) {
            val textView = TextView(context)
            TextViewCompat.setTextAppearance(textView, headingTextAppearance)
            textView.text = strDayOfWeek[dayOfWeek.value - 1]

            if (DayOfWeek.SATURDAY == dayOfWeek || DayOfWeek.SUNDAY == dayOfWeek)
                textView.setTextColor(weekendHeadingColor)
            else
                textView.setTextColor(weekDayHeadingColor)

            textView.gravity = Gravity.CENTER
            post {
                context.activity?.let {
                    addView(textView, LayoutParams(0, LayoutParams.MATCH_PARENT, 1.0f))
                }
            }

            dayOfWeek = dayOfWeek.plus(1)
        }

        ViewCompat.setImportantForAccessibility(this, ViewCompat.IMPORTANT_FOR_ACCESSIBILITY_NO_HIDE_DESCENDANTS)
    }

    @JvmOverloads
    constructor(context: Context, attrs: AttributeSet? = null, defStyleAttr: Int = 0) : super(context, attrs, defStyleAttr)

    public override fun onMeasure(widthMeasureSpec: Int, heightMeasureSpec: Int) {
        super.onMeasure(
            widthMeasureSpec,
            MeasureSpec.makeMeasureSpec(config.weekHeadingHeight, View.MeasureSpec.EXACTLY)
        )
    }
}
```

## File: src/main/java/com/microsoft/fluentui/calendar/WeeksView.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentui.calendar

import android.animation.Animator
import android.animation.AnimatorListenerAdapter
import android.animation.AnimatorSet
import android.animation.ObjectAnimator
import android.content.Context
import android.graphics.Canvas
import android.graphics.Rect
import android.graphics.Typeface
import androidx.core.content.ContextCompat
import androidx.core.graphics.ColorUtils
import androidx.core.util.Pools
import androidx.recyclerview.widget.DividerItemDecoration
import androidx.recyclerview.widget.GridLayoutManager
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import android.text.TextPaint
import android.text.format.DateUtils
import android.text.format.DateUtils.FORMAT_NO_MONTH_DAY
import android.text.format.DateUtils.FORMAT_SHOW_DATE
import android.util.AttributeSet
import android.view.View

import com.microsoft.fluentui.util.ColorProperty
import com.microsoft.fluentui.util.DateTimeUtils
import com.microsoft.fluentui.view.MSRecyclerView
import java.time.Duration
import java.time.LocalDate
import java.time.Month
import java.time.ZonedDateTime
import java.time.chrono.IsoChronology
import java.time.temporal.ChronoUnit
import java.util.*

/**
 * [WeeksView] is a RecyclerView for week days
 */
internal class WeeksView : MSRecyclerView {
    companion object {
        private const val OVERLAY_TRANSITION_DURATION = 200L

        private const val MONTH_OVERLAY_BACKGROUND_COLOR = "monthOverlayBackgroundColor"
        private const val MONTH_OVERLAY_FONT_COLOR = "monthOverlayFontColor"
        private const val FONT_FAMILY = "sans-serif-medium"

        private const val MONTH_DESCRIPTORS_CAPACITY = 4
        private const val DAYS_IN_WEEK = 7
    }

    enum class OverlayState {
        IS_BEING_DISPLAYED,
        DISPLAYED,
        IS_BEING_HIDDEN,
        HIDDEN
    }

    /**
     * @return [LocalDate] the earliest date displayed
     */
    val minDate: LocalDate
        get() = pickerAdapter.minDate

    val selectedDate: LocalDate?
        get() = pickerAdapter.selectedDate

    val firstVisibleItemPosition: Int
        get() = (layoutManager as GridLayoutManager).findFirstVisibleItemPosition()

    private lateinit var config: CalendarView.Config

    private lateinit var pickerAdapter: CalendarAdapter

    private var overlayDisplayState = OverlayState.HIDDEN
    private val overlayTransitionAnimator = AnimatorSet()

    private val showingOverlayAnimationListener = object : AnimatorListenerAdapter() {
        override fun onAnimationEnd(animation: Animator) {
            super.onAnimationEnd(animation)
            overlayDisplayState = OverlayState.DISPLAYED
        }
    }

    private val hidingOverlayAnimationListener = object : AnimatorListenerAdapter() {
        override fun onAnimationEnd(animation: Animator) {
            super.onAnimationEnd(animation)
            overlayDisplayState = OverlayState.HIDDEN
        }
    }

    private lateinit var overlayBackgroundColorProperty: ColorProperty
    private lateinit var overlayFontColorProperty: ColorProperty
    private lateinit var onDateSelectedListener: OnDateSelectedListener
    private lateinit var paint: TextPaint

    constructor(context: Context, config: CalendarView.Config, onDateSelectedListener: OnDateSelectedListener) : super(context) {
        this.config = config
        this.onDateSelectedListener = onDateSelectedListener
        setWillNotDraw(false)

        ContextCompat.getDrawable(context, R.drawable.ms_row_divider)?.let {
            val divider = DividerItemDecoration(context, LinearLayoutManager.VERTICAL)
            divider.setDrawable(it)
            addItemDecoration(divider)
        }

        pickerAdapter = CalendarAdapter(context, config, this.onDateSelectedListener)
        adapter = pickerAdapter

        setHasFixedSize(true)
        layoutManager = GridLayoutManager(context, DAYS_IN_WEEK, LinearLayoutManager.VERTICAL, false)
        layoutManager?.scrollToPosition(pickerAdapter.todayPosition)

        itemAnimator = null

        paint = TextPaint()
        paint.density = resources.displayMetrics.density
        paint.isAntiAlias = true
        paint.isSubpixelText = true
        paint.typeface = Typeface.create(FONT_FAMILY, Typeface.NORMAL)
        paint.textSize = config.monthOverlayTextSize.toFloat()

        val startColor = ColorUtils.setAlphaComponent(config.monthOverlayBackgroundColor, 0)
        overlayBackgroundColorProperty = ColorProperty(MONTH_OVERLAY_BACKGROUND_COLOR, startColor, config.monthOverlayBackgroundColor)
        overlayFontColorProperty = ColorProperty(MONTH_OVERLAY_FONT_COLOR, startColor, config.monthOverlayTextColor)
    }

    @JvmOverloads
    constructor(context: Context, attrs: AttributeSet? = null, defStyleAttr: Int = 0) : super(context, attrs, defStyleAttr)

    fun ensureDateVisible(date: LocalDate?, displayMode: CalendarView.DisplayMode, rowHeight: Int, dividerHeight: Int) {
        val date = date ?: LocalDate.now()
        smoothScrollBy(0, 0)

        val datePosition = ChronoUnit.DAYS.between(minDate, date).toInt()
        val visibleRows = displayMode.visibleRows
        val firstVisiblePosition = firstVisibleItemPosition
        val lastVisiblePosition = firstVisiblePosition + CalendarView.DAYS_IN_WEEK * visibleRows

        if (NO_POSITION == firstVisiblePosition || datePosition < firstVisiblePosition || DateTimeUtils.isSameDay(date, ZonedDateTime.now())) {
            scrollToPositionWithOffset(datePosition, 0)
        } else if (datePosition >= lastVisiblePosition) {
            val offset = (visibleRows - 1) * (rowHeight + dividerHeight)
            scrollToPositionWithOffset(datePosition, offset)
        }
    }

    fun scrollToPositionWithOffset(position: Int, offset: Int) {
        (layoutManager as GridLayoutManager).scrollToPositionWithOffset(position, offset)
    }

    fun setSelectedDateRange(localDate: LocalDate?, duration: Duration) {
        pickerAdapter.setSelectedDateRange(localDate, duration)
    }

    override fun onScrollStateChanged(state: Int) {
        super.onScrollStateChanged(state)
        when (state) {
            SCROLL_STATE_DRAGGING -> showOverlay()
            SCROLL_STATE_IDLE -> hideOverlay()
        }
    }

    public override fun dispatchDraw(canvas: Canvas) {
        super.dispatchDraw(canvas)

        if (pickerAdapter.itemCount == 0 || OverlayState.HIDDEN == overlayDisplayState)
            return

        // draw overlay background
        paint.color = overlayBackgroundColorProperty.color
        canvas.drawRect(0f, 0f, measuredWidth.toFloat(), measuredHeight.toFloat(), paint)

        computeVisibleMonths()

        val textBounds = Rect()
        val monthDescriptors = computeVisibleMonths()
        for (monthDescriptor in monthDescriptors) {
            val text = DateUtils.formatDateTime(context, monthDescriptor.timestamp, FORMAT_SHOW_DATE or FORMAT_NO_MONTH_DAY)

            paint.getTextBounds(text, 0, text.length, textBounds)
            paint.color = overlayFontColorProperty.color
            canvas.drawText(text,
                    ((measuredWidth - textBounds.width()) / 2).toFloat(),
                    (((monthDescriptor.bottom + monthDescriptor.top)- textBounds.height()) / 2).toFloat(),
                    paint
            )

            monthDescriptor.recycle()
        }
        monthDescriptors.clear()
    }

    private fun computeVisibleMonths(): ArrayList<MonthDescriptor> {
        var previousMonth: Month? = null
        var previousYear = -1

        val now = ZonedDateTime.now().truncatedTo(ChronoUnit.DAYS)
        val monthDescriptors = ArrayList<MonthDescriptor>(MONTH_DESCRIPTORS_CAPACITY)
        for (i in 0 until childCount step DAYS_IN_WEEK) {
            val calendarDayView = getChildAt(i) as CalendarDayView
            val date = calendarDayView.date
            val month = date.month
            if (previousMonth == month)
                continue
            createMonthDescriptor(monthDescriptors, now, previousYear, previousMonth)
            previousMonth = month
            previousYear = date.year
        }

        createMonthDescriptor(monthDescriptors, now, previousYear, previousMonth)

        return monthDescriptors
    }

    private fun createMonthDescriptor(monthDescriptors: ArrayList<MonthDescriptor>, now: ZonedDateTime, previousYear: Int, previousMonth: Month?) {
        if (previousMonth == null)
            return
        var c = now.withYear(previousYear).withMonth(previousMonth.value).withDayOfMonth(1)
        val firstDayOfPreviousMonthRowPosition = getRowPositionForDate(c)
        val isLeapYear = IsoChronology.INSTANCE.isLeapYear(c.year.toLong())
        c = c.withDayOfMonth(previousMonth.length(isLeapYear))
        val lastDayOfPreviousMonthRowPosition = getRowPositionForDate(c)

        val monthDescriptor = MonthDescriptor.obtain()
        monthDescriptor.timestamp = c.toInstant().toEpochMilli()
        monthDescriptor.top = rowToScreenPosition(firstDayOfPreviousMonthRowPosition)
        monthDescriptor.bottom = rowToScreenPosition(lastDayOfPreviousMonthRowPosition)
        monthDescriptors.add(monthDescriptor)
    }

    private fun rowToScreenPosition(rowPosition: Int): Int {
        val glm = layoutManager as GridLayoutManager
        val firstVisibleRowPosition = glm.findFirstVisibleItemPosition() / DAYS_IN_WEEK
        val view = getChildAt(0)
        val rowHeight = view.measuredHeight
        return view.top + rowHeight * (rowPosition - firstVisibleRowPosition)
    }

    private fun getRowPositionForDate(zonedDateTime: ZonedDateTime): Int {
        val date = zonedDateTime.truncatedTo(ChronoUnit.DAYS)
        return (ChronoUnit.DAYS.between(minDate, date) / DAYS_IN_WEEK.toLong()).toInt()
    }

    private fun showOverlay() {
        if (overlayDisplayState == OverlayState.IS_BEING_DISPLAYED || overlayDisplayState == OverlayState.DISPLAYED)
            return

        overlayTransitionAnimator.cancel()
        overlayTransitionAnimator.removeAllListeners()

        overlayDisplayState = OverlayState.IS_BEING_DISPLAYED

        overlayTransitionAnimator.playTogether(
            ObjectAnimator.ofFloat(this, overlayBackgroundColorProperty, overlayBackgroundColorProperty.get(this), 1.0f),
            ObjectAnimator.ofFloat(this, overlayFontColorProperty,overlayFontColorProperty.get(this), 1.0f)
        )
        overlayTransitionAnimator.duration = OVERLAY_TRANSITION_DURATION
        overlayTransitionAnimator.addListener(showingOverlayAnimationListener)
        overlayTransitionAnimator.start()
    }

    private fun hideOverlay() {
        if (overlayDisplayState == OverlayState.IS_BEING_HIDDEN || overlayDisplayState == OverlayState.HIDDEN)
            return

        overlayTransitionAnimator.cancel()
        overlayTransitionAnimator.removeAllListeners()

        overlayDisplayState = OverlayState.IS_BEING_HIDDEN

        overlayTransitionAnimator.playTogether(
            ObjectAnimator.ofFloat(this, overlayBackgroundColorProperty, overlayBackgroundColorProperty.get(this), 0.0f),
            ObjectAnimator.ofFloat(this, overlayFontColorProperty, overlayFontColorProperty.get(this), 0.0f)
        )
        overlayTransitionAnimator.duration = OVERLAY_TRANSITION_DURATION
        overlayTransitionAnimator.addListener(hidingOverlayAnimationListener)
        overlayTransitionAnimator.start()
    }

    fun setRowHeight(rowHeight: Int) {
        pickerAdapter.setViewHeight(rowHeight)
    }

    private class MonthDescriptor {
        companion object {
            private val MONTH_DESCRIPTOR_POOL = Pools.SimplePool<MonthDescriptor>(3)

            fun obtain(): MonthDescriptor {
                return MONTH_DESCRIPTOR_POOL.acquire() ?: MonthDescriptor()
            }
        }

        var top: Int = 0
        var bottom: Int = 0
        var timestamp: Long = 0

        fun recycle() {
            MONTH_DESCRIPTOR_POOL.release(this)
        }
    }

    private class HingeItemDecoration internal constructor(private val mMaskSize: Int) : ItemDecoration() {
        override fun getItemOffsets(outRect: Rect, view: View, parent: RecyclerView, state: State) {
            val rightOffset = if (parent.getChildAdapterPosition(view) % DAYS_IN_WEEK == 2) {
                mMaskSize
            } else {
                0
            }
            outRect[0, 0, rightOffset] = 0
        }
    }
}
```

## File: src/main/java/com/microsoft/fluentui/datetimepicker/DateTimePicker.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentui.datetimepicker

import android.app.Dialog
import android.content.Context
import android.os.Bundle
import androidx.appcompat.app.AppCompatDialogFragment
import com.microsoft.fluentui.datetimepicker.DateTimePickerDialog.*
import com.microsoft.fluentui.util.DateTimeUtils
import com.microsoft.fluentui.util.isAccessibilityEnabled
import java.time.Duration
import java.time.ZonedDateTime

/**
 * [DateTimePicker] houses a [DateTimePickerDialog] and provides state management for the dialog.
 */
class DateTimePicker : AppCompatDialogFragment(), OnDateTimeSelectedListener, OnDateTimePickedListener {
    companion object {
        private const val DISPLAY_MODE = "displayMode"
        private const val DATE_RANGE_MODE = "dateRangeMode"
        private const val DATE_TIME = "dateTime"
        private const val DURATION = "duration"

        fun newInstance(
            context: Context,
            mode: Mode,
            dateRangeMode: DateRangeMode = DateRangeMode.NONE,
            dateTime: ZonedDateTime = ZonedDateTime.now(),
            duration: Duration = Duration.ZERO
        ): DateTimePicker {
            val dateTimePicker = DateTimePicker()
            val bundle = Bundle()
            bundle.putSerializable(DISPLAY_MODE, getDisplayMode(context, dateTime, duration, mode))
            bundle.putSerializable(DATE_RANGE_MODE, dateRangeMode)
            bundle.putSerializable(DATE_TIME, dateTime)
            bundle.putSerializable(DURATION, duration)
            dateTimePicker.arguments = bundle
            return dateTimePicker
        }

        private fun getDisplayMode(context: Context, dateTime: ZonedDateTime, duration: Duration, mode: Mode): DisplayMode =
            if (context.isAccessibilityEnabled)  {
                mode.accessibleMode
            } else {
                val endTime = dateTime.plus(duration)
                val isSameDayEvent = DateTimeUtils.isSameDay(dateTime, endTime)
                if (isSameDayEvent || mode == Mode.DATE)
                    mode.defaultMode
                else
                    DisplayMode.TIME
            }
    }

    private lateinit var displayMode: DisplayMode
    private lateinit var dateRangeMode: DateRangeMode
    private lateinit var dateTime: ZonedDateTime
    private lateinit var duration: Duration

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        val bundle = savedInstanceState ?: arguments ?: return
        displayMode = bundle.getSerializable(DISPLAY_MODE) as DisplayMode
        dateRangeMode = bundle.getSerializable(DATE_RANGE_MODE) as DateRangeMode
        dateTime = bundle.getSerializable(DATE_TIME) as ZonedDateTime
        duration = bundle.getSerializable(DURATION) as Duration
    }

    override fun onSaveInstanceState(outState: Bundle) {
        super.onSaveInstanceState(outState)
        outState.putSerializable(DISPLAY_MODE, displayMode)
        outState.putSerializable(DATE_RANGE_MODE, getDateRangeMode())
        outState.putSerializable(DATE_TIME, dateTime)
        outState.putSerializable(DURATION, duration)
    }

    override fun onCreateDialog(bundle: Bundle?): Dialog {
        val dialog = DateTimePickerDialog(
            context as Context,
            displayMode,
            dateRangeMode,
            dateTime,
            duration
        )
        dialog.onDateTimeSelectedListener = this
        dialog.onDateTimePickedListener = this

        return dialog
    }

    override fun onDateTimeSelected(dateTime: ZonedDateTime, duration: Duration) {
        this.dateTime = dateTime
        this.duration = duration
    }

    override fun onDateTimePicked(dateTime: ZonedDateTime, duration: Duration) {
        (activity as? OnDateTimePickedListener)?.onDateTimePicked(dateTime, duration)
    }

    private fun getDateRangeMode(): DateRangeMode {
        val dialog = dialog as DateTimePickerDialog
        if (dateRangeMode != DateRangeMode.NONE)
            return if (dialog.dateTimeRangeTab == DateTimeRangeTab.START)
                DateRangeMode.START
            else
                DateRangeMode.END

        return DateRangeMode.NONE
    }
}
```

## File: src/main/java/com/microsoft/fluentui/datetimepicker/DateTimePickerDialog.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentui.datetimepicker

import android.animation.Animator
import android.animation.AnimatorListenerAdapter
import android.animation.LayoutTransition
import android.content.Context
import android.graphics.Rect
import androidx.appcompat.app.AppCompatDialog
import androidx.appcompat.widget.Toolbar
import android.view.*
import android.view.accessibility.AccessibilityEvent
import androidx.viewpager.widget.PagerAdapter
import androidx.viewpager.widget.ViewPager
import com.microsoft.fluentui.calendar.R
import com.microsoft.fluentui.calendar.CalendarView
import com.microsoft.fluentui.calendar.OnDateSelectedListener
import com.microsoft.fluentui.calendar.databinding.DialogDateTimePickerBinding
import com.microsoft.fluentui.theming.FluentUIContextThemeWrapper
import com.microsoft.fluentui.util.*
import com.microsoft.fluentui.calendar.databinding.DialogResizableBinding
import java.time.Duration
import java.time.ZonedDateTime

// TODO consider merging PickerMode and DateRangeMode since not all combinations will work
/**
 * [DateTimePickerDialog] provides a dialog view housing both a [CalendarView] and a view allowing
 * the picking of dates and times in a [WrapContentViewPager] as well as toolbar UI and menu buttons to
 * dismiss the dialog and accept a date/ time.
 */
class DateTimePickerDialog : AppCompatDialog, Toolbar.OnMenuItemClickListener, OnDateSelectedListener, TimePicker.OnTimeSlotSelectedListener {
    enum class PickerTab {
        CALENDAR_VIEW, DATE_TIME_PICKER
    }

    enum class Mode(internal val defaultMode: DisplayMode, internal val accessibleMode: DisplayMode) {
        DATE(DisplayMode.DATE, DisplayMode.ACCESSIBLE_DATE),
        DATE_TIME(DisplayMode.DATE_TIME, DisplayMode.ACCESSIBLE_DATE_TIME),
        TIME_DATE(DisplayMode.TIME_DATE, DisplayMode.ACCESSIBLE_DATE_TIME)
    }

    enum class DateRangeMode {
        NONE, START, END
    }

    internal enum class DisplayMode(val dateTabIndex: Int, val dateTimeTabIndex: Int) {
        ACCESSIBLE_DATE(0, -1),
        ACCESSIBLE_DATE_TIME(-1, 0),
        DATE(0, -1),
        DATE_TIME(0, 1),
        TIME(-1, 0),
        TIME_DATE(0, 1)
    }

    /**
     * Returns the selected [PickerTab] tab.
     */
    val pickerTab: PickerTab?
        get() = if (dialogContainerBinding.tabs.selectedTabPosition == -1) null else PickerTab.values()[dialogContainerBinding.tabs.selectedTabPosition]
    /**
     * Returns the selected [DateTimeRangeTab] tab.
     */
    val dateTimeRangeTab: DateTimeRangeTab = DateTimeRangeTab.START
        get() = pagerAdapter.timePicker?.selectedTab ?: field
    /**
     * Register a callback for when a [ZonedDateTime] and [Duration] are picked.
     */
    var onDateTimePickedListener: OnDateTimePickedListener? = null
    /**
     * Register a callback for when a [ZonedDateTime] and [Duration] are selected.
     */
    var onDateTimeSelectedListener: OnDateTimeSelectedListener? = null

    private val animatorListener = object : AnimatorListenerAdapter() {
        override fun onAnimationCancel(animation: Animator) {
            super.onAnimationCancel(animation)
            pagerAdapter.calendarView?.leaveLengthyMode()
        }

        override fun onAnimationEnd(animation: Animator) {
            super.onAnimationEnd(animation)
            pagerAdapter.calendarView?.leaveLengthyMode()
        }
    }

    private val pageChangeListener = object : ViewPager.SimpleOnPageChangeListener() {
        override fun onPageSelected(position: Int) {
            updateTitles()
            val calendarView = pagerAdapter.calendarView
            val timePicker = pagerAdapter.timePicker
            if (position == displayMode.dateTabIndex && calendarView != null) {
                dialogContainerBinding.viewPager.currentObject = calendarView
                // We're switching from the tall time picker to the short date picker. Layout transition
                // leaves blank white area below date picker. So manual animation is used here instead to avoid this.
                enableLayoutTransition(false)
                dialogContainerBinding.viewPager.smoothlyResize(calendarView.fullModeHeight, animatorListener)
            } else if (position == displayMode.dateTimeTabIndex && timePicker != null) {
                dialogContainerBinding.viewPager.currentObject = timePicker
                calendarView?.setDisplayMode(CalendarView.DisplayMode.LENGTHY_MODE, true)
                enableLayoutTransition(true)
                dialogContainerBinding.viewPager.shouldWrapContent = true
            }
        }
    }

    private val displayMode: DisplayMode
    private val dateRangeMode: DateRangeMode
    private val fluentuiContext: Context
    private val layoutTransition = LayoutTransition()
    private var dateTime: ZonedDateTime
    private var duration: Duration
    private lateinit var dialogBinding: DialogResizableBinding
    private lateinit var dialogContainerBinding: DialogDateTimePickerBinding
    private lateinit var pagerAdapter: DateTimePagerAdapter

    @JvmOverloads
    constructor(
        context: Context,
        mode: Mode,
        dateRangeMode: DateRangeMode = DateRangeMode.NONE,
        dateTime: ZonedDateTime = ZonedDateTime.now(),
        duration: Duration = Duration.ZERO
    ) : this(
        context,
        if (context.isAccessibilityEnabled) mode.accessibleMode else mode.defaultMode,
        dateRangeMode,
        dateTime,
        duration
    )

    @JvmOverloads
    internal constructor(
        context: Context,
        displayMode: DisplayMode,
        dateRangeMode: DateRangeMode = DateRangeMode.NONE,
        dateTime: ZonedDateTime = ZonedDateTime.now(),
        duration: Duration = Duration.ZERO
    ) : super(context, R.style.Dialog_FluentUI) {
        fluentuiContext = FluentUIContextThemeWrapper(context,R.style.Theme_FluentUI_Calendar)

        this.dateRangeMode = dateRangeMode
        this.dateTime = dateTime
        this.duration = duration
        this.displayMode = displayMode

        initDialog()
        initDialogContents()
    }

    private fun enableLayoutTransition(enabled: Boolean) {
        (dialogBinding.root as ViewGroup).layoutTransition = if (enabled) layoutTransition else null
    }

    private fun initDialog() {
        supportRequestWindowFeature(Window.FEATURE_NO_TITLE)
        dialogBinding = DialogResizableBinding.inflate(LayoutInflater.from(fluentuiContext))

        // Resize animation
        layoutTransition.enableTransitionType(LayoutTransition.CHANGING)
        enableLayoutTransition(true)

        // Dismiss after tapping outside the dialog
        (dialogBinding.root as View).setOnTouchListener(object : View.OnTouchListener {
            private val rect = Rect()

            override fun onTouch(v: View, event: MotionEvent): Boolean {
                dialogBinding.root.performClick()
                dialogBinding.cardViewContainer.getHitRect(rect)
                if (!rect.contains(event.x.toInt(), event.y.toInt())) {
                    cancel()
                    return true
                }
                return false
            }
        })

        setContentView(dialogBinding.root)
    }

    private fun initDialogContents() {
        dialogContainerBinding = DialogDateTimePickerBinding.inflate(LayoutInflater.from(fluentuiContext), dialogBinding.cardViewContainer, true)

        dialogContainerBinding.toolbar.inflateMenu(R.menu.menu_time_picker)
        dialogContainerBinding.toolbar.setOnMenuItemClickListener(this)

        val closeIconColor = ThemeUtil.getColor(fluentuiContext, R.attr.fluentuiDialogCloseIconColor)
        dialogContainerBinding.toolbar.navigationIcon = context.getTintedDrawable(R.drawable.ms_ic_dismiss_24_filled, closeIconColor)
        dialogContainerBinding.toolbar.navigationContentDescription = context.resources.getString(R.string.date_time_picker_accessibility_close_dialog_button)
        dialogContainerBinding.toolbar.setNavigationOnClickListener { cancel() }

        val doneIconColor = ThemeUtil.getThemeAttrColor(fluentuiContext, R.attr.fluentuiDateTimePickerToolbarIconColor)
        dialogContainerBinding.toolbar.menu.findItem(R.id.action_done).icon = context.getTintedDrawable(R.drawable.ms_ic_checkmark_24_filled, doneIconColor)

        pagerAdapter = DateTimePagerAdapter()
        dialogContainerBinding.viewPager.adapter = pagerAdapter
        dialogContainerBinding.viewPager.addOnPageChangeListener(pageChangeListener)

        if (displayMode == DisplayMode.TIME_DATE)
            dialogContainerBinding.viewPager.currentItem = displayMode.dateTimeTabIndex

        if (pagerAdapter.count < 2)
            dialogContainerBinding.tabContainer.visibility = View.GONE
        else
            dialogContainerBinding.tabs.setupWithViewPager(dialogContainerBinding.viewPager)

        updateTitles()
    }

    override fun onStart() {
        super.onStart()
        window?.setLayout(context.desiredDialogSize[0], WindowManager.LayoutParams.MATCH_PARENT)
    }

    override fun dismiss() {
        // For single instance dialogs this prevents a dialog from animating into its final size when
        // shown after a rotation, since its dimensions in portrait are different than in landscape.
        enableLayoutTransition(false)
        super.dismiss()
    }

    override fun onMenuItemClick(item: MenuItem): Boolean {
        onDateTimePickedListener?.onDateTimePicked(dateTime, duration)
        dismiss()
        return false
    }

    override fun onDateSelected(dateTime: ZonedDateTime) {
        when (dateRangeMode) {
            DateRangeMode.NONE -> {
                this.dateTime = this.dateTime.with(dateTime.toLocalDate())
                duration = Duration.ZERO
            }
            DateRangeMode.START -> {
                this.dateTime = this.dateTime.with(dateTime.toLocalDate())
            }
            DateRangeMode.END -> {
                if (dateTime.isBefore(this.dateTime))
                    this.dateTime = dateTime.minus(duration)
                else
                    duration = dateTime.getNumberOfDaysFrom(this.dateTime)
            }
        }

        updateCalendarSelectedDateRange()
        updateTitles()
        updateTimePicker()

        onDateTimeSelectedListener?.onDateTimeSelected(this.dateTime, duration)
    }

    override fun onTimeSlotSelected(timeSlot: TimeSlot) {
        this.dateTime = timeSlot.start
        this.duration = timeSlot.duration

        updateCalendarSelectedDateRange()
        onDateTimeSelectedListener?.onDateTimeSelected(this.dateTime, this.duration)
        updateTitles()
    }

    override fun dispatchPopulateAccessibilityEvent(event: AccessibilityEvent): Boolean {
        if (event.eventType == AccessibilityEvent.TYPE_WINDOW_STATE_CHANGED) {
            val announcement = when (displayMode) {
                DisplayMode.DATE, DisplayMode.ACCESSIBLE_DATE -> {
                    if (dateRangeMode != DateRangeMode.NONE)
                        R.string.date_picker_range_accessibility_dialog_title
                    else
                        R.string.date_picker_accessibility_dialog_title
                }
                else -> {
                    if (dateRangeMode != DateRangeMode.NONE)
                        R.string.date_time_picker_range_accessibility_dialog_title
                    else
                        R.string.date_time_picker_accessibility_dialog_title
                }
            }

            event.text.add(context.resources.getString(announcement))
            return true
        }
        return super.dispatchPopulateAccessibilityEvent(event)
    }

    private fun updateTimePicker() {
        val timeSlot = pagerAdapter.timePicker?.timeSlot ?: return
        if (DateTimeUtils.isSameDay(dateTime, timeSlot.start))
            return

        pagerAdapter.timePicker?.timeSlot = TimeSlot(timeSlot.start.with(dateTime.toLocalDate()), timeSlot.duration)
    }

    private fun updateCalendarSelectedDateRange() {
        pagerAdapter.calendarView?.setSelectedDateRange(dateTime.toLocalDate(), duration, dateRangeMode == DateRangeMode.END)
    }

    private fun updateTitles() {
        when (displayMode) {
            DisplayMode.DATE -> {
                dialogContainerBinding.toolbar.title = if (dateRangeMode == DateRangeMode.START)
                    DateStringUtils.formatDateAbbrevAll(context, dateTime)
                else
                    DateStringUtils.formatDateAbbrevAll(context, dateTime.plus(duration))
            }
            DisplayMode.ACCESSIBLE_DATE -> {
                dialogContainerBinding.toolbar.title = if (dateRangeMode != DateRangeMode.NONE)
                    context.resources.getString(R.string.date_time_picker_choose_date)
                else
                    DateStringUtils.formatMonthDayYear(context, dateTime.plus(duration))
            }
            DisplayMode.TIME, DisplayMode.ACCESSIBLE_DATE_TIME -> {
                dialogContainerBinding.toolbar.title = if (dateRangeMode != DateRangeMode.NONE)
                    context.resources.getString(R.string.date_time_picker_choose_time)
                else
                    DateStringUtils.formatAbbrevDateTime(context, dateTime.plus(duration))
            }
            else -> {
                val currentTab = dialogContainerBinding.viewPager.currentItem
                dialogContainerBinding.toolbar.setTitle(if (currentTab == displayMode.dateTabIndex) R.string.date_time_picker_choose_date else R.string.date_time_picker_choose_time)

                val tabDate = if (dateTimeRangeTab == DateTimeRangeTab.END) dateTime.plus(duration) else dateTime

                // Set tab titles
                if (displayMode.dateTabIndex != -1)
                    dialogContainerBinding.tabs.getTabAt(displayMode.dateTabIndex)?.text = DateStringUtils.formatDateWithWeekDay(
                        context,
                        if (currentTab == displayMode.dateTabIndex) dateTime else tabDate
                    )

                if (displayMode.dateTimeTabIndex != -1)
                    dialogContainerBinding.tabs.getTabAt(displayMode.dateTimeTabIndex)?.text = DateStringUtils.formatAbbrevTime(context, tabDate)
            }
        }
    }

    private inner class DateTimePagerAdapter : PagerAdapter() {
        var calendarView: CalendarView? = null
        var timePicker: TimePicker? = null

        override fun getCount(): Int =
            if (displayMode == DisplayMode.DATE_TIME || displayMode == DisplayMode.TIME_DATE) 2 else 1

        override fun instantiateItem(container: ViewGroup, position: Int): Any {
            val view = if (position == 0 && useCalendarView(position))
                initCalendarView()
            else
                initTimePicker()

            if (position == dialogContainerBinding.viewPager.currentItem)
                dialogContainerBinding.viewPager.currentObject = view

            container.addView(view)

            return view
        }

        override fun isViewFromObject(view: View, `object`: Any): Boolean = view === `object`

        override fun destroyItem(container: ViewGroup, position: Int, view: Any) {
            container.removeView(view as View)
        }

        private fun initCalendarView(): CalendarView {
            val calendarView = CalendarView(fluentuiContext)
            this.calendarView = calendarView
            calendarView.onDateSelectedListener = this@DateTimePickerDialog
            updateCalendarSelectedDateRange()

            return calendarView
        }

        private fun initTimePicker(): TimePicker {
            val timePicker = TimePicker(fluentuiContext)
            this.timePicker = timePicker
            timePicker.timeSlot = TimeSlot(dateTime, duration)
            timePicker.pickerMode = if (displayMode == DisplayMode.ACCESSIBLE_DATE)
                TimePicker.PickerMode.DATE
            else
                TimePicker.PickerMode.DATE_TIME
            timePicker.onTimeSlotSelectedListener = this@DateTimePickerDialog
            initTimePickerUI()

            return timePicker
        }

        private fun initTimePickerUI() {
            when (dateRangeMode) {
                DateRangeMode.START -> {
                    timePicker?.selectTab(DateTimeRangeTab.START)
                    timePicker?.setPickerValues(showEndTime = false, animate = false)
                }
                DateRangeMode.END -> {
                    timePicker?.selectTab(DateTimeRangeTab.END)
                    timePicker?.setPickerValues(showEndTime = true, animate = false)
                }
                DateRangeMode.NONE -> {
                    timePicker?.selectTab(DateTimeRangeTab.NONE)
                    timePicker?.setPickerValues(showEndTime = false, animate = false)
                }
            }
        }

        private fun useCalendarView(position: Int): Boolean =
            position == displayMode.dateTabIndex &&
                (displayMode == DisplayMode.DATE || displayMode == DisplayMode.TIME_DATE || displayMode == DisplayMode.DATE_TIME)
    }

    /**
     * Interface definition for a callback to be invoked when a date and time are picked.
     */
    interface OnDateTimePickedListener {
        /**
         * Method called when a user picks / completes a date, date and time, or date range start/ end selection.
         * @param [dateTime] the picked date or date and time
         * @param [duration] the picked duration of a date range
         */
        fun onDateTimePicked(dateTime: ZonedDateTime, duration: Duration)
    }

    /**
     * Interface definition for a callback to be invoked when a date and time are selected.
     */
    interface OnDateTimeSelectedListener {
        /**
         * Method called when a user selects a date, date and time, or date range start/ end.
         * @param [dateTime] the selected date or date and time
         * @param [duration] the selected duration of a date range
         */
        fun onDateTimeSelected(dateTime: ZonedDateTime, duration: Duration)
    }
}
```

## File: src/main/java/com/microsoft/fluentui/datetimepicker/TimePicker.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentui.datetimepicker

import android.content.Context
import com.google.android.material.tabs.TabLayout
import androidx.core.view.AccessibilityDelegateCompat
import androidx.core.view.ViewCompat
import android.text.format.DateFormat
import android.util.AttributeSet
import android.view.LayoutInflater
import android.view.View
import android.view.accessibility.AccessibilityEvent
import android.widget.LinearLayout
import com.microsoft.fluentui.calendar.R
import com.microsoft.fluentui.calendar.databinding.ViewTimePickerBinding
import com.microsoft.fluentui.datetimepicker.TimePicker.PickerMode
import com.microsoft.fluentui.managers.PreferencesManager
import com.microsoft.fluentui.util.DateStringUtils
import com.microsoft.fluentui.util.DateTimeUtils
import com.microsoft.fluentui.view.NumberPicker
import java.text.DateFormatSymbols
import java.time.Duration
import java.time.LocalDate
import java.time.YearMonth
import java.time.ZoneId
import java.time.ZonedDateTime
import java.time.temporal.ChronoUnit

/**
 * [TimePicker] houses [NumberPicker]s that allow users to pick dates, times and periods (12 hour clocks).
 * When [PickerMode.DATE] is the pickerMode months, days and years are shown.
 */
internal class TimePicker : LinearLayout, NumberPicker.OnValueChangeListener {
    companion object {
        private const val MONTH_LIMIT = 1200L
        private const val MIN_DAYS = 1
        private const val MAX_HOURS_24_CLOCK = 23
        private const val MAX_HOURS_12_CLOCK = 12
        private const val MIN_HOURS_24_CLOCK = 0
        private const val MIN_HOURS_12_CLOCK = 1
        private const val MAX_MINUTES = 59
        private const val MIN_MINUTES = 0
        private const val MIN_MONTHS = 1
        private const val MIN_PERIOD = 0
        private const val MAX_PERIOD = 1
        private const val HOUR_BEFORE_PERIOD_CHANGE = 11
    }

    enum class PickerMode {
        DATE, DATE_TIME
    }

    private enum class AmPmPeriod {
        AM, PM
    }

    val selectedTab: DateTimeRangeTab
        get() = DateTimeRangeTab.values()[timePickerBinding.startEndTabs.selectedTabPosition]

    var timeSlot: TimeSlot = TimeSlot(ZonedDateTime.now(), Duration.ZERO)
        get() {
            val updatedTime = pickerValue

            if (selectedTab == DateTimeRangeTab.START)
                dateTime = updatedTime
            else
                duration = if (updatedTime.isBefore(dateTime)) Duration.ZERO else Duration.between(dateTime, updatedTime)

            return TimeSlot(dateTime, duration)
        }
        set(value) {
            field = value
            dateTime = value.start.truncatedTo(ChronoUnit.MINUTES)
            duration = value.duration
            setPickerValues(selectedTab == DateTimeRangeTab.END, false)
        }

    /**
     * Determines whether date and time are shown or just date.
     */
    var pickerMode: PickerMode = PickerMode.DATE_TIME
        set(value) {
            field = value
            when (pickerMode) {
                PickerMode.DATE -> initDateNumberPickers()
                PickerMode.DATE_TIME -> initDateTimeNumberPickers()
            }
        }

    var onTimeSlotSelectedListener: OnTimeSlotSelectedListener? = null

    private val pickerValue: ZonedDateTime
        get() = when (pickerMode) {
            PickerMode.DATE -> datePickerValue
            PickerMode.DATE_TIME -> dateTimePickerValue
        }

    private var dateTime: ZonedDateTime = ZonedDateTime.now().truncatedTo(ChronoUnit.MINUTES)
    private var duration: Duration = Duration.ZERO
    private val is24Hour: Boolean
    private var daysBack: Int = 0
    private var daysForward: Int = 0
    private var lastSelectedHour: Int = 0

    private var shouldAnnounceHints: Boolean = true

    private val shouldToggleAmPmPeriod: Boolean
        get() = lastSelectedHour == HOUR_BEFORE_PERIOD_CHANGE && timePickerBinding.hourPicker.value == MAX_HOURS_12_CLOCK ||
            lastSelectedHour == MAX_HOURS_12_CLOCK && timePickerBinding.hourPicker.value == HOUR_BEFORE_PERIOD_CHANGE

    private val onTabSelectedListener = object : TabLayout.OnTabSelectedListener {
        override fun onTabSelected(tab: TabLayout.Tab) {
            // Adjust start time and duration when switching tabs
            shouldAnnounceHints = false
            setPickerValues(tab.tag === DateTimeRangeTab.END, true)
        }

        override fun onTabUnselected(tab: TabLayout.Tab) { }

        override fun onTabReselected(tab: TabLayout.Tab) { }
    }
    private val timePickerBinding: ViewTimePickerBinding

    @JvmOverloads
    constructor(context: Context, attrs: AttributeSet? = null, defStyleAttr: Int = 0) : super(context, attrs, defStyleAttr) {
        timePickerBinding = ViewTimePickerBinding.inflate(LayoutInflater.from(context), this, true)
        is24Hour = DateFormat.is24HourFormat(context)

        with(timePickerBinding.startEndTabs) {
            addTab(newTab())
            addTab(newTab())
            addOnTabSelectedListener(onTabSelectedListener)
        }

        getTab(DateTimeRangeTab.START)?.tag = DateTimeRangeTab.START
        getTab(DateTimeRangeTab.END)?.tag = DateTimeRangeTab.END
    }

    /**
     * Selects either [DateTimeRangeTab.START] or [DateTimeRangeTab.END] tab or in the case of [DateTimeRangeTab.NONE] hides the tabs.
     */
    fun selectTab(dateTimeRangeTab: DateTimeRangeTab) {
        if (dateTimeRangeTab == DateTimeRangeTab.NONE) {
            timePickerBinding.startEndTabs.visibility = View.GONE
        } else {
            with(timePickerBinding.startEndTabs) {
                removeOnTabSelectedListener(onTabSelectedListener)
                getTabAt(dateTimeRangeTab.ordinal)?.select()
                addOnTabSelectedListener(onTabSelectedListener)
                visibility = View.VISIBLE
            }
        }
    }

    /**
     * Sets the pickers values
     * @param showEndTime is a flag that sets the [NumberPicker]s' end date / time, start date / time or,
     * in the case of no duration, a selected date / time.
     * @param animate is a flag that sets whether the [NumberPicker]s animate to their set values.
     */
    fun setPickerValues(showEndTime: Boolean, animate: Boolean) {
        when (pickerMode) {
            PickerMode.DATE -> setDatePickerValues(showEndTime, animate)
            PickerMode.DATE_TIME -> setDateTimePickerValues(showEndTime, animate)
        }

        updateRangeContentDescription()
    }

    override fun onValueChange(picker: NumberPicker, oldVal: Int, newVal: Int) {
        if (pickerMode == PickerMode.DATE)
            updateDaysPerMonth(timeSlot.start)

        // Switch AM PM period according to the hour and direction of movement
        if (!is24Hour && picker.id == R.id.hour_picker)
            updateAmPmPeriod()

        onTimeSlotSelectedListener?.onTimeSlotSelected(timeSlot)

        if (shouldAnnounceHints)
            announceNumberPickerValue(picker)

        updateRangeContentDescription()

        when (pickerMode) {
            PickerMode.DATE -> updateDatePickerHints()
            PickerMode.DATE_TIME -> updateDateTimePickerHints()
        }
    }

    private fun getHour(time: ZonedDateTime): Int =
        if (is24Hour || dateTimePickerValue.hour == MAX_HOURS_12_CLOCK )
            time.hour
        else
            time.hour % MAX_HOURS_12_CLOCK

    private fun getDate(dateValue: Int, dateTime: ZonedDateTime): String {
        when (dateValue) {
            daysBack -> return context.getString(R.string.today)
            daysBack + 1 -> return context.getString(R.string.tomorrow)
            daysBack - 1 -> return context.getString(R.string.yesterday)
            else -> {
                if (DateTimeUtils.isSameYear(LocalDate.now(), dateTime.toLocalDate()))
                    return DateStringUtils.formatDateAbbrevAll(context, dateTime)
                else
                    return DateStringUtils.formatWeekdayDateYearAbbrev(context, dateTime)
            }
        }
    }

    private fun getTab(dateTimeRangeTab: DateTimeRangeTab): TabLayout.Tab? = timePickerBinding.startEndTabs.getTabAt(dateTimeRangeTab.ordinal)

    // Date Time NumberPickers

    private val dateTimePickerValue: ZonedDateTime
        get() {
            val now = ZonedDateTime.now().truncatedTo(ChronoUnit.MINUTES)
            val dayDiff = timePickerBinding.datePicker.value - daysBack
            var hour = timePickerBinding.hourPicker.value
            val minute = timePickerBinding.minutePicker.value

            if (!is24Hour) {
                val isMorning = timePickerBinding.periodPicker.value == 0
                val periodStartHour = if (isMorning) 0 else MAX_HOURS_12_CLOCK
                if (hour == MAX_HOURS_12_CLOCK)
                    hour = periodStartHour
                else
                    hour += periodStartHour
            }

            return now.plusDays(dayDiff.toLong()).withHour(hour).withMinute(minute)
        }

    private fun initDateTimeNumberPickers() {
        getTab(DateTimeRangeTab.START)?.setText(R.string.date_time_picker_start_time)
        getTab(DateTimeRangeTab.END)?.setText(R.string.date_time_picker_end_time)
        getTab(DateTimeRangeTab.START)?.contentDescription = resources.getString(R.string.date_time_picker_accessiblility_start_time)
        getTab(DateTimeRangeTab.END)?.contentDescription = resources.getString(R.string.date_time_picker_accessiblility_end_time)

        timePickerBinding.dateTimePickers.visibility = View.VISIBLE

        initDatePicker()
        initHourPicker()
        initMinutePicker()
        initPeriodPicker()

        setNumberPickerGroupAccessibilityFocusChangeListener(timePickerBinding.dateTimePickers)
    }

    private fun initDatePicker() {
        val firstDayOfWeek = PreferencesManager.getWeekStart(context)
        val today = LocalDate.now()
        var minWindowRange = today.minusMonths(MONTH_LIMIT)
        minWindowRange = DateTimeUtils.roundToLastWeekend(minWindowRange, firstDayOfWeek)
        var maxWindowRange = today.plusMonths(MONTH_LIMIT)
        maxWindowRange = DateTimeUtils.roundToNextWeekend(maxWindowRange, firstDayOfWeek)

        daysBack = ChronoUnit.DAYS.between(minWindowRange, today).toInt()
        daysForward = ChronoUnit.DAYS.between(today, maxWindowRange).toInt()

        with(timePickerBinding.datePicker) {
            minValue = 0
            maxValue = daysBack + daysForward
            value = daysBack
            virtualIncrementButtonDescription = resources.getString(R.string.date_time_picker_accessibility_increment_date_button)
            virtualDecrementButtonDescription = resources.getString(R.string.date_time_picker_accessibility_decrement_date_button)
            virtualIncrementClickActionAnnouncement = resources.getString(R.string.date_picker_accessibility_next_date_click_action)
            virtualDecrementClickActionAnnouncement = resources.getString(R.string.date_picker_accessibility_previous_date_click_action)
            setFormatter(DateFormatter(today.atStartOfDay(ZoneId.systemDefault())))
            setOnValueChangedListener(this@TimePicker)
        }
    }

    private fun initHourPicker() {
        with(timePickerBinding.hourPicker) {
            minValue = if (is24Hour) MIN_HOURS_24_CLOCK else MIN_HOURS_12_CLOCK
            maxValue = if (is24Hour) MAX_HOURS_24_CLOCK else MAX_HOURS_12_CLOCK
            virtualIncrementButtonDescription = resources.getString(R.string.date_time_picker_accessibility_increment_hour_button)
            virtualDecrementButtonDescription = resources.getString(R.string.date_time_picker_accessibility_decrement_hour_button)
            virtualIncrementClickActionAnnouncement = resources.getString(R.string.date_picker_accessibility_next_hour_click_action)
            virtualDecrementClickActionAnnouncement = resources.getString(R.string.date_picker_accessibility_previous_hour_click_action)
            setOnValueChangedListener(this@TimePicker)
        }
    }

    private fun initMinutePicker() {
        with(timePickerBinding.minutePicker) {
            minValue = MIN_MINUTES
            maxValue = MAX_MINUTES
            virtualIncrementButtonDescription = resources.getString(R.string.date_time_picker_accessibility_increment_minute_button)
            virtualDecrementButtonDescription = resources.getString(R.string.date_time_picker_accessibility_decrement_minute_button)
            virtualIncrementClickActionAnnouncement = resources.getString(R.string.date_picker_accessibility_next_minute_click_action)
            virtualDecrementClickActionAnnouncement = resources.getString(R.string.date_picker_accessibility_previous_minute_click_action)
            setFormatter(NumberPicker.twoDigitFormatter)
            setOnValueChangedListener(this@TimePicker)
        }
    }

    private fun initPeriodPicker() {
        with(timePickerBinding.periodPicker) {
            minValue = MIN_PERIOD
            maxValue = MAX_PERIOD
            displayedValues = DateStringUtils.amPmStrings
            visibility = if (is24Hour) View.GONE else View.VISIBLE
            virtualToggleDescription = resources.getString(R.string.date_time_picker_accessibility_period_toggle_button)
            virtualToggleClickActionAnnouncement = resources.getString(R.string.date_time_picker_accessibility_period_toggle_click_action)
            setOnValueChangedListener(this@TimePicker)
        }
    }

    private fun setDateTimePickerValues(showEndTime: Boolean, animate: Boolean) {
        val time = if (showEndTime) dateTime.plus(duration) else dateTime
        val today = LocalDate.now()
        val daysBetween = ChronoUnit.DAYS.between(today, time).toInt()
        val dateValue = daysBack + daysBetween
        val hourValue = getHour(time)
        val minuteValue = time.minute
        val ampmValue = if (time.hour < 12) 0 else 1

        if (animate) {
            timePickerBinding.datePicker.quicklyAnimateValueTo(dateValue)
            timePickerBinding.hourPicker.animateValueTo(hourValue)
            timePickerBinding.minutePicker.quicklyAnimateValueTo(minuteValue)
            if (!is24Hour)
                timePickerBinding.periodPicker.animateValueTo(ampmValue)
        } else {
            timePickerBinding.datePicker.value = dateValue
            timePickerBinding.hourPicker.value = hourValue
            timePickerBinding.minutePicker.value = minuteValue
            if (!is24Hour)
                timePickerBinding.periodPicker.value = ampmValue
        }

        lastSelectedHour = hourValue
        updateDateTimePickerHints()
    }

    private fun updateAmPmPeriod() {
        if (shouldToggleAmPmPeriod) {
            val periodValue = AmPmPeriod.values()[timePickerBinding.periodPicker.value]
            val period = if (periodValue == AmPmPeriod.AM) AmPmPeriod.PM else AmPmPeriod.AM
            timePickerBinding.periodPicker.animateValueTo(period.ordinal)
        }

        lastSelectedHour = timePickerBinding.hourPicker.value
    }

    // Date NumberPickers

    private val datePickerValue: ZonedDateTime
        get() = ZonedDateTime.now().withYear(timePickerBinding.yearPicker.value).withMonth(timePickerBinding.monthPicker.value).withDayOfMonth(timePickerBinding.dayPicker.value)

    private fun initDateNumberPickers() {
        getTab(DateTimeRangeTab.START)?.setText(R.string.date_time_picker_start_date)
        getTab(DateTimeRangeTab.END)?.setText(R.string.date_time_picker_end_date)
        getTab(DateTimeRangeTab.START)?.contentDescription = resources.getString(R.string.date_picker_accessiblility_start_date)
        getTab(DateTimeRangeTab.END)?.contentDescription = resources.getString(R.string.date_picker_accessiblility_end_date)

        timePickerBinding.datePickers.visibility = View.VISIBLE

        initMonthPicker()
        initDayPicker()
        initYearPicker()

        setNumberPickerGroupAccessibilityFocusChangeListener(timePickerBinding.datePickers)
    }

    private fun initMonthPicker() {
        val months = DateFormatSymbols().months
        with(timePickerBinding.monthPicker) {
            minValue = MIN_MONTHS
            maxValue = months.size
            displayedValues = months
            virtualIncrementButtonDescription = resources.getString(R.string.date_picker_accessibility_increment_month_button)
            virtualDecrementButtonDescription = resources.getString(R.string.date_picker_accessibility_decrement_month_button)
            virtualIncrementClickActionAnnouncement = resources.getString(R.string.date_picker_accessibility_next_month_click_action)
            virtualDecrementClickActionAnnouncement = resources.getString(R.string.date_picker_accessibility_previous_month_click_action)
            setOnValueChangedListener(this@TimePicker)
        }
    }

    private fun initDayPicker() {
        // set default min and max
        updateDaysPerMonth(ZonedDateTime.now())
        with(timePickerBinding.dayPicker) {
            virtualIncrementButtonDescription = resources.getString(R.string.date_picker_accessibility_increment_day_button)
            virtualDecrementButtonDescription = resources.getString(R.string.date_picker_accessibility_decrement_day_button)
            virtualIncrementClickActionAnnouncement = resources.getString(R.string.date_picker_accessibility_next_day_click_action)
            virtualDecrementClickActionAnnouncement = resources.getString(R.string.date_picker_accessibility_previous_day_click_action)
            setOnValueChangedListener(this@TimePicker)
        }
    }

    private fun initYearPicker() {
        val today = LocalDate.now()
        with(timePickerBinding.yearPicker) {
            minValue = today.minusMonths(MONTH_LIMIT).year
            maxValue = today.plusMonths(MONTH_LIMIT).year
            wrapSelectorWheel = false
            virtualIncrementButtonDescription = resources.getString(R.string.date_picker_accessibility_increment_year_button)
            virtualDecrementButtonDescription = resources.getString(R.string.date_picker_accessibility_decrement_year_button)
            virtualIncrementClickActionAnnouncement = resources.getString(R.string.date_picker_accessibility_next_year_click_action)
            virtualDecrementClickActionAnnouncement = resources.getString(R.string.date_picker_accessibility_previous_year_click_action)
            setOnValueChangedListener(this@TimePicker)
        }
    }

    private fun setDatePickerValues(showEndTime: Boolean, animate: Boolean) {
        val time = if (showEndTime) dateTime.plus(duration) else dateTime

        if (animate) {
            timePickerBinding.monthPicker.quicklyAnimateValueTo(time.monthValue)
            timePickerBinding.yearPicker.animateValueTo(time.year)
            timePickerBinding.dayPicker.quicklyAnimateValueTo(time.dayOfMonth)
        } else {
            timePickerBinding.monthPicker.value = time.monthValue
            timePickerBinding.yearPicker.value = time.year
            timePickerBinding.dayPicker.value = time.dayOfMonth
        }

        updateDaysPerMonth(time)
        updateDatePickerHints()
    }

    private fun updateDaysPerMonth(time: ZonedDateTime) {
        val time = if (selectedTab == DateTimeRangeTab.END) time.plus(duration) else time
        val yearMonth = YearMonth.of(time.year, time.month)
        with(timePickerBinding.dayPicker) {
            minValue = MIN_DAYS
            maxValue = yearMonth.lengthOfMonth()
        }
    }

    // Accessibility

    private fun updateRangeContentDescription() {
        if (timePickerBinding.startEndTabs.visibility == View.VISIBLE)
            when (pickerMode) {
                PickerMode.DATE -> timePickerBinding.datePicker.contentDescription = getAccessibilityDescription(true)
                PickerMode.DATE_TIME -> timePickerBinding.dateTimePickers.contentDescription = getAccessibilityDescription(false)
            }
    }

    private fun getAccessibilityDescription(dateOnly: Boolean): String {
        val time = if (selectedTab === DateTimeRangeTab.END) dateTime.plus(duration) else dateTime
        if (dateOnly)
            return getSelectedValueString(DateStringUtils.formatMonthDayYear(context, time))

        val label = when (selectedTab) {
            DateTimeRangeTab.START -> context.getString(R.string.date_time_picker_start_time)
            DateTimeRangeTab.END -> context.getString(R.string.date_time_picker_end_time)
            else -> ""
        }

        val daysBetween = ChronoUnit.DAYS.between(LocalDate.now(), time).toInt()
        val dateValue = daysBack + daysBetween
        val dateDescription = getDate(dateValue, time)
        val timeDescription = DateStringUtils.formatAbbrevTime(context, time)
        return getSelectedValueString("$label $dateDescription $timeDescription")
    }

    private fun announceNumberPickerValue(picker: NumberPicker) {
        val timePeriod = when(picker.id) {
            R.id.date_picker -> getDate(timePickerBinding.datePicker.value, dateTimePickerValue)
            R.id.hour_picker -> "${getHour(dateTimePickerValue)}"
            R.id.minute_picker -> "${dateTimePickerValue.minute}"
            R.id.period_picker -> DateStringUtils.amPmStrings[timePickerBinding.periodPicker.value]
            R.id.month_picker -> "${datePickerValue.month}"
            R.id.day_picker -> "${datePickerValue.dayOfMonth}"
            R.id.year_picker -> "${datePickerValue.year}"
            else -> ""
        }

        announceForAccessibility(resources.getString(R.string.date_time_picker_accessibility_selected_date, timePeriod))
    }

    private fun updateDateTimePickerHints() {
        setVirtualButtonHint(timePickerBinding.datePicker, getDate(timePickerBinding.datePicker.value, dateTimePickerValue))
        setVirtualButtonHint(timePickerBinding.hourPicker, "${getHour(dateTimePickerValue)}")
        setVirtualButtonHint(timePickerBinding.minutePicker, "${dateTimePickerValue.minute}")

        val periodValue = DateStringUtils.amPmStrings[timePickerBinding.periodPicker.value]
        timePickerBinding.periodPicker.virtualToggleHint = getSelectedValueString(periodValue)
    }

    private fun updateDatePickerHints() {
        setVirtualButtonHint(timePickerBinding.monthPicker,"${datePickerValue.month}")
        setVirtualButtonHint(timePickerBinding.dayPicker, "${datePickerValue.dayOfMonth}")
        setVirtualButtonHint(timePickerBinding.yearPicker, "${datePickerValue.year}")
    }

    private fun setVirtualButtonHint(picker: NumberPicker, value: String) {
        picker.virtualIncrementHint = getSelectedValueString(value)
        picker.virtualDecrementHint = picker.virtualIncrementHint
    }

    private fun setNumberPickerGroupAccessibilityFocusChangeListener(numberPickerGroup: LinearLayout) {
        ViewCompat.setAccessibilityDelegate(numberPickerGroup, object : AccessibilityDelegateCompat() {
            override fun onPopulateAccessibilityEvent(host: View, event: AccessibilityEvent) {
                if (event.eventType == AccessibilityEvent.TYPE_VIEW_ACCESSIBILITY_FOCUSED)
                    shouldAnnounceHints = true
            }
        })
    }

    private fun getSelectedValueString(value: String): String =
        resources.getString(R.string.date_time_picker_accessibility_selected_date, value)

    private inner class DateFormatter(private val today: ZonedDateTime) : android.widget.NumberPicker.Formatter {
        override fun format(value: Int): String =
            getDate(value, today.plusDays((value - daysBack).toLong()))
    }

    interface OnTimeSlotSelectedListener {
        /**
         * Method called when a user selects a date time range
         * @param [timeSlot] the selected TimeSlot
         *
         */
        fun onTimeSlotSelected(timeSlot: TimeSlot)
    }
}

enum class DateTimeRangeTab {
    START, END, NONE
}
```

## File: src/main/java/com/microsoft/fluentui/datetimepicker/TimeSlot.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentui.datetimepicker

import java.io.Serializable
import java.time.Duration
import java.time.ZonedDateTime

// TODO PBI #668220 investigate whether it's feasible to replace dateTime + duration with this data class
data class TimeSlot(val start: ZonedDateTime, val duration: Duration) : Serializable
```

## File: src/main/java/com/microsoft/fluentui/managers/PreferencesManager.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentui.managers

import android.content.Context
import java.time.DayOfWeek

/**
 * [PreferencesManager] helper methods dealing with device SharedPreferences
 */
object PreferencesManager {
    private const val PREF_NAME = "prefs"
    private const val PREF_KEY_WEEK_START = "weekStart"

    /**
     * Gets the local first day of the week
     */
    @JvmStatic
    fun getWeekStart(context: Context): DayOfWeek {
        val sharedPreferences = context.getSharedPreferences(PREF_NAME, Context.MODE_PRIVATE)
        val weekStart = sharedPreferences.getInt(PREF_KEY_WEEK_START, DayOfWeek.SUNDAY.value)
        return DayOfWeek.of(weekStart)
    }
}
```

## File: src/main/java/com/microsoft/fluentui/util/DateStringUtils.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentui.util

import android.content.Context
import android.text.format.DateUtils.*
import com.microsoft.fluentui.calendar.R
import java.text.SimpleDateFormat
import java.time.LocalDate
import java.time.LocalDateTime
import java.time.ZoneId
import java.time.ZonedDateTime
import java.time.temporal.TemporalAccessor
import java.util.*

/**
 * [DateStringUtils] is a helper object for formatting and dealing with time Strings
 */
object DateStringUtils {
    /**
     * @return an array of strings depending on 12 hour period
     */
    @JvmStatic
    val amPmStrings: Array<String>
        get() {
            val format = SimpleDateFormat("a")
            val calendar = GregorianCalendar.getInstance()

            calendar.set(Calendar.AM_PM, Calendar.AM)
            val am = format.format(calendar.time)
            calendar.set(Calendar.AM_PM, Calendar.PM)
            val pm = format.format(calendar.time)

            return arrayOf(am, pm)
        }

    /**
     * Formats a date with the weekday. It will auto-append the year if the date is from a different
     * year than now.
     *
     * Example:
     * - Sunday, January 3
     * - Sunday, January 3, 1982
     */
    @JvmStatic
    fun formatDateWithWeekDay(context: Context, date: TemporalAccessor): String = formatDateWithWeekDay(context, date.epochMillis)

    /**
     * @see .formatDateWithWeekDay
     */
    @JvmStatic
    fun formatDateWithWeekDay(context: Context, date: Long): String =
        formatDateTime(context, date,FORMAT_SHOW_DATE or FORMAT_SHOW_WEEKDAY)

    /**
     * Formats a date with the abbreviated weekday + month + day
     *
     * Example:
     * - Mon, Mar 9
     *
     * @param date Time to format
     */
    @JvmStatic
    fun formatDateAbbrevAll(context: Context, date: TemporalAccessor): String =
        formatDateAbbrevAll(context, date.epochMillis)

    /**
     * @see .formatDateAbbrevAll
     */
    @JvmStatic
    fun formatDateAbbrevAll(context: Context, time: Long): String =
        formatDateTime(context, time, FORMAT_ABBREV_ALL or FORMAT_SHOW_DATE or FORMAT_SHOW_WEEKDAY)

    /**
     * Formats the month day and year
     * Example:
     * - April 19
     * - April 19, 2020
     */
    @JvmStatic
    fun formatMonthDayYear(context: Context, date: TemporalAccessor): String =
        formatDateTime(context, date.epochMillis, 0)

    /**
     * Formats a date with the weekday + month + day + Time.  The year is optionally formatted if it
     * is not the current year.
     *
     * Example:
     * - Tuesday, November 25, 2014, 3:55AM
     * - Tuesday, March 3, 16:22
     *
     * @param time   Time to format (in millis since the epoch in UTC)
     */
    @JvmStatic
    fun formatFullDateTime(context: Context, time: Long): String =
        formatDateTime(context, time, FORMAT_SHOW_DATE or FORMAT_SHOW_WEEKDAY or FORMAT_SHOW_TIME)

    /**
     * @see .formatFullDateTime
     */
    @JvmStatic
    fun formatFullDateTime(context: Context, date: TemporalAccessor?): String =
        if (date == null) "" else formatFullDateTime(context, date.epochMillis)

    /**
     * Formats a date with the abbreviated weekday + month + day + year + ',' + time.
     *
     * Example:
     * - Tue, Nov 25, 2014, 3:55AM
     * - Tue, Mar 3, 2016, 16:22
     *
     * @param date Time to format
     */
    @JvmStatic
    fun formatAbbrevDateTime(context: Context, date: TemporalAccessor?): String =
        if (date == null) "" else formatAbbrevDateTime(context, date.epochMillis, R.string.date_time)

    /**
     * Formats a time.
     *
     * Example:
     * - 3:55AM
     * - 3PM
     * - 16:22
     *
     * @param dateTime Time to format
     */
    @JvmStatic
    fun formatAbbrevTime(context: Context, dateTime: TemporalAccessor): String =
        formatDateTime(context, dateTime.epochMillis, FORMAT_SHOW_TIME or FORMAT_ABBREV_TIME)

    /**
     * Formats a date with abbreviated Weekday + Date + Year
     *
     * Example:
     * - Fri, Mar 20, 2015
     *
     * @param  date Time to format
     */
    @JvmStatic
    fun formatWeekdayDateYearAbbrev(context: Context, date: TemporalAccessor): String =
        formatDateTime(
            context,
            date.epochMillis,
            FORMAT_ABBREV_WEEKDAY or FORMAT_ABBREV_MONTH or FORMAT_SHOW_WEEKDAY or FORMAT_SHOW_DATE or FORMAT_SHOW_YEAR
        )

    private fun formatAbbrevDateTime(context: Context, timestamp: Long, stringResource: Int): String {
        var flags = FORMAT_ABBREV_MONTH or FORMAT_ABBREV_WEEKDAY or FORMAT_SHOW_DATE or FORMAT_SHOW_WEEKDAY

        // Only show Year when it's not current year
        val calendar = Calendar.getInstance()
        val currentYear = calendar.get(Calendar.YEAR)
        calendar.timeInMillis = timestamp
        if (calendar.get(Calendar.YEAR) != currentYear)
            flags = flags or FORMAT_SHOW_YEAR

        val date = formatDateTime(context, timestamp, flags)
        val time = formatDateTime(context, timestamp, FORMAT_SHOW_TIME)

        return context.getString(stringResource, date, time)
    }

    /**
     * Converts date to the number of milliseconds from the epoch of 1970-01-01T00:00:00Z.
     */
    private val TemporalAccessor.epochMillis: Long
        get() = when (this) {
            is ZonedDateTime -> this.toInstant().toEpochMilli()
            is LocalDate -> this.atStartOfDay(ZoneId.systemDefault()).toInstant().toEpochMilli()
            is LocalDateTime -> this.atZone(ZoneId.systemDefault()).toInstant().toEpochMilli()
            else -> {
                throw Exception("Invalid date")
            }
        }
}
```

## File: src/main/java/com/microsoft/fluentui/util/DateTimeUtils.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentui.util

import java.time.DayOfWeek
import java.time.Duration
import java.time.Instant
import java.time.LocalDate
import java.time.ZoneId
import java.time.ZonedDateTime
import java.time.format.DateTimeFormatter
import java.time.format.DateTimeParseException

/**
 * [DateTimeUtils] contains helper methods for manipulating and parsing dates
 */
object DateTimeUtils {
    /**
     * It's unsafe to directly call DateTime.parse for a given date due to DST changes.
     * For example, Brazil changes time at midnight, which means there is 1 hour a year that's invalid.
     * It happens to be at midnight, so parsing just a date (say, 2015-10-18) will crash, because
     * there IS no midnight on 2015-10-18 in the America/Sao Paulo timezone. We detect those gaps
     * and do a local->UTC->local conversion to work around this.
     */
    @JvmStatic
    fun safelyParse(s: String, formatter: DateTimeFormatter): ZonedDateTime {
        val dtz: ZoneId
        try {
            dtz = ZoneId.systemDefault()
        } catch (e: IllegalArgumentException) {
            // We were unable to safely parse, try the default and hope for the best
            return ZonedDateTime.parse(s, formatter)
        }

        return safelyParse(s, formatter, dtz)
    }

    @JvmStatic
    fun safelyParse(s: String, formatter: DateTimeFormatter, dtz: ZoneId): ZonedDateTime {
        try {
            return ZonedDateTime.parse(s, formatter)
        } catch (e: DateTimeParseException) {
            // try again, with a time zone
        }

        try {
            return ZonedDateTime.parse(s, formatter.withZone(dtz))
        } catch (e: DateTimeParseException) {
            // try again, parsing just a date
        }

        // Apparently we have a lot of these... as it leads to blowing up for dates west of UTC
        if (s == "0000-00-00") {
            return ZonedDateTime.of(1, 1, 1, 1, 1, 1, 1, ZoneId.systemDefault())
        }

        // If this isn't a yyyy-mm-dd string, I don't know what else we are trying to do.
        val date = LocalDate.parse(s, formatter)
        return date.atStartOfDay(dtz)
    }

    @JvmStatic
    fun safelyParseMillis(s: String, formatter: DateTimeFormatter): Long =
        safelyParse(s, formatter).toInstant().toEpochMilli()

    @JvmStatic
    fun safelyParseMillis(s: String, formatter: DateTimeFormatter, dtz: ZoneId): Long =
        safelyParse(s, formatter, dtz).toInstant().toEpochMilli()

    @JvmStatic
    fun isToday(now: Long, `when`: Long): Boolean {
        val nowDate = Instant.ofEpochMilli(now).atZone(ZoneId.systemDefault()).toLocalDate()
        val thenDate = Instant.ofEpochMilli(`when`).atZone(ZoneId.systemDefault()).toLocalDate()
        return nowDate == thenDate
    }

    @JvmStatic
    fun isTomorrow(now: Long, `when`: Long): Boolean {
        val nowDt = Instant.ofEpochMilli(now).atZone(ZoneId.systemDefault())
        val thenDt = Instant.ofEpochMilli(`when`).atZone(ZoneId.systemDefault())
        return isTomorrow(nowDt, thenDt)
    }

    @JvmStatic
    fun isTomorrow(now: ZonedDateTime, `when`: ZonedDateTime): Boolean =
        now.toLocalDate().plusDays(1) == `when`.toLocalDate()

    @JvmStatic
    fun isTomorrow(now: LocalDate, `when`: LocalDate): Boolean = now.plusDays(1) == `when`

    /**
     * @return true if @left and @right are the same year and the same day of year.
     */
    @JvmStatic
    fun isSameDay(left: ZonedDateTime, right: ZonedDateTime): Boolean =
        left.year == right.year && left.dayOfYear == right.dayOfYear

    /**
     * @return true if @left and @right are the same year and the same day of year.
     */
    @JvmStatic
    fun isSameDay(left: LocalDate, right: LocalDate): Boolean =
        isSameYear(left, right) && left.dayOfYear == right.dayOfYear

    @JvmStatic
    fun isSameDay(left: LocalDate?, right: ZonedDateTime): Boolean =
        if (left != null) {
            left.year == right.year && left.dayOfYear == right.dayOfYear
        } else {
            false
        }

    @JvmStatic
    fun isSameYear(left: LocalDate, right: LocalDate): Boolean = left.year == right.year

    @JvmStatic
    fun isBetween(dateTime: ZonedDateTime, start: ZonedDateTime, end: ZonedDateTime): Boolean =
        !dateTime.isBefore(start) && !dateTime.isAfter(end)

    @JvmStatic
    fun isSameDayOrBetween(dateTime: ZonedDateTime, start: ZonedDateTime, end: ZonedDateTime): Boolean =
        isSameDay(dateTime, start) || isSameDay(dateTime, end) || isBetween(dateTime, start, end)

    @JvmStatic
    fun isBetween(date: LocalDate, start: LocalDate, end: LocalDate): Boolean =
        !date.isBefore(start) && !date.isAfter(end)

    @JvmStatic
    fun roundToNextWeekend(date: LocalDate, firstDayOfWeek: DayOfWeek): LocalDate =
        date.plusDays(((firstDayOfWeek.value + 6 - date.dayOfWeek.value) % 7).toLong())

    @JvmStatic
    fun roundToLastWeekend(date: LocalDate, firstDayOfWeek: DayOfWeek): LocalDate =
        date.minusDays(((date.dayOfWeek.value + 7 - firstDayOfWeek.value) % 7).toLong())

    @JvmStatic
    fun getUtcTimeInMsForTtlInSeconds(ttlInSeconds: Long): Long =
        ttlInSeconds * 1000L + System.currentTimeMillis()

    /**
     * @return LocalDate of the first date of the localDate's Month
     */
    @JvmStatic
    fun getMonthStartDate(localDate: LocalDate): LocalDate =
        LocalDate.of(localDate.year, localDate.month, 1)

    /**
     * @return LocalDate of the last date of the localDate's Month
     */
    @JvmStatic
    fun getMonthEndDate(localDate: LocalDate): LocalDate =
        LocalDate.of(localDate.year, localDate.month, localDate.lengthOfMonth())

    /**
     * @return if date1 and date2 have same month and year.
     */
    @JvmStatic
    fun isSameMonthYear(date1: LocalDate, date2: LocalDate): Boolean =
        date1.monthValue == date2.monthValue && date1.year == date2.year

    /**
     * @return absolute number of days from day to the startDayOfWeek
     *
     * For example: If day = 25-June-2018 (dayOfWeek = Monday),
     * startDayOfWeek = Sunday  => noOfDays = 1
     * startDayOfWeek = Saturday  => noOfDays = 2
     */
    @JvmStatic
    fun getDaysFromStartOfWeek(day: LocalDate, startDayOfWeek: DayOfWeek): Int {
        var noOfDays = day.dayOfWeek.value - startDayOfWeek.value
        if (noOfDays < 0) {
            noOfDays += 7
        }
        return noOfDays
    }

    /**
     * @return if day is start dayOfWeek
     */
    @JvmStatic
    fun isStartDayOfWeek(startDayOfWeek: DayOfWeek, day: LocalDate): Boolean =
        startDayOfWeek.value == day.dayOfWeek.value
}

fun ZonedDateTime.getNumberOfDaysFrom(startDateTime: ZonedDateTime): Duration {
    // Reassigns instance's time to the startDateTime's time. This has the effect of normalizing the time and
    // is useful for getting whole days between ZonedDateTimes when a start time is later than an end time
    // ie. start date time: 1/1/2019 1pm and end date time is 1/2/2019 10am. Duration is less than 24
    // hours so the calendar will only represent one day; however, when the time is normalized, the
    // representation on a calendar will cover two days, 1/1/2019 and 1/2/2019.
    val normalizedDateTime = this.with(startDateTime.toLocalTime())
    return Duration.between(startDateTime, normalizedDateTime)
}
```

## File: src/main/java/com/microsoft/fluentui/view/NumberPicker.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentui.view

/*
 * Copyright (C) 2008 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import android.app.Activity
import android.content.Context
import android.graphics.Canvas
import android.graphics.Paint
import android.graphics.Paint.Align
import android.graphics.Rect
import android.graphics.Typeface
import android.graphics.drawable.Drawable
import android.os.Bundle
import androidx.annotation.IntDef
import androidx.core.view.ViewCompat
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat
import androidx.customview.widget.ExploreByTouchHelper
import androidx.core.widget.TextViewCompat
import androidx.appcompat.widget.AppCompatButton
import androidx.appcompat.widget.AppCompatTextView
import android.text.TextUtils
import android.util.AttributeSet
import android.util.SparseArray
import android.util.TypedValue
import android.view.*
import android.view.View.OnClickListener
import android.view.View.OnLongClickListener
import android.view.accessibility.AccessibilityEvent
import android.view.accessibility.AccessibilityNodeInfo
import android.view.animation.DecelerateInterpolator
import android.widget.ImageButton
import android.widget.LinearLayout
import android.widget.TextView
import androidx.core.content.ContextCompat
import com.microsoft.fluentui.calendar.R
import com.microsoft.fluentui.util.ThemeUtil
import com.microsoft.fluentui.util.isAccessibilityEnabled
import java.lang.annotation.Retention
import java.lang.annotation.RetentionPolicy
import java.text.DecimalFormatSymbols
import java.util.*

/**
 * A widget that enables the user to select a number from a predefined range.
 * There are two flavors of this widget and which one is presented to the user
 * depends on the current theme.
 *
 */
internal class NumberPicker : LinearLayout {
    companion object {
        const val BUTTON_INCREMENT = 1
        const val BUTTON_DECREMENT = 2

        private const val VIRTUAL_VIEW_ID_INCREMENT = 1
        private const val VIRTUAL_VIEW_ID_TOGGLE = 2
        private const val VIRTUAL_VIEW_ID_DECREMENT = 3
        private const val TOGGLE_VALUE = 2
        /**
         * The number of items show in the selector wheel.
         */
        private const val DEFAULT_SELECTOR_WHEEL_ITEM_COUNT = 3
        /**
         * The default update interval during long press.
         */
        private const val DEFAULT_LONG_PRESS_UPDATE_INTERVAL: Long = 300
        /**
         * The coefficient by which to adjust (divide) the max fling velocity.
         */
        private const val SELECTOR_MAX_FLING_VELOCITY_ADJUSTMENT = 8
        /**
         * The the duration for adjusting the selector wheel.
         */
        private const val SELECTOR_ADJUSTMENT_DURATION_MILLIS = 800
        /**
         * The duration of scrolling while snapping to a given position.
         */
        private const val SNAP_SCROLL_DURATION = 300
        /**
         * The strength of fading in the top and bottom while drawing the selector.
         */
        private const val TOP_AND_BOTTOM_FADING_EDGE_STRENGTH = 0.9f
        /**
         * The default unscaled height of the selection divider.
         */
        private const val UNSCALED_DEFAULT_SELECTION_DIVIDER_HEIGHT = 2
        /**
         * The default unscaled distance between the selection dividers.
         */
        private const val UNSCALED_DEFAULT_SELECTION_DIVIDERS_DISTANCE = 48
        /**
         * Constant for unspecified size.
         */
        private const val SIZE_UNSPECIFIED = -1

        private const val ALIGN_LEFT = 0
        private const val ALIGN_CENTER = 1
        private const val ALIGN_RIGHT = 2

        private const val QUICK_ANIMATE_THRESHOLD = 15
        private val sTwoDigitFormatter = TwoDigitFormatter()
        /**
         * @hide
         */
        val twoDigitFormatter: android.widget.NumberPicker.Formatter
            get() = sTwoDigitFormatter

        private fun formatNumberWithLocale(value: Int): String {
            return String.format(Locale.getDefault(), "%d", value)
        }
    }
    /**
     * Returns the value of the picker.
     *
     * @return The value.
     *
     * Set the current value for the number picker.
     *
     * If the argument is less than the [NumberPicker.getMinValue] and
     * [NumberPicker.getWrapSelectorWheel] is `false` the
     * current value is set to the [NumberPicker.getMinValue] value.
     *
     * If the argument is less than the [NumberPicker.getMinValue] and
     * [NumberPicker.getWrapSelectorWheel] is `true` the
     * current value is set to the [NumberPicker.getMaxValue] value.
     *
     * If the argument is less than the [NumberPicker.getMaxValue] and
     * [NumberPicker.getWrapSelectorWheel] is `false` the
     * current value is set to the [NumberPicker.getMaxValue] value.
     *
     * If the argument is less than the [NumberPicker.getMaxValue] and
     * [NumberPicker.getWrapSelectorWheel] is `true` the
     * current value is set to the [NumberPicker.getMinValue] value.
     *
     * @param value The current value.
     * @see .setWrapSelectorWheel
     * @see .setMinValue
     * @see .setMaxValue
     */
    var value: Int
        get() = mValue
        set(value) = setValueInternal(value, false)
    /**
     * The values to be displayed instead the indices.
     *
     * Gets the values to be displayed instead of string values.
     *
     * @return The displayed values.
     *
     * Sets the values to be displayed.
     *
     * @param displayedValues The displayed values.
     *
     * **Note:** The length of the displayed values array
     * must be equal to the range of selectable numbers which is equal to
     * [.getMaxValue] - [.getMinValue] + 1.
     */
    var displayedValues: Array<String>? = null
        set(value) {
            if (value == null ||  displayedValues?.contentEquals(value) == true)
                return

            field = value
            updateTextView()
            initializeSelectorWheelIndices()
            tryComputeMaxWidth()
        }
    /**
     * Lower value of the range of numbers allowed for the NumberPicker
     *
     * Returns the min value of the picker.
     *
     * @return The min value
     *
     * Sets the min value of the picker.
     *
     * @param minValue The min value inclusive.
     *
     * **Note:** The length of the displayed values array
     * set via [.setDisplayedValues] must be equal to the
     * range of selectable numbers which is equal to
     * [.getMaxValue] - [.getMinValue] + 1.
     */
    var minValue: Int = 0
        set(value) {
            if (minValue == value)
                return

            if (value < 0)
                throw IllegalArgumentException("minValue must be >= 0")

            field = value

            if (minValue > mValue)
                mValue = minValue

            wrapSelectorWheel = maxValue - minValue > mSelectorIndices.size
            initializeSelectorWheelIndices()
            updateTextView()
            tryComputeMaxWidth()
            invalidate()
        }
    /**
     * Upper value of the range of numbers allowed for the NumberPicker
     */
    /**
     * Returns the max value of the picker.
     *
     * @return The max value.
     */
    /**
     * Sets the max value of the picker.
     *
     * @param maxValue The max value inclusive.
     *
     * **Note:** The length of the displayed values array
     * set via [.setDisplayedValues] must be equal to the
     * range of selectable numbers which is equal to
     * [.getMaxValue] - [.getMinValue] + 1.
     */
    var maxValue: Int = 0
        set(value) {
            if (maxValue == value)
                return

            if (value < 0)
                throw IllegalArgumentException("maxValue must be >= 0")

            field = value
            if (maxValue < mValue)
                mValue = maxValue

            wrapSelectorWheel = maxValue - minValue > mSelectorIndices.size
            initializeSelectorWheelIndices()
            updateTextView()
            tryComputeMaxWidth()
            invalidate()
        }
    /**
     * Flag whether the selector should wrap around.
     *
     * Gets whether the selector wheel wraps when reaching the min/max value.
     *
     * @return True if the selector wheel wraps.
     *
     * @see .getMinValue
     * @see .getMaxValue
     *
     * Sets whether the selector wheel shown during flinging/scrolling should
     * wrap around the [NumberPicker.getMinValue] and
     * [NumberPicker.getMaxValue] values.
     *
     * By default if the range (max - min) is more than the number of items shown
     * on the selector wheel the selector wheel wrapping is enabled.
     *
     * **Note:** If the number of items, i.e. the range (
     * [.getMaxValue] - [.getMinValue]) is less than
     * the number of items shown on the selector wheel, the selector wheel will
     * not wrap. Hence, in such a case calling this method is a NOP.
     *
     * @param wrapSelectorWheel Whether to wrap.
     */
    var wrapSelectorWheel: Boolean = false
        set(value) {
            if (value == wrapSelectorWheel)
                return

            val wrappingAllowed = maxValue - minValue >= mSelectorIndices.size
            if (!value || wrappingAllowed)
                field = value
        }
    /**
     * The content description for the increment button.
     */
    var virtualIncrementButtonDescription: String = ""
    /**
     * The content description for the decrement button.
     */
    var virtualDecrementButtonDescription: String = ""
    /**
     * The content description for the toggle text view.
     */
    var virtualToggleDescription: String = ""
    /**
     * The click action announcement for the increment button.
     */
    var virtualIncrementClickActionAnnouncement: String = ""
    /**
     * The click action announcement for the decrement button.
     */
    var virtualDecrementClickActionAnnouncement: String = ""
    /**
     * The click action announcement for the toggle button.
     */
    var virtualToggleClickActionAnnouncement: String = ""
    /**
     * The click action announcement for the increment button.
     */
    var virtualIncrementHint: String = ""
    /**
     * The click action announcement for the decrement button.
     */
    var virtualDecrementHint: String = ""
    /**
     * The click action announcement for the toggle button.
     */
    var virtualToggleHint: String = ""

    private val accessibilityTouchHelper: NumberPickerTouchHelper = NumberPickerTouchHelper(this)
    /**
     * If there are only two values the NumberPicker becomes a toggle when in TalkBack.
     */
    private val isToggle: Boolean
        get() = maxValue < TOGGLE_VALUE

    private var mSelectorWheelItemCount: Int = 0
    /**
     * The index of the middle selector item.
     */
    private var mSelectorMiddleItemIndex: Int = 0
    /**
     * The increment button.
     */
    private var mIncrementButton: ImageButton? = null
    /**
     * The decrement button.
     */
    private var mDecrementButton: ImageButton? = null
    /**
     * The text for showing the current value.
     */
    private lateinit var numberPickerTextView: TextView
    /**
     * The distance between the two selection dividers.
     */
    private var mSelectionDividersDistance: Int = 0
    /**
     * The min height of this widget.
     */
    private var mMinHeight: Int = 0
    /**
     * The max height of this widget.
     */
    private var mMaxHeight: Int = 0
    /**
     * The max width of this widget.
     */
    private var mMinWidth: Int = 0
    /**
     * The max width of this widget.
     */
    private var mMaxWidth: Int = 0
    /**
     * Flag whether to compute the max width.
     */
    private var mComputeMaxWidth: Boolean = false
    /**
     * The height of the text.
     */
    private var mTextSize: Int = 0
    /**
     * The height of the gap between text elements if the selector wheel.
     */
    private var mSelectorTextGapHeight: Int = 0
    /**
     * Current value of this NumberPicker
     */
    private var mValue: Int = 0
    /**
     * Listener to be notified upon current value change.
     */
    private var mOnValueChangeListener: OnValueChangeListener? = null
    /**
     * Listener to be notified upon scroll state change.
     */
    private var mOnScrollListener: OnScrollListener? = null
    /**
     * Formatter for for displaying the current value.
     */
    private var mFormatter: android.widget.NumberPicker.Formatter? = null
    /**
     * The speed for updating the value form long press.
     */
    private var mLongPressUpdateInterval = DEFAULT_LONG_PRESS_UPDATE_INTERVAL
    /**
     * Cache for the string representation of selector indices.
     */
    private val mSelectorIndexToStringCache = SparseArray<String>()
    /**
     * The selector indices whose values are shown by the selector.
     */
    private lateinit var mSelectorIndices: IntArray
    /**
     * The [Paint] for drawing the selector.
     */
    private lateinit var mSelectorWheelPaint: Paint
    /**
     * The [Drawable] for pressed virtual (increment/decrement) buttons.
     */
    private var mVirtualButtonPressedDrawable: Drawable? = null
    /**
     * The height of a selector element (text + gap).
     */
    private var mSelectorElementHeight: Int = 0
    /**
     * The initial offset of the scroll selector.
     */
    private var mInitialScrollOffset = Integer.MIN_VALUE
    /**
     * The current offset of the scroll selector.
     */
    private var mCurrentScrollOffset: Int = 0
    /**
     * The [Scroller] responsible for flinging the selector.
     */
    private lateinit var mFlingScroller: Scroller
    /**
     * The [Scroller] responsible for adjusting the selector.
     */
    private lateinit var mAdjustScroller: Scroller
    /**
     * The previous Y coordinate while scrolling the selector.
     */
    private var mPreviousScrollerY: Int = 0
    /**
     * Handle to the reusable command for changing the current value from long
     * press by one.
     */
    private var mChangeCurrentByOneFromLongPressCommand: ChangeCurrentByOneFromLongPressCommand? = null
    /**
     * The Y position of the last down event.
     */
    private var mLastDownEventY: Float = 0.toFloat()
    /**
     * The time of the last down event.
     */
    private var mLastDownEventTime: Long = 0
    /**
     * The Y position of the last down or move event.
     */
    private var mLastDownOrMoveEventY: Float = 0.toFloat()
    /**
     * Determines speed during touch scrolling.
     */
    private var mVelocityTracker: VelocityTracker? = null
    /**
     * @see ViewConfiguration.getScaledTouchSlop
     */
    private var mTouchSlop: Int = 0
    /**
     * @see ViewConfiguration.getScaledMinimumFlingVelocity
     */
    private var mMinimumFlingVelocity: Int = 0
    /**
     * @see ViewConfiguration.getScaledMaximumFlingVelocity
     */
    private var mMaximumFlingVelocity: Int = 0
    /**
     * The back ground color used to optimize scroller fading.
     */
    private var mSolidColor: Int = 0
    /**
     * Flag whether this widget has a selector wheel.
     */
    private var mHasSelectorWheel: Boolean = false
    /**
     * Divider for showing item to be selected while scrolling
     */
    private var mSelectionDivider: Drawable? = null
    /**
     * The height of the selection divider.
     */
    private var mSelectionDividerHeight: Int = 0
    /**
     * The current scroll state of the number picker.
     */
    private var mScrollState = OnScrollListener.SCROLL_STATE_IDLE
    /**
     * Flag whether to ignore move events - we ignore such when we show in IME
     * to prevent the content from scrolling.
     */
    private var mIgnoreMoveEvents: Boolean = false
    /**
     * Flag whether to perform a click on tap.
     */
    private var mPerformClickOnTap: Boolean = false
    /**
     * The top of the top selection divider.
     */
    private var mTopSelectionDividerTop: Int = 0
    /**
     * The bottom of the bottom selection divider.
     */
    private var mBottomSelectionDividerBottom: Int = 0
    /**
     * Whether the increment virtual button is pressed.
     */
    private var mIncrementVirtualButtonPressed: Boolean = false
    /**
     * Whether the decrement virtual button is pressed.
     */
    private var mDecrementVirtualButtonPressed: Boolean = false
    /**
     * Helper class for managing pressed state of the virtual buttons.
     */
    private lateinit var mPressedStateHelper: PressedStateHelper
    /**
     * The keycode of the last handled DPAD down event.
     */
    private var mLastHandledDownDpadKeyCode = -1
    /**
     * If true then the selector wheel is hidden until the picker has focus.
     */
    private var mHideWheelUntilFocused: Boolean = false

    private var mSelectedTextColor: Int = 0
    private var mTextColor: Int = 0

    private var mTextTypeface: Typeface? = null
    private var mSelectedTextTypeface: Typeface? = null

    /**
     * Use a custom NumberPicker formatting callback to use two-digit minutes
     * strings like "01". Keeping a static formatter etc. is the most efficient
     * way to do this; it avoids creating temporary objects on every call to
     * format().
     */
    class TwoDigitFormatter : android.widget.NumberPicker.Formatter {
        private val mBuilder = StringBuilder()
        private var mZeroDigit: Char = ' '
        private var mFmt: java.util.Formatter? = null
        private val mArgs = arrayOfNulls<Any>(1)

        init {
            val locale = Locale.getDefault()
            init(locale)
        }

        private fun init(locale: Locale) {
            mFmt = createFormatter(locale)
            mZeroDigit = getZeroDigit(locale)
        }

        override fun format(value: Int): String {
            val currentLocale = Locale.getDefault()
            if (mZeroDigit != getZeroDigit(currentLocale)) {
                init(currentLocale)
            }
            mArgs[0] = value
            mBuilder.delete(0, mBuilder.length)
            mFmt?.format("%02d", *mArgs)
            return mFmt.toString()
        }

        private fun getZeroDigit(locale: Locale): Char {
            return DecimalFormatSymbols(locale).zeroDigit
        }

        private fun createFormatter(locale: Locale): java.util.Formatter {
            return java.util.Formatter(mBuilder, locale)
        }
    }

    /**
     * Interface to listen for changes of the current value.
     */
    interface OnValueChangeListener {
        /**
         * Called upon a change of the current value.
         *
         * @param picker The NumberPicker associated with this listener.
         * @param oldVal The previous value.
         * @param newVal The new value.
         */
        fun onValueChange(picker: NumberPicker, oldVal: Int, newVal: Int)
    }

    /**
     * Interface to listen for the picker scroll state.
     */
    interface OnScrollListener {
        /** @hide
         */
        @IntDef(SCROLL_STATE_IDLE, SCROLL_STATE_TOUCH_SCROLL, SCROLL_STATE_FLING)
        @Retention(RetentionPolicy.SOURCE)
        annotation class ScrollState

        /**
         * Callback invoked while the number picker scroll state has changed.
         *
         * @param view The view whose scroll state is being reported.
         * @param scrollState The current scroll state. One of
         * [.SCROLL_STATE_IDLE],
         * [.SCROLL_STATE_TOUCH_SCROLL] or
         * [.SCROLL_STATE_IDLE].
         */
        fun onScrollStateChange(view: NumberPicker, @ScrollState scrollState: Int)

        companion object {
            /**
             * The view is not scrolling.
             */
            const val SCROLL_STATE_IDLE = 0
            /**
             * The user is scrolling using touch, and his finger is still on the screen.
             */
            const val SCROLL_STATE_TOUCH_SCROLL = 1
            /**
             * The user had previously been scrolling using touch and performed a fling.
             */
            const val SCROLL_STATE_FLING = 2
        }
    }

    /**
     * Create a new number picker.
     *
     * @param context The application environment.
     */
    constructor(context: Context) : super(context) {
        init(context, null, 0, 0)
    }

    /**
     * Create a new number picker.
     *
     * @param context The application environment.
     * @param attrs A collection of attributes.
     */
    constructor(context: Context, attrs: AttributeSet) : super(context, attrs) {
        init(context, attrs, 0, 0)
    }

    /**
     * Create a new number picker
     *
     * @param context the application environment.
     * @param attrs a collection of attributes.
     * @param defStyleAttr An attribute in the current theme that contains a
     * reference to a style resource that supplies default values for
     * the view. Can be 0 to not look for defaults.
     */
    constructor(context: Context, attrs: AttributeSet, defStyleAttr: Int) : super(context, attrs, defStyleAttr) {
        init(context, attrs, defStyleAttr, 0)
    }

    constructor(context: Context, attrs: AttributeSet, defStyleAttr: Int, defStyleRes: Int) : super(context, attrs, defStyleAttr, defStyleRes) {
        init(context, attrs, defStyleAttr, defStyleRes)
    }

    private fun init(context: Context, attrs: AttributeSet?, defStyleAttr: Int, defStyleRes: Int) {
        val attributesArray = context.obtainStyledAttributes(
            attrs, R.styleable.NumberPicker, defStyleAttr, defStyleRes)

        mHasSelectorWheel = true

        mSelectorWheelItemCount = attributesArray.getInt(
            R.styleable.NumberPicker_fluentui_selectorWheelItemCount, DEFAULT_SELECTOR_WHEEL_ITEM_COUNT)
        mSelectorMiddleItemIndex = mSelectorWheelItemCount / 2
        mSelectorIndices = IntArray(mSelectorWheelItemCount)
        mHideWheelUntilFocused = attributesArray.getBoolean(
            R.styleable.NumberPicker_fluentui_hideWheelUntilFocused, false)
        mSolidColor = attributesArray.getColor(R.styleable.NumberPicker_fluentui_solidColor, 0)
        mSelectionDivider = attributesArray.getDrawable(R.styleable.NumberPicker_fluentui_selectionDivider)
        val defSelectionDividerHeight = TypedValue.applyDimension(
            TypedValue.COMPLEX_UNIT_DIP, UNSCALED_DEFAULT_SELECTION_DIVIDER_HEIGHT.toFloat(),
            resources.displayMetrics).toInt()
        mSelectionDividerHeight = attributesArray.getDimensionPixelSize(
            R.styleable.NumberPicker_fluentui_selectionDividerHeight, defSelectionDividerHeight)
        val defSelectionDividerDistance = TypedValue.applyDimension(
            TypedValue.COMPLEX_UNIT_DIP, UNSCALED_DEFAULT_SELECTION_DIVIDERS_DISTANCE.toFloat(),
            resources.displayMetrics).toInt()
        mSelectionDividersDistance = attributesArray.getDimensionPixelSize(
            R.styleable.NumberPicker_fluentui_selectionDividersDistance, defSelectionDividerDistance)
        mSelectedTextColor = ThemeUtil.getThemeAttrColor(context, R.attr.fluentuiNumberPickerSelectedTextColor)
        mTextColor = ThemeUtil.getThemeAttrColor(context, R.attr.fluentuiNumberPickerDefaultTextColor)
        mMinHeight = attributesArray.getDimensionPixelSize(
            R.styleable.NumberPicker_fluentui_internalMinHeight, SIZE_UNSPECIFIED)
        mMaxHeight = attributesArray.getDimensionPixelSize(
            R.styleable.NumberPicker_fluentui_internalMaxHeight, SIZE_UNSPECIFIED)
        if (mMinHeight != SIZE_UNSPECIFIED && mMaxHeight != SIZE_UNSPECIFIED
            && mMinHeight > mMaxHeight) {
            throw IllegalArgumentException("minHeight > maxHeight")
        }
        mMinWidth = attributesArray.getDimensionPixelSize(
            R.styleable.NumberPicker_fluentui_internalMinWidth, SIZE_UNSPECIFIED)
        mMaxWidth = attributesArray.getDimensionPixelSize(
            R.styleable.NumberPicker_fluentui_internalMaxWidth, SIZE_UNSPECIFIED)

        if (mMinWidth != SIZE_UNSPECIFIED && mMaxWidth != SIZE_UNSPECIFIED
            && mMinWidth > mMaxWidth) {
            throw IllegalArgumentException("minWidth > maxWidth")
        }
        mComputeMaxWidth = mMaxWidth == SIZE_UNSPECIFIED
        mVirtualButtonPressedDrawable = attributesArray.getDrawable(
            R.styleable.NumberPicker_fluentui_virtualButtonPressedDrawable)

        val textAlign = attributesArray.getInt(
            R.styleable.NumberPicker_fluentui_textAlign, ALIGN_CENTER)

        attributesArray.recycle()
        mPressedStateHelper = PressedStateHelper()
        // By default LinearLayout that we extend is not drawn. This is
        // its draw() method is not called but dispatchDraw() is called
        // directly (see ViewGroup.drawChild()). However, this class uses
        // the fading edge effect implemented by View and we need our
        // draw() method to be called. Therefore, we declare we will draw.
        setWillNotDraw(!mHasSelectorWheel)
        /*val inflater = getContext().getSystemService(
            Context.LAYOUT_INFLATER_SERVICE) as LayoutInflater
        inflater.inflate(layoutResId, this, true)*/
        val onClickListener = OnClickListener { v ->
            numberPickerTextView.clearFocus()
            if (v.id == R.id.fluentui_number_picker_increment) {
                changeValueByOne(true)
            } else {
                changeValueByOne(false)
            }
        }
        val onLongClickListener = OnLongClickListener { v ->
            numberPickerTextView.clearFocus()
            if (v.id == R.id.fluentui_number_picker_increment) {
                postChangeCurrentByOneFromLongPress(true, 0)
            } else {
                postChangeCurrentByOneFromLongPress(false, 0)
            }
            true
        }
        // increment button
        if (!mHasSelectorWheel) {
            mIncrementButton = findViewById<View>(R.id.fluentui_number_picker_increment) as ImageButton
            if (mIncrementButton == null) {
                mHasSelectorWheel = false
            } else {
                mIncrementButton?.setOnClickListener(onClickListener)
                mIncrementButton?.setOnLongClickListener(onLongClickListener)
            }
        } else {
            mIncrementButton = null
        }
        // decrement button
        if (!mHasSelectorWheel) {
            mDecrementButton = findViewById<View>(R.id.fluentui_number_picker_decrement) as ImageButton
            if (mDecrementButton == null) {
                mHasSelectorWheel = false
            } else {
                mDecrementButton?.setOnClickListener(onClickListener)
                mDecrementButton?.setOnLongClickListener(onLongClickListener)
            }
        } else {
            mDecrementButton = null
        }

        // initialize constants
        val configuration = ViewConfiguration.get(context)
        mTouchSlop = configuration.scaledTouchSlop
        mMinimumFlingVelocity = configuration.scaledMinimumFlingVelocity
        mMaximumFlingVelocity = configuration.scaledMaximumFlingVelocity / SELECTOR_MAX_FLING_VELOCITY_ADJUSTMENT

        // NumberPickerTextView
        numberPickerTextView = NumberPickerTextView(context)
        numberPickerTextView.visibility = View.INVISIBLE

        // NumberPickerTextView must be added manually to prevent NPE on Lollipop.
        addView(numberPickerTextView)

        TextViewCompat.setTextAppearance(numberPickerTextView, R.style.TextAppearance_FluentUI_NumberPicker)
        mTextSize = numberPickerTextView.textSize.toInt()
        mTextTypeface = numberPickerTextView.typeface

        TextViewCompat.setTextAppearance(numberPickerTextView, R.style.TextAppearance_FluentUI_NumberPicker_Selected)
        mSelectedTextTypeface = numberPickerTextView.typeface

        // create the selector wheel paint
        val paint = Paint()
        paint.isAntiAlias = true
        when (textAlign) {
            ALIGN_LEFT -> paint.textAlign = Align.LEFT
            ALIGN_CENTER -> paint.textAlign = Align.CENTER
            ALIGN_RIGHT -> paint.textAlign = Align.RIGHT
        }
        paint.textSize = mTextSize.toFloat()
        paint.typeface = mTextTypeface

        paint.color = mTextColor
        mSelectorWheelPaint = paint
        // create the fling and adjust scrollers
        mFlingScroller = Scroller(getContext(), null, true)
        mAdjustScroller = Scroller(getContext(), DecelerateInterpolator(2.5f))
        updateTextView()
        // If not explicitly specified this view is important for accessibility.
        if (ViewCompat.getImportantForAccessibility(this) == ViewCompat.IMPORTANT_FOR_ACCESSIBILITY_AUTO) {
            ViewCompat.setImportantForAccessibility(this, ViewCompat.IMPORTANT_FOR_ACCESSIBILITY_YES)
        }

        isFocusableInTouchMode = true
        background = ContextCompat.getDrawable(context, R.drawable.ms_ripple_transparent_background)
        ViewCompat.setAccessibilityDelegate(this, accessibilityTouchHelper)
    }

    override fun onLayout(changed: Boolean, left: Int, top: Int, right: Int, bottom: Int) {
        if (!mHasSelectorWheel) {
            super.onLayout(changed, left, top, right, bottom)
            return
        }

        // text view centered horizontally.
        val textViewMeasuredWidth = numberPickerTextView.measuredWidth
        val textViewMeasuredHeight = numberPickerTextView.measuredHeight
        val textViewLeft = (measuredWidth - textViewMeasuredWidth) / 2
        val textViewTop = (measuredHeight - textViewMeasuredHeight) / 2
        val textViewRight = textViewLeft + textViewMeasuredWidth
        val textViewBottom = textViewTop + textViewMeasuredHeight
        numberPickerTextView.layout(textViewLeft, textViewTop, textViewRight, textViewBottom)
        if (changed) {
            // need to do all this when we know our size
            initializeSelectorWheel()
            mTopSelectionDividerTop = (height - mSelectionDividersDistance) / 2 - mSelectionDividerHeight
            mBottomSelectionDividerBottom = (mTopSelectionDividerTop + 2 * mSelectionDividerHeight
                + mSelectionDividersDistance)
        }
    }

    override fun onMeasure(widthMeasureSpec: Int, heightMeasureSpec: Int) {
        if (!mHasSelectorWheel) {
            super.onMeasure(widthMeasureSpec, heightMeasureSpec)
            return
        }
        // Try greedily to fit the max width and height.
        val newWidthMeasureSpec = makeMeasureSpec(widthMeasureSpec, mMaxWidth)
        val newHeightMeasureSpec = makeMeasureSpec(heightMeasureSpec, mMaxHeight)
        super.onMeasure(newWidthMeasureSpec, newHeightMeasureSpec)
        // Flag if we are measured with width or height less than the respective min.
        val widthSize = resolveSizeAndStateRespectingMinSize(mMinWidth, measuredWidth,
            widthMeasureSpec)
        val heightSize = resolveSizeAndStateRespectingMinSize(mMinHeight, measuredHeight,
            heightMeasureSpec)
        setMeasuredDimension(widthSize, heightSize)
    }

    /**
     * Move to the final position of a scroller. Ensures to force finish the scroller
     * and if it is not at its final position a scroll of the selector wheel is
     * performed to fast forward to the final position.
     *
     * @param scroller The scroller to whose final position to get.
     * @return True of the a move was performed, i.e. the scroller was not in final position.
     */
    private fun moveToFinalScrollerPosition(scroller: Scroller): Boolean {
        scroller.forceFinished(true)
        var amountToScroll = scroller.finalY - scroller.currY
        val futureScrollOffset = (mCurrentScrollOffset + amountToScroll) % mSelectorElementHeight
        var overshootAdjustment = mInitialScrollOffset - futureScrollOffset
        if (overshootAdjustment != 0) {
            if (Math.abs(overshootAdjustment) > mSelectorElementHeight / 2) {
                if (overshootAdjustment > 0) {
                    overshootAdjustment -= mSelectorElementHeight
                } else {
                    overshootAdjustment += mSelectorElementHeight
                }
            }
            amountToScroll += overshootAdjustment
            scrollBy(0, amountToScroll)
            return true
        }
        return false
    }

    override fun onInterceptTouchEvent(event: MotionEvent): Boolean {
        if (!mHasSelectorWheel || !isEnabled) {
            return false
        }
        val action = event.actionMasked
        when (action) {
            MotionEvent.ACTION_DOWN -> {
                removeAllCallbacks()
                mLastDownEventY = event.y
                mLastDownOrMoveEventY = mLastDownEventY
                mLastDownEventTime = event.eventTime
                mIgnoreMoveEvents = false
                mPerformClickOnTap = false
                // Handle pressed state before any state change.
                if (mLastDownEventY < mTopSelectionDividerTop) {
                    if (mScrollState == OnScrollListener.SCROLL_STATE_IDLE) {
                        mPressedStateHelper.buttonPressDelayed(BUTTON_DECREMENT)
                    }
                } else if (mLastDownEventY > mBottomSelectionDividerBottom) {
                    if (mScrollState == OnScrollListener.SCROLL_STATE_IDLE) {
                        mPressedStateHelper.buttonPressDelayed(BUTTON_INCREMENT)
                    }
                }
                // Make sure we support flinging inside scrollables.
                parent.requestDisallowInterceptTouchEvent(true)
                if (!mFlingScroller.isFinished) {
                    mFlingScroller.forceFinished(true)
                    mAdjustScroller.forceFinished(true)
                    onScrollStateChange(OnScrollListener.SCROLL_STATE_IDLE)
                } else if (!mAdjustScroller.isFinished) {
                    mFlingScroller.forceFinished(true)
                    mAdjustScroller.forceFinished(true)
                } else if (mLastDownEventY < mTopSelectionDividerTop) {
                    postChangeCurrentByOneFromLongPress(
                        false, ViewConfiguration.getLongPressTimeout().toLong())
                } else if (mLastDownEventY > mBottomSelectionDividerBottom) {
                    postChangeCurrentByOneFromLongPress(
                        true, ViewConfiguration.getLongPressTimeout().toLong())
                } else {
                    mPerformClickOnTap = true
                }
                return true
            }
        }
        return false
    }

    override fun onTouchEvent(event: MotionEvent): Boolean {
        if (!isEnabled || !mHasSelectorWheel)
            return false

        if (mVelocityTracker == null)
            mVelocityTracker = VelocityTracker.obtain()

        mVelocityTracker?.addMovement(event)
        val action = event.actionMasked
        when (action) {
            MotionEvent.ACTION_MOVE -> run {
                if (mIgnoreMoveEvents)
                    return@run

                val currentMoveY = event.y
                if (mScrollState != OnScrollListener.SCROLL_STATE_TOUCH_SCROLL) {
                    val deltaDownY = Math.abs(currentMoveY - mLastDownEventY).toInt()
                    if (deltaDownY > mTouchSlop) {
                        removeAllCallbacks()
                        onScrollStateChange(OnScrollListener.SCROLL_STATE_TOUCH_SCROLL)
                    }
                } else {
                    val deltaMoveY = (currentMoveY - mLastDownOrMoveEventY).toInt()
                    scrollBy(0, deltaMoveY)
                    invalidate()
                }
                mLastDownOrMoveEventY = currentMoveY
            }
            MotionEvent.ACTION_UP -> {
                removeChangeCurrentByOneFromLongPress()
                mPressedStateHelper.cancel()
                val velocityTracker = mVelocityTracker ?: return true
                velocityTracker.computeCurrentVelocity(1000, mMaximumFlingVelocity.toFloat())
                val initialVelocity = velocityTracker.yVelocity.toInt()
                if (Math.abs(initialVelocity) > mMinimumFlingVelocity) {
                    fling(initialVelocity)
                    onScrollStateChange(OnScrollListener.SCROLL_STATE_FLING)
                } else {
                    val eventY = event.y.toInt()
                    val deltaMoveY = Math.abs(eventY - mLastDownEventY).toInt()
                    val deltaTime = event.eventTime - mLastDownEventTime
                    if (deltaMoveY <= mTouchSlop && deltaTime < ViewConfiguration.getTapTimeout()) {
                        if (mPerformClickOnTap) {
                            mPerformClickOnTap = false
                            performClick()
                        } else {
                            val selectorIndexOffset = eventY / mSelectorElementHeight - mSelectorMiddleItemIndex
                            if (selectorIndexOffset > 0) {
                                changeValueByOne(true)
                                mPressedStateHelper.buttonTapped(BUTTON_INCREMENT)
                            } else if (selectorIndexOffset < 0) {
                                changeValueByOne(false)
                                mPressedStateHelper.buttonTapped(BUTTON_DECREMENT)
                            }
                        }
                    } else {
                        ensureScrollWheelAdjusted()
                    }
                    onScrollStateChange(OnScrollListener.SCROLL_STATE_IDLE)
                }
                mVelocityTracker?.recycle()
                mVelocityTracker = null
            }
        }
        return true
    }

    override fun dispatchTouchEvent(event: MotionEvent): Boolean {
        val action = event.actionMasked
        when (action) {
            MotionEvent.ACTION_CANCEL, MotionEvent.ACTION_UP -> removeAllCallbacks()
        }
        return super.dispatchTouchEvent(event)
    }

    override fun dispatchKeyEvent(event: KeyEvent): Boolean {
        val keyCode = event.keyCode
        when (keyCode) {
            KeyEvent.KEYCODE_DPAD_CENTER, KeyEvent.KEYCODE_ENTER -> removeAllCallbacks()
            KeyEvent.KEYCODE_DPAD_DOWN, KeyEvent.KEYCODE_DPAD_UP -> run {
                if (!mHasSelectorWheel) {
                    return@run
                }
                when (event.action) {
                    KeyEvent.ACTION_DOWN -> if (wrapSelectorWheel || if (keyCode == KeyEvent.KEYCODE_DPAD_DOWN)
                            value < maxValue
                        else
                            value > minValue) {
                        requestFocus()
                        mLastHandledDownDpadKeyCode = keyCode
                        removeAllCallbacks()
                        if (mFlingScroller.isFinished) {
                            changeValueByOne(keyCode == KeyEvent.KEYCODE_DPAD_DOWN)
                        }
                        return true
                    }
                    KeyEvent.ACTION_UP -> if (mLastHandledDownDpadKeyCode == keyCode) {
                        mLastHandledDownDpadKeyCode = -1
                        return true
                    }
                }
            }
        }
        return super.dispatchKeyEvent(event)
    }

    override fun dispatchTrackballEvent(event: MotionEvent): Boolean {
        val action = event.actionMasked
        when (action) {
            MotionEvent.ACTION_CANCEL, MotionEvent.ACTION_UP -> removeAllCallbacks()
        }
        return super.dispatchTrackballEvent(event)
    }

    override fun dispatchHoverEvent(event: MotionEvent): Boolean =
        if (!mHasSelectorWheel)
            super.dispatchHoverEvent(event)
        else
            accessibilityTouchHelper.dispatchHoverEvent(event)

    override fun computeScroll() {
        var scroller = mFlingScroller
        if (scroller.isFinished) {
            scroller = mAdjustScroller
            if (scroller.isFinished)
                return
        }
        scroller.computeScrollOffset()
        val currentScrollerY = scroller.currY
        if (mPreviousScrollerY == 0) {
            mPreviousScrollerY = scroller.startY
        }
        scrollBy(0, currentScrollerY - mPreviousScrollerY)
        mPreviousScrollerY = currentScrollerY
        if (scroller.isFinished) {
            onScrollerFinished(scroller)
        } else {
            invalidate()
        }
    }

    override fun setEnabled(enabled: Boolean) {
        super.setEnabled(enabled)
        if (!mHasSelectorWheel)
            mIncrementButton?.isEnabled = enabled

        if (!mHasSelectorWheel)
            mDecrementButton?.isEnabled = enabled

        numberPickerTextView.isEnabled = enabled
    }

    override fun scrollBy(x: Int, y: Int) {
        val selectorIndices = mSelectorIndices
        if (!wrapSelectorWheel && y > 0
            && selectorIndices[mSelectorMiddleItemIndex] <= minValue) {
            mCurrentScrollOffset = mInitialScrollOffset
            return
        }
        if (!wrapSelectorWheel && y < 0
            && selectorIndices[mSelectorMiddleItemIndex] >= maxValue) {
            mCurrentScrollOffset = mInitialScrollOffset
            return
        }
        mCurrentScrollOffset += y
        while (mCurrentScrollOffset - mInitialScrollOffset > mSelectorTextGapHeight) {
            mCurrentScrollOffset -= mSelectorElementHeight
            decrementSelectorIndices(selectorIndices)
            setValueInternal(selectorIndices[mSelectorMiddleItemIndex], true)
            if (!wrapSelectorWheel && selectorIndices[mSelectorMiddleItemIndex] <= minValue) {
                mCurrentScrollOffset = mInitialScrollOffset
            }
        }
        while (mCurrentScrollOffset - mInitialScrollOffset < -mSelectorTextGapHeight) {
            mCurrentScrollOffset += mSelectorElementHeight
            incrementSelectorIndices(selectorIndices)
            setValueInternal(selectorIndices[mSelectorMiddleItemIndex], true)
            if (!wrapSelectorWheel && selectorIndices[mSelectorMiddleItemIndex] >= maxValue) {
                mCurrentScrollOffset = mInitialScrollOffset
            }
        }
    }

    override fun computeVerticalScrollOffset(): Int {
        return mCurrentScrollOffset
    }

    override fun computeVerticalScrollRange(): Int {
        return (maxValue - minValue + 1) * mSelectorElementHeight
    }

    override fun computeVerticalScrollExtent(): Int {
        return height
    }

    override fun getSolidColor(): Int {
        return mSolidColor
    }

    /**
     * Sets the listener to be notified on change of the current value.
     *
     * @param onValueChangedListener The listener.
     */
    fun setOnValueChangedListener(onValueChangedListener: OnValueChangeListener) {
        mOnValueChangeListener = onValueChangedListener
    }

    /**
     * Set listener to be notified for scroll state changes.
     *
     * @param onScrollListener The listener.
     */
    fun setOnScrollListener(onScrollListener: OnScrollListener) {
        mOnScrollListener = onScrollListener
    }

    /**
     * Set the formatter to be used for formatting the current value.
     *
     * Note: If you have provided alternative values for the values this
     * formatter is never invoked.
     *
     * @param formatter The formatter object. If formatter is `null`,
     * [String.valueOf] will be used.
     * @see .setDisplayedValues
     */
    fun setFormatter(formatter: android.widget.NumberPicker.Formatter) {
        if (formatter === mFormatter) {
            return
        }
        mFormatter = formatter
        initializeSelectorWheelIndices()
        updateTextView()
    }

    override fun performClick(): Boolean {
        if (!mHasSelectorWheel) {
            return super.performClick()
        } else if (!super.performClick()) {
            if (isToggle && context.isAccessibilityEnabled)
                toggleValue()
        }
        return true
    }

    override fun performLongClick(): Boolean {
        if (!mHasSelectorWheel) {
            return super.performLongClick()
        } else if (!super.performLongClick()) {
            mIgnoreMoveEvents = true
            if (isToggle && context.isAccessibilityEnabled)
                toggleValue()
        }
        return true
    }

    /**
     * Computes the max width if no such specified as an attribute.
     */
    private fun tryComputeMaxWidth() {
        if (!mComputeMaxWidth) {
            return
        }
        var maxTextWidth = 0
        val displayedValues = displayedValues
        if (displayedValues == null) {
            var maxDigitWidth = 0f
            for (i in 0..9) {
                val digitWidth = mSelectorWheelPaint.measureText(formatNumberWithLocale(i))
                if (digitWidth > maxDigitWidth) {
                    maxDigitWidth = digitWidth
                }
            }
            var numberOfDigits = 0
            var current = maxValue
            while (current > 0) {
                numberOfDigits++
                current = current / 10
            }
            maxTextWidth = (numberOfDigits * maxDigitWidth).toInt()
        } else {
            val valueCount = displayedValues.size
            for (i in 0 until valueCount) {
                val textWidth = mSelectorWheelPaint.measureText(displayedValues[i])
                if (textWidth > maxTextWidth) {
                    maxTextWidth = textWidth.toInt()
                }
            }
        }
        maxTextWidth += numberPickerTextView.paddingLeft + numberPickerTextView.paddingRight
        if (mMaxWidth != maxTextWidth) {
            if (maxTextWidth > mMinWidth) {
                mMaxWidth = maxTextWidth
            } else {
                mMaxWidth = mMinWidth
            }
            invalidate()
        }
    }

    /**
     * Sets the speed at which the numbers be incremented and decremented when
     * the up and down buttons are long pressed respectively.
     *
     * The default value is 300 ms.
     *
     * @param intervalMillis The speed (in milliseconds) at which the numbers
     * will be incremented and decremented.
     */
    fun setOnLongPressUpdateInterval(intervalMillis: Long) {
        mLongPressUpdateInterval = intervalMillis
    }

    override fun getTopFadingEdgeStrength(): Float {
        return TOP_AND_BOTTOM_FADING_EDGE_STRENGTH
    }

    override fun getBottomFadingEdgeStrength(): Float {
        return TOP_AND_BOTTOM_FADING_EDGE_STRENGTH
    }

    override fun onDetachedFromWindow() {
        super.onDetachedFromWindow()
        removeAllCallbacks()
    }

    override fun onDraw(canvas: Canvas) {
        if (!mHasSelectorWheel) {
            super.onDraw(canvas)
            return
        }
        val showSelectorWheel = if (mHideWheelUntilFocused) hasFocus() else true
        val x: Float
        when (mSelectorWheelPaint.textAlign) {
            Paint.Align.LEFT -> x = ViewCompat.getPaddingStart(this).toFloat()
            Paint.Align.RIGHT -> x = (measuredWidth - ViewCompat.getPaddingEnd(this)).toFloat()
            Paint.Align.CENTER -> x = (measuredWidth / 2).toFloat()
            else -> x = (measuredWidth / 2).toFloat()
        }
        var y = mCurrentScrollOffset.toFloat()
        // draw the virtual buttons pressed state if needed
        if (showSelectorWheel && mVirtualButtonPressedDrawable != null
            && mScrollState == OnScrollListener.SCROLL_STATE_IDLE) {
            if (mDecrementVirtualButtonPressed) {
                mVirtualButtonPressedDrawable?.state = View.PRESSED_STATE_SET
                mVirtualButtonPressedDrawable?.setBounds(0, 0, right, mTopSelectionDividerTop)
                mVirtualButtonPressedDrawable?.draw(canvas)
            }
            if (mIncrementVirtualButtonPressed) {
                mVirtualButtonPressedDrawable?.state = View.PRESSED_STATE_SET
                mVirtualButtonPressedDrawable?.setBounds(0, mBottomSelectionDividerBottom, right,
                    bottom)
                mVirtualButtonPressedDrawable?.draw(canvas)
            }
        }
        // draw the selector wheel
        val selectorIndices = mSelectorIndices
        for (i in selectorIndices.indices) {
            val selectorIndex = selectorIndices[i]
            val scrollSelectorValue = mSelectorIndexToStringCache.get(selectorIndex)
            // Do not draw the middle item if text view is visible since the text view
            // is shown only if the wheel is static and it covers the middle
            // item. Otherwise, if the user starts editing the text via the
            // IME he may see a dimmed version of the old value intermixed
            // with the new one.
            if (showSelectorWheel && i != mSelectorMiddleItemIndex || i == mSelectorMiddleItemIndex && numberPickerTextView.visibility != View.VISIBLE) {
                if (i == mSelectorMiddleItemIndex) {
                    mSelectorWheelPaint.color = mSelectedTextColor
                    mSelectorWheelPaint.typeface = mSelectedTextTypeface
                } else {
                    mSelectorWheelPaint.color = mTextColor
                    mSelectorWheelPaint.typeface = mTextTypeface
                }
                canvas.drawText(scrollSelectorValue, x, y, mSelectorWheelPaint)
            }
            y += mSelectorElementHeight.toFloat()
        }
        // draw the selection dividers
        if (showSelectorWheel && mSelectionDivider != null) {
            // draw the top divider
            val topOfTopDivider = mTopSelectionDividerTop
            val bottomOfTopDivider = topOfTopDivider + mSelectionDividerHeight
            mSelectionDivider?.setBounds(0, topOfTopDivider, right, bottomOfTopDivider)
            mSelectionDivider?.draw(canvas)
            // draw the bottom divider
            val bottomOfBottomDivider = mBottomSelectionDividerBottom
            val topOfBottomDivider = bottomOfBottomDivider - mSelectionDividerHeight
            mSelectionDivider?.setBounds(0, topOfBottomDivider, right, bottomOfBottomDivider)
            mSelectionDivider?.draw(canvas)
        }
    }

    override fun onInitializeAccessibilityEvent(event: AccessibilityEvent) {
        super.onInitializeAccessibilityEvent(event)
        event.className = NumberPicker::class.java.name
        event.isScrollable = true
        event.scrollY = (minValue + mValue) * mSelectorElementHeight
        event.maxScrollY = (maxValue - minValue) * mSelectorElementHeight
    }

    /**
     * Makes a measure spec that tries greedily to use the max value.
     *
     * @param measureSpec The measure spec.
     * @param maxSize The max value for the size.
     * @return A measure spec greedily imposing the max size.
     */
    private fun makeMeasureSpec(measureSpec: Int, maxSize: Int): Int {
        if (maxSize == SIZE_UNSPECIFIED) {
            return measureSpec
        }
        val size = View.MeasureSpec.getSize(measureSpec)
        val mode = View.MeasureSpec.getMode(measureSpec)
        when (mode) {
            View.MeasureSpec.EXACTLY -> return measureSpec
            View.MeasureSpec.AT_MOST -> return View.MeasureSpec.makeMeasureSpec(Math.min(size, maxSize), View.MeasureSpec.EXACTLY)
            View.MeasureSpec.UNSPECIFIED -> return View.MeasureSpec.makeMeasureSpec(maxSize, View.MeasureSpec.EXACTLY)
            else -> throw IllegalArgumentException("Unknown measure mode: $mode")
        }
    }

    /**
     * Utility to reconcile a desired size and state, with constraints imposed
     * by a MeasureSpec. Tries to respect the min size, unless a different size
     * is imposed by the constraints.
     *
     * @param minSize The minimal desired size.
     * @param measuredSize The currently measured size.
     * @param measureSpec The current measure spec.
     * @return The resolved size and state.
     */
    private fun resolveSizeAndStateRespectingMinSize(
        minSize: Int, measuredSize: Int, measureSpec: Int): Int {
        if (minSize != SIZE_UNSPECIFIED) {
            val desiredWidth = Math.max(minSize, measuredSize)
            return View.resolveSizeAndState(desiredWidth, measureSpec, 0)
        } else {
            return measuredSize
        }
    }

    /**
     * Resets the selector indices and clear the cached string representation of
     * these indices.
     */
    private fun initializeSelectorWheelIndices() {
        mSelectorIndexToStringCache.clear()
        val selectorIndices = mSelectorIndices
        val current = value
        for (i in mSelectorIndices.indices) {
            var selectorIndex = current + (i - mSelectorMiddleItemIndex)
            if (wrapSelectorWheel) {
                selectorIndex = getWrappedSelectorIndex(selectorIndex)
            }
            selectorIndices?.let {
                it[i] = selectorIndex
                ensureCachedScrollSelectorValue(it[i])
            }
        }
    }

    /**
     * Sets the current value of this NumberPicker.
     *
     * @param current The new value of the NumberPicker.
     * @param notifyChange Whether to notify if the current value changed.
     */
    private fun setValueInternal(current: Int, notifyChange: Boolean) {
        var current = current
        if (mValue == current) {
            return
        }
        // Wrap around the values if we go past the start or end
        if (wrapSelectorWheel) {
            current = getWrappedSelectorIndex(current)
        } else {
            current = Math.max(current, minValue)
            current = Math.min(current, maxValue)
        }
        val previous = mValue
        mValue = current
        updateTextView()
        if (notifyChange) {
            notifyChange(previous, current)
        }
        initializeSelectorWheelIndices()
        invalidate()
    }

    fun animateValueTo(value: Int) {
        if (mValue == value) {
            return
        }
        changeValueBy(value - mValue, SELECTOR_ADJUSTMENT_DURATION_MILLIS)
    }

    /**
     * Jump to a value near target value then animate to target value
     *
     * @param value The target value
     */
    fun quicklyAnimateValueTo(value: Int) {
        if (mValue == value) {
            return
        }

        val delta = mValue - value
        if (delta > QUICK_ANIMATE_THRESHOLD) {
            this.value = value + QUICK_ANIMATE_THRESHOLD
        } else if (delta < -QUICK_ANIMATE_THRESHOLD) {
            this.value = value - QUICK_ANIMATE_THRESHOLD
        }

        animateValueTo(value)
    }

    /**
     * Changes the current value by one which is increment or
     * decrement based on the passes argument.
     * decrement the current value.
     *
     * @param increment True to increment, false to decrement.
     */
    private fun changeValueByOne(increment: Boolean) {
        changeValueBy(if (increment) 1 else -1, SNAP_SCROLL_DURATION)
    }

    private fun changeValueBy(value: Int, duration: Int) {
        if (mHasSelectorWheel) {
            numberPickerTextView.visibility = View.INVISIBLE
            if (!moveToFinalScrollerPosition(mFlingScroller)) {
                moveToFinalScrollerPosition(mAdjustScroller)
            }
            mPreviousScrollerY = 0
            mFlingScroller.startScroll(0, 0, 0, value * -mSelectorElementHeight, duration)
            invalidate()
        } else {
            setValueInternal(mValue + value, true)
        }
    }

    private fun toggleValue() {
        setValueInternal(if (mValue == 0) 1 else 0, true)
    }

    private fun initializeSelectorWheel() {
        initializeSelectorWheelIndices()
        val selectorIndices = mSelectorIndices
        val totalTextHeight = selectorIndices.size * mTextSize
        val totalTextGapHeight = (bottom - top - totalTextHeight).toFloat()
        val textGapCount = selectorIndices.size.toFloat()
        mSelectorTextGapHeight = (totalTextGapHeight / textGapCount + 0.5f).toInt()
        mSelectorElementHeight = mTextSize + mSelectorTextGapHeight
        // Ensure that the middle item is positioned the same as the text in numberPickerTextView
        val editTextTextPosition = numberPickerTextView.baseline + numberPickerTextView.top
        mInitialScrollOffset = editTextTextPosition - mSelectorElementHeight * mSelectorMiddleItemIndex
        mCurrentScrollOffset = mInitialScrollOffset
        updateTextView()
    }

    /**
     * Callback invoked upon completion of a given `scroller`.
     */
    private fun onScrollerFinished(scroller: Scroller?) {
        if (scroller == mFlingScroller) {
            if (!ensureScrollWheelAdjusted()) {
                updateTextView()
            }
            onScrollStateChange(OnScrollListener.SCROLL_STATE_IDLE)
        } else {
            if (mScrollState != OnScrollListener.SCROLL_STATE_TOUCH_SCROLL) {
                updateTextView()
            }
        }
    }

    /**
     * Handles transition to a given `scrollState`
     */
    private fun onScrollStateChange(scrollState: Int) {
        if (mScrollState == scrollState) {
            return
        }
        mScrollState = scrollState
        mOnScrollListener?.onScrollStateChange(this, scrollState)
    }

    /**
     * Flings the selector with the given `velocityY`.
     */
    private fun fling(velocityY: Int) {
        mPreviousScrollerY = 0
        if (velocityY > 0) {
            mFlingScroller.fling(0, 0, 0, velocityY, 0, 0, 0, Integer.MAX_VALUE)
        } else {
            mFlingScroller.fling(0, Integer.MAX_VALUE, 0, velocityY, 0, 0, 0, Integer.MAX_VALUE)
        }
        invalidate()
    }

    /**
     * @return The wrapped index `selectorIndex` value.
     */
    private fun getWrappedSelectorIndex(selectorIndex: Int): Int {
        if (selectorIndex > maxValue) {
            return minValue + (selectorIndex - maxValue) % (maxValue - minValue) - 1
        } else if (selectorIndex < minValue) {
            return maxValue - (minValue - selectorIndex) % (maxValue - minValue) + 1
        }
        return selectorIndex
    }

    /**
     * Increments the `selectorIndices` whose string representations
     * will be displayed in the selector.
     */
    private fun incrementSelectorIndices(selectorIndices: IntArray) {
        for (i in 0 until selectorIndices.size - 1) {
            selectorIndices[i] = selectorIndices[i + 1]
        }
        var nextScrollSelectorIndex = selectorIndices[selectorIndices.size - 2] + 1
        if (wrapSelectorWheel && nextScrollSelectorIndex > maxValue) {
            nextScrollSelectorIndex = minValue
        }
        selectorIndices[selectorIndices.size - 1] = nextScrollSelectorIndex
        ensureCachedScrollSelectorValue(nextScrollSelectorIndex)
    }

    /**
     * Decrements the `selectorIndices` whose string representations
     * will be displayed in the selector.
     */
    private fun decrementSelectorIndices(selectorIndices: IntArray) {
        for (i in selectorIndices.size - 1 downTo 1) {
            selectorIndices[i] = selectorIndices[i - 1]
        }
        var nextScrollSelectorIndex = selectorIndices[1] - 1
        if (wrapSelectorWheel && nextScrollSelectorIndex < minValue) {
            nextScrollSelectorIndex = maxValue
        }
        selectorIndices[0] = nextScrollSelectorIndex
        ensureCachedScrollSelectorValue(nextScrollSelectorIndex)
    }

    /**
     * Ensures we have a cached string representation of the given
     * `selectorIndex` to avoid multiple instantiations of the same string.
     */
    private fun ensureCachedScrollSelectorValue(selectorIndex: Int) {
        val cache = mSelectorIndexToStringCache
        var scrollSelectorValue = cache.get(selectorIndex)
        if (scrollSelectorValue != null) {
            return
        }
        if (selectorIndex < minValue || selectorIndex > maxValue) {
            scrollSelectorValue = ""
        } else {
            val displayedValues = displayedValues
            if (displayedValues != null) {
                val displayedValueIndex = selectorIndex - minValue
                scrollSelectorValue = displayedValues[displayedValueIndex]
            } else {
                scrollSelectorValue = formatNumber(selectorIndex)
            }
        }
        cache.put(selectorIndex, scrollSelectorValue)
    }

    private fun formatNumber(value: Int): String =
        mFormatter?.format(value) ?: formatNumberWithLocale(value)

    /**
     * Updates the view of this NumberPicker. If displayValues were specified in
     * the string corresponding to the index specified by the current value will
     * be returned. Otherwise, the formatter specified in [.setFormatter]
     * will be used to format the number.
     *
     * @return Whether the text was updated.
     */
    private fun updateTextView(): Boolean {
        /*
         * If we don't have displayed values then use the current number else
         * find the correct value in the displayed values for the current
         * number.
         */
        val displayedValues = displayedValues
        val text = if (displayedValues == null)
            formatNumber(mValue)
        else
            displayedValues[mValue - minValue]

        if (!TextUtils.isEmpty(text) && text != numberPickerTextView.text.toString()) {
            numberPickerTextView.text = text
            return true
        }
        return false
    }

    /**
     * Notifies the listener, if registered, of a change of the value of this
     * NumberPicker.
     */
    private fun notifyChange(previous: Int, current: Int) {
        mOnValueChangeListener?.onValueChange(this, previous, mValue)
    }

    /**
     * Posts a command for changing the current value by one.
     *
     * @param increment Whether to increment or decrement the value.
     */
    private fun postChangeCurrentByOneFromLongPress(increment: Boolean, delayMillis: Long) {
        if (mChangeCurrentByOneFromLongPressCommand == null) {
            mChangeCurrentByOneFromLongPressCommand = ChangeCurrentByOneFromLongPressCommand()
        } else {
            removeCallbacks(mChangeCurrentByOneFromLongPressCommand)
        }
        mChangeCurrentByOneFromLongPressCommand?.setStep(increment)
        postDelayed(mChangeCurrentByOneFromLongPressCommand, delayMillis)
    }

    /**
     * Removes the command for changing the current value by one.
     */
    private fun removeChangeCurrentByOneFromLongPress() {
        if (mChangeCurrentByOneFromLongPressCommand != null) {
            removeCallbacks(mChangeCurrentByOneFromLongPressCommand)
        }
    }

    /**
     * Removes all pending callback from the message queue.
     */
    private fun removeAllCallbacks() {
        if (mChangeCurrentByOneFromLongPressCommand != null) {
            removeCallbacks(mChangeCurrentByOneFromLongPressCommand)
        }
        mPressedStateHelper.cancel()
    }

    /**
     * Ensures that the scroll wheel is adjusted i.e. there is no offset and the
     * middle element is in the middle of the widget.
     *
     * @return Whether an adjustment has been made.
     */
    private fun ensureScrollWheelAdjusted(): Boolean {
        // adjust to the closest value
        var deltaY = mInitialScrollOffset - mCurrentScrollOffset
        if (deltaY != 0) {
            mPreviousScrollerY = 0
            if (Math.abs(deltaY) > mSelectorElementHeight / 2) {
                deltaY += if (deltaY > 0) -mSelectorElementHeight else mSelectorElementHeight
            }
            mAdjustScroller.startScroll(0, 0, 0, deltaY, SELECTOR_ADJUSTMENT_DURATION_MILLIS)
            invalidate()
            return true
        }
        return false
    }

    private inner class PressedStateHelper : Runnable {
        private val MODE_PRESS = 1
        private val MODE_TAPPED = 2
        private var mManagedButton: Int = 0
        private var mMode: Int = 0

        fun cancel() {
            mMode = 0
            mManagedButton = 0
            this@NumberPicker.removeCallbacks(this)
            if (mIncrementVirtualButtonPressed) {
                mIncrementVirtualButtonPressed = false
                invalidate(0, mBottomSelectionDividerBottom, right, bottom)
            }
            mDecrementVirtualButtonPressed = false
            if (mDecrementVirtualButtonPressed) {
                invalidate(0, 0, right, mTopSelectionDividerTop)
            }
        }

        fun buttonPressDelayed(button: Int) {
            cancel()
            mMode = MODE_PRESS
            mManagedButton = button
            this@NumberPicker.postDelayed(this, ViewConfiguration.getTapTimeout().toLong())
        }

        fun buttonTapped(button: Int) {
            cancel()
            mMode = MODE_TAPPED
            mManagedButton = button
            this@NumberPicker.post(this)
        }

        override fun run() {
            when (mMode) {
                MODE_PRESS -> {
                    when (mManagedButton) {
                        BUTTON_INCREMENT -> {
                            mIncrementVirtualButtonPressed = true
                            invalidate(0, mBottomSelectionDividerBottom, right, bottom)
                        }
                        BUTTON_DECREMENT -> {
                            mDecrementVirtualButtonPressed = true
                            invalidate(0, 0, right, mTopSelectionDividerTop)
                        }
                    }
                }
                MODE_TAPPED -> {
                    when (mManagedButton) {
                        BUTTON_INCREMENT -> {
                            if (!mIncrementVirtualButtonPressed) {
                                this@NumberPicker.postDelayed(this,
                                    ViewConfiguration.getPressedStateDuration().toLong())
                            }
                            mIncrementVirtualButtonPressed = mIncrementVirtualButtonPressed xor true
                            invalidate(0, mBottomSelectionDividerBottom, right, bottom)
                        }
                        BUTTON_DECREMENT -> {
                            if (!mDecrementVirtualButtonPressed) {
                                this@NumberPicker.postDelayed(this,
                                    ViewConfiguration.getPressedStateDuration().toLong())
                            }
                            mDecrementVirtualButtonPressed = mDecrementVirtualButtonPressed xor true
                            invalidate(0, 0, right, mTopSelectionDividerTop)
                        }
                    }
                }
            }
        }
    }

    /**
     * Command for changing the current value from a long press by one.
     */
    private inner class ChangeCurrentByOneFromLongPressCommand : Runnable {
        private var mIncrement: Boolean = false
        fun setStep(increment: Boolean) {
            mIncrement = increment
        }

        override fun run() {
            changeValueByOne(mIncrement)
            postDelayed(this, mLongPressUpdateInterval)
        }
    }

    /**
     * @hide
     */
    private class NumberPickerTextView : AppCompatTextView {
        @JvmOverloads
        constructor(context: Context, attrs: AttributeSet? = null) : super(context, attrs) {
            layoutParams = LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT)
            gravity = Gravity.CENTER
            maxLines = 1
            background = null
        }

        override fun onInitializeAccessibilityEvent(event: AccessibilityEvent) {
            super.onInitializeAccessibilityEvent(event)
            if (context !is Activity)
                event.className = View::class.java.name
        }

        override fun onInitializeAccessibilityNodeInfo(info: AccessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(info)
            if (context !is Activity)
                info.className = View::class.java.name
        }
    }

    // Accessibility

    private inner class NumberPickerTouchHelper(host: View): ExploreByTouchHelper(host) {
        private val numberPickerBounds = Rect(0, 0, width, height)
        private var decrementBounds = Rect()
        private var incrementBounds = Rect()
        private var toggleBounds = Rect()

        override fun onPopulateNodeForVirtualView(virtualViewId: Int, info: AccessibilityNodeInfoCompat) {
            when (virtualViewId) {
                VIRTUAL_VIEW_ID_DECREMENT -> {
                    decrementBounds = Rect(
                        scrollX,
                        scrollY,
                        scrollX + (right - left),
                        mTopSelectionDividerTop + mSelectionDividerHeight)
                    createAccessibilityNodeInfoForVirtualButton(info, virtualViewId, decrementBounds)
                }
                VIRTUAL_VIEW_ID_INCREMENT -> {
                    incrementBounds = Rect(
                        scrollX,
                        mBottomSelectionDividerBottom - mSelectionDividerHeight,
                        scrollX + (right - left),
                        scrollY + (bottom - top))
                    createAccessibilityNodeInfoForVirtualButton(info, virtualViewId, incrementBounds)
                }
                VIRTUAL_VIEW_ID_TOGGLE -> {
                    toggleBounds = Rect(
                        scrollX,
                        mTopSelectionDividerTop + mSelectionDividerHeight,
                        scrollX + (right - left),
                        mBottomSelectionDividerBottom - mSelectionDividerHeight)
                    createAccessibilityNodeInfoForVirtualButton(info, virtualViewId, toggleBounds)
                }
                else -> {
                    info.contentDescription = ""
                    info.setBoundsInParent(numberPickerBounds)
                }
            }
        }

        override fun onPerformActionForVirtualView(virtualViewId: Int, action: Int, arguments: Bundle?): Boolean {
            if (action == AccessibilityNodeInfo.ACTION_CLICK) {
                when (virtualViewId) {
                    VIRTUAL_VIEW_ID_INCREMENT -> changeValueByOne(true)
                    VIRTUAL_VIEW_ID_DECREMENT -> changeValueByOne(false)
                    VIRTUAL_VIEW_ID_TOGGLE -> toggleValue()
                }
                return true
            }
            return false
        }

        override fun getVisibleVirtualViews(virtualViewIds: MutableList<Int>) {
            virtualViewIds.clear()

            if (isToggle) {
                virtualViewIds.add(VIRTUAL_VIEW_ID_TOGGLE)
            } else {
                virtualViewIds.add(VIRTUAL_VIEW_ID_DECREMENT)
                virtualViewIds.add(VIRTUAL_VIEW_ID_INCREMENT)
            }
        }

        override fun getVirtualViewAt(x: Float, y: Float): Int {
            val xPosition = x.toInt()
            val yPosition = y.toInt()
            return when {
                decrementBounds.contains(xPosition, yPosition) -> VIRTUAL_VIEW_ID_DECREMENT
                incrementBounds.contains(xPosition, yPosition) -> VIRTUAL_VIEW_ID_INCREMENT
                toggleBounds.contains(xPosition, yPosition) -> VIRTUAL_VIEW_ID_TOGGLE
                else -> INVALID_ID
            }
        }

        private fun createAccessibilityNodeInfoForVirtualButton(info: AccessibilityNodeInfoCompat, virtualViewId: Int, rect: Rect) {
            info.className = AppCompatButton::class.java.name
            setNodeInfoDescriptions(virtualViewId, info)
            setInfoBounds(info, rect)

            val clickAction = AccessibilityNodeInfoCompat.AccessibilityActionCompat(
                AccessibilityNodeInfo.ACTION_CLICK,
                getNodeInfoClickActionAnnouncement(virtualViewId)
            )

            info.addAction(clickAction)
        }

        private fun setNodeInfoDescriptions(virtualViewId: Int, info: AccessibilityNodeInfoCompat) {
            when (virtualViewId) {
                VIRTUAL_VIEW_ID_DECREMENT -> {
                    info.contentDescription = virtualDecrementButtonDescription
                    info.hintText = virtualDecrementHint
                }
                VIRTUAL_VIEW_ID_INCREMENT -> {
                    info.contentDescription = virtualIncrementButtonDescription
                    info.hintText = virtualIncrementHint
                }
                VIRTUAL_VIEW_ID_TOGGLE -> {
                    info.contentDescription = virtualToggleDescription
                    info.hintText = virtualToggleHint
                }
            }
        }
        
        private fun getNodeInfoClickActionAnnouncement(virtualViewId: Int): String = 
            when (virtualViewId) {
                VIRTUAL_VIEW_ID_DECREMENT -> virtualDecrementClickActionAnnouncement
                VIRTUAL_VIEW_ID_INCREMENT -> virtualIncrementClickActionAnnouncement
                VIRTUAL_VIEW_ID_TOGGLE -> virtualToggleClickActionAnnouncement
                else -> ""
            }

        private fun setInfoBounds(info: AccessibilityNodeInfoCompat, rect: Rect) {
            val boundsInParent = Rect(rect)
            info.setBoundsInParent(boundsInParent)

            val locationOnScreen = IntArray(2)
            getLocationOnScreen(locationOnScreen)
            boundsInParent.offset(locationOnScreen[0], locationOnScreen[1])
            info.setBoundsInScreen(boundsInParent)
        }
    }
}
```

## File: src/main/java/com/microsoft/fluentui/view/Scroller.kt
```kotlin
package com.microsoft.fluentui.view

/*
 * Copyright (C) 2006 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import android.content.Context
import android.hardware.SensorManager
import android.os.Build
import android.view.ViewConfiguration
import android.view.animation.AnimationUtils
import android.view.animation.Interpolator

/**
 *
 * This class encapsulates scrolling. You can use scrollers ([Scroller]
 * or [OverScroller]) to collect the data you need to produce a scrolling
 * animationfor example, in response to a fling gesture. Scrollers track
 * scroll offsets for you over time, but they don't automatically apply those
 * positions to your view. It's your responsibility to get and apply new
 * coordinates at a rate that will make the scrolling animation look smooth.
 *
 *
 * Here is a simple example:
 *
 * <pre> private Scroller mScroller = new Scroller(context);
 * ...
 * public void zoomIn() {
 * // Revert any animation currently in progress
 * mScroller.forceFinished(true);
 * // Start scrolling by providing a starting point and
 * // the distance to travel
 * mScroller.startScroll(0, 0, 100, 0);
 * // Invalidate to request a redraw
 * invalidate();
 * }</pre>
 *
 *
 * To track the changing positions of the x/y coordinates, use
 * [.computeScrollOffset]. The method returns a boolean to indicate
 * whether the scroller is finished. If it isn't, it means that a fling or
 * programmatic pan operation is still in progress. You can use this method to
 * find the current offsets of the x and y coordinates, for example:
 *
 * <pre>if (mScroller.computeScrollOffset()) {
 * // Get current x and y positions
 * int currX = mScroller.getCurrX();
 * int currY = mScroller.getCurrY();
 * ...
 * }</pre>
 */
/**
 * Create a Scroller with the specified interpolator. If the interpolator is
 * null, the default (viscous) interpolator will be used. Specify whether or
 * not to support progressive "flywheel" behavior in flinging.
 */
internal class Scroller {
    companion object {
        private const val DEFAULT_DURATION = 250
        private const val SCROLL_MODE = 0
        private const val FLING_MODE = 1
        private val DECELERATION_RATE = (Math.log(0.78) / Math.log(0.9)).toFloat()
        private const val INFLEXION = 0.35f // Tension lines cross at (INFLEXION, 1)
        private const val START_TENSION = 0.5f
        private const val END_TENSION = 1.0f
        private const val P1 = START_TENSION * INFLEXION
        private const val P2 = 1.0f - END_TENSION * (1.0f - INFLEXION)
        private const val NB_SAMPLES = 100
        private val SPLINE_POSITION = FloatArray(NB_SAMPLES + 1)
        private val SPLINE_TIME = FloatArray(NB_SAMPLES + 1)

        init {
            var xMin = 0.0f
            var yMin = 0.0f
            for (i in 0 until NB_SAMPLES) {
                val alpha = i.toFloat() / NB_SAMPLES
                var xMax = 1.0f
                var x: Float
                var tx: Float
                var coef: Float
                while (true) {
                    x = xMin + (xMax - xMin) / 2.0f
                    coef = 3.0f * x * (1.0f - x)
                    tx = coef * ((1.0f - x) * P1 + x * P2) + x * x * x
                    if (Math.abs(tx - alpha) < 1E-5) break
                    if (tx > alpha)
                        xMax = x
                    else
                        xMin = x
                }
                SPLINE_POSITION[i] = coef * ((1.0f - x) * START_TENSION + x) + x * x * x
                var yMax = 1.0f
                var y: Float
                var dy: Float
                while (true) {
                    y = yMin + (yMax - yMin) / 2.0f
                    coef = 3.0f * y * (1.0f - y)
                    dy = coef * ((1.0f - y) * START_TENSION + y) + y * y * y
                    if (Math.abs(dy - alpha) < 1E-5) break
                    if (dy > alpha)
                        yMax = y
                    else
                        yMin = y
                }
                SPLINE_TIME[i] = coef * ((1.0f - y) * P1 + y * P2) + y * y * y
            }
            SPLINE_TIME[NB_SAMPLES] = 1.0f
            SPLINE_POSITION[NB_SAMPLES] = SPLINE_TIME[NB_SAMPLES]
        }
    }
    /**
     * Returns the start X offset in the scroll.
     *
     * @return The start X offset as an absolute distance from the origin.
     */
    var startX: Int = 0
        private set
    /**
     * Returns the start Y offset in the scroll.
     *
     * @return The start Y offset as an absolute distance from the origin.
     */
    var startY: Int = 0
        private set
    /**
     * Returns the current velocity.
     *
     * @return The original velocity less the deceleration. Result may be
     * negative.
     */
    val currVelocity: Float
        get() = if (mMode == FLING_MODE)
            mCurrVelocity
        else
            mVelocity - mDeceleration * timePassed() / 2000.0f
    /**
     * Returns where the scroll will end. Valid only for "fling" scrolls.
     *
     * @return The final X offset as an absolute distance from the origin.
     */
    /**
     * Sets the final position (X) for this scroller.
     *
     * @param newX The new X offset as an absolute distance from the origin.
     * @see .extendDuration
     * @see .setFinalY
     */
    var finalX: Int
        get() = mFinalX
        set(newX) {
            mFinalX = newX
            mDeltaX = (mFinalX - startX).toFloat()
            isFinished = false
        }
    /**
     * Returns where the scroll will end. Valid only for "fling" scrolls.
     *
     * @return The final Y offset as an absolute distance from the origin.
     */
    /**
     * Sets the final position (Y) for this scroller.
     *
     * @param newY The new Y offset as an absolute distance from the origin.
     * @see .extendDuration
     * @see .setFinalX
     */
    var finalY: Int
        get() = mFinalY
        set(newY) {
            mFinalY = newY
            mDeltaY = (mFinalY - startY).toFloat()
            isFinished = false
        }
    /**
     * Returns the current X offset in the scroll.
     *
     * @return The new X offset as an absolute distance from the origin.
     */
    var currX: Int = 0
        private set
    /**
     * Returns the current Y offset in the scroll.
     *
     * @return The new Y offset as an absolute distance from the origin.
     */
    var currY: Int = 0
        private set
    /**
     * Returns how long the scroll event will take, in milliseconds.
     *
     * @return The duration of the scroll in milliseconds.
     */
    var duration: Int = 0
        private set
    /**
     *
     * Returns whether the scroller has finished scrolling.
     *
     * @return True if the scroller has finished scrolling, false otherwise.
     */
    var isFinished: Boolean = false
        private set
    private val mInterpolator: Interpolator
    private var mMode: Int = 0

    private var mFinalX: Int = 0
    private var mFinalY: Int = 0
    private var mMinX: Int = 0
    private var mMaxX: Int = 0
    private var mMinY: Int = 0
    private var mMaxY: Int = 0

    private var mStartTime: Long = 0

    private var mDurationReciprocal: Float = 0.toFloat()
    private var mDeltaX: Float = 0.toFloat()
    private var mDeltaY: Float = 0.toFloat()

    private var mVelocity: Float = 0.toFloat()
    private var mCurrVelocity: Float = 0.toFloat()
    private var mDistance: Int = 0
    private var mFlingFriction = ViewConfiguration.getScrollFriction()
    private var mDeceleration: Float = 0.toFloat()
    private val mPpi: Float
    // A context-specific coefficient adjusted to physical values.
    private val mPhysicalCoeff: Float
    private var mFlywheel: Boolean = false

    @JvmOverloads
    constructor(
        context: Context,
        interpolator: Interpolator? = null,
        flyWheel: Boolean = context.applicationInfo.targetSdkVersion >= Build.VERSION_CODES.HONEYCOMB
    ) {
        isFinished = true
        mFlywheel = flyWheel
        if (interpolator == null) {
            mInterpolator = ViscousFluidInterpolator()
        } else {
            mInterpolator = interpolator
        }
        mPpi = context.resources.displayMetrics.density * 160.0f
        mDeceleration = computeDeceleration(ViewConfiguration.getScrollFriction())
        mPhysicalCoeff = computeDeceleration(0.84f) // look and feel tuning
    }

    /**
     * The amount of friction applied to flings. The default value
     * is [ViewConfiguration.getScrollFriction].
     *
     * @param friction A scalar dimension-less value representing the coefficient of
     * friction.
     */
    fun setFriction(friction: Float) {
        mDeceleration = computeDeceleration(friction)
        mFlingFriction = friction
    }

    private fun computeDeceleration(friction: Float): Float {
        return (SensorManager.GRAVITY_EARTH   // g (m/s^2)

            * 39.37f               // inch/meter

            * mPpi                 // pixels per inch

            * friction)
    }

    /**
     * Force the finished field to a particular value.
     *
     * @param finished The new finished value.
     */
    fun forceFinished(finished: Boolean) {
        isFinished = finished
    }

    /**
     * Call this when you want to know the new location.  If it returns true,
     * the animation is not yet finished.
     */
    fun computeScrollOffset(): Boolean {
        if (isFinished) {
            return false
        }
        val timePassed = (AnimationUtils.currentAnimationTimeMillis() - mStartTime).toInt()

        if (timePassed < duration) {
            when (mMode) {
                SCROLL_MODE -> {
                    val x = mInterpolator.getInterpolation(timePassed * mDurationReciprocal)
                    currX = startX + Math.round(x * mDeltaX)
                    currY = startY + Math.round(x * mDeltaY)
                }
                FLING_MODE -> {
                    val t = timePassed.toFloat() / duration
                    val index = (NB_SAMPLES * t).toInt()
                    var distanceCoef = 1f
                    var velocityCoef = 0f
                    if (index < NB_SAMPLES) {
                        val t_inf = index.toFloat() / NB_SAMPLES
                        val t_sup = (index + 1).toFloat() / NB_SAMPLES
                        val d_inf = SPLINE_POSITION[index]
                        val d_sup = SPLINE_POSITION[index + 1]
                        velocityCoef = (d_sup - d_inf) / (t_sup - t_inf)
                        distanceCoef = d_inf + (t - t_inf) * velocityCoef
                    }
                    mCurrVelocity = velocityCoef * mDistance / duration * 1000.0f

                    currX = startX + Math.round(distanceCoef * (mFinalX - startX))
                    // Pin to mMinX <= mCurrX <= mMaxX
                    currX = Math.min(currX, mMaxX)
                    currX = Math.max(currX, mMinX)

                    currY = startY + Math.round(distanceCoef * (mFinalY - startY))
                    // Pin to mMinY <= mCurrY <= mMaxY
                    currY = Math.min(currY, mMaxY)
                    currY = Math.max(currY, mMinY)
                    if (currX == mFinalX && currY == mFinalY) {
                        isFinished = true
                    }
                }
            }
        } else {
            currX = mFinalX
            currY = mFinalY
            isFinished = true
        }
        return true
    }

    /**
     * Start scrolling by providing a starting point, the distance to travel,
     * and the duration of the scroll.
     *
     * @param startX Starting horizontal scroll offset in pixels. Positive
     * numbers will scroll the content to the left.
     * @param startY Starting vertical scroll offset in pixels. Positive numbers
     * will scroll the content up.
     * @param dx Horizontal distance to travel. Positive numbers will scroll the
     * content to the left.
     * @param dy Vertical distance to travel. Positive numbers will scroll the
     * content up.
     * @param duration Duration of the scroll in milliseconds.
     */
    @JvmOverloads
    fun startScroll(startX: Int, startY: Int, dx: Int, dy: Int, duration: Int = DEFAULT_DURATION) {
        mMode = SCROLL_MODE
        isFinished = false
        this.duration = duration
        mStartTime = AnimationUtils.currentAnimationTimeMillis()
        this.startX = startX
        this.startY = startY
        mFinalX = startX + dx
        mFinalY = startY + dy
        mDeltaX = dx.toFloat()
        mDeltaY = dy.toFloat()
        mDurationReciprocal = 1.0f / this.duration.toFloat()
    }

    /**
     * Start scrolling based on a fling gesture. The distance travelled will
     * depend on the initial velocity of the fling.
     *
     * @param startX Starting point of the scroll (X)
     * @param startY Starting point of the scroll (Y)
     * @param velocityX Initial velocity of the fling (X) measured in pixels per
     * second.
     * @param velocityY Initial velocity of the fling (Y) measured in pixels per
     * second
     * @param minX Minimum X value. The scroller will not scroll past this
     * point.
     * @param maxX Maximum X value. The scroller will not scroll past this
     * point.
     * @param minY Minimum Y value. The scroller will not scroll past this
     * point.
     * @param maxY Maximum Y value. The scroller will not scroll past this
     * point.
     */
    fun fling(startX: Int, startY: Int, velocityX: Int, velocityY: Int,
              minX: Int, maxX: Int, minY: Int, maxY: Int) {
        var velocityX = velocityX
        var velocityY = velocityY
        // Continue a scroll or fling in progress
        if (mFlywheel && !isFinished) {
            val oldVel = currVelocity
            val dx = (mFinalX - this.startX).toFloat()
            val dy = (mFinalY - this.startY).toFloat()
            val hyp = Math.hypot(dx.toDouble(), dy.toDouble()).toFloat()
            val ndx = dx / hyp
            val ndy = dy / hyp
            val oldVelocityX = ndx * oldVel
            val oldVelocityY = ndy * oldVel
            if (Math.signum(velocityX.toFloat()) == Math.signum(oldVelocityX) && Math.signum(velocityY.toFloat()) == Math.signum(oldVelocityY)) {
                velocityX += oldVelocityX.toInt()
                velocityY += oldVelocityY.toInt()
            }
        }
        mMode = FLING_MODE
        isFinished = false
        val velocity = Math.hypot(velocityX.toDouble(), velocityY.toDouble()).toFloat()

        mVelocity = velocity
        duration = getSplineFlingDuration(velocity)
        mStartTime = AnimationUtils.currentAnimationTimeMillis()
        this.startX = startX
        this.startY = startY
        val coeffX = if (velocity == 0f) 1.0f else velocityX / velocity
        val coeffY = if (velocity == 0f) 1.0f else velocityY / velocity
        val totalDistance = getSplineFlingDistance(velocity)
        mDistance = (totalDistance * Math.signum(velocity)).toInt()

        mMinX = minX
        mMaxX = maxX
        mMinY = minY
        mMaxY = maxY
        mFinalX = startX + Math.round(totalDistance * coeffX).toInt()
        // Pin to mMinX <= mFinalX <= mMaxX
        mFinalX = Math.min(mFinalX, mMaxX)
        mFinalX = Math.max(mFinalX, mMinX)

        mFinalY = startY + Math.round(totalDistance * coeffY).toInt()
        // Pin to mMinY <= mFinalY <= mMaxY
        mFinalY = Math.min(mFinalY, mMaxY)
        mFinalY = Math.max(mFinalY, mMinY)
    }

    private fun getSplineDeceleration(velocity: Float): Double {
        return Math.log((INFLEXION * Math.abs(velocity) / (mFlingFriction * mPhysicalCoeff)).toDouble())
    }

    private fun getSplineFlingDuration(velocity: Float): Int {
        val l = getSplineDeceleration(velocity)
        val decelMinusOne = DECELERATION_RATE - 1.0
        return (1000.0 * Math.exp(l / decelMinusOne)).toInt()
    }

    private fun getSplineFlingDistance(velocity: Float): Double {
        val l = getSplineDeceleration(velocity)
        val decelMinusOne = DECELERATION_RATE - 1.0
        return mFlingFriction.toDouble() * mPhysicalCoeff.toDouble() * Math.exp(DECELERATION_RATE / decelMinusOne * l)
    }

    /**
     * Stops the animation. Contrary to [.forceFinished],
     * aborting the animating cause the scroller to move to the final x and y
     * position
     *
     * @see .forceFinished
     */
    fun abortAnimation() {
        currX = mFinalX
        currY = mFinalY
        isFinished = true
    }

    /**
     * Extend the scroll animation. This allows a running animation to scroll
     * further and longer, when used with [.setFinalX] or [.setFinalY].
     *
     * @param extend Additional time to scroll in milliseconds.
     * @see .setFinalX
     * @see .setFinalY
     */
    fun extendDuration(extend: Int) {
        val passed = timePassed()
        duration = passed + extend
        mDurationReciprocal = 1.0f / duration
        isFinished = false
    }

    /**
     * Returns the time elapsed since the beginning of the scrolling.
     *
     * @return The elapsed time in milliseconds.
     */
    fun timePassed(): Int {
        return (AnimationUtils.currentAnimationTimeMillis() - mStartTime).toInt()
    }

    /**
     * @hide
     */
    fun isScrollingInDirection(xvel: Float, yvel: Float): Boolean {
        return !isFinished && Math.signum(xvel) == Math.signum((mFinalX - startX).toFloat()) &&
            Math.signum(yvel) == Math.signum((mFinalY - startY).toFloat())
    }

    internal class ViscousFluidInterpolator : Interpolator {
        companion object {
            /** Controls the viscous fluid effect (how much of it).  */
            private const val VISCOUS_FLUID_SCALE = 8.0f
            private val VISCOUS_FLUID_NORMALIZE: Float
            private val VISCOUS_FLUID_OFFSET: Float

            init {
                // must be set to 1.0 (used in viscousFluid())
                VISCOUS_FLUID_NORMALIZE = 1.0f / viscousFluid(1.0f)
                // account for very small floating-point error
                VISCOUS_FLUID_OFFSET = 1.0f - VISCOUS_FLUID_NORMALIZE * viscousFluid(1.0f)
            }

            private fun viscousFluid(x: Float): Float {
                var x = x
                x *= VISCOUS_FLUID_SCALE
                if (x < 1.0f) {
                    x -= 1.0f - Math.exp((-x).toDouble()).toFloat()
                } else {
                    val start = 0.36787944117f   // 1/e == exp(-1)
                    x = 1.0f - Math.exp((1.0f - x).toDouble()).toFloat()
                    x = start + x * (1.0f - start)
                }
                return x
            }
        }

        override fun getInterpolation(input: Float): Float {
            val interpolated = VISCOUS_FLUID_NORMALIZE * viscousFluid(input)
            return if (interpolated > 0) {
                interpolated + VISCOUS_FLUID_OFFSET
            } else interpolated
        }
    }
}
```

## File: src/main/java/com/microsoft/fluentui/view/WrapContentViewPager.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentui.view

import android.animation.Animator
import android.animation.ObjectAnimator
import android.content.Context
import androidx.viewpager.widget.ViewPager
import android.util.AttributeSet
import android.util.Property
import android.view.View
import android.view.ViewGroup

/**
 * [WrapContentViewPager] sets and handles changes to the layout height property of ViewPager content
 */
class WrapContentViewPager : ViewPager {
    companion object {
        private val heightProperty = object : Property<View, Int>(Int::class.java, "height") {
            override fun set(`object`: View, value: Int?) {
                value?.let {
                    val lp = `object`.layoutParams
                    lp.height = value
                    `object`.layoutParams = lp
                }
            }

            override fun get(`object`: View): Int = `object`.measuredHeight
        }
    }

    var currentObject: Any? = null
    var shouldWrapContent: Boolean = true
        set(value) {
            if (field != value) {
                field = value

                if (shouldWrapContent && layoutParams != null) {
                    val lp = layoutParams
                    lp.height = ViewGroup.LayoutParams.WRAP_CONTENT
                    layoutParams = lp
                }
            }
        }

    private var animator: ObjectAnimator? = null

    private val currentView: View?
        get() {
            val adapter = adapter ?: return null
            val currentObject = currentObject ?: return null
            for (i in 0 until childCount) {
                val child = getChildAt(i)
                if (adapter.isViewFromObject(child, currentObject))
                    return child
            }
            return null
        }

    @JvmOverloads
    constructor(context: Context, attrs: AttributeSet? = null) : super(context, attrs)

    fun smoothlyResize(targetHeight: Int, listener: Animator.AnimatorListener?) {
        animator?.removeAllListeners()
        animator?.cancel()

        shouldWrapContent = false
        animator = ObjectAnimator.ofInt(this, heightProperty, heightProperty.get(this), targetHeight)
        if (listener != null)
            animator?.addListener(listener)

        animator?.start()
    }

    override fun onScrollChanged(newX: Int, newY: Int, oldX: Int, oldY: Int) {
        if (newX > oldX)
            animator?.cancel()

        super.onScrollChanged(newX, newY, oldX, oldY)
    }

    override fun onMeasure(widthMeasureSpec: Int, heightMeasureSpec: Int) {
        var heightMeasureSpec = heightMeasureSpec
        if (shouldWrapContent) {
            val mode = View.MeasureSpec.getMode(heightMeasureSpec)
            val currentView = currentView
            if (currentView != null && mode != View.MeasureSpec.EXACTLY) {
                if (mode == View.MeasureSpec.UNSPECIFIED) {
                    currentView.measure(widthMeasureSpec, View.MeasureSpec.makeMeasureSpec(0, View.MeasureSpec.UNSPECIFIED))
                } else {
                    val size = View.MeasureSpec.getSize(heightMeasureSpec)
                    currentView.measure(widthMeasureSpec, View.MeasureSpec.makeMeasureSpec(size, View.MeasureSpec.AT_MOST))
                }
                heightMeasureSpec = View.MeasureSpec.makeMeasureSpec(currentView.measuredHeight, View.MeasureSpec.EXACTLY)
            }
        }

        super.onMeasure(widthMeasureSpec, heightMeasureSpec)
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
    <!--CalendarView-->
    <attr name="fluentuiCalendarBackgroundColor" format="reference|color"/>
    <attr name="fluentuiCalendarWeekHeadingBackgroundColor" format="reference|color"/>
    <attr name="fluentuiCalendarWeekHeadingWeekDayTextColor" format="reference|color"/>
    <attr name="fluentuiCalendarWeekHeadingWeekendTextColor" format="reference|color"/>
    <attr name="fluentuiCalendarMonthOverlayBackgroundColor" format="reference|color"/>
    <attr name="fluentuiCalendarMonthOverlayTextColor" format="reference|color"/>
    <attr name="fluentuiCalendarOtherMonthBackgroundColor" format="reference|color"/>
    <attr name="fluentuiCalendarSelectedColor" format="reference|color"/>
    <attr name="fluentuiCalendarDayTodayBackgroundColor" format="reference|color"/>

    <!--day selector-->
    <attr name="fluentuiCalendarDayTextActiveColor" format="reference|color"/>
    <attr name="fluentuiCalendarDayTextActiveCheckedColor" format="reference|color"/>
    <attr name="fluentuiCalendarDayTextInactiveCheckedColor" format="reference|color"/>
    <attr name="fluentuiCalendarDayTextDefaultColor" format="reference|color"/>
    <attr name="fluentuiCalendarDayKeyboardFocusTextColor" format="reference|color"/>

    <!--DateTimePicker-->
    <attr name="fluentuiDateTimePickerToolbarTitleTextColor" format="reference|color"/>
    <attr name="fluentuiDateTimePickerTabTextColor" format="reference|color"/>
    <attr name="fluentuiDateTimePickerDialogBackgroundColor" format="reference|color"/>
    <attr name="fluentuiDateTimePickerToolbarIconColor" format="reference|color"/>

    <!--Dialog-->
    <attr name="fluentuiDialogBackgroundColor" format="reference|color"/>
    <attr name="fluentuiDialogCloseIconColor" format="reference|color"/>
    <attr name="fluentuiDialogTabLayoutBackgroundColor" format="reference|color"/>

    <!--Dialog TabLayout-->
    <attr name="fluentuiDialogTabTextColor" format="reference|color"/>
    <attr name="fluentuiDialogTabSelectedTextColor" format="reference|color"/>
    <attr name="fluentuiDialogTabIndicatorColor" format="reference|color"/>

    <!--NumberPicker-->
    <attr name="fluentuiNumberPickerBackgroundColor" format="reference|color"/>
    <attr name="fluentuiNumberPickerDefaultTextColor" format="reference|color"/>
    <attr name="fluentuiNumberPickerSelectedTextColor" format="reference|color"/>

    <!--common calendar Module attributes-->
    <attr name="fluentui_textAlign" format="enum">
        <enum name="left" value="0" />
        <enum name="center" value="1" />
        <enum name="right" value="2" />
    </attr>

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
    <!--CalendarView-->
    <dimen name="fluentui_calendar_week_day_font_size">16sp</dimen>
    <dimen name="fluentui_calendar_month_year_font_size">12sp</dimen>
    <dimen name="fluentui_calendar_week_heading_height">28dp</dimen>
    <dimen name="fluentui_calendar_month_overlay_text_size">20sp</dimen>
    <dimen name="fluentui_calendar_weeks_max_width">336dp</dimen>
    <dimen name="fluentui_calendar_day_selection_size">36dp</dimen>
    <dimen name="fluentui_calendar_day_keyboard_focus_stroke_width">1dp</dimen>

    <!--DatePickerFragment-->

    <!--DateTimePicker-->
    <dimen name="fluentui_date_time_picker_padding">16dp</dimen>
    <dimen name="fluentui_date_time_picker_date_internal_min_width">160dp</dimen>
    <dimen name="fluentui_date_time_picker_month_internal_min_width">100dp</dimen>
    <dimen name="fluentui_date_time_picker_year_internal_min_width">80dp</dimen>
    <dimen name="fluentui_date_time_picker_fading_edge_length">100dp</dimen>
    <dimen name="fluentui_date_time_picker_internal_min_width">48dp</dimen>
    <dimen name="fluentui_date_time_picker_max_height">336dp</dimen>
    <dimen name="fluentui_date_time_picker_padding_right">8dp</dimen>
    <dimen name="fluentui_date_time_picker_toolbar_elevation">4dp</dimen>

    <!--Dialog-->
    <dimen name="fluentui_dialog_insets">@dimen/fluentui_content_inset</dimen>
    <dimen name="fluentui_resizable_dialog_card_elevation">2dp</dimen>

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


    <!--DateTimePickerDialog-->
    <style name="DateTimePickerDialog.Toolbar" parent="@style/ThemeOverlay.AppCompat">
        <item name="android:colorControlHighlight">?attr/fluentuiBackgroundPressedColor</item>
    </style>
    <style name="Base.Widget.FluentUI.DateTimePickerDialog.DateTimeRange.TabLayout" parent="Widget.FluentUI.Dialog.TabLayout">
        <item name="tabGravity">fill</item>
        <item name="tabMode">fixed</item>
    </style>
    <style name="Widget.FluentUI.DateTimePickerDialog.DateTimeRange.TabLayout" parent="Base.Widget.FluentUI.DateTimePickerDialog.DateTimeRange.TabLayout" />
    <!--Dialog-->
    <style name="Dialog.FluentUI" parent="@style/Theme.AppCompat.Light.Dialog.Alert">
        <item name="android:windowBackground">@android:color/transparent</item>
        <item name="android:colorBackground">?attr/fluentuiDialogBackgroundColor</item>
        <item name="android:colorBackgroundCacheHint">?attr/fluentuiDialogBackgroundColor</item>
        <item name="android:textAppearance">@style/TextAppearance.FluentUI.Title1</item>
    </style>
    <style name="Widget.FluentUI.Dialog.TabLayout" parent="Widget.Design.TabLayout">
        <item name="tabGravity">center</item>
        <item name="tabMode">scrollable</item>
        <item name="tabTextAppearance">@style/TextAppearance.FluentUI.Dialog.Tab.Light</item>
        <item name="tabMinWidth">90dp</item>
        <item name="tabSelectedTextColor">?attr/fluentuiDialogTabSelectedTextColor</item>
        <item name="tabIndicatorColor">?attr/fluentuiDialogTabIndicatorColor</item>
        <item name="android:background">?attr/fluentuiDialogTabLayoutBackgroundColor</item>
        <item name="tabRippleColor">?fluentuiBackgroundPressedColor</item>
    </style>

    <!--NumberPicker-->
    <style name="Widget.FluentUI.NumberPicker">
        <item name="android:orientation">vertical</item>
        <item name="android:requiresFadingEdge">vertical</item>
        <item name="android:fadingEdgeLength">@dimen/fluentui_date_time_picker_fading_edge_length</item>
        <item name="fluentui_solidColor">@android:color/transparent</item>
        <item name="fluentui_internalMinWidth">@dimen/fluentui_date_time_picker_internal_min_width</item>
        <item name="fluentui_internalMaxHeight">@dimen/fluentui_date_time_picker_max_height</item>
        <item name="fluentui_selectorWheelItemCount">@integer/fluentui_number_picker_selector_wheel_item_count</item>
        <item name="fluentui_textAlign">center</item>
        <item name="android:paddingRight">@dimen/fluentui_date_time_picker_padding_right</item>
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
    <style name="Theme.FluentUI.Calendar.Base" parent="Base.Theme.FluentUI">

        <!--CalendarView-->
        <item name="fluentuiCalendarBackgroundColor">?attr/fluentuiBackgroundColor</item>
        <item name="fluentuiCalendarWeekHeadingBackgroundColor">?attr/fluentuiBackgroundColor</item>
        <item name="fluentuiCalendarWeekHeadingWeekDayTextColor">?attr/fluentuiForegroundSecondaryColor</item>
        <item name="fluentuiCalendarWeekHeadingWeekendTextColor">@color/fluentui_gray_400</item>
        <item name="fluentuiCalendarMonthOverlayBackgroundColor">?attr/fluentuiBackgroundColor</item>
        <item name="fluentuiCalendarMonthOverlayTextColor">?attr/fluentuiForegroundColor</item>
        <item name="fluentuiCalendarOtherMonthBackgroundColor">@color/fluentui_gray_25</item>
        <item name="fluentuiCalendarSelectedColor">?attr/fluentuiForegroundSelectedColor</item>
        <item name="fluentuiCalendarDayTodayBackgroundColor">?attr/fluentuiColorPrimaryLighter</item>

        <!--day selector-->
        <item name="fluentuiCalendarDayTextActiveColor">?attr/fluentuiForegroundSelectedColor</item>
        <item name="fluentuiCalendarDayTextActiveCheckedColor">?attr/fluentuiForegroundOnPrimaryColor</item>
        <item name="fluentuiCalendarDayTextInactiveCheckedColor">?attr/fluentuiForegroundOnPrimaryColor</item>
        <item name="fluentuiCalendarDayTextDefaultColor">?attr/fluentuiForegroundSecondaryColor</item>
        <item name="fluentuiCalendarDayKeyboardFocusTextColor">@color/fluentui_gray_600</item>

        <!--DateTimePicker-->
        <item name="fluentuiDateTimePickerToolbarTitleTextColor">?attr/colorPrimary</item>
        <item name="fluentuiDateTimePickerTabTextColor">?attr/fluentuiForegroundSecondaryColor</item>
        <item name="fluentuiDateTimePickerDialogBackgroundColor">?attr/fluentuiDialogBackgroundColor</item>
        <item name="fluentuiDateTimePickerToolbarIconColor">?attr/colorPrimary</item>

        <!--Dialog-->
        <item name="fluentuiDialogBackgroundColor">?attr/fluentuiBackgroundColor</item>
        <item name="fluentuiDialogCloseIconColor">?attr/colorPrimary</item>
        <item name="fluentuiDialogTabLayoutBackgroundColor">?attr/fluentuiDialogBackgroundColor</item>


        <!--NumberPicker-->
        <item name="fluentuiNumberPickerBackgroundColor">?attr/fluentuiBackgroundColor</item>
        <item name="fluentuiNumberPickerDefaultTextColor">?attr/fluentuiForegroundSecondaryColor</item>
        <item name="fluentuiNumberPickerSelectedTextColor">?attr/fluentuiForegroundSelectedColor</item>

        <!--TabLayout Dialog-->
        <item name="fluentuiDialogTabTextColor">?attr/fluentuiForegroundSecondaryColor</item>
        <item name="fluentuiDialogTabSelectedTextColor">?attr/fluentuiForegroundSelectedColor</item>
        <item name="fluentuiDialogTabIndicatorColor">?attr/fluentuiForegroundSelectedColor</item>

    </style>

    <style name="Theme.FluentUI.Calendar" parent="Theme.FluentUI.Calendar.Base"/>

</resources>
```
