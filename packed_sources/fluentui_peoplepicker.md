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
src/main/java/com/microsoft/fluentui/peoplepicker/CenterVerticalSpan.kt
src/main/java/com/microsoft/fluentui/peoplepicker/PeoplePickerAccessibilityTextProvider.kt
src/main/java/com/microsoft/fluentui/peoplepicker/PeoplePickerTextView.kt
src/main/java/com/microsoft/fluentui/peoplepicker/PeoplePickerTextViewAdapter.kt
src/main/java/com/microsoft/fluentui/peoplepicker/PeoplePickerView.kt
src/main/java/com/microsoft/fluentui/tokenautocomplete/CharacterTokenizer.java
src/main/java/com/microsoft/fluentui/tokenautocomplete/CountSpan.java
src/main/java/com/microsoft/fluentui/tokenautocomplete/FilteredArrayAdapter.java
src/main/java/com/microsoft/fluentui/tokenautocomplete/HintSpan.java
src/main/java/com/microsoft/fluentui/tokenautocomplete/TokenCompleteTextView.java
src/main/java/com/microsoft/fluentui/tokenautocomplete/ViewSpan.java
src/main/java/com/microsoft/fluentui/tokenized/peoplepicker/PeoplePicker.kt
src/main/res/values/attrs.xml
src/main/res/values/dimens.xml
src/main/res/values/themes.xml
```

# Files

## File: src/main/java/com/microsoft/fluentui/peoplepicker/CenterVerticalSpan.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentui.peoplepicker

import android.graphics.Rect
import android.text.TextPaint
import android.text.style.MetricAffectingSpan

/**
 * [CenterVerticalSpan] shifts the baseline of a substring to the center of the text paint bounds.
 * This class comes in handy when you have a substring that is taller or shorter than the rest of your text
 * and you need to center it vertically. It compares the [substringBounds] of your substring to the text paint bounds
 * and shifts the baseline accordingly.
 */
internal class CenterVerticalSpan(private val substringBounds: Rect) : MetricAffectingSpan() {
    override fun updateDrawState(tp: TextPaint) {
        shiftBaselineToCenter(tp)
    }

    override fun updateMeasureState(tp: TextPaint) {
        shiftBaselineToCenter(tp)
    }

    private fun shiftBaselineToCenter(tp: TextPaint) {
        val topDifference = tp.fontMetrics.top - substringBounds.top
        tp.baselineShift += (topDifference / 2).toInt()
    }
}
```

## File: src/main/java/com/microsoft/fluentui/peoplepicker/PeoplePickerAccessibilityTextProvider.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentui.peoplepicker

import android.content.res.Resources
import com.microsoft.fluentui.persona.IPersona

/**
 * Customizes text announced by the screen reader for PeoplePickerTextView.
 */
open class PeoplePickerAccessibilityTextProvider(val resources: Resources) {
    /**
     * Announces when the popup opens showing the list of suggested personas.
     */
    open fun getPersonaSuggestionsOpenedText(personas: ArrayList<IPersona>): String =
        resources.getQuantityString(
            R.plurals.people_picker_accessibility_suggestions_opened,
            personas.size,
            personas.size
        )

    /**
     * Announces how many personas are in the currently focused PeoplePickerTextView.
     */
    open fun getPersonaQuantityText(personas: ArrayList<IPersona>): String =
        resources.getQuantityString(
            R.plurals.people_picker_accessibility_text_view,
            personas.size,
            personas.size
        )

    /**
     * Announced any time a specific persona has focus or receives an event.
     */
    open fun getPersonaDescription(persona: IPersona): String =
        getDefaultPersonaDescription(persona)

    internal fun getDefaultPersonaDescription(persona: IPersona): String =
        if (persona.name.isNotEmpty()) persona.name else persona.email
}
```

## File: src/main/java/com/microsoft/fluentui/peoplepicker/PeoplePickerTextView.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentui.peoplepicker

import android.content.ClipData
import android.content.ClipDescription
import android.content.Context
import android.graphics.Paint
import android.graphics.Rect
import android.graphics.drawable.ColorDrawable
import android.os.Build
import android.os.Bundle
import androidx.core.view.ViewCompat
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat
import androidx.customview.widget.ExploreByTouchHelper
import android.text.*
import android.text.method.MovementMethod
import android.text.style.TextAppearanceSpan
import android.text.util.Rfc822Token
import android.text.util.Rfc822Tokenizer
import android.util.AttributeSet
import android.util.Patterns
import android.view.DragEvent
import android.view.GestureDetector
import android.view.MotionEvent
import android.view.View
import android.view.KeyEvent
import android.view.ViewGroup.LayoutParams.WRAP_CONTENT
import android.view.accessibility.AccessibilityEvent
import android.view.accessibility.AccessibilityNodeInfo
import android.view.inputmethod.InputMethodManager
import android.widget.LinearLayout
import android.widget.MultiAutoCompleteTextView
import androidx.core.content.ContextCompat
import com.microsoft.fluentui.persona.IPersona
import com.microsoft.fluentui.persona.PersonaChipView
import com.microsoft.fluentui.persona.setPersona
import com.microsoft.fluentui.util.ThemeUtil
import com.microsoft.fluentui.util.getTextSize
import com.microsoft.fluentui.util.inputMethodManager
import com.microsoft.fluentui.tokenautocomplete.CountSpan
import com.microsoft.fluentui.tokenautocomplete.TokenCompleteTextView
import kotlin.math.max

enum class PeoplePickerPersonaChipClickStyle(internal val tokenClickStyle: TokenCompleteTextView.TokenClickStyle) {
    // Do nothing, but make sure the cursor is not in the persona chip.
    NONE(TokenCompleteTextView.TokenClickStyle.None),
    // Delete the persona chip.
    DELETE(TokenCompleteTextView.TokenClickStyle.Delete),
    // Select the persona chip. A second click will delete it.
    SELECT(TokenCompleteTextView.TokenClickStyle.Select),
    // Select the persona chip. A second click will deselect it.
    SELECT_DESELECT(TokenCompleteTextView.TokenClickStyle.SelectDeselect)
}

/**
 * [PeoplePickerTextView] provides all of the functionality needed to add [PersonaChipView]s as [tokens]
 * into an [EditText] view.
 *
 * Functionality we add in addition to [TokenCompleteTextView]'s functionality includes:
 * - Click api for SELECT_DESELECT persona chips
 * - Drag and drop option
 * - Accessibility
 * - Hiding the cursor when a persona chip is selected
 * - Styling the [CountSpan]
 *
 * TODO Known issues:
 * - Using backspace to delete a selected token does not work if other text is entered in the input;
 * [TokenCompleteTextView] overrides [onCreateInputConnection] which blocks our ability to control this functionality.
 */
internal class PeoplePickerTextView :
    TokenCompleteTextView<IPersona> {
    companion object {
        // Max number of personas the screen reader will announce on focus.
        private const val MAX_PERSONAS_TO_READ = 3
        private const val BACKGROUND_DRAG_ALPHA = 75
        // Removes constraints to the input field
        private val noFilters = arrayOfNulls<InputFilter>(0)
        // Constrains changes that can be made to the input field to none
        private val blockInputFilters = arrayOf(InputFilter { _, _, _, _, _, _ -> "" })
    }

    /**
     * Defines what happens when a user clicks on a persona chip.
     */
    var personaChipClickStyle: PeoplePickerPersonaChipClickStyle =
        PeoplePickerPersonaChipClickStyle.SELECT
        set(value) {
            field = value
            setTokenClickStyle(value.tokenClickStyle)
        }
    /**
     * Flag for enabling Drag and Drop persona chips.
     */
    var allowPersonaChipDragAndDrop: Boolean = false
    /**
     * This will automatically remove persona chips from your text view, but you will need to do extra
     * filtering work to ensure duplicates don't end up in your dropdown list.
     */
    var allowDuplicatePersonaChips: Boolean = false
        set(value) {
            field = value
            allowDuplicates(value)
        }
    /**
     * Limits the total number of persona chips that can be added to the field.
     */
    var personaChipLimit: Int = -1
        set(value) {
            field = value
            setTokenLimit(value)
        }
    /**
     * Store the hint so that we can control when it is announced for accessibility.
     * [PeoplePickerView.showHint] will also display the hint.
     */
    var valueHint: CharSequence = ""
        set(value) {
            field = value
            hint = value
        }
    /**
     * This proxy for [setThreshold] allows a threshold of 0 input characters.
     */
    var characterThreshold: Int = 1
        set(value) {
            field = max(0, value)
            threshold = characterThreshold
        }

    var allowCollapse: Boolean = true
        set(value) {
            field = value
            allowCollapse(value)
        }

    /**
     * When a persona chip with a [PeoplePickerPersonaChipClickStyle] of SELECT_DESELECT is selected,
     * the next touch will fire [PersonaChipClickListener.onClick].
     */
    var personaChipClickListener: PeoplePickerView.PersonaChipClickListener? = null
    lateinit var onCreatePersona: (name: String, email: String) -> IPersona

    val countSpanStart: Int
        get() = text.indexOfFirst { it == '+' }
    private val countSpanEnd: Int
        get() = text.length

    private val accessibilityTouchHelper = AccessibilityTouchHelper(this)
    private var blockedMovementMethod: MovementMethod? = null
    private var gestureDetector: GestureDetector
    private val hiddenPersonaSpans = ArrayList<TokenImageSpan>()
    private val lastPositionForSingleLine: Int
        get() {
            if (layout == null)
                onPreDraw()

            return layout.getLineVisibleEnd(0)
        }
    // Keep track of persona selection for accessibility events
    private var selectedPersona: IPersona? = null
        set(value) {
            field = value
            if (value != null)
                blockInput()
            else
                unblockInput()
        }
    private var shouldAnnouncePersonaAdditionMap = mutableMapOf<IPersona, Boolean>()
    private var shouldAnnouncePersonaRemovalMap = mutableMapOf<IPersona, Boolean>()
    private var searchConstraint: CharSequence = ""
    private var lastSpan: TokenImageSpan? = null

    init {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O)
            importantForAutofill = View.IMPORTANT_FOR_AUTOFILL_NO_EXCLUDE_DESCENDANTS

        ViewCompat.setAccessibilityDelegate(this, accessibilityTouchHelper)
        super.setTokenListener(TokenListener(this))
        gestureDetector = GestureDetector(context, SimpleGestureListener())
        setLineSpacing(resources.getDimension(R.dimen.fluentui_people_picker_persona_chip_vertical_spacing), 1f)
    }

    // @JvmOverloads does not work in this scenario due to parameter defaults
    constructor(context: Context) : super(context)

    constructor(context: Context, attrs: AttributeSet) : super(context, attrs)

    constructor(context: Context, attrs: AttributeSet, defStyle: Int) : super(context, attrs, defStyle)

    override fun getViewForObject(`object`: IPersona): View {
        val view = PersonaChipView(context)
        view.showCloseIconWhenSelected = personaChipClickStyle == PeoplePickerPersonaChipClickStyle.SELECT
        view.listener = object : PersonaChipView.Listener {
            override fun onClicked() {
                // no op
            }

            override fun onSelected(selected: Boolean) {
                if (selected)
                    selectedPersona = `object`
                else
                    selectedPersona = null
            }
        }
        view.setPersona(`object`)
        return view
    }

    private fun getViewForObjectWithSpace(`object`: IPersona, marginStart: Int): View {
        val view = getViewForObject(`object`)
        val layout = LinearLayout(context)
        val layoutParam: LinearLayout.LayoutParams = LinearLayout.LayoutParams(WRAP_CONTENT, WRAP_CONTENT)
        layoutParam.marginStart = marginStart
        view.layoutParams = layoutParam
        layout.addView(view, layoutParam)
        return layout
    }

    override fun defaultObject(completionText: String): IPersona? {
        if (completionText.isEmpty() || !isEmailValid(completionText))
            return null

        return onCreatePersona("", completionText)
    }

    override fun buildSpanForObject(obj: IPersona): TokenImageSpan {
        // This ensures that persona spans will be short enough to leave room for the count span.
        val countSpanWidth = resources.getDimension(R.dimen.fluentui_people_picker_count_span_width).toInt()
        lastSpan = TokenImageSpan(getViewForObject(obj), obj, maxTextWidth().toInt() - countSpanWidth)
        return lastSpan as TokenImageSpan
    }

    override fun onLayout(changed: Boolean, left: Int, top: Int, right: Int, bottom: Int) {
        super.onLayout(changed, left, top, right, bottom)

        if (changed)
            performCollapseAndAdjustLayout(hasFocus())
    }

    override fun performCollapse(hasFocus: Boolean) {
        // super.performCollapse is limited to handling focus changes. We adapted the method to handle layout changes as well.
        performCollapseAndAdjustLayout(hasFocus)
    }

    override fun onFocusChanged(hasFocus: Boolean, direction: Int, previous: Rect?) {
        super.onFocusChanged(hasFocus, direction, previous)

        // Soft keyboard does not always show up when the view first loads without this
        if (hasFocus) {
            // add bottom border
            this.background = ContextCompat.getDrawable(context, R.drawable.people_picker_textview_focusable_background)
            post {
                context.inputMethodManager.showSoftInput(this, InputMethodManager.SHOW_IMPLICIT)
            }
        } else {
            // remove bottom border
            this.background = null
        }

        /**
        * Along with [enoughToFilter], this is a work around for AutoCompleteTextView preventing filtering when no characters are input.
        */
        if (hasFocus && characterThreshold == 0)
            post {
                showDropDown()
                requestLayout()
            }
    }

    override fun onKeyUp(keyCode: Int, event: KeyEvent): Boolean {
        val handled = super.onKeyUp(keyCode, event)
        if(!handled && keyCode == KeyEvent.KEYCODE_TAB){
            if(!event.isShiftPressed) {
                val view = parent.focusSearch(this, FOCUS_FORWARD)
                return view?.requestFocus() ?: false
            }
        }
        return handled
    }

    // super.enoughToFilter() sometimes does not allow for showing suggestions when the threshold is 0.
    override fun enoughToFilter(): Boolean = characterThreshold == 0 || super.enoughToFilter()

    override fun onSelectionChanged(selStart: Int, selEnd: Int) {
        super.onSelectionChanged(selStart, selEnd)
        //TODO Bypassed lint error now. Check the comment:- super.onSelectionChanged is buggy, but we still need the accessibility event from the super super call.
        sendAccessibilityEvent(AccessibilityEvent.TYPE_VIEW_TEXT_SELECTION_CHANGED)
        // This fixes buggy cursor position in accessibility mode.
        // Cutting spans to the clipboard is not functional so this also prevents that operation from being an option.
        setSelection(text.length)
    }

    override fun onTextChanged(text: CharSequence?, start: Int, lengthBefore: Int, lengthAfter: Int) {
        super.onTextChanged(text, start, lengthBefore, lengthAfter)
        selectedPersona = null

        if (lengthAfter > lengthBefore || lengthAfter < lengthBefore && !text.isNullOrEmpty())
            setupSearchConstraint(text)
    }

    override fun replaceText(text: CharSequence?) {
        // Enforce personaChipLimit. TokenCompleteTextView enforces the limit for other scenarios.
        if (objects.size == personaChipLimit)
            return

        super.replaceText(text)
    }

    override fun canDeleteSelection(beforeLength: Int): Boolean {
        // This method is called from keyboard events so any token removed would be coming from the user.
        return super.canDeleteSelection(beforeLength)
    }

    override fun removeObject(`object`: IPersona?) {
        `object`?.let {
            shouldAnnouncePersonaRemovalMap[it] = false
            super.removeObject(it)
        }
    }

    override fun showDropDown() {
        dropDownHeight = getMaxAvailableHeight()
        super.showDropDown()
    }

    internal fun addObjects(personas: List<IPersona>?) {
        if (personas == null || personas.isEmpty())
            return

        personas.forEach {
            // Add the personas as hidden spans,
            // then performCollapseAndAdjustLayout will figure out which to add based on available space.
            hiddenPersonaSpans.add(buildSpanForObject(it))
        }
        // If personas are added during the initial load, performCollapseAndAdjustLayout will be called again from onLayout,
        // which is the call that will add the hidden spans once available space can be determined.
        performCollapseAndAdjustLayout(hasFocus())
    }

    internal fun removeObjects(personas: List<IPersona>?) {
        if (personas == null)
            return

        personas.forEach { removeObject(it) }
        removeCountSpan()
    }

    /**
     * Adapted from Android's PopupWindow.
     */
    private fun getMaxAvailableHeight(): Int {
        val displayFrame = Rect()
        getWindowVisibleDisplayFrame(displayFrame)

        val anchorLocationOnScreen = IntArray(2)
        getLocationOnScreen(anchorLocationOnScreen)

        val anchorTop = anchorLocationOnScreen[1]
        val distanceToBottom = displayFrame.bottom - (anchorTop + height)
        val distanceToTop = anchorTop - displayFrame.top
        var maxAvailableHeight = max(distanceToBottom, distanceToTop)

        if (dropDownBackground != null) {
            val backgroundPadding = Rect()
            dropDownBackground.getPadding(backgroundPadding)
            maxAvailableHeight -= backgroundPadding.top + backgroundPadding.bottom
        }

        return maxAvailableHeight
    }

    private fun setupSearchConstraint(text: CharSequence?) {
        accessibilityTouchHelper.invalidateRoot()
        val personaSpanEnd = text?.indexOfLast { it == ',' }?.plus(1) ?: -1
        searchConstraint = when {
            // Ignore the count span
            countSpanStart != -1 -> ""
            // If we have personas, we'll also have comma tokenizers to remove from the text
            personaSpanEnd > 0 -> text?.removeRange(text.indexOfFirst { it == ',' }, personaSpanEnd)?.trim() ?: ""
            // Any other characters will be used as the search constraint to perform filtering.
            else -> text ?: ""
        }
        // This keeps the entered text accessibility focused as the user types, which makes the suggested personas list the next focusable view.
        if (isFocused)
            accessibilityTouchHelper.sendEventForVirtualView(objects.size, AccessibilityEvent.TYPE_VIEW_ACCESSIBILITY_FOCUSED)
    }

    /**
     * Collapse the view by removing all the persona spans not on the first line.
     * Displays a "+x" count span representing the number of hidden persona spans.
     * Restores the hidden persona spans when the view gains focus.
     * Adjusts persona span layout when the view's layout changes.
     * Adapted from [performCollapse] in [TokenCompleteTextView].
     **/
    private fun performCollapseAndAdjustLayout(hasFocus: Boolean) {
        if (!hasFocus && allowCollapse) {
            val spansToHide = ArrayList<TokenImageSpan>()

            // Spans don't always fit their new space so we rebuild the spans in available space.
            rebuildPersonaSpans(lastPositionForSingleLine)
            // Remove persona spans that won't fit in a single line and save them to later be restored.
            hidePersonaSpansThatDontFit(spansToHide)

            // Sometimes we have room to restore the visibility of more hidden persona spans.
            // We know if we hid persona spans, we won't need to add any.
            if (spansToHide.isEmpty())
                addHiddenPersonaSpansThatFit()

            updateCountSpan()
        } else {
            removeCountSpan()
            rebuildPersonaSpans()

            // Restore the persona spans we have hidden.
            hiddenPersonaSpans.forEach { span ->
                // addObject does not work in this code block when in accessibility mode so we use insertPersonaSpan instead.
                // The persona still gets added to objects through the TokenSpanWatcher.
                shouldAnnouncePersonaAdditionMap[span.token] = false
                insertPersonaSpan(span.token)
            }

            hiddenPersonaSpans.clear()
        }
    }

    /**
     * Add a picked persona
     */
    fun addPickedPersona(persona: IPersona) {
        super.addObject(persona)
    }

    /**
     * Removes a persona from picked items
     */
    fun removePickedPersona(persona: IPersona) {
        shouldAnnouncePersonaRemovalMap[persona] = true
        super.removeObject(persona)
    }

    /**
     * Refreshes picked persona views, since there is no option to refresh the existing views and [invalidate] is not working,
     * so rebuilding all the spans again
     */
    fun refreshPickedPersonaViews() {
        rebuildPersonaSpans()
    }

    /**
     * Insert a new span for an object.
     * Adapted from [insertSpan] and [addObject] in [TokenCompleteTextView].
     * Because [addObject] is in a post runnable sometimes the timing is off,
     * which creates bugs for accessibility and adjusting layout of spans.
     */
    private fun insertPersonaSpan(persona: IPersona) {
        if (!allowDuplicatePersonaChips && objects.contains(persona))
            return
        if (objects.size == personaChipLimit)
            return

        var offset = text.length
        val completionText = currentCompletionText()
        // The user has entered some text that has not yet been tokenized.
        // Find the beginning of this text and insert the new token there.
        if (!completionText.isNullOrEmpty())
            offset = TextUtils.indexOf(text, completionText)

        // We use "," to be consistent with splitChar in TokenCompleteTextView.
        val spannableStringBuilder = SpannableStringBuilder("," + MultiAutoCompleteTextView.CommaTokenizer().terminateToken(""))
        val personaSpan = buildSpanForObject(persona)
        text.insert(offset, spannableStringBuilder)
        text.setSpan(personaSpan, offset, offset + spannableStringBuilder.length - 1, Spanned.SPAN_EXCLUSIVE_EXCLUSIVE)
    }

    private fun checkForIntersectionWithHinge(tokenImageSpan: TokenImageSpan) {
        if (layout == null) {
            return
        }
        val spanStart = text.getSpanStart(tokenImageSpan)
        val spanEnd = text.getSpanEnd(tokenImageSpan)
        val personaBound = calculateBounds(spanStart, spanEnd, 0)
        val parentTextViewLocation = intArrayOf(0, 0)
        getLocationInWindow(parentTextViewLocation)
        personaBound.left += parentTextViewLocation[0]
        personaBound.right += parentTextViewLocation[0]
        personaBound.top += parentTextViewLocation[1]
        personaBound.bottom += parentTextViewLocation[1]
    }

    // Persona spans don't always fit their new space so we rebuild the spans in available space.
    private fun rebuildPersonaSpans(end: Int = text.length) {
        // We can't cache this array without getting a crash from the generic types in API 19.
        getPersonaSpans<TokenCompleteTextView<IPersona>.TokenImageSpan>(end = end).forEach { personaSpan ->
            val rebuiltSpan = buildSpanForObject(personaSpan.token)
            shouldAnnouncePersonaRemovalMap[personaSpan.token] = false
            shouldAnnouncePersonaAdditionMap[rebuiltSpan.token] = false
            val spanStart = text.getSpanStart(personaSpan)
            val spanEnd = text.getSpanEnd(personaSpan)
            text.removeSpan(personaSpan)
            text.setSpan(rebuiltSpan, spanStart, spanEnd, Spanned.SPAN_EXCLUSIVE_EXCLUSIVE)
        }
    }

    private fun hidePersonaSpansThatDontFit(spansToHide: ArrayList<TokenImageSpan>) {
        // Take spans from the back and add them to the front to maintain persona position.
        for (span in getPersonaSpans<TokenCompleteTextView<IPersona>.TokenImageSpan>().reversed()) {
            if (text.getSpanStart(span) > lastPositionForSingleLine && !hiddenPersonaSpans.contains(span)) {
                spansToHide.add(span)
                hiddenPersonaSpans.add(0, span)
                removeObject(span.token)
            }
        }
    }

    private fun addHiddenPersonaSpansThatFit() {
        if (hiddenPersonaSpans.isEmpty())
            return

        val addedPersonaSpans = ArrayList<TokenImageSpan>()
        for (span in hiddenPersonaSpans) {
            val personaChipView = getViewForObject(span.token)
            personaChipView.measure(MeasureSpec.UNSPECIFIED, MeasureSpec.UNSPECIFIED)

            val countSpanWidth = resources.getDimension(R.dimen.fluentui_people_picker_count_span_width).toInt()
            val endOfLastLine = layout.getPrimaryHorizontal(lastPositionForSingleLine).toInt()
            val remainingAvailableWidth = width - endOfLastLine - countSpanWidth

            if (personaChipView.measuredWidth <= remainingAvailableWidth) {
                // Using insertPersonaSpan instead of addObject so that remaining available width is more accurate.
                insertPersonaSpan(span.token)
                addedPersonaSpans.add(span)
            } else {
                break
            }
        }

        hiddenPersonaSpans.removeAll(addedPersonaSpans)
    }

    private fun createCountSpan(count: Int): SpannableString {
        val replacementCountSpan = SpannableString("+$count")

        // Set the TextAppearance of the count span
        replacementCountSpan.setSpan(
            TextAppearanceSpan(context, R.style.TextAppearance_FluentUI_PeoplePickerCountSpan),
            0,
            replacementCountSpan.length,
            Spanned.SPAN_EXCLUSIVE_EXCLUSIVE
        )

        // Center the count span
        val replacementCountSpanPaint = Paint()
        val replacementCountSpanBounds = Rect()
        replacementCountSpanPaint.textSize = context.getTextSize(R.style.TextAppearance_FluentUI_PeoplePickerCountSpan)
        replacementCountSpanPaint.getTextBounds(replacementCountSpan.toString(), 0, replacementCountSpan.length, replacementCountSpanBounds)
        replacementCountSpan.setSpan(
            CenterVerticalSpan(replacementCountSpanBounds),
            0,
            replacementCountSpan.length,
            Spanned.SPAN_EXCLUSIVE_EXCLUSIVE
        )

        return replacementCountSpan
    }

    private fun updateCountSpan() {
        post {
            if (hiddenPersonaSpans.size > 0) {
                val replacementCountSpan = createCountSpan(hiddenPersonaSpans.size)
                removeCountSpan()
                text.insert(text.length, replacementCountSpan)
            } else {
                removeCountSpan()
            }
        }
    }

    private fun removeCountSpan() {
        val countSpanStart = countSpanStart
        if (countSpanStart > -1)
            text.delete(countSpanStart, countSpanEnd)
    }

    private fun isEmailValid(email: CharSequence): Boolean = Patterns.EMAIL_ADDRESS.matcher(email).matches()

    private fun blockInput() {
        isCursorVisible = false
        filters = blockInputFilters

        // Prevents other input from being selected when a persona chip is selected
        blockedMovementMethod = movementMethod
        movementMethod = null
    }

    private fun unblockInput() {
        isCursorVisible = true
        filters = noFilters

        // Restores original MovementMethod we blocked during selection
        if (blockedMovementMethod != null)
            movementMethod = blockedMovementMethod
    }

    private inline fun <reified T> getPersonaSpans(start: Int = 0, end: Int = text.length): Array<T> =
        text.getSpans(start, end, TokenImageSpan::class.java) as Array<T>

    private fun getSpanForPersona(persona: Any): TokenImageSpan? =
        getPersonaSpans<TokenCompleteTextView<IPersona>.TokenImageSpan>().firstOrNull { it.token === persona }

    // Token listener

    private var tokenListener: TokenCompleteTextView.TokenListener<IPersona>? = null

    override fun setTokenListener(l: TokenCompleteTextView.TokenListener<IPersona>?) {
        tokenListener = l
    }

    private class TokenListener(val view: PeoplePickerTextView) : TokenCompleteTextView.TokenListener<IPersona> {
        override fun onTokenAdded(token: IPersona) {
            if (view.shouldAnnouncePersonaAdditionMap[token] != false)
                view.tokenListener?.onTokenAdded(token)
            if (view.isFocused)
                view.announcePersonaAdded(token)
            view.sendAccessibilityEvent(AccessibilityEvent.TYPE_VIEW_ACCESSIBILITY_FOCUS_CLEARED)
            view.shouldAnnouncePersonaAdditionMap.remove(token)
        }

        override fun onTokenRemoved(token: IPersona) {
            if (view.shouldAnnouncePersonaRemovalMap[token] != false)
                view.tokenListener?.onTokenRemoved(token)
            if (view.isFocused)
                view.announcePersonaRemoved(token)
            view.shouldAnnouncePersonaRemovalMap.remove(token)
        }
    }

    // Drag and drop

    private var isDraggingPersonaChip: Boolean = false
    private var initialTouchedPersonaSpan: TokenImageSpan? = null

    override fun onTouchEvent(event: MotionEvent): Boolean = gestureDetector.onTouchEvent(event)

    override fun onDragEvent(event: DragEvent): Boolean {
        if (!allowPersonaChipDragAndDrop)
            return false

        when (event.action) {
            DragEvent.ACTION_DRAG_STARTED -> return event.clipDescription.hasMimeType(ClipDescription.MIMETYPE_TEXT_PLAIN)

            DragEvent.ACTION_DRAG_ENTERED -> requestFocus()

            DragEvent.ACTION_DROP -> return addPersonaFromDragEvent(event)

            DragEvent.ACTION_DRAG_ENDED -> {
                if (!event.result && isDraggingPersonaChip)
                    addPersonaFromDragEvent(event)
                isDraggingPersonaChip = false
            }
        }
        return false
    }

    // This declares whether personaChipClickListener could be called
    private fun isPersonaChipClickable(persona: IPersona): Boolean =
        selectedPersona != null &&
        personaChipClickStyle == PeoplePickerPersonaChipClickStyle.SELECT_DESELECT &&
        persona == selectedPersona

    private fun getClipDataForPersona(persona: IPersona): ClipData? {
        val name = persona.name
        val email = persona.email
        val rfcToken = Rfc822Token(name, email, null)
        return ClipData.newPlainText(if (TextUtils.isEmpty(name)) email else name, rfcToken.toString())
    }

    private fun getPersonaForClipData(clipData: ClipData): IPersona? {
        if (!clipData.description.hasMimeType(ClipDescription.MIMETYPE_TEXT_PLAIN) || clipData.itemCount != 1)
            return null

        val clipDataItem = clipData.getItemAt(0) ?: return null

        val data = clipDataItem.text
        if (TextUtils.isEmpty(data))
            return null

        val rfcTokens = Rfc822Tokenizer.tokenize(data)
        if (rfcTokens == null || rfcTokens.isEmpty())
            return null

        val rfcToken = rfcTokens[0]
        return onCreatePersona(rfcToken.name ?: "", rfcToken.address ?: "")
    }

    private fun startPersonaDragAndDrop(persona: IPersona) {
        val clipData = getClipDataForPersona(persona) ?: return

        // Layout a copy of the persona chip to use as the drag shadow
        val personaChipView = getViewForObject(persona)
        personaChipView.measure(View.MeasureSpec.UNSPECIFIED, View.MeasureSpec.UNSPECIFIED)
        personaChipView.layout(0, 0, personaChipView.measuredWidth, personaChipView.measuredHeight)
        personaChipView.background = ColorDrawable(ThemeUtil.getThemeAttrColor(context, R.attr.fluentuiPeoplePickerTextViewDragBackgroundColor))
        personaChipView.background.alpha = BACKGROUND_DRAG_ALPHA

        // We pass the persona object as LocalState so we can restore it when dropping
        // [startDrag] is deprecated, but the new [startDragAndDrop] requires a higher api than our min
        isDraggingPersonaChip = startDrag(clipData, View.DragShadowBuilder(personaChipView), persona, 0)
        if (isDraggingPersonaChip)
            removeObject(persona)
    }

    private fun getPersonaSpanAt(x: Float, y: Float): TokenImageSpan? {
        if (text.isEmpty())
            return null

        val offset = getOffsetForPosition(x, y)
        if (offset == -1)
            return null

        return getPersonaSpans<TokenCompleteTextView<IPersona>.TokenImageSpan>(offset, offset).firstOrNull()
    }

    private fun addPersonaFromDragEvent(event: DragEvent): Boolean {
        var persona = event.localState as? IPersona

        // If it looks like the drag & drop is not coming from us, try to extract a persona object from the clipData
        if (persona == null && event.clipData != null)
            persona = getPersonaForClipData(event.clipData)

        if (persona == null)
            return false

        addObject(persona)

        return true
    }

    private inner class SimpleGestureListener : GestureDetector.SimpleOnGestureListener() {
        override fun onLongPress(event: MotionEvent) {
            val touchedPersonaSpan = getPersonaSpanAt(event.x, event.y) ?: return
            if (allowPersonaChipDragAndDrop && !isDraggingPersonaChip)
                startPersonaDragAndDrop(touchedPersonaSpan.token)
        }

        override fun onDown(event: MotionEvent): Boolean {
            val touchedPersonaSpan = getPersonaSpanAt(event.x, event.y) ?: return true
            if (allowPersonaChipDragAndDrop)
                initialTouchedPersonaSpan = touchedPersonaSpan

            return true
        }

        override fun onSingleTapUp(event: MotionEvent): Boolean {
            val touchedPersonaSpan = getPersonaSpanAt(event.x, event.y)
            if (isFocused && initialTouchedPersonaSpan == touchedPersonaSpan && touchedPersonaSpan != null) {
                if (isPersonaChipClickable(touchedPersonaSpan.token))
                    personaChipClickListener?.onClick(touchedPersonaSpan.token)
                touchedPersonaSpan.onClick()
            } else if (isFocused) {
                post {
                    context.inputMethodManager.showSoftInput(this@PeoplePickerTextView, InputMethodManager.SHOW_IMPLICIT)
                }
            }

            if (!isFocused)
                requestFocus()

            initialTouchedPersonaSpan = null
            return true
        }
    }

    // Accessibility

    private var customAccessibilityTextProvider: PeoplePickerAccessibilityTextProvider? = null
    private val defaultAccessibilityTextProvider = PeoplePickerAccessibilityTextProvider(resources)
    val accessibilityTextProvider: PeoplePickerAccessibilityTextProvider
        get() = customAccessibilityTextProvider ?: defaultAccessibilityTextProvider

    fun setAccessibilityTextProvider(accessibilityTextProvider: PeoplePickerAccessibilityTextProvider?) {
        customAccessibilityTextProvider = accessibilityTextProvider
    }

    override fun dispatchHoverEvent(motionEvent: MotionEvent): Boolean {
        // Accessibility first
        return if (accessibilityTouchHelper.dispatchHoverEvent(motionEvent))
            true
        else
            super.dispatchHoverEvent(motionEvent)
    }

    private fun announcePersonaAdded(persona: IPersona) {
        accessibilityTouchHelper.invalidateRoot()

        val replacedText = if (searchConstraint.isNotEmpty())
            "${resources.getString(R.string.people_picker_accessibility_replaced, searchConstraint)} "
        else
            ""

        // We only want to announce when a persona was added by a user.
        // If text has been replaced in the text editor and a token was added, the user added a token.
        if (shouldAnnouncePersonaAdditionMap[persona] != false) {
            announceForAccessibility("$replacedText ${getAnnouncementText(
                persona,
                R.string.people_picker_accessibility_persona_added
            )}")
        }
    }

    private fun announcePersonaRemoved(persona: IPersona) {
        accessibilityTouchHelper.invalidateRoot()

        // We only want to announce when a persona was removed by a user.
        if (shouldAnnouncePersonaRemovalMap[persona] != false) {
            announceForAccessibility(getAnnouncementText(
                persona,
                R.string.people_picker_accessibility_persona_removed
            ))
        }
    }

    private fun getAnnouncementText(persona: IPersona, stringResourceId: Int): CharSequence =
        resources.getString(stringResourceId, accessibilityTextProvider.getPersonaDescription(persona))

    private fun positionIsInsidePersonaBounds(x: Float, y: Float, personaSpan: TokenImageSpan?): Boolean =
        getBoundsForPersonaSpan(personaSpan).contains(x.toInt(), y.toInt())

    private fun positionIsInsideSearchConstraintBounds(x: Float, y: Float): Boolean {
        if (searchConstraint.isNotEmpty())
            return getBoundsForSearchConstraint().contains(x.toInt(), y.toInt())
        return false
    }

    private fun getBoundsForSearchConstraint(): Rect {
        val start = text.indexOf(searchConstraint[0])
        val end = text.length
        return calculateBounds(start, end, resources.getDimension(R.dimen.fluentui_people_picker_accessibility_search_constraint_extra_space).toInt())
    }

    private fun getBoundsForPersonaSpan(personaSpan: TokenImageSpan? = null): Rect {
        val start = text.getSpanStart(personaSpan)
        val end = text.getSpanEnd(personaSpan)
        return calculateBounds(start, end)
    }

    private fun calculateBounds(start: Int, end: Int, extraSpaceForLegibility: Int = 0): Rect {
        val line = layout.getLineForOffset(end)
        // Persona spans increase line height. Without them, we need to make the virtual view bound bottom lower.
        val bounds = Rect(
            layout.getPrimaryHorizontal(start).toInt() - extraSpaceForLegibility,
            layout.getLineTop(line),
            layout.getPrimaryHorizontal(end).toInt() + extraSpaceForLegibility,
            if (getPersonaSpans<TokenCompleteTextView<IPersona>.TokenImageSpan>().isEmpty()) bottom else layout.getLineBottom(line)
        )
        bounds.offset(paddingLeft, paddingTop)
        return bounds
    }

    private fun setHint() {
        if (!isFocused)
        // If the edit box is not focused, there is no event that requires a hint.
            hint = ""
        else
            hint = valueHint
    }

    private inner class AccessibilityTouchHelper(host: View) : ExploreByTouchHelper(host) {
        // Host

        val peoplePickerTextViewBounds = Rect(0, 0, width, height)

        override fun onInitializeAccessibilityNodeInfo(host: View, info: AccessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(host, info)
            setHint()
            setInfoText(info)
        }

        override fun onPopulateAccessibilityEvent(host: View, event: AccessibilityEvent) {
            super.onPopulateAccessibilityEvent(host, event)
            /**
             * The CommaTokenizer is confusing in the screen reader.
             * This overrides announcements that include the CommaTokenizer.
             * We handle cases for replaced text and persona spans added / removed through callbacks.
             */
            if (event?.eventType == AccessibilityEvent.TYPE_VIEW_TEXT_CHANGED)
                event.text.clear()
        }

        private fun setInfoText(info: AccessibilityNodeInfoCompat) {
            val personas = objects
            if (personas == null || personas.isEmpty())
                return

            var infoText = ""
            val hiddenPersonas = hiddenPersonaSpans.map { it.token }
            val totalPersonas = personas + hiddenPersonas

            // Read all of the personas if the list of personas in the field is short
            // Otherwise, read how many personas are in the field
            if (totalPersonas.size <= MAX_PERSONAS_TO_READ)
                infoText += totalPersonas.map { accessibilityTextProvider.getPersonaDescription(it) }.joinToString { it }
            else
                infoText = accessibilityTextProvider.getPersonaQuantityText(totalPersonas as ArrayList<IPersona>)

            info.text = infoText +
                // Also read any entered text in the field
                if (searchConstraint.isNotEmpty())
                    ", $searchConstraint"
                else
                    ""
        }

        // Virtual views

        override fun getVirtualViewAt(x: Float, y: Float): Int {
            if (objects == null || objects.size == 0)
                return INVALID_ID

            val offset = getOffsetForPosition(x, y)
            if (offset != -1) {
                val personaSpan = getPersonaSpans<TokenCompleteTextView<IPersona>.TokenImageSpan>(offset, offset).firstOrNull()
                if (personaSpan != null && positionIsInsidePersonaBounds(x, y, personaSpan) && isFocused)
                    return objects.indexOf(personaSpan.token)
                else if (searchConstraint.isNotEmpty() && positionIsInsideSearchConstraintBounds(x, y))
                    return objects.size
                else if (peoplePickerTextViewBounds.contains(x.toInt(), y.toInt())) {
                    sendAccessibilityEvent(AccessibilityEvent.TYPE_VIEW_ACCESSIBILITY_FOCUSED)
                    return HOST_ID
                }
            }

            return INVALID_ID
        }

        override fun getVisibleVirtualViews(virtualViewIds: MutableList<Int>) {
            virtualViewIds.clear()

            if (objects == null || objects.size == 0 || !isFocused)
                return

            for (i in objects.indices)
                virtualViewIds.add(i)

            if (searchConstraint.isNotEmpty())
                virtualViewIds.add(objects.size)
        }

        override fun onPopulateEventForVirtualView(virtualViewId: Int, event: AccessibilityEvent) {
            if (objects == null || virtualViewId >= objects.size) {
                // The content description is mandatory.
                event.contentDescription = ""
                return
            }

            if (!isFocused) {
                // Only respond to events for persona chips if the edit box is focused.
                // Without this the user still gets haptic feedback when hovering over a persona chip.
                event.recycle()
                event.contentDescription = ""
                return
            }

            if (virtualViewId == objects.size) {
                event.contentDescription = searchConstraint
                return
            }

            val persona = objects[virtualViewId]
            val personaSpan = getSpanForPersona(persona)
            if (personaSpan != null)
                event.contentDescription = accessibilityTextProvider.getPersonaDescription(persona)

            if (event.eventType == AccessibilityEvent.TYPE_VIEW_SELECTED || (personaSpan != null && persona == selectedPersona))
                event.contentDescription = String.format(
                    resources.getString(R.string.people_picker_accessibility_selected_persona),
                    event.contentDescription
                ) + getSelectedActionText(personaSpan)
        }

        override fun onPopulateNodeForVirtualView(virtualViewId: Int, node: AccessibilityNodeInfoCompat) {
            if (objects == null || virtualViewId > objects.size) {
                // the content description & the bounds are mandatory.
                node.contentDescription = ""
                node.setBoundsInParent(peoplePickerTextViewBounds)
                return
            }

            if (!isFocused) {
                // Only populate nodes for persona chips if the edit box is focused.
                node.recycle()
                node.contentDescription = ""
                node.setBoundsInParent(peoplePickerTextViewBounds)
                return
            }

            if (virtualViewId == objects.size) {
                if (searchConstraint.isNotEmpty()){
                    node.contentDescription = searchConstraint
                    node.setBoundsInParent(getBoundsForSearchConstraint())
                } else {
                    node.contentDescription = ""
                    node.setBoundsInParent(peoplePickerTextViewBounds)
                }
                return
            }

            val persona = objects[virtualViewId]
            val personaSpan = getSpanForPersona(persona)
            if (personaSpan != null) {
                setPersonaSpanClickAction(personaSpan, node)
                if (node.isAccessibilityFocused)
                    node.contentDescription = accessibilityTextProvider.getPersonaDescription(persona)
                else
                    node.contentDescription = ""
                node.setBoundsInParent(getBoundsForPersonaSpan(personaSpan))
            }
        }

        override fun onPerformActionForVirtualView(virtualViewId: Int, action: Int, arguments: Bundle?): Boolean {
            if (objects == null || virtualViewId >= objects.size)
                return false

            if (AccessibilityNodeInfo.ACTION_CLICK == action) {
                val persona = objects[virtualViewId]
                val personaSpan = getSpanForPersona(persona)
                if (personaSpan != null) {
                    personaSpan.onClick()
                    onPersonaSpanAccessibilityClick(personaSpan)
                    shouldAnnouncePersonaRemovalMap[persona] = true
                    return true
                }
            }

            return false
        }

        private fun onPersonaSpanAccessibilityClick(personaSpan: TokenImageSpan) {
            val persona = personaSpan.token
            val personaSpanIndex = getPersonaSpans<TokenCompleteTextView<IPersona>.TokenImageSpan>().indexOf(personaSpan)
            when (personaChipClickStyle) {
                PeoplePickerPersonaChipClickStyle.SELECT, PeoplePickerPersonaChipClickStyle.SELECT_DESELECT -> {
                    if (selectedPersona != null && selectedPersona == persona) {
                        invalidateVirtualView(personaSpanIndex)
                        sendEventForVirtualView(personaSpanIndex, AccessibilityEvent.TYPE_VIEW_CLICKED)
                        sendEventForVirtualView(personaSpanIndex, AccessibilityEvent.TYPE_VIEW_SELECTED)
                    } else {
                        if (personaChipClickStyle == PeoplePickerPersonaChipClickStyle.SELECT_DESELECT) {
                            if (personaChipClickListener != null) {
                                personaChipClickListener?.onClick(persona)
                                announceForAccessibility(resources.getString(
                                    R.string.people_picker_accessibility_clicked_persona,
                                    accessibilityTextProvider.getDefaultPersonaDescription(persona)
                                ))
                            } else {
                                announceForAccessibility(resources.getString(
                                    R.string.people_picker_accessibility_deselected_persona,
                                    accessibilityTextProvider.getDefaultPersonaDescription(persona)
                                ))
                            }
                        }
                        sendEventForVirtualView(personaSpanIndex, AccessibilityEvent.TYPE_VIEW_CLICKED)
                        if (personaChipClickStyle == PeoplePickerPersonaChipClickStyle.SELECT && personaSpanIndex == -1)
                            invalidateRoot()
                    }
                }
                PeoplePickerPersonaChipClickStyle.DELETE -> {
                    sendEventForVirtualView(personaSpanIndex, AccessibilityEvent.TYPE_VIEW_CLICKED)
                    sendEventForVirtualView(personaSpanIndex, AccessibilityEvent.TYPE_VIEW_ACCESSIBILITY_FOCUS_CLEARED)
                }
                else -> {
                    throw IllegalStateException("Invalid persona chip click style")
                }
            }
        }

        private fun setPersonaSpanClickAction(personaSpan: TokenImageSpan, node: AccessibilityNodeInfoCompat) {
            if (personaChipClickStyle == PeoplePickerPersonaChipClickStyle.NONE)
                return

            val clickAction = AccessibilityNodeInfoCompat.AccessibilityActionCompat(
                AccessibilityNodeInfoCompat.ACTION_CLICK,
                getActionText(personaSpan)
            )
            node.addAction(clickAction)
        }

        /**
         * Sets text for the custom click action depending on persona chip click style and selection state.
         */
        private fun getActionText(personaSpan: TokenImageSpan): String {
            return if (personaSpan.token == selectedPersona) {
                when (personaChipClickStyle) {
                    PeoplePickerPersonaChipClickStyle.SELECT ->
                        resources.getString(R.string.people_picker_accessibility_delete_persona)
                    PeoplePickerPersonaChipClickStyle.SELECT_DESELECT ->
                        if (personaChipClickListener != null)
                            resources.getString(R.string.people_picker_accessibility_click_persona)
                        else
                            resources.getString(R.string.people_picker_accessibility_deselect_persona)
                    else -> ""
                }
            } else {
                when (personaChipClickStyle) {
                    PeoplePickerPersonaChipClickStyle.SELECT, PeoplePickerPersonaChipClickStyle.SELECT_DESELECT ->
                        resources.getString(R.string.people_picker_accessibility_select_persona)
                    PeoplePickerPersonaChipClickStyle.DELETE ->
                        resources.getString(R.string.people_picker_accessibility_delete_persona)
                    else -> ""
                }
            }
        }

        /**
         * Describes the action that will happen when already selected personas are activated.
         * We can't set a second action for the the virtual view, so we describe it after the first event occurs.
         */
        private fun getSelectedActionText(personaSpan: TokenImageSpan?): String {
            if (personaSpan == null || personaSpan.token != selectedPersona)
                return ""

            return when (personaChipClickStyle) {
                PeoplePickerPersonaChipClickStyle.SELECT ->
                    resources.getString(R.string.people_picker_accessibility_delete_selected_persona)
                PeoplePickerPersonaChipClickStyle.SELECT_DESELECT ->
                    if (personaChipClickListener != null)
                        resources.getString(R.string.people_picker_accessibility_click_selected_persona)
                    else
                        resources.getString(R.string.people_picker_accessibility_deselect_selected_persona)
                else -> ""
            }
        }
    }
}
```

## File: src/main/java/com/microsoft/fluentui/peoplepicker/PeoplePickerTextViewAdapter.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentui.peoplepicker

import android.content.Context
import android.graphics.drawable.InsetDrawable
import androidx.core.content.ContextCompat
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.*
import com.microsoft.fluentui.listitem.ListItemView
import com.microsoft.fluentui.peoplepicker.databinding.PeoplePickerSearchDirectoryBinding
import com.microsoft.fluentui.persona.*
import java.util.*

/**
 * Provides views for the DropDownListView that shows the [personas].
 * The DropDown used by [MultiAutoCompleteTextView] (via [TokenCompleteTextView]) uses a ListView
 * so we use an [ArrayAdapter] to generate the views instead of a [RecyclerView.Adapter].
 */
internal class PeoplePickerTextViewAdapter : ArrayAdapter<IPersona>, Filterable {
    private enum class ViewType {
        PERSONA, SEARCH_DIRECTORY
    }

    /**
     * Collection of [Persona] objects that hold data to create the [PersonaView]s
     */
    var personas: ArrayList<IPersona> = ArrayList()
        set(value) {
            field = value
            notifyDataSetChanged()
        }
    var showSearchDirectoryButton: Boolean = false
    var isSearchingDirectory: Boolean = false
        set(value) {
            field = value
            searchDirectoryBinding?.root?.isEnabled = !value
            updateSearchDirectoryText()
        }

    var onSearchDirectoryButtonClicked: View.OnClickListener? = null

    private var filter: Filter
    private var listView: ListView? = null
        set(value) {
            if (value == null || field == value)
                return
            field = value
            value.divider = createDivider()
            // This hides the last divider
            value.overscrollFooter = ContextCompat.getDrawable(context, android.R.color.transparent)
        }
    private var searchDirectoryBinding: PeoplePickerSearchDirectoryBinding? = null
        set(value) {
            field = value
            searchDirectoryBinding?.root?.post {
                // We set this in a post so that the we get the correct instance of the text view.
                // This assumes that the first view is the correct view.
                searchDirectoryTextView = value?.peoplePickerSearchDirectoryText
            }
            value?.root?.setOnClickListener(onSearchDirectoryButtonClicked)
        }
    private var searchDirectoryTextView: TextView? = null
        set(value) {
            if (field == value)
                return
            field = value
            updateSearchDirectoryText()
        }

    constructor(context: Context, objects: List<IPersona>, filter: Filter) : super(context, -1, objects) {
        personas.addAll(objects)
        this.filter = filter
    }

    override fun getItem(position: Int): IPersona? = if (isSearchDirectoryButtonPosition(position)) null else personas[position]

    override fun getItemId(position: Int): Long = position.toLong()

    override fun getCount(): Int = personas.size + if (showSearchDirectoryButton) 1 else 0

    override fun getFilter(): Filter = filter

    override fun getItemViewType(position: Int): Int {
        return if (position < personas.size)
            ViewType.PERSONA.ordinal
        else
            ViewType.SEARCH_DIRECTORY.ordinal
    }

    override fun getViewTypeCount(): Int = ViewType.values().size

    override fun getView(position: Int, convertView: View?, parent: ViewGroup): View {
        return when (getItemViewType(position)) {
            ViewType.PERSONA.ordinal -> getPersonaView(position, convertView, parent)
            ViewType.SEARCH_DIRECTORY.ordinal -> getSearchDirectoryView(convertView, parent)
            else -> throw IllegalStateException("ViewType expected")
        }
    }

    private fun isSearchDirectoryButtonPosition(position: Int): Boolean = showSearchDirectoryButton && position == personas.size

    private fun getPersonaView(position: Int, convertView: View?, parent: ViewGroup?): View {
        val view = convertView as? PersonaView ?: PersonaView(context)
        view.avatarSize = AvatarSize.LARGE
        view.layoutDensity = ListItemView.LayoutDensity.COMPACT
        view.setPersona(personas[position])
        view.setBackground(ContextCompat.getDrawable(context, R.drawable.ms_ripple_transparent_background))
        listView = parent as? ListView
        return view
    }

    private fun getSearchDirectoryView(convertView: View?, parent: ViewGroup?): View {
        // Need to use the convertView, otherwise accessibility focus breaks. Also more efficient.
        val view = convertView ?: LayoutInflater.from(context).inflate(R.layout.people_picker_search_directory, parent, false)
        searchDirectoryBinding = PeoplePickerSearchDirectoryBinding.bind(view)
        return view
    }

    private fun updateSearchDirectoryText() {
        if (isSearchingDirectory)
            searchDirectoryTextView?.setText(R.string.people_picker_search_progress)
        else
            searchDirectoryTextView?.setText(R.string.people_picker_search_directory)
    }

    private fun createDivider(): InsetDrawable {
        val spacing = PersonaView.getSpacing(context, AvatarSize.LARGE)
        return InsetDrawable(
            ContextCompat.getDrawable(context, R.drawable.ms_row_divider),
            spacing.insetLeft,
            0,
            spacing.cellPadding,
            0
        )
    }
}
```

## File: src/main/java/com/microsoft/fluentui/peoplepicker/PeoplePickerView.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentui.peoplepicker

import android.content.Context
import androidx.core.content.ContextCompat
import android.util.AttributeSet
import android.view.View.OnClickListener
import android.view.accessibility.AccessibilityEvent
import android.widget.Filter
import android.widget.TextView
import com.microsoft.fluentui.persona.IPersona
import com.microsoft.fluentui.persona.Persona
import com.microsoft.fluentui.theming.FluentUIContextThemeWrapper
import com.microsoft.fluentui.util.ThemeUtil
import com.microsoft.fluentui.util.isAccessibilityEnabled
import com.microsoft.fluentui.view.TemplateView
import com.microsoft.fluentui.tokenautocomplete.TokenCompleteTextView
import kotlin.math.max

/**
 * [PeoplePickerView] is a customizable view comprised of a label and [PeoplePickerTextView].
 *
 */
class PeoplePickerView : TemplateView {
    /**
     * Label describing the [PeoplePickerTextView] field.
     */
    var label: String = ""
        set(value) {
            if (field == value)
                return
            field = value
            updateViews()
        }
    /**
     * [valueHint] is important for accessibility but will not be displayed unless
     * you set the flag [showHint] to true.
     */
    var valueHint: String = context.getString(R.string.people_picker_accessibility_default_hint)
        set(value) {
            if (field == value)
                return
            field = value
            updateViews()
        }
    /**
     * Determines whether the hint will be displayed.
     */
    var showHint: Boolean = false
        set(value) {
            if (field == value)
                return
            field = value
            updateViews()
        }
    /**
     * The list of personas that are available to be filtered and supplied to the dropdown
     * containing suggestions for the [PeoplePickerTextView].
     */
    var availablePersonas: ArrayList<IPersona>? = null
        set(value) {
            field = value
            peoplePickerTextViewAdapter = PeoplePickerTextViewAdapter(
                context,
                value ?: ArrayList(),
                PersonaFilter(this)
            )
        }
    /**
     * Tracks personas that have been added as PersonaChips to the [PeoplePickerTextView].
     */
    var pickedPersonas = ArrayList<IPersona>()
        set(value) {
            field = value
            updatePersonaChips()
        }
    /**
     * The number of characters required to be entered before showing the dropdown of filtered suggestions.
     * Accepts positive and 0 value integers only.
     */
    var characterThreshold: Int = 1
        set(value) {
            if (field == value)
                return
            field = max(0, value)
            updateViews()
        }
    /**
     * This will automatically remove persona chips from your text field, but you will need to do extra
     * filtering work to ensure duplicates don't end up in your dropdown list.
     */
    var allowDuplicatePersonaChips: Boolean = false
        set(value) {
            if (field == value)
                return
            field = value
            updateViews()
        }
    /**
     * Limits the total number of persona chips that can be added to the field.
     */
    var personaChipLimit: Int = -1
        set(value) {
            if (field == value)
                return
            field = value
            updateViews()
        }
    /**
     * Defines what happens when a user clicks on a persona chip.
     * To use your own onClick callback, set this property to [PeoplePickerPersonaChipClickStyle.SELECT_DESELECT]
     * and set the [personaChipClickListener]'s onClick callback.
     */
    var personaChipClickStyle: PeoplePickerPersonaChipClickStyle =
        PeoplePickerPersonaChipClickStyle.SELECT
        set(value) {
            if (field == value)
                return
            field = value
            updateViews()
        }

    /**
     * Custom width for drop down suggestion Personas List
     * For tablet requirement, client might need to paas WRAP_CONTENT as per their design need
     * default value would be MATCH_PARENT here
     */
    var customDropDownWidth: Int = LayoutParams.MATCH_PARENT
        set(value) {
            if (field == value)
                return
            field = value
            updateViews()
        }

    /**
     * Collapse the [PeoplePickerTextView] to a single line when it loses focus.
     */
    var allowCollapse: Boolean = true
        set(value) {
            if (field == value)
                return
            field = value
            updateViews()
        }
    /**
     * Add a button to the bottom of the list of suggested personas that triggers a
     * new search when using [searchDirectorySuggestionsListener].
     */
    var showSearchDirectoryButton: Boolean = false
        set(value) {
            if (field == value)
                return
            field = value
            updateViews()
        }
    /**
     * Flag for enabling Drag and Drop persona chips.
     */
    var allowPersonaChipDragAndDrop: Boolean = false
        set(value) {
            if (field == value)
                return
            field = value
            updateViews()
        }
    /**
     * Customizes text announced by the screen reader.
     * If there is no custom accessibility text, we use default text.
     */
    var accessibilityTextProvider: PeoplePickerAccessibilityTextProvider? = null
        set(value) {
            if (field == value)
                return
            field = value
            updateViews()
        }

    /**
     * Callback to use your own [IPersona] object in place of our default [Persona].
     */
    var onCreatePersona: ((name: String, email: String) -> IPersona)? = null
        set(value) {
            if (field == value)
                return
            field = value
            updateViews()
        }
    /**
     * Callbacks for when a persona chip is added or removed from the [PeoplePickerTextView].
     */
    var pickedPersonasChangeListener: PickedPersonasChangeListener? = null
    /**
     * Callbacks for customized filtering. Supports async.
     */
    var personaSuggestionsListener: PersonaSuggestionsListener? = null
    /**
     * Callbacks for additional customized filtering when using the [showSearchDirectoryButton].
     */
    var searchDirectorySuggestionsListener: PersonaSuggestionsListener? = null
    /**
     * When a persona chip with a [PeoplePickerPersonaChipClickStyle] of SELECT_DESELECT is selected,
     * the next touch will fire [PersonaChipClickListener.onClick].
     */
    var personaChipClickListener: PersonaChipClickListener? = null
        set(value) {
            if (field == value)
                return
            field = value
            updateViews()
        }

    private var peoplePickerTextViewAdapter: PeoplePickerTextViewAdapter? = null
        set(value) {
            field = value
            value?.onSearchDirectoryButtonClicked = onSearchDirectoryButtonClicked
            updateViews()
        }
    private var searchConstraint: CharSequence? = null

    private val onSearchDirectoryButtonClicked = OnClickListener {
        val searchDirectorySuggestionsListener = searchDirectorySuggestionsListener
        if (searchDirectorySuggestionsListener != null) {
            peoplePickerTextViewAdapter?.isSearchingDirectory = true
            searchDirectorySuggestionsListener.onGetSuggestedPersonas(searchConstraint, availablePersonas, pickedPersonas) {
                post {
                    peoplePickerTextViewAdapter?.personas = it
                    peoplePickerTextViewAdapter?.isSearchingDirectory = false
                }
            }
        }
    }

    @JvmOverloads
    constructor(appContext: Context, attrs: AttributeSet? = null, defStyleAttr: Int = 0) : super(FluentUIContextThemeWrapper(appContext,R.style.Theme_FluentUI_PeoplePicker), attrs, defStyleAttr) {
        val styledAttrs = context.obtainStyledAttributes(attrs, R.styleable.PeoplePickerView)

        label = styledAttrs.getString(R.styleable.PeoplePickerView_fluentui_label) ?: ""
        valueHint = styledAttrs.getString(R.styleable.PeoplePickerView_fluentui_valueHint)
            ?: context.getString(R.string.people_picker_accessibility_default_hint)
        showHint = styledAttrs.getBoolean(R.styleable.PeoplePickerView_fluentui_showHint, false)
        characterThreshold = styledAttrs.getInteger(R.styleable.PeoplePickerView_fluentui_characterThreshold, 1)

        val personaChipClickStyleOrdinal = styledAttrs.getInt(
            R.styleable.PeoplePickerView_fluentui_personaChipClickStyle,
            PeoplePickerPersonaChipClickStyle.SELECT.ordinal
        )
        personaChipClickStyle = PeoplePickerPersonaChipClickStyle.values()[personaChipClickStyleOrdinal]
        customDropDownWidth = styledAttrs.getInt(
                R.styleable.PeoplePickerView_fluentui_customDropDownWidth,
                LayoutParams.MATCH_PARENT
        )
        styledAttrs.recycle()
    }

    // Template

    override val templateId: Int = R.layout.view_people_picker
    private var labelTextView: TextView? = null
    private var peoplePickerTextView: PeoplePickerTextView? = null

    override fun onTemplateLoaded() {
        labelTextView = findViewInTemplateById(R.id.people_picker_label)
        peoplePickerTextView = findViewInTemplateById(R.id.people_picker_text_view)

        // Fixed properties for TokenCompleteTextView.
        peoplePickerTextView?.apply {
            dropDownWidth = customDropDownWidth
            allowCollapse = this@PeoplePickerView.allowCollapse
            isLongClickable = true
            setTokenListener(TokenListener(this@PeoplePickerView))
            performBestGuess(true)
        }

        updatePersonaChips()
        updateViews()
        addLabelClickListenerForAccessibility()

        super.onTemplateLoaded()
    }

    private fun updatePersonaChips() {
        peoplePickerTextView?.let {
            it.removeObjects(it.objects)
            it.addObjects(pickedPersonas)
        }
    }

    /**
     * Add a picked persona
     */
    fun addPickedPersona(persona: IPersona) {
        peoplePickerTextView?.addPickedPersona(persona)
    }

    /**
     * Removes a persona from picked items
     */
    fun removePickedPersona(persona: IPersona) {
        peoplePickerTextView?.removePickedPersona(persona)
    }

    /**
     * Refreshes a persona view in both picked items and available options.
     * Can be used if doing any async operation to load Persona data e.g. downloading avatar image.
     */
    fun refreshPersona(persona: IPersona) {
        if(pickedPersonas.contains(persona)) {
            peoplePickerTextView?.refreshPickedPersonaViews()
        }

        val personaIndexInSuggestions = availablePersonas?.indexOf(persona) ?: -1
        if(personaIndexInSuggestions >= 0) {
            peoplePickerTextViewAdapter?.notifyDataSetChanged()
        }
    }

    private fun updateViews() {
        if(label.isBlank()) {
            labelTextView?.visibility = GONE
            peoplePickerTextView?.let {
                it.setPaddingRelative(
                        resources.getDimensionPixelSize(R.dimen.fluentui_people_picker_horizontal_padding),
                        it.paddingTop,
                        it.paddingEnd,
                        it.paddingBottom
                )
            }
        } else {
            labelTextView?.visibility = VISIBLE
            labelTextView?.text = label
            peoplePickerTextView?.let {
                it.setPaddingRelative(
                        0,
                        it.paddingTop,
                        it.paddingEnd,
                        it.paddingBottom
                )
            }
        }
        peoplePickerTextView?.apply {
            valueHint = this@PeoplePickerView.valueHint
            allowCollapse = this@PeoplePickerView.allowCollapse
            allowDuplicatePersonaChips = this@PeoplePickerView.allowDuplicatePersonaChips
            characterThreshold = this@PeoplePickerView.characterThreshold
            personaChipLimit = this@PeoplePickerView.personaChipLimit
            setAdapter(peoplePickerTextViewAdapter)
            personaChipClickStyle = this@PeoplePickerView.personaChipClickStyle
            allowPersonaChipDragAndDrop = this@PeoplePickerView.allowPersonaChipDragAndDrop
            onCreatePersona = ::createPersona
            setAccessibilityTextProvider(this@PeoplePickerView.accessibilityTextProvider)
            personaChipClickListener = this@PeoplePickerView.personaChipClickListener
        }
        peoplePickerTextViewAdapter?.showSearchDirectoryButton = showSearchDirectoryButton

        updateHintVisibility()
        if (context.isAccessibilityEnabled) {
            labelTextView?.isFocusable = true
            labelTextView?.isFocusableInTouchMode = true
        }
        else {
            labelTextView?.isFocusable = false
            labelTextView?.isFocusableInTouchMode = false
        }
    }

    private fun updateHintVisibility() {
        val hintColor = if (showHint)
            ThemeUtil.getThemeAttrColor(context, R.attr.fluentuiPeoplePickerHintTextColor)
        else
            ContextCompat.getColor(context, android.R.color.transparent)
        peoplePickerTextView?.setHintTextColor(hintColor)
    }

    private fun addLabelClickListenerForAccessibility() {
        labelTextView?.setOnClickListener {
            val accessibilityNodeInfo = it?.createAccessibilityNodeInfo()
            if (accessibilityNodeInfo?.isAccessibilityFocused == true) {
                peoplePickerTextView?.requestFocus()
                peoplePickerTextView?.sendAccessibilityEvent(AccessibilityEvent.TYPE_VIEW_ACCESSIBILITY_FOCUSED)
            }
        }
    }

    private fun createPersona(name: String, email: String): IPersona =
        onCreatePersona?.invoke(name, email) ?: Persona(name, email)

    // Filter

    private class PersonaFilter(val view: PeoplePickerView) : Filter() {
        override fun performFiltering(constraint: CharSequence?): Filter.FilterResults {
            view.searchConstraint = constraint
            if (view.personaSuggestionsListener != null) {
                // Show the previous results until we get new ones.
                // This code allows us to keep dropdown open and not hidden on each key stroke.
                val suggestedPersonas = view.peoplePickerTextViewAdapter?.personas
                return FilterResults().apply {
                    values = suggestedPersonas
                    count = suggestedPersonas?.size ?: 0
                }
            }

            val availablePersonas = view.availablePersonas
            val suggestedPersonas = when {
                availablePersonas == null -> ArrayList()
                constraint != null -> {
                    val searchTerm = constraint.toString().toLowerCase()
                    val filteredResults = availablePersonas.filter {
                        it.name.toLowerCase().contains(searchTerm) && !view.pickedPersonas.contains(it)
                    }
                    ArrayList(filteredResults)
                }
                else -> availablePersonas
            }
            return FilterResults().apply {
                values = suggestedPersonas
                count = suggestedPersonas.size
            }
        }

        override fun publishResults(constraint: CharSequence?, results: Filter.FilterResults) {
            val listener = view.personaSuggestionsListener
            val accessibilityTextProvider = view.peoplePickerTextView?.accessibilityTextProvider
            val countSpanStart = view.peoplePickerTextView?.countSpanStart
            if (listener != null) {
                listener.onGetSuggestedPersonas(constraint, view.availablePersonas, view.pickedPersonas) {
                    view.post {
                        view.peoplePickerTextViewAdapter?.personas = it
                        if (constraint != null && countSpanStart == -1)
                            view.announceForAccessibility(accessibilityTextProvider?.getPersonaSuggestionsOpenedText(it))
                    }
                }
            } else {
                val personas = results.values as ArrayList<IPersona>
                view.peoplePickerTextViewAdapter?.personas = personas
                if (constraint != null && constraint.isNotEmpty() && countSpanStart == -1)
                    view.announceForAccessibility(accessibilityTextProvider?.getPersonaSuggestionsOpenedText(personas))
            }
        }
    }

    // Listeners

    /**
     * Callbacks for when a persona is added or removed from the [PeoplePickerTextView]
     */
    interface PickedPersonasChangeListener {
        fun onPersonaAdded(persona: IPersona)
        fun onPersonaRemoved(persona: IPersona)
    }

    /**
     * Callbacks for updating suggestions in the dropdown list of personas.
     */
    interface PersonaSuggestionsListener {
        fun onGetSuggestedPersonas(
            searchConstraint: CharSequence?,
            availablePersonas: ArrayList<IPersona>?,
            pickedPersonas: ArrayList<IPersona>,
            completion: (suggestedPersonas: ArrayList<IPersona>) -> Unit
        )
    }

    interface PersonaChipClickListener {
        fun onClick(persona: IPersona)
    }

    private class TokenListener(val view: PeoplePickerView) : TokenCompleteTextView.TokenListener<IPersona> {
        override fun onTokenAdded(token: IPersona) {
            view.pickedPersonas.add(token)
            view.pickedPersonasChangeListener?.onPersonaAdded(token)
        }

        override fun onTokenRemoved(token: IPersona) {
            view.pickedPersonas.remove(token)
            view.pickedPersonasChangeListener?.onPersonaRemoved(token)
        }
    }
}
```

## File: src/main/java/com/microsoft/fluentui/tokenautocomplete/CharacterTokenizer.java
```java
package com.microsoft.fluentui.tokenautocomplete;

import android.text.SpannableString;
import android.text.Spanned;
import android.text.TextUtils;
import android.widget.MultiAutoCompleteTextView;

import java.util.ArrayList;

/**
 * Tokenizer with configurable array of characters to tokenize on.
 *
 * Created on 2/3/15.
 * @author mgod
 */
public class CharacterTokenizer implements MultiAutoCompleteTextView.Tokenizer {
    ArrayList<Character> splitChar;

    CharacterTokenizer(char[] splitChar){
        super();
        this.splitChar = new ArrayList<>(splitChar.length);
        for(char c : splitChar) this.splitChar.add(c);
    }

    public int findTokenStart(CharSequence text, int cursor) {
        int i = cursor;

        while (i > 0 && !splitChar.contains(text.charAt(i - 1))) {
            i--;
        }
        while (i < cursor && text.charAt(i) == ' ') {
            i++;
        }

        return i;
    }

    public int findTokenEnd(CharSequence text, int cursor) {
        int i = cursor;
        int len = text.length();

        while (i < len) {
            if (splitChar.contains(text.charAt(i))) {
                return i;
            } else {
                i++;
            }
        }

        return len;
    }

    public CharSequence terminateToken(CharSequence text) {
        int i = text.length();

        while (i > 0 && text.charAt(i - 1) == ' ') {
            i--;
        }

        if (i > 0 && splitChar.contains(text.charAt(i - 1))) {
            return text;
        } else {
            // Try not to use a space as a token character
            String token = (splitChar.size()>1 && splitChar.get(0)==' ' ? splitChar.get(1) : splitChar.get(0))+" ";
            if (text instanceof Spanned) {
                SpannableString sp = new SpannableString(text + token);
                TextUtils.copySpansFrom((Spanned) text, 0, text.length(),
                        Object.class, sp, 0);
                return sp;
            } else {
                return text + token;
            }
        }
    }
}
```

## File: src/main/java/com/microsoft/fluentui/tokenautocomplete/CountSpan.java
```java
package com.microsoft.fluentui.tokenautocomplete;

import android.content.Context;
import android.util.TypedValue;
import android.widget.TextView;

/**
 * Span that displays +[x]
 *
 * Created on 2/3/15.
 * @author mgod
 */

public class CountSpan extends ViewSpan {
    public String text = "";

    public CountSpan(int count, Context ctx, int textColor, int textSize, int maxWidth) {
        super(new TextView(ctx), maxWidth);
        TextView v = (TextView)view;
        v.setTextColor(textColor);
        v.setTextSize(TypedValue.COMPLEX_UNIT_PX, textSize);
        setCount(count);
    }

    public void setCount(int c) {
        text = "+" + c;
        ((TextView)view).setText(text);
    }
}
```

## File: src/main/java/com/microsoft/fluentui/tokenautocomplete/FilteredArrayAdapter.java
```java
package com.microsoft.fluentui.tokenautocomplete;

import android.content.Context;
import android.widget.ArrayAdapter;
import android.widget.Filter;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

/**
 * Simplified custom filtered ArrayAdapter
 * override keepObject with your test for filtering
 * <p>
 * Based on gist <a href="https://gist.github.com/tobiasschuerg/3554252/raw/30634bf9341311ac6ad6739ef094222fc5f07fa8/FilteredArrayAdapter.java">
 * FilteredArrayAdapter</a> by Tobias Schürg
 * <p>
 * Created on 9/17/13.
 * @author mgod
 */

abstract public class FilteredArrayAdapter<T> extends ArrayAdapter<T> {

    private List<T> originalObjects;
    private Filter filter;

    /**
     * Constructor
     *
     * @param context The current context.
     * @param resource The resource ID for a layout file containing a TextView to use when
     *                 instantiating views.
     * @param objects The objects to represent in the ListView.
     */
    public FilteredArrayAdapter(Context context, int resource, T[] objects) {
        this(context, resource, 0, objects);
    }

    /**
     * Constructor
     *
     * @param context The current context.
     * @param resource The resource ID for a layout file containing a layout to use when
     *                 instantiating views.
     * @param textViewResourceId The id of the TextView within the layout resource to be populated
     * @param objects The objects to represent in the ListView.
     */
    public FilteredArrayAdapter(Context context, int resource, int textViewResourceId, T[] objects) {
        this(context, resource, textViewResourceId, new ArrayList<T>(Arrays.asList(objects)));
    }

    /**
     * Constructor
     *
     * @param context The current context.
     * @param resource The resource ID for a layout file containing a TextView to use when
     *                 instantiating views.
     * @param objects The objects to represent in the ListView.
     */
    @SuppressWarnings("unused")
    public FilteredArrayAdapter(Context context, int resource, List<T> objects) {
        this(context, resource, 0, objects);
    }

    /**
     * Constructor
     *
     * @param context The current context.
     * @param resource The resource ID for a layout file containing a layout to use when
     *                 instantiating views.
     * @param textViewResourceId The id of the TextView within the layout resource to be populated
     * @param objects The objects to represent in the ListView.
     */
    public FilteredArrayAdapter(Context context, int resource, int textViewResourceId, List<T> objects) {
        super(context, resource, textViewResourceId, new ArrayList<T>(objects));
        this.originalObjects = objects;
    }

    @SuppressWarnings("unchecked")
    @Override
    public void notifyDataSetChanged() {
        ((AppFilter)getFilter()).setSourceObjects(this.originalObjects);
        super.notifyDataSetChanged();
    }

    @SuppressWarnings("unchecked")
    @Override
    public void notifyDataSetInvalidated(){
        ((AppFilter)getFilter()).setSourceObjects(this.originalObjects);
        super.notifyDataSetInvalidated();
    }

    @Override
    public Filter getFilter() {
        if (filter == null)
            filter = new AppFilter(originalObjects);
        return filter;
    }

    /**
     * Filter method used by the adapter. Return true if the object should remain in the list
     *
     * @param obj object we are checking for inclusion in the adapter
     * @param mask current text in the edit text we are completing against
     * @return true if we should keep the item in the adapter
     */
    abstract protected boolean keepObject(T obj, String mask);

    /**
     * Class for filtering Adapter, relies on keepObject in FilteredArrayAdapter
     *
     * based on gist by Tobias Schürg
     * in turn inspired by inspired by Alxandr
     *         (http://stackoverflow.com/a/2726348/570168)
     */
    private class AppFilter extends Filter {

        private ArrayList<T> sourceObjects;

        public AppFilter(List<T> objects) {
            setSourceObjects(objects);
        }

        public void setSourceObjects(List<T> objects) {
            synchronized (this) {
                sourceObjects = new ArrayList<T>(objects);
            }
        }

        @Override
        protected FilterResults performFiltering(CharSequence chars) {
            FilterResults result = new FilterResults();
            if (chars != null && chars.length() > 0) {
                String mask = chars.toString();
                ArrayList<T> keptObjects = new ArrayList<T>();

                for (T object : sourceObjects) {
                    if (keepObject(object, mask))
                        keptObjects.add(object);
                }
                result.count = keptObjects.size();
                result.values = keptObjects;
            } else {
                // add all objects
                result.values = sourceObjects;
                result.count = sourceObjects.size();
            }
            return result;
        }

        @SuppressWarnings("unchecked")
        @Override
        protected void publishResults(CharSequence constraint, FilterResults results) {
            clear();
            if (results.count > 0) {
                FilteredArrayAdapter.this.addAll((Collection)results.values);
                notifyDataSetChanged();
            } else {
                notifyDataSetInvalidated();
            }
        }
    }
}
```

## File: src/main/java/com/microsoft/fluentui/tokenautocomplete/HintSpan.java
```java
package com.microsoft.fluentui.tokenautocomplete;

import android.content.res.ColorStateList;
import android.text.style.TextAppearanceSpan;

/**
 * Subclass of TextAppearanceSpan just to work with how Spans get detected
 *
 * Created on 2/3/15.
 * @author mgod
 */
public class HintSpan extends TextAppearanceSpan {
    public HintSpan(String family, int style, int size, ColorStateList color, ColorStateList linkColor) {
        super(family, style, size, color, linkColor);
    }
}
```

## File: src/main/java/com/microsoft/fluentui/tokenautocomplete/TokenCompleteTextView.java
```java
package com.microsoft.fluentui.tokenautocomplete;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.InputFilter;
import android.text.InputType;
import android.text.Layout;
import android.text.NoCopySpan;
import android.text.Selection;
import android.text.SpanWatcher;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.method.QwertyKeyListener;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.ExtractedText;
import android.view.inputmethod.ExtractedTextRequest;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
import android.view.inputmethod.InputMethodManager;
import android.widget.Filter;
import android.widget.ListView;
import android.widget.MultiAutoCompleteTextView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * Gmail style auto complete view with easy token customization
 * override getViewForObject to provide your token view
 * <br>
 * Created by mgod on 9/12/13.
 *
 * @author mgod
 */
public abstract class TokenCompleteTextView<T> extends androidx.appcompat.widget.AppCompatMultiAutoCompleteTextView implements TextView.OnEditorActionListener {
    //Logging
    public static final String TAG = "TokenAutoComplete";

    //When the token is deleted...
    public enum TokenDeleteStyle {
        _Parent, //...do the parent behavior, not recommended
        Clear, //...clear the underlying text
        PartialCompletion, //...return the original text used for completion
        ToString //...replace the token with toString of the token object
    }

    //When the user clicks on a token...
    public enum TokenClickStyle {
        None(false), //...do nothing, but make sure the cursor is not in the token
        Delete(false),//...delete the token
        Select(true),//...select the token. A second click will delete it.
        SelectDeselect(true);

        private boolean mIsSelectable = false;

        TokenClickStyle(final boolean selectable) {
            mIsSelectable = selectable;
        }

        public boolean isSelectable() {
            return mIsSelectable;
        }
    }

    private char[] splitChar = {',', ';'};
    private Tokenizer tokenizer;
    private T selectedObject;
    private TokenListener<T> listener;
    private TokenSpanWatcher spanWatcher;
    private TokenTextWatcher textWatcher;
    private ArrayList<T> objects;
    private List<TokenCompleteTextView<T>.TokenImageSpan> hiddenSpans;
    private TokenDeleteStyle deletionStyle = TokenDeleteStyle._Parent;
    private TokenClickStyle tokenClickStyle = TokenClickStyle.None;
    private CharSequence prefix = "";
    private boolean hintVisible = false;
    private Layout lastLayout = null;
    private boolean allowDuplicates = true;
    private boolean focusChanging = false;
    private boolean initialized = false;
    private boolean performBestGuess = true;
    private boolean savingState = false;
    private boolean shouldFocusNext = false;
    private boolean allowCollapse = true;

    private int tokenLimit = -1;

    /**
     * Add the TextChangedListeners
     */
    protected void addListeners() {
        Editable text = getText();
        if (text != null) {
            text.setSpan(spanWatcher, 0, text.length(), Spanned.SPAN_INCLUSIVE_INCLUSIVE);
            addTextChangedListener(textWatcher);
        }
    }

    /**
     * Remove the TextChangedListeners
     */
    protected void removeListeners() {
        Editable text = getText();
        if (text != null) {
            TokenSpanWatcher[] spanWatchers = text.getSpans(0, text.length(), TokenSpanWatcher.class);
            for (TokenSpanWatcher watcher : spanWatchers) {
                text.removeSpan(watcher);
            }
            removeTextChangedListener(textWatcher);
        }
    }

    /**
     * Initialise the variables and various listeners
     */
    private void init() {
        if (initialized) return;

        // Initialise variables
        setTokenizer(new MultiAutoCompleteTextView.CommaTokenizer());
        objects = new ArrayList<>();
        Editable text = getText();
        assert null != text;
        spanWatcher = new TokenSpanWatcher();
        textWatcher = new TokenTextWatcher();
        hiddenSpans = new ArrayList<>();

        // Initialise TextChangedListeners
        addListeners();

        setTextIsSelectable(false);
        setLongClickable(false);

        //In theory, get the soft keyboard to not supply suggestions. very unreliable < API 11
        setInputType(getInputType() | InputType.TYPE_TEXT_FLAG_NO_SUGGESTIONS | InputType.TYPE_TEXT_FLAG_AUTO_COMPLETE);
        setHorizontallyScrolling(false);

        // Listen to IME action keys
        setOnEditorActionListener(this);

        // Initialise the textfilter (listens for the splitchars)
        setFilters(new InputFilter[]{new InputFilter() {
            @Override
            public CharSequence filter(CharSequence source, int start, int end, Spanned dest, int dstart, int dend) {
                // Token limit check
                if (tokenLimit != -1 && objects.size() == tokenLimit) {
                    return "";
                } else if (source.length() == 1) {//Detect split characters, remove them and complete the current token instead
                    if (isSplitChar(source.charAt(0))) {
                        performCompletion();
                        return "";
                    }
                }

                //We need to not do anything when we would delete the prefix
                if (dstart < prefix.length()) {
                    //when settext is called, which should only be called during
                    //restoring, dstart and dend are 0. If not checked, it will clear out the prefix.
                    //this is why we need to return null in this if condition to preserve state.
                    if (dstart == 0 && dend == 0) {
                        return null;
                    } else if (dend <= prefix.length()) {
                        //Don't do anything
                        return prefix.subSequence(dstart, dend);
                    } else {
                        //Delete everything up to the prefix
                        return prefix.subSequence(dstart, prefix.length());
                    }
                }
                return null;
            }
        }});

        //We had _Parent style during initialization to handle an edge case in the parent
        //now we can switch to Clear, usually the best choice
        setDeletionStyle(TokenDeleteStyle.Clear);
        initialized = true;
    }

    public TokenCompleteTextView(Context context) {
        super(context);
        init();
    }

    public TokenCompleteTextView(Context context, AttributeSet attrs) {
        super(context, attrs);
        init();
    }

    public TokenCompleteTextView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        init();
    }

    @Override
    protected void performFiltering(@NonNull CharSequence text, int start, int end,
                                    int keyCode) {
        if (start < prefix.length()) {
            start = prefix.length();
        }
        Filter filter = getFilter();
        if (filter != null) {
            if (hintVisible) {
                filter.filter("");
            } else {
                filter.filter(text.subSequence(start, end), this);
            }
        }
    }


    @Override
    public void setTokenizer(Tokenizer t) {
        super.setTokenizer(t);
        tokenizer = t;
    }

    /**
     * Set the action to be taken when a Token is removed
     *
     * @param dStyle The TokenDeleteStyle
     */
    public void setDeletionStyle(TokenDeleteStyle dStyle) {
        deletionStyle = dStyle;
    }

    /**
     * Set the action to be taken when a Token is clicked
     *
     * @param cStyle The TokenClickStyle
     */
    @SuppressWarnings("unused")
    public void setTokenClickStyle(TokenClickStyle cStyle) {
        tokenClickStyle = cStyle;
    }

    /**
     * Set the listener that will be notified of changes in the Tokenlist
     *
     * @param l The TokenListener
     */
    public void setTokenListener(TokenListener<T> l) {
        listener = l;
    }

    /**
     * Override if you want to prevent a token from being removed. Defaults to true.
     * @param token the token to check
     * @return false if the token should not be removed, true if it's ok to remove it.
     */
    @SuppressWarnings("unused")
    public boolean isTokenRemovable(T token) {
        return true;
    }

    /**
     * A String of text that is shown before all the tokens inside the EditText
     * (Think "To: " in an email address field. I would advise against this: use a label and a hint.
     *
     * @param p String with the hint
     */
    public void setPrefix(CharSequence p) {
        //Have to clear and set the actual text before saving the prefix to avoid the prefix filter
        prefix = "";
        Editable text = getText();
        if (text != null) {
            text.insert(0, p);
        }
        prefix = p;

        updateHint();
    }

    /**
     * Get the list of Tokens
     *
     * @return List of tokens
     */
    public List<T> getObjects() {
        return objects;
    }

    /**
     * Set a list of characters that should trigger the token creation
     * Because spaces are difficult to handle, we add '§' as an additional splitChar
     *
     * @param splitChar char[] with a characters that trigger the token creation
     */
    public void setSplitChar(char[] splitChar) {
        char[] fixed = splitChar;
        if (splitChar[0] == ' ') {
            fixed = new char[splitChar.length + 1];
            fixed[0] = '§';
            System.arraycopy(splitChar, 0, fixed, 1, splitChar.length);
        }
        this.splitChar = fixed;
        // Keep the tokenizer and splitchars in sync
        this.setTokenizer(new CharacterTokenizer(splitChar));
    }

    /**
     * Sets a single character to trigger the token creation
     *
     * @param splitChar char that triggers the token creation
     */
    @SuppressWarnings("unused")
    public void setSplitChar(char splitChar) {
        setSplitChar(new char[]{splitChar});
    }

    /**
     * Returns true if the character is currently configured as a splitChar
     *
     * @param c the char to test
     * @return boolean
     */
    private boolean isSplitChar(char c) {
        for (char split : splitChar) {
            if (c == split) return true;
        }
        return false;
    }

    /**
     * Sets whether to allow duplicate objects. If false, when the user selects
     * an object that's already in the view, the current text is just cleared.
     * <br>
     * Defaults to true. Requires that the objects implement equals() correctly.
     *
     * @param allow boolean
     */
    @SuppressWarnings("unused")
    public void allowDuplicates(boolean allow) {
        allowDuplicates = allow;
    }

    /**
     * Set whether we try to guess an entry from the autocomplete spinner or allow any text to be
     * entered
     *
     * @param guess true to enable guessing
     */
    @SuppressWarnings("unused")
    public void performBestGuess(boolean guess) {
        performBestGuess = guess;
    }

    /**
     * Set whether the view should collapse to a single line when it loses focus.
     *
     * @param allowCollapse true if it should collapse
     */
    @SuppressWarnings("unused")
    public void allowCollapse(boolean allowCollapse) {
        this.allowCollapse = allowCollapse;
    }

    /**
     * Set a number of tokens limit.
     *
     * @param tokenLimit The number of tokens permitted. -1 value disables limit.
     */
    @SuppressWarnings("unused")
    public void setTokenLimit(int tokenLimit) {
        this.tokenLimit = tokenLimit;
    }

    /**
     * A token view for the object
     *
     * @param object the object selected by the user from the list
     * @return a view to display a token in the text field for the object
     */
    abstract protected View getViewForObject(T object);

    /**
     * Provides a default completion when the user hits , and there is no item in the completion
     * list
     *
     * @param completionText the current text we are completing against
     * @return a best guess for what the user meant to complete
     */
    abstract protected T defaultObject(String completionText);

    /**
     * Correctly build accessibility string for token contents
     *
     * This seems to be a hidden API, but there doesn't seem to be another reasonable way
     * @return custom string for accessibility
     */
    @SuppressWarnings("unused")
    public CharSequence getTextForAccessibility() {
        if (getObjects().size() == 0) {
            return getText();
        }

        SpannableStringBuilder description = new SpannableStringBuilder();
        Editable text = getText();
        int selectionStart = -1;
        int selectionEnd = -1;
        int i;
        //Need to take the existing tet buffer and
        // - replace all tokens with a decent string representation of the object
        // - set the selection span to the corresponding location in the new CharSequence
        for (i = 0; i < text.length(); ++i) {
            //See if this is where we should start the selection
            int origSelectionStart = Selection.getSelectionStart(text);
            if (i == origSelectionStart) {
                selectionStart = description.length();
            }
            int origSelectionEnd = Selection.getSelectionEnd(text);
            if (i == origSelectionEnd) {
                selectionEnd = description.length();
            }

            //Replace token spans
            TokenImageSpan[] tokens = text.getSpans(i, i, TokenImageSpan.class);
            if (tokens.length > 0) {
                TokenImageSpan token = tokens[0];
                description = description.append(tokenizer.terminateToken(token.getToken().toString()));
                i = text.getSpanEnd(token);
                continue;
            }

            description = description.append(text.subSequence(i, i + 1));
        }

        int origSelectionStart = Selection.getSelectionStart(text);
        if (i == origSelectionStart) {
            selectionStart = description.length();
        }
        int origSelectionEnd = Selection.getSelectionEnd(text);
        if (i == origSelectionEnd) {
            selectionEnd = description.length();
        }

        if (selectionStart >= 0 && selectionEnd >= 0) {
            Selection.setSelection(description, selectionStart, selectionEnd);
        }

        return description;
    }

    @Override
    public void onInitializeAccessibilityEvent(AccessibilityEvent event) {
        super.onInitializeAccessibilityEvent(event);

        if (event.getEventType() == AccessibilityEvent.TYPE_VIEW_TEXT_SELECTION_CHANGED) {
            CharSequence text = getTextForAccessibility();
            event.setFromIndex(Selection.getSelectionStart(text));
            event.setToIndex(Selection.getSelectionEnd(text));
            event.setItemCount(text.length());
        }
    }

    private int getCorrectedTokenEnd() {
        Editable editable = getText();
        int cursorPosition = getSelectionEnd();
        return tokenizer.findTokenEnd(editable, cursorPosition);
    }

    private int getCorrectedTokenBeginning(int end) {
        int start = tokenizer.findTokenStart(getText(), end);
        if (start < prefix.length()) {
            start = prefix.length();
        }
        return start;
    }

    protected String currentCompletionText() {
        if (hintVisible) return ""; //Can't have any text if the hint is visible

        Editable editable = getText();
        int end = getCorrectedTokenEnd();
        int start = getCorrectedTokenBeginning(end);

        //Some keyboards add extra spaces when doing corrections, so
        return TextUtils.substring(editable, start, end);
    }

    protected float maxTextWidth() {
        return getWidth() - getPaddingLeft() - getPaddingRight();
    }

    boolean inInvalidate = false;

    @TargetApi(Build.VERSION_CODES.JELLY_BEAN)
    private void api16Invalidate() {
        if (initialized && !inInvalidate) {
            inInvalidate = true;
            setShadowLayer(getShadowRadius(), getShadowDx(), getShadowDy(), getShadowColor());
            inInvalidate = false;
        }
    }

    @Override
    public void invalidate() {
        //Need to force the TextView private mEditor variable to reset as well on API 16 and up
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.JELLY_BEAN) {
            api16Invalidate();
        }

        super.invalidate();
    }

    @Override
    public boolean enoughToFilter() {
        if (tokenizer == null || hintVisible) {
            return false;
        }

        int cursorPosition = getSelectionEnd();

        if (cursorPosition < 0) {
            return false;
        }

        int end = getCorrectedTokenEnd();
        int start = getCorrectedTokenBeginning(end);

        //Don't allow 0 length entries to filter
        return end - start >= Math.max(getThreshold(), 1);
    }

    @Override
    public void performCompletion() {
        if ((getAdapter() == null || getListSelection() == ListView.INVALID_POSITION) && enoughToFilter()) {
            Object bestGuess;
            if (getAdapter() != null && getAdapter().getCount() > 0 && performBestGuess) {
                bestGuess = getAdapter().getItem(0);
            } else {
                bestGuess = defaultObject(currentCompletionText());
            }
            replaceText(convertSelectionToString(bestGuess));
        } else {
            super.performCompletion();
        }
    }

    @Override
    public InputConnection onCreateInputConnection(@NonNull EditorInfo outAttrs) {
        InputConnection superConn = super.onCreateInputConnection(outAttrs);
        if (superConn != null) {
            TokenInputConnection conn = new TokenInputConnection(superConn, true);
            outAttrs.imeOptions &= ~EditorInfo.IME_FLAG_NO_ENTER_ACTION;
            outAttrs.imeOptions |= EditorInfo.IME_FLAG_NO_EXTRACT_UI;
            return conn;
        } else {
            return null;
        }
    }

    /**
     * Create a token and hide the keyboard when the user sends the DONE IME action
     * Use IME_NEXT if you want to create a token and go to the next field
     */
    private void handleDone() {
        // Attempt to complete the current token token
        performCompletion();

        // Hide the keyboard
        InputMethodManager imm = (InputMethodManager) getContext().getSystemService(
                Context.INPUT_METHOD_SERVICE);
        imm.hideSoftInputFromWindow(getWindowToken(), 0);
    }

    @Override
    public boolean onKeyUp(int keyCode, @NonNull KeyEvent event) {
        boolean handled = super.onKeyUp(keyCode, event);
        if (shouldFocusNext) {
            shouldFocusNext = false;
            handleDone();
        }
        return handled;
    }

    @Override
    public boolean onKeyDown(int keyCode, @NonNull KeyEvent event) {
        boolean handled = false;
        switch (keyCode) {
            case KeyEvent.KEYCODE_TAB:
            case KeyEvent.KEYCODE_ENTER:
            case KeyEvent.KEYCODE_DPAD_CENTER:
                if (event.hasNoModifiers()) {
                    shouldFocusNext = true;
                    handled = true;
                }
                break;
            case KeyEvent.KEYCODE_DEL:
                handled = !canDeleteSelection(1) || deleteSelectedObject(false);
                break;
        }

        return handled || super.onKeyDown(keyCode, event);
    }

    private boolean deleteSelectedObject(boolean handled) {
        if (tokenClickStyle != null && tokenClickStyle.isSelectable()) {
            Editable text = getText();
            if (text == null) return handled;

            TokenImageSpan[] spans = text.getSpans(0, text.length(), TokenImageSpan.class);
            for (TokenImageSpan span : spans) {
                if (span.view.isSelected()) {
                    removeSpan(span);
                    handled = true;
                    break;
                }
            }
        }
        return handled;
    }

    @Override
    public boolean onEditorAction(TextView view, int action, KeyEvent keyEvent) {
        if (action == EditorInfo.IME_ACTION_DONE) {
            handleDone();
            return true;
        }
        return false;
    }

    @Override
    public boolean onTouchEvent(@NonNull MotionEvent event) {
        int action = event.getActionMasked();
        Editable text = getText();
        boolean handled = false;

        if (tokenClickStyle == TokenClickStyle.None) {
            handled = super.onTouchEvent(event);
        }

        if (isFocused() && text != null && lastLayout != null && action == MotionEvent.ACTION_UP) {

            int offset = getOffsetForPosition(event.getX(), event.getY());

            if (offset != -1) {
                TokenImageSpan[] links = text.getSpans(offset, offset, TokenImageSpan.class);

                if (links.length > 0) {
                    links[0].onClick();
                    handled = true;
                } else {
                    //We didn't click on a token, so if any are selected, we should clear that
                    clearSelections();
                }
            }
        }

        if (!handled && tokenClickStyle != TokenClickStyle.None) {
            handled = super.onTouchEvent(event);
        }
        return handled;

    }

    @Override
    protected void onSelectionChanged(int selStart, int selEnd) {
        if (hintVisible) {
            //Don't let users select the hint
            selStart = 0;
        }
        //Never let users select text
        selEnd = selStart;

        if (tokenClickStyle != null && tokenClickStyle.isSelectable()) {
            Editable text = getText();
            if (text != null) {
                clearSelections();
            }
        }


        if (prefix != null && (selStart < prefix.length() || selEnd < prefix.length())) {
            //Don't let users select the prefix
            setSelection(prefix.length());
        } else {
            Editable text = getText();
            if (text != null) {
                //Make sure if we are in a span, we select the spot 1 space after the span end
                TokenImageSpan[] spans = text.getSpans(selStart, selEnd, TokenImageSpan.class);
                for (TokenImageSpan span : spans) {
                    int spanEnd = text.getSpanEnd(span);
                    if (selStart <= spanEnd && text.getSpanStart(span) < selStart) {
                        if (spanEnd == text.length())
                            setSelection(spanEnd);
                        else
                            setSelection(spanEnd + 1);
                        return;
                    }
                }

            }

            super.onSelectionChanged(selStart, selEnd);
        }
    }

    @Override
    protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
        super.onLayout(changed, left, top, right, bottom);
        lastLayout = getLayout(); //Used for checking text positions
    }

    /**
     * Collapse the view by removing all the tokens not on the first line. Displays a "+x" token.
     * Restores the hidden tokens when the view gains focus.
     *
     * @param hasFocus boolean indicating whether we have the focus or not.
     */
    public void performCollapse(boolean hasFocus) {
        // Pause the spanwatcher
        focusChanging = true;
        if (!hasFocus) {
            Editable text = getText();
            if (text != null && lastLayout != null) {
                // Display +x thingy if appropriate
                int lastPosition = lastLayout.getLineVisibleEnd(0);
                TokenImageSpan[] tokens = text.getSpans(0, lastPosition, TokenImageSpan.class);
                int count = objects.size() - tokens.length;

                // Make sure we don't add more than 1 CountSpan
                CountSpan[] countSpans = text.getSpans(0, lastPosition, CountSpan.class);

                if (count > 0 && countSpans.length == 0) {
                    lastPosition++;
                    CountSpan cs = new CountSpan(count, getContext(), getCurrentTextColor(),
                            (int) getTextSize(), (int) maxTextWidth());
                    text.insert(lastPosition, cs.text);

                    float newWidth = Layout.getDesiredWidth(text, 0,
                            lastPosition + cs.text.length(), lastLayout.getPaint());
                    //If the +x span will be moved off screen, move it one token in
                    if (newWidth > maxTextWidth()) {
                        text.delete(lastPosition, lastPosition + cs.text.length());

                        if (tokens.length > 0) {
                            TokenImageSpan token = tokens[tokens.length - 1];
                            lastPosition = text.getSpanStart(token);
                            cs.setCount(count + 1);
                        } else {
                            lastPosition = prefix.length();
                        }

                        text.insert(lastPosition, cs.text);
                    }

                    text.setSpan(cs, lastPosition, lastPosition + cs.text.length(), Spanned.SPAN_EXCLUSIVE_EXCLUSIVE);

                    // Remove all spans behind the count span and hold them in the hiddenSpans List
                    // The generic type information is not captured in TokenImageSpan.class so we have
                    // to perform a cast for the returned spans to coerce them to the proper generic type.
                    hiddenSpans = new ArrayList<>(Arrays.asList(
                            (TokenImageSpan[]) text.getSpans(lastPosition + cs.text.length(), text.length(), TokenImageSpan.class)));
                    for (TokenImageSpan span : hiddenSpans) {
                        removeSpan(span);
                    }
                }
            }
        } else {
            final Editable text = getText();
            if (text != null) {
                CountSpan[] counts = text.getSpans(0, text.length(), CountSpan.class);
                for (CountSpan count : counts) {
                    text.delete(text.getSpanStart(count), text.getSpanEnd(count));
                    text.removeSpan(count);
                }

                // Restore the spans we have hidden
                for (TokenImageSpan span : hiddenSpans) {
                    insertSpan(span);
                }
                hiddenSpans.clear();

                if (hintVisible) {
                    setSelection(prefix.length());
                } else {
                    // Slightly delay moving the cursor to the end. Inserting spans seems to take
                    // some time. (ugly, but what can you do :( )
                    postDelayed(new Runnable() {
                        @Override
                        public void run() {
                            setSelection(text.length());
                        }
                    }, 10);
                }

                TokenSpanWatcher[] watchers = getText().getSpans(0, getText().length(), TokenSpanWatcher.class);
                if (watchers.length == 0) {
                    //Someone removes watchers? I'm pretty sure this isn't in this code... -mgod
                    text.setSpan(spanWatcher, 0, text.length(), Spanned.SPAN_INCLUSIVE_INCLUSIVE);
                }
            }
        }
        // Start the spanwatcher
        focusChanging = false;
    }

    @Override
    public void onFocusChanged(boolean hasFocus, int direction, Rect previous) {
        super.onFocusChanged(hasFocus, direction, previous);

        // See if the user left any unfinished tokens and finish them
        if (!hasFocus) performCompletion();

        // Clear sections when focus changes to avoid a token remaining selected
        clearSelections();

        // Collapse the view to a single line
        if (allowCollapse) performCollapse(hasFocus);
    }

    @SuppressWarnings("unchecked cast")
    @Override
    protected CharSequence convertSelectionToString(Object object) {
        selectedObject = (T) object;

        //if the token gets deleted, this text will get put in the field instead
        switch (deletionStyle) {
            case Clear:
                return "";
            case PartialCompletion:
                return currentCompletionText();
            case ToString:
                return object != null ? object.toString() : "";
            case _Parent:
            default:
                return super.convertSelectionToString(object);

        }
    }

    private SpannableStringBuilder buildSpannableForText(CharSequence text) {
        //Add a sentinel , at the beginning so the user can remove an inner token and keep auto-completing
        //This is a hack to work around the fact that the tokenizer cannot directly detect spans
        //We don't want a space as the sentinel, and splitChar[0] is guaranteed to be something non-space
        char sentinel = splitChar[0];
        return new SpannableStringBuilder(String.valueOf(sentinel) + tokenizer.terminateToken(text));
    }

    protected TokenImageSpan buildSpanForObject(T obj) {
        if (obj == null) {
            return null;
        }
        View tokenView = getViewForObject(obj);
        return new TokenImageSpan(tokenView, obj, (int) maxTextWidth());
    }

    @Override
    protected void replaceText(CharSequence text) {
        clearComposingText();

        // Don't build a token for an empty String
        if (selectedObject == null || selectedObject.toString().equals("")) return;

        SpannableStringBuilder ssb = buildSpannableForText(text);
        TokenImageSpan tokenSpan = buildSpanForObject(selectedObject);

        Editable editable = getText();
        int cursorPosition = getSelectionEnd();
        int end = cursorPosition;
        int start = cursorPosition;
        if (!hintVisible) {
            //If you force the drop down to show when the hint is visible, you can run a completion
            //on the hint. If the hint includes commas, this truncates and inserts the hint in the field
            end = getCorrectedTokenEnd();
            start = getCorrectedTokenBeginning(end);
        }

        String original = TextUtils.substring(editable, start, end);

        if (editable != null) {
            if (tokenSpan == null) {
                editable.replace(start, end, "");
            } else if (!allowDuplicates && objects.contains(tokenSpan.getToken())) {
                editable.replace(start, end, "");
            } else {
                QwertyKeyListener.markAsReplaced(editable, start, end, original);
                editable.replace(start, end, ssb);
                editable.setSpan(tokenSpan, start, start + ssb.length() - 1, Spanned.SPAN_EXCLUSIVE_EXCLUSIVE);
            }
        }
    }

    @Override
    public boolean extractText(@NonNull ExtractedTextRequest request, @NonNull ExtractedText outText) {
        try {
            return super.extractText(request, outText);
        } catch (IndexOutOfBoundsException ignored) {
            Log.d(TAG, "extractText hit IndexOutOfBoundsException. This may be normal.", ignored);
            return false;
        }
    }

    /**
     * Append a token object to the object list
     *
     * @param object     the object to add to the displayed tokens
     * @param sourceText the text used if this object is deleted
     */
    public void addObject(final T object, final CharSequence sourceText) {
        post(new Runnable() {
            @Override
            public void run() {
                if (object == null) return;
                if (!allowDuplicates && objects.contains(object)) return;
                if (tokenLimit != -1 && objects.size() == tokenLimit) return;
                insertSpan(object, sourceText);
                if (getText() != null && isFocused()) setSelection(getText().length());
            }
        });
    }

    /**
     * Shorthand for addObject(object, "")
     *
     * @param object the object to add to the displayed token
     */
    public void addObject(T object) {
        addObject(object, "");
    }

    /**
     * Remove an object from the token list. Will remove duplicates or do nothing if no object
     * present in the view.
     *
     * @param object object to remove, may be null or not in the view
     */
    public void removeObject(final T object) {
        post(new Runnable() {
            @Override
            public void run() {
                //To make sure all the appropriate callbacks happen, we just want to piggyback on the
                //existing code that handles deleting spans when the text changes
                Editable text = getText();
                if (text == null) return;

                // If the object is currently hidden, remove it
                ArrayList<TokenImageSpan> toRemove = new ArrayList<>();
                for (TokenImageSpan span : hiddenSpans) {
                    if (span.getToken().equals(object)) {
                        toRemove.add(span);
                    }
                }
                for (TokenImageSpan span : toRemove) {
                    hiddenSpans.remove(span);
                    // Remove it from the state and fire the callback
                    spanWatcher.onSpanRemoved(text, span, 0, 0);
                }

                updateCountSpan();

                // If the object is currently visible, remove it
                TokenImageSpan[] spans = text.getSpans(0, text.length(), TokenImageSpan.class);
                for (TokenImageSpan span : spans) {
                    if (span.getToken().equals(object)) {
                        removeSpan(span);
                    }
                }
            }
        });
    }

    /**
     * Set the count span the current number of hidden objects
     */
    private void updateCountSpan() {
        Editable text = getText();
        CountSpan[] counts = text.getSpans(0, text.length(), CountSpan.class);
        int newCount = hiddenSpans.size();
        for (CountSpan count : counts) {
            if (newCount == 0) {
                // No more hidden Objects: remove the CountSpan
                text.delete(text.getSpanStart(count), text.getSpanEnd(count));
                text.removeSpan(count);
            } else {
                // Update the CountSpan
                count.setCount(hiddenSpans.size());
                text.setSpan(count, text.getSpanStart(count), text.getSpanEnd(count), Spanned.SPAN_EXCLUSIVE_EXCLUSIVE);
            }
        }
    }

    /**
     * Remove a span from the current EditText and fire the appropriate callback
     *
     * @param span TokenImageSpan to be removed
     */
    private void removeSpan(TokenImageSpan span) {
        Editable text = getText();
        if (text == null) return;

        //If the spanwatcher has been removed, we need to also manually trigger onSpanRemoved
        TokenSpanWatcher[] spans = text.getSpans(0, text.length(), TokenSpanWatcher.class);
        if (spans.length == 0) {
            spanWatcher.onSpanRemoved(text, span, text.getSpanStart(span), text.getSpanEnd(span));
        }

        //Add 1 to the end because we put a " " at the end of the spans when adding them
        text.delete(text.getSpanStart(span), text.getSpanEnd(span) + 1);

        if (allowCollapse && !isFocused()) {
            updateCountSpan();
        }
    }

    /**
     * Insert a new span for an Object
     *
     * @param object     Object to create a span for
     * @param sourceText CharSequence to show when the span is removed
     */
    private void insertSpan(T object, CharSequence sourceText) {
        SpannableStringBuilder ssb = buildSpannableForText(sourceText);
        TokenImageSpan tokenSpan = buildSpanForObject(object);

        Editable editable = getText();
        if (editable == null) return;

        // If we're focused, or haven't hidden any objects yet, we can try adding it
        if (!allowCollapse || isFocused() || hiddenSpans.isEmpty()) {
            int offset = editable.length();
            //There might be a hint visible...
            if (hintVisible) {
                //...so we need to put the object in in front of the hint
                offset = prefix.length();
                editable.insert(offset, ssb);
            } else {
                String completionText = currentCompletionText();
                if (completionText != null && completionText.length() > 0) {
                    // The user has entered some text that has not yet been tokenized.
                    // Find the beginning of this text and insert the new token there.
                    offset = TextUtils.indexOf(editable, completionText);
                }
                editable.insert(offset, ssb);
            }
            editable.setSpan(tokenSpan, offset, offset + ssb.length() - 1, Spanned.SPAN_EXCLUSIVE_EXCLUSIVE);

            // If we're not focused: collapse the view if necessary
            if (!isFocused() && allowCollapse) performCollapse(false);

            //In some cases, particularly the 1 to nth objects when not focused and restoring
            //onSpanAdded doesn't get called
            if (!objects.contains(object)) {
                spanWatcher.onSpanAdded(editable, tokenSpan, 0, 0);
            }
        } else {
            hiddenSpans.add(tokenSpan);
            //Need to manually call onSpanAdded here as we're not putting the span on the text
            spanWatcher.onSpanAdded(editable, tokenSpan, 0, 0);
            updateCountSpan();
        }
    }

    private void insertSpan(T object) {
        String spanString;
        // The information about the original text is lost here, so other than "toString" we have no data
        if (deletionStyle == TokenDeleteStyle.ToString) {
            spanString = object != null ? object.toString() : "";
        } else {
            spanString = "";
        }

        insertSpan(object, spanString);
    }

    private void insertSpan(TokenImageSpan span) {
        insertSpan(span.getToken());
    }

    /**
     * Remove all objects from the token list.
     * We're handling this separately because removeObject doesn't always reliably trigger
     * onSpanRemoved when called too fast.
     * If removeObject is working for you, you probably shouldn't be using this.
     */
    @SuppressWarnings("unused")
    public void clear() {
        post(new Runnable() {
            @Override
            public void run() {
                // If there's no text, we're already empty
                Editable text = getText();
                if (text == null) return;

                // Get all spans in the EditText and remove them
                TokenImageSpan[] spans = text.getSpans(0, text.length(), TokenImageSpan.class);
                for (TokenImageSpan span : spans) {
                    removeSpan(span);

                    // Make sure the callback gets called
                    spanWatcher.onSpanRemoved(text, span, text.getSpanStart(span), text.getSpanEnd(span));
                }
            }
        });
    }

    private void updateHint() {
        Editable text = getText();
        CharSequence hintText = getHint();
        if (text == null || hintText == null) {
            return;
        }

        //Show hint if we need to
        if (prefix.length() > 0) {
            HintSpan[] hints = text.getSpans(0, text.length(), HintSpan.class);
            HintSpan hint = null;
            int testLength = prefix.length();
            if (hints.length > 0) {
                hint = hints[0];
                testLength += text.getSpanEnd(hint) - text.getSpanStart(hint);
            }

            if (text.length() == testLength) {
                hintVisible = true;

                if (hint != null) {
                    return;//hint already visible
                }

                //We need to display the hint manually
                Typeface tf = getTypeface();
                int style = Typeface.NORMAL;
                if (tf != null) {
                    style = tf.getStyle();
                }
                ColorStateList colors = getHintTextColors();

                HintSpan hintSpan = new HintSpan(null, style, (int) getTextSize(), colors, colors);
                text.insert(prefix.length(), hintText);
                text.setSpan(hintSpan, prefix.length(), prefix.length() + getHint().length(), Spanned.SPAN_EXCLUSIVE_EXCLUSIVE);
                setSelection(prefix.length());
            } else {
                if (hint == null) {
                    return; //hint already removed
                }

                //Remove the hint. There should only ever be one
                int sStart = text.getSpanStart(hint);
                int sEnd = text.getSpanEnd(hint);

                text.removeSpan(hint);
                text.replace(sStart, sEnd, "");

                hintVisible = false;
            }
        }
    }

    private void clearSelections() {
        if (tokenClickStyle == null || !tokenClickStyle.isSelectable()) return;

        Editable text = getText();
        if (text == null) return;

        TokenImageSpan[] tokens = text.getSpans(0, text.length(), TokenImageSpan.class);
        for (TokenImageSpan token : tokens) {
            token.view.setSelected(false);
        }
        invalidate();
    }

    protected class TokenImageSpan extends ViewSpan implements NoCopySpan {
        private T token;

        public TokenImageSpan(View d, T token, int maxWidth) {
            super(d, maxWidth);
            this.token = token;
        }

        public T getToken() {
            return this.token;
        }

        public void onClick() {
            Editable text = getText();
            if (text == null) return;

            switch (tokenClickStyle) {
                case Select:
                case SelectDeselect:

                    if (!view.isSelected()) {
                        clearSelections();
                        view.setSelected(true);
                        break;
                    }

                    if (tokenClickStyle == TokenClickStyle.SelectDeselect || !isTokenRemovable(token)) {
                        view.setSelected(false);
                        invalidate();
                        break;
                    }
                    //If the view is already selected, we want to delete it
                case Delete:
                    if (isTokenRemovable(token)) {
                        removeSpan(this);
                    }
                    break;
                case None:
                default:
                    if (getSelectionStart() != text.getSpanEnd(this) + 1) {
                        //Make sure the selection is not in the middle of the span
                        setSelection(text.getSpanEnd(this) + 1);
                    }
            }
        }
    }

    public interface TokenListener<T> {
        void onTokenAdded(T token);

        void onTokenRemoved(T token);
    }

    private class TokenSpanWatcher implements SpanWatcher {

        @SuppressWarnings("unchecked cast")
        @Override
        public void onSpanAdded(Spannable text, Object what, int start, int end) {
            if (what instanceof TokenCompleteTextView<?>.TokenImageSpan && !savingState && !focusChanging) {
                TokenImageSpan token = (TokenImageSpan) what;
                objects.add(token.getToken());

                if (listener != null)
                    listener.onTokenAdded(token.getToken());
            }
        }

        @SuppressWarnings("unchecked cast")
        @Override
        public void onSpanRemoved(Spannable text, Object what, int start, int end) {
            if (what instanceof TokenCompleteTextView<?>.TokenImageSpan && !savingState && !focusChanging) {
                TokenImageSpan token = (TokenImageSpan) what;
                if (objects.contains(token.getToken())) {
                    objects.remove(token.getToken());
                }

                if (listener != null)
                    listener.onTokenRemoved(token.getToken());
            }
        }

        @Override
        public void onSpanChanged(Spannable text, Object what, int ostart, int oend, int nstart, int nend) {
        }
    }

    /**
     * deletes tokens if you delete the space in front of them
     * without this, you get the auto-complete dropdown a character early
     */
    private class TokenTextWatcher implements TextWatcher {
        ArrayList<TokenImageSpan> spansToRemove = new ArrayList<>();

        protected void removeToken(TokenImageSpan token, Editable text) {
            text.removeSpan(token);
        }

        @Override
        public void beforeTextChanged(CharSequence s, int start, int count, int after) {
            // count > 0 means something will be deleted
            if (count > 0 && getText() != null) {
                Editable text = getText();
                int end = start + count;

                //If we're deleting a space, we want spans from 1 character before this start
                if (text.charAt(start) == ' ') {
                    start -= 1;
                }

                TokenImageSpan[] spans = text.getSpans(start, end, TokenImageSpan.class);

                //NOTE: I'm not completely sure this won't cause problems if we get stuck in a text changed loop
                //but it appears to work fine. Spans will stop getting removed if this breaks.
                ArrayList<TokenImageSpan> spansToRemove = new ArrayList<>();
                for (TokenImageSpan token : spans) {
                    if (text.getSpanStart(token) < end && start < text.getSpanEnd(token)) {
                        spansToRemove.add(token);
                    }
                }
                this.spansToRemove = spansToRemove;
            }
        }

        @Override
        public void afterTextChanged(Editable text) {
            ArrayList<TokenImageSpan> spansCopy = new ArrayList<>(spansToRemove);
            spansToRemove.clear();
            for (TokenImageSpan token : spansCopy) {
                int spanStart = text.getSpanStart(token);
                int spanEnd = text.getSpanEnd(token);

                removeToken(token, text);

                //The end of the span is the character index after it
                spanEnd--;

                //Delete any extra split chars
                if (spanEnd >= 0 && isSplitChar(text.charAt(spanEnd))) {
                    text.delete(spanEnd, spanEnd + 1);
                }

                if (spanStart >= 0 && isSplitChar(text.charAt(spanStart))) {
                    text.delete(spanStart, spanStart + 1);
                }
            }

            clearSelections();
            updateHint();
        }

        @Override
        public void onTextChanged(CharSequence s, int start, int before, int count) {
        }
    }

    protected ArrayList<Serializable> getSerializableObjects() {
        ArrayList<Serializable> serializables = new ArrayList<>();
        for (Object obj : getObjects()) {
            if (obj instanceof Serializable) {
                serializables.add((Serializable) obj);
            } else {
                Log.e(TAG, "Unable to save '" + obj + "'");
            }
        }
        if (serializables.size() != objects.size()) {
            String message = "You should make your objects Serializable or override\n" +
                    "getSerializableObjects and convertSerializableArrayToObjectArray";
            Log.e(TAG, message);
        }

        return serializables;
    }

    @SuppressWarnings("unchecked")
    protected ArrayList<T> convertSerializableArrayToObjectArray(ArrayList<Serializable> s) {
        return (ArrayList<T>) (ArrayList) s;
    }

    @Override
    public Parcelable onSaveInstanceState() {
        ArrayList<Serializable> baseObjects = getSerializableObjects();

        //We don't want to save the listeners as part of the parent
        //onSaveInstanceState, so remove them first
        removeListeners();

        //ARGH! Apparently, saving the parent state on 2.3 mutates the spannable
        //prevent this mutation from triggering add or removes of token objects ~mgod
        savingState = true;
        Parcelable superState = super.onSaveInstanceState();
        savingState = false;
        SavedState state = new SavedState(superState);

        state.prefix = prefix;
        state.allowCollapse = allowCollapse;
        state.allowDuplicates = allowDuplicates;
        state.performBestGuess = performBestGuess;
        state.tokenClickStyle = tokenClickStyle;
        state.tokenDeleteStyle = deletionStyle;
        state.baseObjects = baseObjects;
        state.splitChar = splitChar;

        //So, when the screen is locked or some other system event pauses execution,
        //onSaveInstanceState gets called, but it won't restore state later because the
        //activity is still in memory, so make sure we add the listeners again
        //They should not be restored in onInstanceState if the app is actually killed
        //as we removed them before the parent saved instance state, so our adding them in
        //onRestoreInstanceState is good.
        addListeners();

        return state;
    }

    @Override
    public void onRestoreInstanceState(Parcelable state) {
        if (!(state instanceof SavedState)) {
            super.onRestoreInstanceState(state);
            return;
        }

        SavedState ss = (SavedState) state;
        super.onRestoreInstanceState(ss.getSuperState());

        setText(ss.prefix);
        prefix = ss.prefix;
        updateHint();
        allowCollapse = ss.allowCollapse;
        allowDuplicates = ss.allowDuplicates;
        performBestGuess = ss.performBestGuess;
        tokenClickStyle = ss.tokenClickStyle;
        deletionStyle = ss.tokenDeleteStyle;
        splitChar = ss.splitChar;

        addListeners();
        for (T obj : convertSerializableArrayToObjectArray(ss.baseObjects)) {
            addObject(obj);
        }

        // Collapse the view if necessary
        if (!isFocused() && allowCollapse) {
            post(new Runnable() {
                @Override
                public void run() {
                    //Resize the view and display the +x if appropriate
                    performCollapse(isFocused());
                }
            });
        }
    }

    /**
     * Handle saving the token state
     */
    private static class SavedState extends BaseSavedState {
        CharSequence prefix;
        boolean allowCollapse;
        boolean allowDuplicates;
        boolean performBestGuess;
        TokenClickStyle tokenClickStyle;
        TokenDeleteStyle tokenDeleteStyle;
        ArrayList<Serializable> baseObjects;
        char[] splitChar;

        @SuppressWarnings("unchecked")
        SavedState(Parcel in) {
            super(in);
            prefix = TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(in);
            allowCollapse = in.readInt() != 0;
            allowDuplicates = in.readInt() != 0;
            performBestGuess = in.readInt() != 0;
            tokenClickStyle = TokenClickStyle.values()[in.readInt()];
            tokenDeleteStyle = TokenDeleteStyle.values()[in.readInt()];
            baseObjects = (ArrayList<Serializable>) in.readSerializable();
            splitChar = in.createCharArray();
        }

        SavedState(Parcelable superState) {
            super(superState);
        }

        @Override
        public void writeToParcel(@NonNull Parcel out, int flags) {
            super.writeToParcel(out, flags);
            TextUtils.writeToParcel(prefix, out, 0);
            out.writeInt(allowCollapse ? 1 : 0);
            out.writeInt(allowDuplicates ? 1 : 0);
            out.writeInt(performBestGuess ? 1 : 0);
            out.writeInt(tokenClickStyle.ordinal());
            out.writeInt(tokenDeleteStyle.ordinal());
            out.writeSerializable(baseObjects);
            out.writeCharArray(splitChar);
        }

        @Override
        public String toString() {
            String str = "TokenCompleteTextView.SavedState{"
                    + Integer.toHexString(System.identityHashCode(this))
                    + " tokens=" + baseObjects;
            return str + "}";
        }

        @SuppressWarnings("hiding")
        public static final Parcelable.Creator<SavedState> CREATOR
                = new Parcelable.Creator<SavedState>() {
            public SavedState createFromParcel(Parcel in) {
                return new SavedState(in);
            }

            public SavedState[] newArray(int size) {
                return new SavedState[size];
            }
        };
    }

    /**
     * Checks if selection can be deleted. This method is called from TokenInputConnection .
     * @param beforeLength the number of characters before the current selection end to check
     * @return true if there are no non-deletable pieces of the section
     */
    @SuppressWarnings("unused")
    public boolean canDeleteSelection(int beforeLength) {
        if (objects.size() < 1) return true;

        // if beforeLength is 1, we either have no selection or the call is coming from OnKey Event.
        // In these scenarios, getSelectionStart() will return the correct value.

        int endSelection = getSelectionEnd();
        int startSelection = beforeLength == 1 ? getSelectionStart() : endSelection - beforeLength;

        Editable text = getText();
        TokenImageSpan[] spans = text.getSpans(0, text.length(), TokenImageSpan.class);

        // Iterate over all tokens and allow the deletion
        // if there are no tokens not removable in the selection
        for (TokenImageSpan span : spans) {
            int startTokenSelection = text.getSpanStart(span);
            int endTokenSelection = text.getSpanEnd(span);

            // moving on, no need to check this token
            if (isTokenRemovable(span.token)) continue;

            if (startSelection == endSelection) {
                // Delete single
                if (endTokenSelection + 1 == endSelection) {
                    return false;
                }
            } else {
                // Delete range
                // Don't delete if a non removable token is in range
                if (startSelection <= startTokenSelection
                        && endTokenSelection + 1 <= endSelection) {
                    return false;
                }
            }
        }
        return true;
    }

    private class TokenInputConnection extends InputConnectionWrapper {

        public TokenInputConnection(InputConnection target, boolean mutable) {
            super(target, mutable);
        }

        // This will fire if the soft keyboard delete key is pressed.
        // The onKeyPressed method does not always do this.
        @Override
        public boolean deleteSurroundingText(int beforeLength, int afterLength) {
            // Shouldn't be able to delete any text with tokens that are not removable
            if (!canDeleteSelection(beforeLength)) return false;

            //Shouldn't be able to delete prefix, so don't do anything
            if (getSelectionStart() <= prefix.length()) {
                beforeLength = 0;
                return deleteSelectedObject(false) || super.deleteSurroundingText(beforeLength, afterLength);
            }

            return super.deleteSurroundingText(beforeLength, afterLength);
        }
    }
}
```

## File: src/main/java/com/microsoft/fluentui/tokenautocomplete/ViewSpan.java
```java
package com.microsoft.fluentui.tokenautocomplete;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.style.ReplacementSpan;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;

/**
 * Span that holds a view it draws when rendering
 *
 * Created on 2/3/15.
 * @author mgod
 */
public class ViewSpan extends ReplacementSpan {
    protected View view;
    private int maxWidth;

    public ViewSpan(View v, int maxWidth) {
        super();
        this.maxWidth = maxWidth;
        view = v;
        view.setLayoutParams(new ViewGroup.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT));
    }

    private void prepView() {
        int widthSpec = View.MeasureSpec.makeMeasureSpec(maxWidth, View.MeasureSpec.AT_MOST);
        int heightSpec = View.MeasureSpec.makeMeasureSpec(0, View.MeasureSpec.UNSPECIFIED);

        view.measure(widthSpec, heightSpec);
        view.layout(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight());
    }

    public void draw(Canvas canvas, CharSequence text, int start, int end, float x, int top, int y, int bottom, Paint paint) {
        prepView();

        canvas.save();
        //Centering the token looks like a better strategy that aligning the bottom
        int padding = (bottom - top - view.getBottom()) / 2;
        canvas.translate(x, bottom - view.getBottom() - padding);
        view.draw(canvas);
        canvas.restore();
    }

    public int getSize(@NonNull Paint paint, CharSequence charSequence, int i, int i2, Paint.FontMetricsInt fm) {
        prepView();

        if (fm != null) {
            //We need to make sure the layout allots enough space for the view
            int height = view.getMeasuredHeight();
            int need = height - (fm.descent - fm.ascent);
            if (need > 0) {
                int ascent = need / 2;
                //This makes sure the text drawing area will be tall enough for the view
                fm.descent += need - ascent;
                fm.ascent -= ascent;
                fm.bottom += need - ascent;
                fm.top -= need / 2;
            }
        }

        return view.getRight();
    }
}
```

## File: src/main/java/com/microsoft/fluentui/tokenized/peoplepicker/PeoplePicker.kt
```kotlin
package com.microsoft.fluentui.tokenized.peoplepicker

import android.graphics.Bitmap
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.ExperimentalLayoutApi
import androidx.compose.foundation.layout.FlowRow
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.text.BasicText
import androidx.compose.foundation.text.KeyboardActions
import androidx.compose.foundation.text.KeyboardOptions
import androidx.compose.runtime.Composable
import androidx.compose.runtime.MutableState
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateListOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.saveable.Saver
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.runtime.setValue
import androidx.compose.runtime.snapshots.SnapshotStateList
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.input.key.Key
import androidx.compose.ui.input.key.key
import androidx.compose.ui.input.key.onKeyEvent
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.semantics.contentDescription
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.text.TextStyle
import com.microsoft.fluentui.icons.SearchBarIcons
import com.microsoft.fluentui.icons.searchbaricons.Dismisscircle
import com.microsoft.fluentui.peoplepicker.R
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.ControlTokens
import com.microsoft.fluentui.theme.token.FluentIcon
import com.microsoft.fluentui.theme.token.controlTokens.AvatarStatus
import com.microsoft.fluentui.theme.token.controlTokens.PeoplePickerInfo
import com.microsoft.fluentui.theme.token.controlTokens.PeoplePickerTokens
import com.microsoft.fluentui.theme.token.controlTokens.PersonaChipStyle
import com.microsoft.fluentui.theme.token.controlTokens.PersonaChipTokens
import com.microsoft.fluentui.tokenized.controls.TextField
import com.microsoft.fluentui.tokenized.persona.Person
import com.microsoft.fluentui.tokenized.persona.PersonaChip

/**
 * API to create a customized PeoplePicker for users to add a list of PersonaChips
 *
 * Whenever the user edits the text or a new PersonaChip is added onValueChange is called with the most up to date data
 * with which developer is expected to update their state.
 *
 * PeoplePicker uses [PeoplePickerItemData] to represent a PersonaChip. This is a wrapper around [Person].
 *
 * Note: Use rememberPeoplePickerState function on selectedPeople list to create a rememberSaveable state for PeoplePicker.
 *
 * @param selectedPeopleList List of PersonaChips to be shown in PeoplePicker.
 * @param onValueChange The callback that is triggered when the input service updates the text or [selectedPeopleList].
 * An updated text and List of selectedPeople comes as a parameter for the callback
 * @param modifier Optional modifier for the TextField
 * @param onBackPress The callback that is triggered when the back button is pressed.
 * @param onChipClick The callback that is triggered when a PersonaChip is clicked.
 * @param onChipCloseClick The callback that is triggered when the close button of a PersonaChip is clicked.
 * Note: use this callback to show the cancel button for a persona chip. To disable/not show the close button leave this callback as null.
 * @param chipValidation The callback that is triggered when a PersonaChip is added. This callback is used to validate
 * the PersonaChip before adding it to the list of selectedPeople.
 * @param onTextEntered The callback that is triggered when the user clicks done on the keyboard.
 * @param label String which acts as a description for the TextField.
 * @param assistiveText String which assists users with the TextField
 * @param errorString String to describe the error. TextField goes in error mode if this is provided.
 * @param searchHint String to be shown as hint when the PeoplePicker is in rest state.
 * @param leadingRestIcon Icon which is displayed when the textField is in rest state.
 * @param leadingFocusIcon Icon which is displayed when the textField is in focus state.
 * @param leadingIconContentDescription String which acts as content description for leading icon.
 * @param trailingAccessoryIcon Icon which is displayed towards the end of textField and mainly
 * acts as dismiss icon.
 * @param peoplePickerContentDescription String which acts as content description for the PeoplePicker. Add content description for accessibility description.
 * @param peoplePickerTokens Customization options for the PeoplePicker.
 * @param personaChipTokens Customization options for the PersonaChip.
 */
@OptIn(ExperimentalLayoutApi::class)
@Composable
fun PeoplePicker(
    selectedPeopleList: MutableList<PeoplePickerItemData> = mutableStateListOf(),
    onValueChange: (String, MutableList<PeoplePickerItemData>) -> Unit,
    modifier: Modifier = Modifier,
    onBackPress: ((String, PeoplePickerItemData?) -> Unit)? = null,
    onChipClick: ((PeoplePickerItemData) -> Unit)? = null,
    onChipCloseClick: ((PeoplePickerItemData) -> Unit)? = null,
    chipValidation: (Person) -> PersonaChipStyle = { PersonaChipStyle.Neutral },
    onTextEntered: ((String) -> Unit)? = null,
    label: String? = null,
    assistiveText: String? = null,
    errorString: String? = null,
    searchHint: String? = null,
    leadingRestIcon: ImageVector? = null,
    leadingFocusIcon: ImageVector? = null,
    leadingIconContentDescription: String? = null,
    trailingAccessoryIcon: FluentIcon? = FluentIcon(
        SearchBarIcons.Dismisscircle,
        contentDescription = LocalContext.current.resources.getString(R.string.fluentui_clear_text)
    ),
    peoplePickerContentDescription: String? = null,
    peoplePickerTokens: PeoplePickerTokens? = null,
    personaChipTokens: PersonaChipTokens? = null
) {
    val themeID =
        FluentTheme.themeID    //Adding This only for recomposition in case of Token Updates. Unused otherwise.
    val token = peoplePickerTokens
        ?: FluentTheme.controlTokens.tokens[ControlTokens.ControlType.PeoplePickerControlType] as PeoplePickerTokens

    val peoplePickerInfo = PeoplePickerInfo()
    val chipHorizontalSpacing = token.chipHorizontalSpacing(peoplePickerInfo = peoplePickerInfo)
    val chipVerticalSpacing = token.chipVerticalSpacing(peoplePickerInfo = peoplePickerInfo)
    var queryText by rememberSaveable { mutableStateOf("") }
    var selectedPeopleListSize by rememberSaveable { mutableStateOf(0) }
    var lastAddedPerson by rememberSaveable { mutableStateOf(Person()) }
    var lastRemovedPerson by rememberSaveable { mutableStateOf(Person()) }
    var isAdded: Boolean by rememberSaveable { mutableStateOf(true) }
    var accessibilityAnnouncement by rememberSaveable { mutableStateOf("") }

    TextField(
        modifier = modifier
            .onKeyEvent {
                if (it.key == Key.Backspace) {
                    if (onBackPress != null) {
                        onBackPress.invoke(queryText, selectedPeopleList.lastOrNull())
                        onValueChange(queryText, selectedPeopleList)
                    }
                }
                false
            },
        value = queryText,
        onValueChange = {
            queryText = it
            onValueChange(queryText, selectedPeopleList)
        },
        hintText = searchHint,
        label = label,
        assistiveText = assistiveText,
        errorString = errorString,
        leadingFocusIcon = leadingFocusIcon,
        leadingRestIcon = leadingRestIcon,
        leadingIconContentDescription = leadingIconContentDescription,
        trailingAccessoryIcon = trailingAccessoryIcon,
        keyboardOptions = KeyboardOptions(),
        keyboardActions = KeyboardActions(onDone = {
            if (onTextEntered != null) {
                onTextEntered.invoke(queryText)
                queryText = ""
                onValueChange(queryText, selectedPeopleList)
            }
        }),
        textFieldContentDescription = peoplePickerContentDescription,
        decorationBox = { innerTextField ->
            Box(
                Modifier
                    .fillMaxWidth()
                    .semantics { this.contentDescription = accessibilityAnnouncement }
            ) {
                FlowRow {
                    if (selectedPeopleList.isNotEmpty()) {
                        selectedPeopleList.forEach {
                            PersonaChip(
                                modifier = Modifier.padding(bottom = chipVerticalSpacing),
                                person = it.person, selected = it.selected.value,
                                onCloseClick = if (onChipCloseClick != null) {
                                    {
                                        onChipCloseClick.invoke(it)
                                        onValueChange(queryText, selectedPeopleList)
                                    }
                                } else {
                                    null
                                },
                                onClick = {
                                    onChipClick?.invoke(it)
                                    onValueChange(queryText, selectedPeopleList)
                                },
                                style = chipValidation(it.person),
                                personaChipTokens = personaChipTokens
                            )
                            Spacer(modifier = Modifier.width(chipHorizontalSpacing))
                        }
                    }

                    if (selectedPeopleListSize != selectedPeopleList.size) {
                        queryText = ""
                        onValueChange(queryText, selectedPeopleList)
                        isAdded = selectedPeopleListSize < selectedPeopleList.size
                        lastAddedPerson = selectedPeopleList.lastOrNull()?.person ?: Person()
                        accessibilityAnnouncement = if (isAdded) {
                            LocalContext.current.resources.getString(
                                R.string.people_picker_accessibility_persona_added,
                                lastAddedPerson.getLabel()
                            )
                        } else {
                            LocalContext.current.resources.getString(
                                R.string.people_picker_accessibility_persona_removed,
                                lastRemovedPerson.getLabel()
                            )
                        }
                        lastRemovedPerson = lastAddedPerson
                    }
                    selectedPeopleListSize = selectedPeopleList.size
                    Box {
                        if (queryText.isEmpty()) {
                            BasicText(
                                searchHint ?: "",
                                style = token.hintTextTypography(peoplePickerInfo)
                                    .merge(
                                        TextStyle(
                                            color = token.hintColor(peoplePickerInfo)
                                        )
                                    )
                            )
                        }
                        innerTextField()
                    }
                }
            }
        },
        textFieldTokens = peoplePickerTokens
    )

}

data class PeoplePickerItemData(
    val person: Person,
    var selected: MutableState<Boolean> = mutableStateOf(false)
)

@Composable
fun rememberPeoplePickerItemDataList(
    initialValue: SnapshotStateList<PeoplePickerItemData> = mutableStateListOf(),
): SnapshotStateList<PeoplePickerItemData> {
    return rememberSaveable(
        saver = Saver(
            save = {
                val saved = mutableListOf<Map<String, Any?>>()
                it.forEach { itemData ->
                    saved.add(
                        mapOf(
                            "selectedKey" to itemData.selected.value,
                            "firstName" to itemData.person.firstName,
                            "lastName" to itemData.person.lastName,
                            "email" to itemData.person.email,
                            "image" to itemData.person.image,
                            "imageBitmap" to itemData.person.bitmap,
                            "isActive" to itemData.person.isActive,
                            "isOOO" to itemData.person.isOOO,
                            "status" to itemData.person.status
                        )
                    )
                }
                saved
            },
            restore = { restored ->
                val list = mutableStateListOf<PeoplePickerItemData>()
                restored.forEach { item ->
                    list.add(
                        PeoplePickerItemData(
                            person = Person(
                                firstName = item["firstName"] as String,
                                lastName = item["lastName"] as String,
                                email = item["email"] as String?,
                                image = item["image"] as Int?,
                                bitmap = item["imageBitmap"] as Bitmap?,
                                isActive = item["isActive"] as Boolean,
                                isOOO = item["isOOO"] as Boolean,
                                status = item["status"] as AvatarStatus
                            ),
                            selected = mutableStateOf(item["selectedKey"] as Boolean)
                        )
                    )
                }
                list
            }
        )
    ) {
        initialValue
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

    <!-- *** Semantic Colors *** -->

    <!--PeoplePicker-->
    <attr name="fluentuiPeoplePickerBackgroundColor" format="reference|color"/>
    <attr name="fluentuiPeoplePickerPopupBackgroundColor" format="reference|color"/>
    <attr name="fluentuiPeoplePickerTextViewBackgroundColor" format="reference|color"/>
    <attr name="fluentuiPeoplePickerTextViewDragBackgroundColor" format="reference|color"/>
    <attr name="fluentuiPeoplePickerHintTextColor" format="reference|color"/>
    <attr name="fluentuiPeoplePickerLabelTextColor" format="reference|color"/>
    <attr name="fluentuiPeoplePickerCountSpanTextColor" format="reference|color"/>
    <attr name="fluentuiPeoplePickerSearchTextDefaultColor" format="reference|color"/>
    <attr name="fluentuiPeoplePickerSearchTextDisabledColor" format="reference|color"/>
    <attr name="fluentuiPeoplePickerSearchTextPressedColor" format="reference|color"/>

    <!--common fluentui_peoplepicker Module attributes-->
    <attr name="fluentui_personaChipClickStyle" format="enum">
        <enum name="none" value="0"/>
        <enum name="delete" value="1"/>
        <enum name="select" value="2"/>
        <enum name="select_deselect" value="3"/>
    </attr>

  <!-- fluentui_customDropDownWidth for custom width -->
   <attr name="fluentui_customDropDownWidth" format="dimension">
        <enum name="match_parent" value="-1" />
        <enum name="wrap_content" value="-2" />
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
    <!--PeoplePicker-->
    <dimen name="fluentui_people_picker_accessibility_search_constraint_extra_space">5dp</dimen>
    <!--30dp is an approximation of how much space 3 digits take up for the count span-->
    <dimen name="fluentui_people_picker_count_span_width">30dp</dimen>
    <dimen name="fluentui_people_picker_dropdown_vertical_offset">0dp</dimen>
    <dimen name="fluentui_people_picker_popup_elevation">0dp</dimen>
    <dimen name="fluentui_people_picker_search_directory_min_height">56dp</dimen>
    <dimen name="fluentui_people_picker_search_directory_padding_horizontal">@dimen/fluentui_content_inset</dimen>
    <dimen name="fluentui_people_picker_search_directory_padding_vertical">12dp</dimen>
    <dimen name="fluentui_people_picker_text_view_padding">6dp</dimen>
    <dimen name="fluentui_people_picker_persona_chip_vertical_spacing">4dp</dimen>
    <dimen name="fluentui_people_picker_horizontal_padding">@dimen/fluentui_content_inset</dimen>
    <dimen name="fluentui_people_picker_horizontal_margin">@dimen/fluentui_content_inset</dimen>
    <dimen name="fluentui_people_picker_label_margin_end">8dp</dimen>
    <dimen name="fluentui_people_picker_vertical_padding">12dp</dimen>

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
    <style name="Theme.FluentUI.PeoplePicker.Base" parent="Base.Theme.FluentUI">
        <!--PeoplePicker-->
        <item name="fluentuiPeoplePickerBackgroundColor">?attr/fluentuiBackgroundColor</item>
        <item name="fluentuiPeoplePickerPopupBackgroundColor">?attr/fluentuiBackgroundColor</item>
        <item name="fluentuiPeoplePickerTextViewBackgroundColor">?attr/fluentuiBackgroundColor</item>
        <item name="fluentuiPeoplePickerTextViewDragBackgroundColor">?attr/fluentuiBackgroundPrimaryColor</item>
        <item name="fluentuiPeoplePickerHintTextColor">?attr/fluentuiForegroundSecondaryColor</item>
        <item name="fluentuiPeoplePickerLabelTextColor">?attr/fluentuiForegroundSecondaryColor</item>
        <item name="fluentuiPeoplePickerCountSpanTextColor">?attr/fluentuiForegroundSecondaryColor</item>
        <item name="fluentuiPeoplePickerSearchTextDefaultColor">?attr/colorPrimary</item>
        <item name="fluentuiPeoplePickerSearchTextDisabledColor">@color/fluentui_gray_300</item>
        <item name="fluentuiPeoplePickerSearchTextPressedColor">?attr/fluentuiPeoplePickerSearchTextDefaultColor</item>

    </style>

    <!--
        All light theme semantic colors should be defined in the base theme as the default.
        Dark theme specific semantic colors should be defined in "themes.xml (night)".
    -->
    <style name="Theme.FluentUI.PeoplePicker" parent="Theme.FluentUI.PeoplePicker.Base"/>

</resources>
```
