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
src/main/java/com/microsoft/fluentui/appbarlayout/AppBarLayout.kt
src/main/java/com/microsoft/fluentui/search/Searchbar.kt
src/main/java/com/microsoft/fluentui/tokenized/AppBar.kt
src/main/java/com/microsoft/fluentui/tokenized/SearchBar.kt
src/main/java/com/microsoft/fluentui/tokenized/SearchViewModel.kt
src/main/java/com/microsoft/fluentui/toolbar/Toolbar.kt
src/main/res/values/attrs.xml
src/main/res/values/dimens.xml
src/main/res/values/styles.xml
src/main/res/values/themes.xml
```

# Files

## File: src/main/java/com/microsoft/fluentui/appbarlayout/AppBarLayout.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentui.appbarlayout

import android.animation.AnimatorInflater
import android.content.Context
import android.os.Build
import androidx.annotation.IdRes
import com.google.android.material.appbar.AppBarLayout
import com.google.android.material.appbar.AppBarLayout.LayoutParams.*
import com.google.android.material.appbar.AppBarLayout.OnOffsetChangedListener
import androidx.coordinatorlayout.widget.CoordinatorLayout
import androidx.core.widget.NestedScrollView
import androidx.recyclerview.widget.RecyclerView
import android.util.AttributeSet
import android.view.View
import android.view.ViewGroup
import com.microsoft.fluentui.topappbars.R
import com.microsoft.fluentui.appbarlayout.AppBarLayout.ScrollBehavior
import com.microsoft.fluentui.search.Searchbar
import com.microsoft.fluentui.theming.FluentUIContextThemeWrapper
import com.microsoft.fluentui.toolbar.Toolbar
import com.microsoft.fluentui.util.ThemeUtil
import com.microsoft.fluentui.util.activity
import kotlin.math.abs

/**
 * [AppBarLayout] comes with a [Toolbar] and an optional [accessoryView] that appears below the [Toolbar].
 * [ScrollBehavior] provides control over [Toolbar] and [accessoryView] motion during scroll
 * changes and focus changes when using [Searchbar].
 *
 * [ScrollBehavior] works best with a [CoordinatorLayout] parent and either [NestedScrollView] or
 * [RecyclerView] direct siblings.
 *
 * To use a neutral theme with a white background instead of primary background in day mode,
 * apply ThemeOverlay.FluentUI.NeutralAppBar via the theme attribute or a ContextThemeWrapper.
 *
 * TODO
 * - Use Fluent PopupMenu
 * - Add xml attributes
 */
class AppBarLayout : AppBarLayout {
    companion object {
        private val DEFAULT_SCROLL_BEHAVIOR = ScrollBehavior.COLLAPSE_TOOLBAR
    }

    enum class ScrollBehavior {
        NONE, COLLAPSE_TOOLBAR, PIN
    }

    /**
     * This [toolbar] is used as the support action bar.
     */
    lateinit var toolbar: Toolbar
        private set
    /**
     * This view appears below the [toolbar].
     */
    var accessoryView: View? = null
        set(value) {
            if (field == value)
                return

            if (accessoryView != null)
                removeView(accessoryView)

            field = value

            if (field != null)
                addView(field)

            updateViewsWithScrollBehavior()
        }
    /**
     * Defines the [ScrollBehavior] applied to the [toolbar] and [accessoryView] on scroll and focus changes.
     */
    var scrollBehavior: ScrollBehavior = DEFAULT_SCROLL_BEHAVIOR
        set(value) {
            if (field == value)
                return
            field = value
            updateViewsWithScrollBehavior()
        }

    /**
     * Id of the view that [AppBarLayout] uses to determine [scrollBehavior] functionality. Use this id if
     * the scrolling view is not a direct sibling of [AppBarLayout].
     */
    @IdRes
    var scrollTargetViewId: Int = View.NO_ID
        set(value) {
            if (field == value)
                return
            field = value
            scrollTargetView = getOnScrollTargetView()
        }

    private var scrollTargetView: View? = null
        set(value) {
            if (field == value)
                return
            (scrollTargetView as? RecyclerView)?.removeOnScrollListener(recyclerViewScrollListener)
            field = value
            (field as? RecyclerView)?.addOnScrollListener(recyclerViewScrollListener)
        }

    private val behavior = Behavior()

    private val offsetChangedListener = OnOffsetChangedListener { appBarLayout, verticalOffset ->
        toolbar.alpha = 1f - abs(verticalOffset / (appBarLayout.totalScrollRange.toFloat() / 3))
        setStateListAnimator(verticalOffset != 0)
    }

    private val recyclerViewScrollListener = object : RecyclerView.OnScrollListener() {
        override fun onScrolled(recyclerView: RecyclerView, dx: Int, dy: Int) {
            super.onScrolled(recyclerView, dx, dy)
            setStateListAnimator(recyclerView.computeVerticalScrollOffset() != 0)
        }
    }

    constructor(appContext: Context, attrs: AttributeSet?) : super(FluentUIContextThemeWrapper(appContext,R.style.Theme_FluentUI_TopAppBars), attrs) {
        setupToolbar(context)
        setBackgroundColor(ThemeUtil.getThemeAttrColor(context, R.attr.fluentuiAppBarLayoutBackgroundColor))

        val styledAttributes = context.obtainStyledAttributes(attrs, R.styleable.AppBarLayout)
        scrollTargetViewId = styledAttributes.getResourceId(R.styleable.AppBarLayout_fluentui_scrollTargetViewId, View.NO_ID)
        val scrollBehaviorOrdinal = styledAttributes.getInt(R.styleable.AppBarLayout_fluentui_scrollBehavior, DEFAULT_SCROLL_BEHAVIOR.ordinal)
        scrollBehavior = ScrollBehavior.values()[scrollBehaviorOrdinal]
        styledAttributes.recycle()
    }

    internal fun updateExpanded(expanded: Boolean) {
        if (scrollBehavior == ScrollBehavior.COLLAPSE_TOOLBAR)
            setExpanded(expanded, true)
    }

    override fun onAttachedToWindow() {
        super.onAttachedToWindow()
        scrollTargetView = getOnScrollTargetView()
        updateViewsWithScrollBehavior()
    }

    private fun getOnScrollTargetView(): View? {
        val parent = parent as? ViewGroup ?: return null
        val firstSiblingIndex = parent.indexOfChild(this) + 1
        val firstSibling = parent.getChildAt(firstSiblingIndex)
        val scrollTargetViewWithId = parent.findViewById<View>(scrollTargetViewId)

        return scrollTargetViewWithId ?: firstSibling as? RecyclerView
        ?: firstSibling as? NestedScrollView
    }

    private fun setStateListAnimator(lift: Boolean) {
        if (Build.VERSION.SDK_INT > Build.VERSION_CODES.LOLLIPOP_MR1)
            stateListAnimator = if (lift && scrollBehavior != ScrollBehavior.NONE)
                AnimatorInflater.loadStateListAnimator(context, R.animator.app_bar_layout_elevation_scroll)
            else
                AnimatorInflater.loadStateListAnimator(context, R.animator.app_bar_layout_elevation)
        else
            elevation = resources.getDimension(R.dimen.fluentui_app_bar_layout_elevation)
    }

    private fun setupToolbar(context: Context) {
        toolbar = Toolbar(context)
        addView(toolbar)
        context.activity?.setSupportActionBar(toolbar)
        touchscreenBlocksFocus = false
    }

    private fun updateViewsWithScrollBehavior() {
        val currentBehavior = (layoutParams as? CoordinatorLayout.LayoutParams)?.behavior
        (layoutParams as? CoordinatorLayout.LayoutParams)?.behavior = when {
            scrollBehavior != ScrollBehavior.NONE -> behavior
            currentBehavior != behavior -> currentBehavior
            else -> null
        }

        val toolbarLayoutParams = LayoutParams(MATCH_PARENT, WRAP_CONTENT)
        when (scrollBehavior) {
            ScrollBehavior.NONE -> {
                toolbarLayoutParams.scrollFlags = 0
                removeOnOffsetChangedListener(offsetChangedListener)
                setStateListAnimator(false)
                toolbar.alpha = 1.0f
            }
            ScrollBehavior.COLLAPSE_TOOLBAR -> {
                toolbarLayoutParams.scrollFlags = SCROLL_FLAG_SCROLL or SCROLL_FLAG_SNAP or SCROLL_FLAG_ENTER_ALWAYS

                val accessoryViewLayoutParams = accessoryView?.layoutParams as? LayoutParams
                accessoryViewLayoutParams?.scrollFlags = 0
                accessoryView?.layoutParams = accessoryViewLayoutParams

                addOnOffsetChangedListener(offsetChangedListener)
            }
            ScrollBehavior.PIN -> {
                toolbarLayoutParams.scrollFlags = 0
                setStateListAnimator(false)
            }
        }
        toolbar.layoutParams = toolbarLayoutParams
    }

    private inner class Behavior : AppBarLayout.Behavior () {
        override fun onStartNestedScroll(
            parent: CoordinatorLayout,
            child: AppBarLayout,
            directTargetChild: View,
            target: View,
            nestedScrollAxes: Int,
            type: Int
        ): Boolean {
            val superResult = super.onStartNestedScroll(parent, child, directTargetChild, target, nestedScrollAxes, type)
            // Using a listener for RecyclerViews instead to get a more accurate y position.
            if (target is RecyclerView)
                return superResult

            setStateListAnimator(target.scrollY != 0)
            return true
        }

        override fun onNestedScroll(
            coordinatorLayout: CoordinatorLayout,
            child: AppBarLayout,
            target: View,
            dxConsumed: Int,
            dyConsumed: Int,
            dxUnconsumed: Int,
            dyUnconsumed: Int,
            type: Int
        ) {
            super.onNestedScroll(coordinatorLayout, child, target, dxConsumed, dyConsumed, dxUnconsumed, dyUnconsumed, type)
            setStateListAnimator(target.scrollY != 0)
        }

        override fun onStopNestedScroll(coordinatorLayout: CoordinatorLayout, abl: AppBarLayout, target: View, type: Int) {
            super.onStopNestedScroll(coordinatorLayout, abl, target, type)
            setStateListAnimator(target.scrollY != 0)
        }
    }
}
```

## File: src/main/java/com/microsoft/fluentui/search/Searchbar.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentui.search

import android.app.SearchableInfo
import android.content.Context
import androidx.core.content.ContextCompat
import androidx.appcompat.widget.AppCompatImageView
import androidx.appcompat.widget.SearchView
import android.util.AttributeSet
import android.view.KeyEvent
import android.view.View
import android.view.inputmethod.InputMethodManager
import android.widget.ImageButton
import android.widget.ImageView
import android.widget.LinearLayout
import android.widget.RelativeLayout
import com.microsoft.fluentui.topappbars.R
import com.microsoft.fluentui.appbarlayout.AppBarLayout
import com.microsoft.fluentui.theming.FluentUIContextThemeWrapper
import com.microsoft.fluentui.util.inputMethodManager
import com.microsoft.fluentui.util.isVisible
import com.microsoft.fluentui.util.toggleKeyboardVisibility
import com.microsoft.fluentui.view.TemplateView
import com.microsoft.fluentui.progress.ProgressBar

/**
 * [Searchbar] provides a [SearchView] with a search icon, back button, close icon,
 * and progress indicator. It is designed to be used as the primary search experience at the top of the app,
 * either displayed below the Toolbar as an accessory view, from a menu item as an action view, or stand alone.
 *
 * To use a neutral theme with a white background instead of primary background in day mode,
 * apply ThemeOverlay.FluentUI.NeutralAppBar via a ContextThemeWrapper.
 */
open class Searchbar : TemplateView, SearchView.OnQueryTextListener {
    /**
     * Returns the current query text from the search view.
     */
    val query: CharSequence
        get() = searchView?.query ?: ""

    /**
     * Query hint text for the search view.
     */
    var queryHint: String = context.getString(R.string.searchbar_query_hint_default)
        set(value) {
            if (field == value)
                return
            field = value
            updateViews()
        }

    /**
     * Show the circular progress bar to indicate search is in progress.
     */
    var showSearchProgress: Boolean = false
        set(value) {
            if (field == value)
                return
            field = value
            updateViews()
        }

    /**
     * Sets the [SearchableInfo] for the search view.
     */
    var searchableInfo: SearchableInfo? = null
        set(value) {
            if (field == value)
                return
            field = value
            updateViews()
        }

    /**
     * Defines whether the [Searchbar] will be styled to be used as an ActionMenuView.
     */
    var isActionMenuView: Boolean = false
        set(value) {
            if (field == value)
                return
            field = value
            updateSearchViewSpacing()
            clearFocus()
            updateFocusState()
        }

    /**
     * Provides callbacks for when text is entered in the search view and when that query is submitted.
     */
    var onQueryTextListener: SearchView.OnQueryTextListener? = null

    /**
     * Provides a callback for when the search view focus changes.
     */
    var onQueryTextFocusChangeListener: OnFocusChangeListener? = null

    /**
     * Provides a callback for when the search back button is clicked and the search view is closed.
     */
    var onCloseListener: SearchView.OnCloseListener? = null

    @JvmOverloads
    constructor(context: Context, attrs: AttributeSet? = null, defStyleAttr: Int = 0) : super(FluentUIContextThemeWrapper(context, R.style.Theme_FluentUI_TopAppBars), attrs, defStyleAttr)

    /**
     * Sets the query text for the search view.
     */
    fun setQuery(query: CharSequence, submit: Boolean) {
        searchView?.setQuery(query, submit)
    }

    fun requestSearchViewFocus() {
        reloadTemplateIfInvalid()
        searchView?.requestFocus()
    }

    override fun clearFocus() {
        super.clearFocus()
        searchView?.clearFocus()
    }

    override fun onQueryTextSubmit(query: String): Boolean =
        onQueryTextListener?.onQueryTextSubmit(query) ?: false

    override fun onQueryTextChange(query: String): Boolean {
        updateCloseIconVisibility()
        return onQueryTextListener?.onQueryTextChange(query) ?: false
    }

    override fun dispatchKeyEvent(event: KeyEvent?): Boolean {
        val handled = super.dispatchKeyEvent(event)
        if(searchView != null && searchView!!.hasFocus() && !handled && event?.action == KeyEvent.ACTION_UP  &&  event?.keyCode == KeyEvent.KEYCODE_TAB){
            if(event.isShiftPressed) {
                val view = searchView?.parent?.focusSearch(this, FOCUS_BACKWARD)
                return view?.requestFocus() ?: false
            }
        }
        return handled
    }

    // Template

    override val templateId: Int = R.layout.view_searchbar

    private var searchbar: RelativeLayout? = null
    private var searchViewContainer: LinearLayout? = null
    private var searchIcon: ImageView? = null
    private var searchBackButton: ImageButton? = null
    private var searchView: SearchView? = null
    private var searchCloseButton: ImageButton? = null
    private var searchProgress: ProgressBar? = null

    override fun onTemplateLoaded() {
        super.onTemplateLoaded()

        searchbar = findViewInTemplateById(R.id.searchbar)
        searchViewContainer = findViewInTemplateById(R.id.search_view_container)
        searchIcon = findViewInTemplateById(R.id.search_icon)
        searchBackButton = findViewInTemplateById(R.id.search_back_button)
        searchView = findViewInTemplateById(R.id.search_view)
        searchCloseButton = findViewInTemplateById(R.id.search_close)
        searchProgress = findViewInTemplateById(R.id.search_progress)

        // Hide the default search view close button from TalkBack and get rid of the space it takes up.
        val closeButton = searchView?.findViewById<AppCompatImageView>(R.id.search_close_btn)
        closeButton?.importantForAccessibility = View.IMPORTANT_FOR_ACCESSIBILITY_NO
        closeButton?.setPadding(0, 0, 0, 0)

        updateViews()
        setupListeners()
        setUnfocusedState()
    }

    private fun updateViews() {
        searchView?.queryHint = queryHint
        searchView?.setSearchableInfo(searchableInfo)
        updateProgressVisibility()
    }

    private fun setupListeners() {
        setOnClickListener {
            requestSearchViewFocus()
        }

        searchBackButton?.setOnClickListener {
            clearFocus()
            onCloseListener?.onClose()
        }

        searchView?.setOnQueryTextListener(this)
        searchView?.setOnQueryTextFocusChangeListener { searchView, hasFocus ->
            updateFocusState()

            // Because Searchbar is a commonly used accessory view in AppBarLayout, we want to support the standard focus animation.
            (parent as? AppBarLayout)?.updateExpanded(!hasFocus)

            onQueryTextFocusChangeListener?.onFocusChange(searchView, hasFocus)
        }

        searchCloseButton?.setOnClickListener {
            setQuery("", false)
            announceForAccessibility(queryHint+context.getString(R.string.searchbar_accessibility_cleared_announcement))
        }
    }

    private fun updateFocusState() {
        when {
            hasFocus() -> {
                setFocusedState()
                toggleKeyboardVisibility()
            }
            isActionMenuView -> {
                setFocusedState()
                context.inputMethodManager.hideSoftInputFromWindow(searchView?.windowToken, InputMethodManager.HIDE_NOT_ALWAYS)
            }
            else -> setUnfocusedState()
        }
    }

    private fun setUnfocusedState() {
        setQuery("", false)
        updateSearchViewSpacing()
        searchViewContainer?.background = ContextCompat.getDrawable(context, R.drawable.search_view_container_background)
        searchIcon?.isVisible = true
        searchBackButton?.isVisible = false
        showSearchProgress = false
    }

    private fun setFocusedState() {
        updateSearchViewSpacing()
        searchViewContainer?.background = null
        searchIcon?.isVisible = false
        searchBackButton?.isVisible = !isActionMenuView
    }

    private fun updateProgressVisibility() {
        searchProgress?.isVisible = showSearchProgress
        updateSearchViewContainerMarginEnd()
    }

    private fun updateCloseIconVisibility() {
        searchCloseButton?.isVisible = query.isNotEmpty()
        updateSearchViewContainerMarginEnd()
    }

    private fun updateSearchViewContainerMarginEnd() {
        val withIcons = showSearchProgress || searchCloseButton?.isVisible == true
        val searchViewContainerMarginEndResourceId = if (withIcons)
            R.dimen.fluentui_searchbar_search_view_container_with_icons_margin_end
        else
            R.dimen.fluentui_searchbar_search_view_container_margin_end

        val lp = searchViewContainer?.layoutParams as? RelativeLayout.LayoutParams ?: return
        lp.marginEnd = context.resources.getDimension(searchViewContainerMarginEndResourceId).toInt()
        searchViewContainer?.layoutParams = lp
    }

    private fun updateSearchViewSpacing() {
        // Search edit frame
        val searchEditFrame = searchView?.findViewById<LinearLayout>(R.id.search_edit_frame)
        val searchEditFrameLayoutParams = searchEditFrame?.layoutParams as? LinearLayout.LayoutParams
        val searchEditFrameMarginStartResourceId = if (isActionMenuView)
            R.dimen.fluentui_searchbar_search_view_action_view_margin_start
        else
            R.dimen.fluentui_searchbar_search_view_margin_start
        searchEditFrameLayoutParams?.marginStart = resources.getDimension(searchEditFrameMarginStartResourceId).toInt()
        searchEditFrame?.layoutParams = searchEditFrameLayoutParams

        // Search text - adjust padding to account for the cursor.
        val searchSrcText = searchView?.findViewById<SearchView.SearchAutoComplete>(R.id.search_src_text)
        val searchSrcTextPaddingStartResourceId = if (hasFocus() || isActionMenuView)
            R.dimen.fluentui_searchbar_with_back_button_search_view_text_padding_start
        else
            R.dimen.fluentui_searchbar_with_search_icon_search_view_text_padding_start

        searchSrcText?.setPaddingRelative(
            resources.getDimension(searchSrcTextPaddingStartResourceId).toInt(),
            searchSrcText.paddingTop,
            searchSrcText.paddingEnd,
            searchSrcText.paddingBottom
        )

        // Search view container
        val searchViewContainerLayoutParams = searchViewContainer?.layoutParams as? RelativeLayout.LayoutParams
        val searchViewContainerMarginStartResourceId = if (hasFocus() || isActionMenuView) {
            if (isActionMenuView)
                R.dimen.fluentui_searchbar_search_view_action_view_margin_start
            else
                R.dimen.fluentui_searchbar_search_view_container_back_button_margin_start
        } else {
            R.dimen.fluentui_searchbar_search_view_container_search_icon_margin_start
        }

        searchViewContainerLayoutParams?.marginStart = resources.getDimension(searchViewContainerMarginStartResourceId).toInt()
        searchViewContainer?.layoutParams = searchViewContainerLayoutParams
    }
}
```

## File: src/main/java/com/microsoft/fluentui/tokenized/AppBar.kt
```kotlin
package com.microsoft.fluentui.tokenized

import androidx.compose.animation.animateContentSize
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.text.BasicText
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.alpha
import androidx.compose.ui.draw.drawBehind
import androidx.compose.ui.draw.scale
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.semantics.heading
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.core.R
import com.microsoft.fluentui.icons.ListItemIcons
import com.microsoft.fluentui.icons.listitemicons.Chevron
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.*
import com.microsoft.fluentui.theme.token.controlTokens.AppBarInfo
import com.microsoft.fluentui.theme.token.controlTokens.AppBarSize
import com.microsoft.fluentui.theme.token.controlTokens.AppBarTokens
import androidx.compose.runtime.*
import androidx.compose.ui.unit.*
import com.microsoft.fluentui.util.clickableWithTooltip

/**
 * An app bar appears at the top of an app screen, below the status bar,
 * and enables navigation through a series of hierarchical screens.
 * When a new screen is displayed, a back button, often labeled with the title of
 * the previous screen, appears on the left side of the bar. Sometimes, the right side
 * of a navigation bar contains a control, like an Edit or a Done button,
 * for managing the content within the active view. In a split view,
 * a navigation bar may appear in a single pane of the split view.
 * Navigation bars are translucent, may have a background tint, and can be configured
 * to hide when the keyboard is onscreen, a gesture occurs, or a view resizes.
 *
 * @param title Title Of the current page
 * @param modifier Optional Modifier for updating appbar
 * @param appBarSize Enum to define App Bar Size. Default: [AppBarSize.Medium]
 * @param style Fluent Style of AppBar. Default: [FluentStyle.Neutral]
 * @param subTitle Subtitle to be displayed. Default: [null]
 * @param logo Composable to be placed at left of Title. Guideline is to not increase a size of 32x32. Default: [null]
 * @param searchMode Boolean to enable/disable searchMode. Default: [false]
 * @param postTitleIcon Icon to be placed after title making the title clickable. Default: Empty [FluentIcon]
 * @param preSubtitleIcon Icon to be placed before subtitle. Default: Empty [FluentIcon]
 * @param postSubtitleIcon Icon to be placed after subtitle. Default: [ListItemIcons.Chevron]
 * @param rightAccessoryView Row Placeholder to be placed at right on AppTitle. Default: [null]
 * @param searchBar Composable to be placed as searchbar below appTitle. Default: [null]
 * @param bottomBar Composable to Be placed below appTitle. Displayed if searchbar is not provided or when in searchmode. Default: [null]
 * @param bottomBorder Boolean to place a bottom border on AppBar. Applies only when searchBar and bottomBar are empty. Default: [true]
 * @param appTitleDelta Ratio of opening of appTitle. Used for Shychrome and other animations. Default: [1.0F]
 * @param accessoryDelta Ratio of opening of accessory View. Used for Shychrome and other animations. Default: [1.0F]
 * @param centerAlignAppBar boolean indicating if the app bar should be center aligned. Default: [false]
 * @param navigationIcon Navigate Back Icon to be placed at extreme left. Default: [null]
 * @param appBarTokens Optional Tokens for App Bar to customize it. Default: [null]
 * @param secondaryPostTitleIcon Secondary icon to be placed after title. Default: Empty [FluentIcon]
 */

// TAGS FOR TESTING
const val APP_BAR = "Fluent App bar"
const val APP_BAR_SUBTITLE = "Fluent App bar Subtitle"
const val APP_BAR_BOTTOM_BAR = "Fluent App bar Bottom bar"
const val APP_BAR_SEARCH_BAR = "Fluent App bar Search bar"

@Composable
fun AppBar(
    title: String,
    modifier: Modifier = Modifier,
    appBarSize: AppBarSize = AppBarSize.Medium,
    style: FluentStyle = FluentStyle.Neutral,
    subTitle: String? = null,
    logo: @Composable (() -> Unit)? = null,
    searchMode: Boolean = false,
    postTitleIcon: FluentIcon = FluentIcon(),
    preSubtitleIcon: FluentIcon = FluentIcon(),
    postSubtitleIcon: FluentIcon = FluentIcon(
        ListItemIcons.Chevron,
        contentDescription = LocalContext.current.resources.getString(R.string.fluentui_chevron)
    ),
    rightAccessoryView: @Composable (RowScope.() -> Unit)? = null,
    searchBar: @Composable (RowScope.() -> Unit)? = null,
    bottomBar: @Composable (RowScope.() -> Unit)? = null,
    bottomBorder: Boolean = true,
    appTitleDelta: Float = 1.0F,
    accessoryDelta: Float = 1.0F,
    centerAlignAppBar: Boolean = false,
    navigationIcon: FluentIcon? = null,
    appBarTokens: AppBarTokens? = null,
    secondaryPostTitleIcon: FluentIcon = FluentIcon(),
) {
    val themeID =
        FluentTheme.themeID    //Adding This only for recomposition in case of Token Updates. Unused otherwise.

    val token = appBarTokens
        ?: FluentTheme.controlTokens.tokens[ControlTokens.ControlType.AppBarControlType] as AppBarTokens
    val appBarInfo = AppBarInfo(style, appBarSize)
    val tooltipControls = token.tooltipVisibilityControls(appBarInfo)
    Box(
        modifier = modifier
            .fillMaxWidth()
            .testTag(APP_BAR)
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .background(token.backgroundBrush(appBarInfo))
                .then(
                    if (bottomBorder && searchBar == null && bottomBar == null) {
                        val strokeWidth =
                            with(LocalDensity.current) { token.borderStroke(appBarInfo).width.toPx() }
                        val strokeColor = token.borderStroke(appBarInfo).brush
                        Modifier.drawBehind {
                            val y = size.height - strokeWidth / 2
                            drawLine(
                                strokeColor,
                                Offset(0f, y),
                                Offset(size.width, y),
                                strokeWidth
                            )
                        }
                    } else {
                        Modifier
                    }
                )
        ) {
            Row(
                Modifier
                    .requiredHeight(56.dp * appTitleDelta)
                    .animateContentSize()
                    .fillMaxWidth()
                    .scale(scaleX = 1.0F, scaleY = appTitleDelta)
                    .alpha(if (appTitleDelta != 1.0F) appTitleDelta / 3 else 1.0F),
                verticalAlignment = Alignment.CenterVertically
            ) {
                if (navigationIcon !== null && navigationIcon.isIconAvailable()) {
                    Icon(
                        navigationIcon,
                        modifier = Modifier.clickableWithTooltip(
                                tooltipText = navigationIcon.contentDescription ?: "",
                                tooltipEnabled = tooltipControls.enableNavigationIconTooltip,
                                backgroundColor = token.tooltipBackgroundBrush(appBarInfo),
                                textStyle = token.tooltipTextStyle(appBarInfo),
                                cornerRadius = token.tooltipCornerRadius(appBarInfo),
                                clickRippleColor = token.navigationIconRippleColor(),
                                onClick = navigationIcon.onClick,
                                onLongClick = navigationIcon.onLongClick,
                                offset = token.tooltipOffset(appBarInfo),
                                timeout = token.tooltipTimeout(appBarInfo),
                            )
                            .padding(token.navigationIconPadding(appBarInfo))
                            .size(token.leftIconSize(appBarInfo)),
                        tint = token.navigationIconColor(appBarInfo)
                    )
                }

                logo?.invoke()

                val titleTextStyle = token.titleTypography(appBarInfo)
                val subtitleTextStyle = token.subtitleTypography(appBarInfo)
                val titleAlignment: Alignment.Horizontal =
                    if (centerAlignAppBar) Alignment.CenterHorizontally else Alignment.Start

                if (appBarSize != AppBarSize.Large) {
                    Column(
                        modifier = Modifier
                            .weight(1F)
                            .padding(token.textPadding(appBarInfo))
                            .testTag(APP_BAR_SUBTITLE),
                        horizontalAlignment = titleAlignment
                    ) {
                        // title
                        Row(
                            modifier = if (postTitleIcon.isIconAvailable() && postTitleIcon.onClick != null) {
                                Modifier.clickableWithTooltip(
                                    tooltipText = title,
                                    tooltipEnabled = tooltipControls.enableTitleTooltip,
                                    backgroundColor = token.tooltipBackgroundBrush(
                                        appBarInfo
                                    ),
                                    textStyle = token.tooltipTextStyle(appBarInfo),
                                    cornerRadius = token.tooltipCornerRadius(appBarInfo),
                                    clickRippleColor = token.tooltipRippleColor(appBarInfo),
                                    onClick = {
                                        if (appBarSize == AppBarSize.Small) {
                                            postTitleIcon.onClick?.invoke()
                                        }
                                    },
                                    onLongClick = {
                                        if (appBarSize == AppBarSize.Small) {
                                            postTitleIcon.onLongClick?.invoke()
                                        }
                                    },
                                    offset = token.tooltipOffset(appBarInfo),
                                    timeout = token.tooltipTimeout(appBarInfo)
                                )
                            } else Modifier,
                            verticalAlignment = Alignment.CenterVertically
                        ) {
                            BasicText(
                                text = title,
                                style = titleTextStyle.merge(
                                    TextStyle(
                                        color = token.titleTextColor(appBarInfo)
                                    )
                                ),
                                maxLines = 1,
                                overflow = TextOverflow.Ellipsis,
                                modifier = Modifier.weight(1f, fill = false)
                            )
                            if (postTitleIcon.isIconAvailable() && appBarSize == AppBarSize.Small)
                                Icon(
                                    postTitleIcon.value(),
                                    postTitleIcon.contentDescription,
                                    modifier = Modifier
                                        .size(token.titleIconSize(appBarInfo)),
                                    tint = token.titleIconColor(appBarInfo),
                                )

                            if (secondaryPostTitleIcon.isIconAvailable() && appBarSize == AppBarSize.Small)
                                Icon(
                                    secondaryPostTitleIcon.value(),
                                    secondaryPostTitleIcon.contentDescription,
                                    modifier = Modifier
                                        .size(token.titleIconSize(appBarInfo)),
                                    tint = token.titleIconColor(appBarInfo),
                                )
                        }
                        // subtitle
                        if (!subTitle.isNullOrBlank()) {
                            Row(
                                modifier = Modifier.clickableWithTooltip(
                                        tooltipText = subTitle,
                                        tooltipEnabled = tooltipControls.enableSubtitleTooltip,
                                        backgroundColor = token.tooltipBackgroundBrush(
                                            appBarInfo
                                        ),
                                        textStyle = token.tooltipTextStyle(appBarInfo),
                                        cornerRadius = token.tooltipCornerRadius(appBarInfo),
                                        clickRippleColor = token.tooltipRippleColor(
                                            appBarInfo
                                        ),
                                        onClick = {
                                            if (appBarSize == AppBarSize.Small) {
                                                preSubtitleIcon.onClick?.invoke()
                                            }
                                        },
                                        onLongClick = {
                                            if (appBarSize == AppBarSize.Small) {
                                                postSubtitleIcon.onLongClick?.invoke()
                                            }
                                        },
                                        offset = token.tooltipOffset(appBarInfo),
                                        timeout = token.tooltipTimeout(appBarInfo)
                                    ),
                                verticalAlignment = Alignment.CenterVertically
                            ) {
                                if (preSubtitleIcon.isIconAvailable())
                                    Icon(
                                        preSubtitleIcon,
                                        modifier = Modifier
                                            .size(
                                                token.subtitleIconSize(
                                                    appBarInfo
                                                )
                                            ),
                                        tint = token.subtitleIconColor(appBarInfo)
                                    )
                                BasicText(
                                    subTitle,
                                    style = subtitleTextStyle.merge(
                                        TextStyle(
                                            color = token.subtitleTextColor(
                                                appBarInfo
                                            )
                                        )
                                    ),
                                    maxLines = 1,
                                    overflow = TextOverflow.Ellipsis
                                )
                                if (postSubtitleIcon.isIconAvailable())
                                    Icon(
                                        postSubtitleIcon.value(),
                                        contentDescription = postSubtitleIcon.contentDescription,
                                        modifier = Modifier
                                            .size(
                                                token.subtitleIconSize(
                                                    appBarInfo
                                                )
                                            ),
                                        tint = token.subtitleIconColor(appBarInfo)
                                    )
                            }
                        }
                    }
                } else {
                    Column(
                        modifier = Modifier.clickableWithTooltip(
                                tooltipText = title,
                                tooltipEnabled = tooltipControls.enableTitleTooltip,
                                backgroundColor = token.tooltipBackgroundBrush(appBarInfo),
                                cornerRadius = token.tooltipCornerRadius(appBarInfo),
                                textStyle = token.tooltipTextStyle(appBarInfo),
                                clickRippleColor = token.tooltipRippleColor(appBarInfo),
                                showRippleOnClick = false,
                                onClick = {},
                                onLongClick = {},
                                offset = token.tooltipOffset(appBarInfo),
                                timeout = token.tooltipTimeout(appBarInfo)
                            )
                            .padding(token.textPadding(appBarInfo))
                            .weight(1F)
                            .semantics { heading() },
                        horizontalAlignment = titleAlignment
                    ) {

                        BasicText(
                            text = title,
                            style = titleTextStyle.merge(
                                TextStyle(
                                    color = token.titleTextColor(appBarInfo)
                                )
                            ),
                            maxLines = 1,
                            overflow = TextOverflow.Ellipsis
                        )

                    }
                }

                if (rightAccessoryView != null) {
                    rightAccessoryView()
                }
            }

            if (searchBar != null) {
                Row(
                    modifier
                        .animateContentSize()
                        .fillMaxWidth()
                        .then(if (!searchMode) Modifier.height(56.dp * accessoryDelta) else Modifier)
                        .padding(vertical = 8.dp)
                        .testTag(APP_BAR_SEARCH_BAR),
                    horizontalArrangement = Arrangement.Center
                ) {
                    searchBar()
                }
            }
            if (bottomBar != null && (searchMode || searchBar == null)) {
                Row(
                    Modifier
                        .animateContentSize()
                        .fillMaxWidth()
                        .then(if (!searchMode) Modifier.height(48.dp * accessoryDelta) else Modifier)
                        .padding(vertical = 8.dp)
                        .testTag(APP_BAR_BOTTOM_BAR),
                ) {
                    bottomBar()
                }
            }
        }
    }
}
```

## File: src/main/java/com/microsoft/fluentui/tokenized/SearchBar.kt
```kotlin
package com.microsoft.fluentui.tokenized

import androidx.compose.animation.AnimatedContent
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.interaction.MutableInteractionSource
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.text.BasicText
import androidx.compose.foundation.text.BasicTextField
import androidx.compose.foundation.text.KeyboardActions
import androidx.compose.foundation.text.KeyboardOptions
import androidx.compose.material.ripple.rememberRipple
import androidx.compose.runtime.*
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.draw.rotate
import androidx.compose.ui.draw.shadow
import androidx.compose.ui.focus.FocusRequester
import androidx.compose.ui.focus.focusRequester
import androidx.compose.ui.focus.onFocusChanged
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.input.key.Key
import androidx.compose.ui.input.key.key
import androidx.compose.ui.input.key.onKeyEvent
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.platform.LocalFocusManager
import androidx.compose.ui.platform.LocalLayoutDirection
import androidx.compose.ui.semantics.Role
import androidx.compose.ui.semantics.contentDescription
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.style.TextDirection
import androidx.compose.ui.unit.LayoutDirection
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.ListItemIcons
import com.microsoft.fluentui.icons.SearchBarIcons
import com.microsoft.fluentui.icons.listitemicons.Chevron
import com.microsoft.fluentui.icons.searchbaricons.Arrowback
import com.microsoft.fluentui.icons.searchbaricons.Dismisscircle
import com.microsoft.fluentui.icons.searchbaricons.Microphone
import com.microsoft.fluentui.icons.searchbaricons.Search
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.*
import com.microsoft.fluentui.theme.token.controlTokens.SearchBarInfo
import com.microsoft.fluentui.theme.token.controlTokens.SearchBarTokens
import com.microsoft.fluentui.tokenized.persona.Person
import com.microsoft.fluentui.tokenized.persona.SearchBarPersonaChip
import com.microsoft.fluentui.tokenized.progress.CircularProgressIndicator
import com.microsoft.fluentui.topappbars.R

/**
 * API to create a searchbar. This control takes input from user's keyboard and runs it against a lambda
 * function provided by user to generate results. It allows user to select a person and display in the form
 * of a persona chip.
 *
 * @param onValueChange Lambda function against which the input text is run.
 * @param modifier Optional modifier for Searchbar.
 * @param enabled Boolean to enable/disable the CTAs on Searchbar. Default: [false]
 * @param style Color Scheme to be applied to Searchbar. Default: [FluentStyle.Neutral]
 * @param keyboardOptions Keyboard Configuration Options for Input Text Field. Default: [KeyboardOptions]
 * @param keyboardActions Configures keyboards response w.r.t. user interactions. Default: [KeyboardActions]
 * @param searchHint String provided as hint on SearchBar. Default: "Search"
 * @param focusByDefault Boolean which allows Searchbar to be initially composed in focused state. Default: [false]
 * @param loading Boolean to display progress indicator on SearchBar. Default: [false]
 * @param selectedPerson Person object which has to be displayed as a Persona Chip. Default: [null]
 * @param personaChipOnClick OnClick Behaviour for above persona chip. Default: [null]
 * @param microphoneCallback Callback to be provided to microphone icon, available at right side. Default: [null]
 * @param navigationIconCallback Callback to be provided to navigation icon, present at left side. Default: [null]
 * @param rightAccessoryIcon [FluentIcon] Object which is displayed on the right side of microphone. Default: [null]
 * @param searchBarTokens Tokens which help in customizing appearance of search bar. Default: [null]
 */
@Composable
fun SearchBar(
    onValueChange: (String, Person?) -> Unit,
    modifier: Modifier = Modifier,
    enabled: Boolean = true,
    style: FluentStyle = FluentStyle.Neutral,
    keyboardOptions: KeyboardOptions = KeyboardOptions(),
    keyboardActions: KeyboardActions = KeyboardActions(),
    searchHint: String = LocalContext.current.resources.getString(R.string.fluentui_search),
    focusByDefault: Boolean = false,
    loading: Boolean = false,
    selectedPerson: Person? = null,
    personaChipOnClick: (() -> Unit)? = null,
    microphoneCallback: (() -> Unit)? = null,
    navigationIconCallback: (() -> Unit)? = null,
    leftAccessoryIcon: ImageVector? = SearchBarIcons.Search,
    rightAccessoryIcon: FluentIcon? = null,
    searchBarTokens: SearchBarTokens? = null
) {
    val themeID =
        FluentTheme.themeID    //Adding This only for recomposition in case of Token Updates. Unused otherwise.
    val token = searchBarTokens
        ?: FluentTheme.controlTokens.tokens[ControlTokens.ControlType.SearchBarControlType] as SearchBarTokens
    val searchBarInfo = SearchBarInfo(style)
    val focusManager = LocalFocusManager.current
    val focusRequester = remember { FocusRequester() }

    var queryText by rememberSaveable { mutableStateOf("") }
    var searchHasFocus by rememberSaveable { mutableStateOf(false) }

    var personaChipSelected by rememberSaveable { mutableStateOf(false) }
    var selectedPerson: Person? = selectedPerson
    val borderWidth = token.borderWidth(searchBarInfo)
    val elevation = token.elevation(searchBarInfo)
    val height = token.height(searchBarInfo)

    val scope = rememberCoroutineScope()
    val borderModifier = if (borderWidth > 0.dp) {
        Modifier.border(
            width = borderWidth,
            color = token.borderColor(searchBarInfo),
            shape = RoundedCornerShape(token.cornerRadius(searchBarInfo))
        )
    } else Modifier
    val shadowModifier = if (elevation > 0.dp) Modifier.shadow(
        elevation = token.elevation(searchBarInfo),
        shape = RoundedCornerShape(token.cornerRadius(searchBarInfo)),
        spotColor = token.shadowColor(searchBarInfo)
    ) else Modifier

    Row(
        modifier = modifier
            .background(token.backgroundBrush(searchBarInfo))
            .padding(token.searchBarPadding(searchBarInfo))
    ) {
        Row(
            Modifier
                .requiredHeightIn(min = height)
                .then(borderModifier)
                .then(shadowModifier)
                .fillMaxWidth()
                .clip(RoundedCornerShape(token.cornerRadius(searchBarInfo)))
                .background(
                    token.inputBackgroundBrush(searchBarInfo),
                    RoundedCornerShape(token.cornerRadius(searchBarInfo))
                ),
            verticalAlignment = Alignment.CenterVertically
        ) {
            //Left Section
            AnimatedContent(searchHasFocus) {
                var onClick: (() -> Unit)? = null
                var icon: ImageVector? = null
                var contentDescription: String? = null

                var mirrorImage = false

                when (it) {
                    true -> {
                        onClick = {
                            queryText = ""
                            selectedPerson = null

                            onValueChange(queryText, selectedPerson)

                            focusManager.clearFocus()
                            searchHasFocus = false

                            navigationIconCallback?.invoke()
                        }
                        icon = SearchBarIcons.Arrowback
                        contentDescription =
                            LocalContext.current.resources.getString(R.string.fluentui_back)
                        if (LocalLayoutDirection.current == LayoutDirection.Rtl)
                            mirrorImage = true
                    }

                    false -> {
                        onClick = {
                            focusRequester.requestFocus()
                        }
                        icon = leftAccessoryIcon ?: SearchBarIcons.Search
                        contentDescription =
                            LocalContext.current.resources.getString(R.string.fluentui_search)
                        mirrorImage = false
                    }
                }

                Icon(
                    icon,
                    contentDescription = contentDescription,
                    modifier = Modifier
                        .padding(
                            (44.dp - token.leftIconSize(searchBarInfo)) / 2,
                            (40.dp - token.leftIconSize(searchBarInfo)) / 2
                        )
                        .size(token.leftIconSize(searchBarInfo)),
                    tint = token.leftIconColor(searchBarInfo),
                    flipOnRtl = mirrorImage,
                    enabled = enabled,
                    onClick = onClick
                )
            }

            //Center Section
            Row(
                modifier = Modifier
                    .height(24.dp)
                    .weight(1F)
                    .onKeyEvent {
                        if (it.key == Key.Backspace) {

                            if (personaChipSelected) {
                                selectedPerson = null
                                personaChipSelected = false

                                onValueChange(queryText, selectedPerson)
                            } else {
                                personaChipSelected = true
                            }

                        }
                        false
                    },
                verticalAlignment = Alignment.CenterVertically
            ) {
                LaunchedEffect(selectedPerson) {
                    queryText = ""
                    if (personaChipSelected)
                        personaChipSelected = false

                    onValueChange(queryText, selectedPerson)
                }

                if (selectedPerson != null) {
                    SearchBarPersonaChip(
                        person = selectedPerson!!,
                        modifier = Modifier.padding(end = 8.dp),
                        style = style,
                        enabled = enabled,
                        selected = personaChipSelected,
                        onClick = {
                            personaChipSelected = !personaChipSelected
                            personaChipOnClick?.invoke()
                        },
                        onCloseClick = {
                            selectedPerson = null

                            onValueChange(queryText, selectedPerson)
                        }
                    )
                }

                BasicTextField(
                    value = queryText,
                    onValueChange = {
                        queryText = it
                        personaChipSelected = false

                        onValueChange(queryText, selectedPerson)
                    },
                    singleLine = true,
                    keyboardOptions = keyboardOptions,
                    keyboardActions = keyboardActions,
                    modifier = Modifier
                        .weight(1F)
                        .focusRequester(focusRequester)
                        .onFocusChanged { focusState ->
                            when {
                                focusState.isFocused ->
                                    searchHasFocus = true
                            }
                        }
                        .padding(horizontal = 8.dp)
                        .semantics { contentDescription = searchHint },
                    textStyle = token.typography(searchBarInfo).merge(
                        TextStyle(
                            color = token.textColor(searchBarInfo),
                            textDirection = TextDirection.ContentOrLtr
                        )
                    ),
                    decorationBox = @Composable { innerTextField ->
                        Box(
                            Modifier.fillMaxWidth(),
                            contentAlignment = if (LocalLayoutDirection.current == LayoutDirection.Rtl)
                                Alignment.CenterEnd
                            else
                                Alignment.CenterStart
                        ) {
                            if (queryText.isEmpty()) {
                                BasicText(
                                    searchHint,
                                    style = token.typography(searchBarInfo)
                                        .merge(TextStyle(color = token.textColor(searchBarInfo)))
                                )
                            }
                        }
                        innerTextField()
                    },
                    cursorBrush = token.cursorColor(searchBarInfo)
                )
            }
            LaunchedEffect(Unit) {
                if (focusByDefault)
                    focusRequester.requestFocus()
            }

            //Right Section
            AnimatedContent((queryText.isBlank() && selectedPerson == null)) {
                when (it) {
                    true ->
                        if (microphoneCallback != null) {
                            Icon(
                                SearchBarIcons.Microphone,
                                contentDescription = LocalContext.current.resources.getString(
                                    R.string.fluentui_microphone
                                ),
                                modifier = Modifier
                                    .padding(
                                        (44.dp - token.rightIconSize(searchBarInfo)) / 2,
                                        (40.dp - token.rightIconSize(searchBarInfo)) / 2
                                    )
                                    .size(
                                        token.rightIconSize(
                                            searchBarInfo
                                        )
                                    ),
                                tint = token.rightIconColor(searchBarInfo),
                                onClick = microphoneCallback
                            )
                        }

                    false ->
                        Box(
                            modifier = Modifier
                                .clickable(
                                    interactionSource = remember { MutableInteractionSource() },
                                    indication = rememberRipple(),
                                    enabled = enabled,
                                    onClick = {
                                        queryText = ""
                                        selectedPerson = null

                                        onValueChange(queryText, selectedPerson)
                                    },
                                    role = Role.Button
                                )
                                .size(44.dp, 40.dp),
                            contentAlignment = Alignment.Center
                        ) {
                            if (loading) {
                                CircularProgressIndicator(
                                    size = token.circularProgressIndicatorSize(
                                        searchBarInfo
                                    )
                                )
                            }
                            Icon(
                                SearchBarIcons.Dismisscircle,
                                contentDescription = LocalContext.current.resources.getString(
                                    R.string.fluentui_clear_text
                                ),
                                modifier = Modifier
                                    .size(token.rightIconSize(searchBarInfo)),
                                tint = token.rightIconColor(searchBarInfo)
                            )
                        }
                }
            }

            if (rightAccessoryIcon?.isIconAvailable() == true && rightAccessoryIcon.onClick != null) {
                Row(
                    modifier = Modifier
                        .size(44.dp, 40.dp)
                        .clickable(
                            interactionSource = remember { MutableInteractionSource() },
                            indication = rememberRipple(),
                            enabled = enabled,
                            onClick = rightAccessoryIcon.onClick!!,
                            role = Role.Button
                        ),
                    horizontalArrangement = Arrangement.Center,
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Icon(
                        rightAccessoryIcon.value(),
                        contentDescription = rightAccessoryIcon.contentDescription,
                        modifier = Modifier
                            .size(token.rightIconSize(searchBarInfo)),
                        tint = token.rightIconColor(searchBarInfo)
                    )
                    Icon(
                        ListItemIcons.Chevron,
                        contentDescription = LocalContext.current.resources.getString(R.string.fluentui_chevron),
                        Modifier.rotate(90F),
                        tint = token.rightIconColor(searchBarInfo)
                    )
                }
            }
        }
    }
}
```

## File: src/main/java/com/microsoft/fluentui/tokenized/SearchViewModel.kt
```kotlin
import androidx.lifecycle.ViewModel
import androidx.lifecycle.ViewModelProvider
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.flow.*
import java.util.UUID

/**
 * Remembers a unique identifier for a composable.
 *
 * If a non-null [id] is provided, it will be returned.
 * If [id] is null, a new unique ID will be generated using UUID and
 * remembered across recompositions and process death.
 *
 * @param id An optional existing ID of type [Any].
 * @return The provided [id] or a newly generated unique ID.
 */
fun generateUniqueId(id: Any? = null): Any {
    return id ?: { UUID.randomUUID().toString() }
}

/**
 * An interface for objects that can be searched.
 * Any class implementing this interface must provide a string key to be used for filtering.
 */
interface Searchable {
    /**
     * @return The string value that will be checked against the search query.
     */
    fun getSearchKey(): String
    /**
     * @return A unique identifier for this item, used for stable list updates in Compose.
     */
    fun getUniqueId(): Any
}

/**
 * A generic UI state holder for the search screen.
 * @param T The type of item being searched.
 */
data class SearchUiState<T>(
    val searchQuery: String = "",
    val filteredItems: List<T> = emptyList(),
    val selectedItems: Set<T> = emptySet(),
    val selectionSize: Int = 0
)


/**
 * A generic ViewModel to handle search logic for any list of 'Searchable' items.
 *
 * @param T The type of item being searched, constrained to implement [Searchable].
 * @param initialItems The initial list of items to be displayed and searched.
 */
class SearchViewModel<T : Searchable>(
    initialItems: List<T>
) : ViewModel() {
    private val _searchQuery = MutableStateFlow("")
    private val _allItems = MutableStateFlow(initialItems)
    private val _selectedItems = MutableStateFlow<Set<T>>(emptySet())

    val uiState: StateFlow<SearchUiState<T>> =
        combine(_searchQuery, _allItems, _selectedItems) { query, items, selected ->
            val itemsToShow = if (query.isBlank()) {
                items
            } else {
                items.filter { item ->
                    item.getSearchKey().contains(query, ignoreCase = true)
                }
            }
            SearchUiState(
                searchQuery = query,
                filteredItems = itemsToShow,
                selectedItems = selected,
                selectionSize = selected.size
            )
        }.stateIn(
            scope = viewModelScope,
            started = SharingStarted.WhileSubscribed(5000),
            initialValue = SearchUiState(filteredItems = initialItems)
        )

    /** Handles the query change event from the UI. */
    fun onQueryChanged(query: String) {
        _searchQuery.value = query
    }

    /** Adds a new item to the master list. */
    fun addItem(item: T) {
        _allItems.update { currentList -> currentList + item }
    }

    /** Removes an item from the master list using its unique ID. */
    fun removeItem(item: T) {
        _selectedItems.update { it - item }
        _allItems.update { currentList ->
            currentList.filter { it.getUniqueId() != item.getUniqueId() }
        }
    }

    /** Clears all items from the master list. */
    fun clearItems() {
        _selectedItems.value = emptySet()
        _allItems.value = emptyList()
    }

    /**
     * Adds a single item to the selection set.
     */
    fun selectItem(item: T) {
        _selectedItems.update { currentSet ->
            // The '+' operator on a set creates a new set with the item added
            currentSet + item
        }
    }

    /**
     * Removes a single item from the selection set.
     */
    fun deselectItem(item: T) {
        _selectedItems.update { currentSet ->
            // The '-' operator on a set creates a new set with the item removed
            currentSet - item
        }
    }

    /**
     * A more convenient function for UI toggles. Selects an item if it's not
     * selected, and deselects it if it is already selected.
     */
    fun toggleSelection(item: T) {
        _selectedItems.update { currentSet ->
            if (item in currentSet) {
                currentSet - item
            } else {
                currentSet + item
            }
        }
    }

    /** Clears all selected items. */
    fun clearSelection() {
        _selectedItems.value = emptySet()
    }
}

/**
 * A factory for creating instances of [SearchViewModel] with parameters.
 */
class SearchViewModelFactory<T : Searchable>(
    private val initialItems: List<T>
) : ViewModelProvider.Factory {
    override fun <T : ViewModel> create(modelClass: Class<T>): T {
        if (modelClass.isAssignableFrom(SearchViewModel::class.java)) {
            @Suppress("UNCHECKED_CAST")
            return SearchViewModel(initialItems) as T
        }
        throw IllegalArgumentException("Unknown ViewModel class")
    }
}
```

## File: src/main/java/com/microsoft/fluentui/toolbar/Toolbar.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentui.toolbar

import android.content.Context
import android.graphics.Bitmap
import android.graphics.Canvas
import android.graphics.drawable.BitmapDrawable
import android.graphics.drawable.Drawable
import androidx.appcompat.widget.Toolbar
import android.util.AttributeSet
import android.view.View
import android.view.ViewGroup
import com.microsoft.fluentui.topappbars.R
import com.microsoft.fluentui.persona.AvatarSize
import com.microsoft.fluentui.persona.AvatarView
import com.microsoft.fluentui.persona.IAvatar
import com.microsoft.fluentui.persona.setAvatar
import com.microsoft.fluentui.search.Searchbar
import com.microsoft.fluentui.theming.FluentUIContextThemeWrapper

/**
 * [Toolbar] appears at the top of the activity and can display the [avatarView], title,
 * and action items.
 */
class Toolbar : Toolbar {
    companion object {
        private val AVATAR_SIZE = AvatarSize.MEDIUM
    }

    /**
     * [avatar] is used as the navigation icon and appears at the start of the [Toolbar].
     */
    var avatar: IAvatar? = null
        set(value) {
            field = value
            navigationIcon = if (value != null) getAvatarBitmapDrawable() else null
        }

    @JvmOverloads
    constructor(appContext: Context, attrs: AttributeSet? = null, defStyleAttr: Int = 0) : super(FluentUIContextThemeWrapper(appContext,R.style.Theme_FluentUI_TopAppBars), attrs, R.attr.toolbarStyle) {
        // minHeight can't be set in theme or it will also set title height. Having minHeight helps center option menu icons.
        val styledAttributes = context.theme.obtainStyledAttributes(intArrayOf(android.R.attr.actionBarSize))
        val actionBarSize = styledAttributes.getDimensionPixelSize(0, -1)
        styledAttributes.recycle()
        minimumHeight = actionBarSize

        updateStylesAndIcon()
    }

    override fun setNavigationIcon(icon: Drawable?) {
        super.setNavigationIcon(icon)

        updateStylesAndIcon()
    }

    override fun onViewAdded(child: View) {
        super.onViewAdded(child)

        // This accounts for cases when the native back button is added for Searchbar as ActionMenuView.
        if (child is Searchbar && child.isActionMenuView)
            updateStylesAndIcon(true)
    }

    private fun updateStylesAndIcon(nativeBackButtonUsed: Boolean = false) {
        touchscreenBlocksFocus = false
        if (navigationIcon == null && !nativeBackButtonUsed) {
            setPaddingRelative(context.resources.getDimension(R.dimen.fluentui_toolbar_padding_start).toInt(), 0, 0, 0)
            titleMarginStart = context.resources.getDimension(R.dimen.fluentui_toolbar_title_margin_start).toInt()
            return
        }

        setPaddingRelative(context.resources.getDimension(R.dimen.fluentui_toolbar_padding_start_with_avatar).toInt(), 0, 0, 0)
        titleMarginStart = context.resources.getDimension(R.dimen.fluentui_toolbar_title_margin_start_with_avatar).toInt()
    }

    /**
     * Draw the [avatarView]'s initials or bitmap onto a canvas that's used to create a [BitmapDrawable].
     */
    private fun getAvatarBitmapDrawable(): BitmapDrawable? {
        val avatar = avatar ?: return null
        val avatarView = AvatarView(context)
        avatarView.setAvatar(avatar)
        avatarView.avatarSize = AVATAR_SIZE

        val avatarDisplayValue = avatarView.getViewSize()
        val avatarBitmap = Bitmap.createBitmap(avatarDisplayValue, avatarDisplayValue, Bitmap.Config.ARGB_8888)
        val canvas = Canvas(avatarBitmap)

        avatarView.layoutParams = ViewGroup.LayoutParams(avatarDisplayValue, avatarDisplayValue)
        avatarView.layout(0, 0, avatarDisplayValue, avatarDisplayValue)
        avatarView.draw(canvas)

        return BitmapDrawable(resources, avatarBitmap)
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

    <!--AppBarLayout-->
    <attr name="fluentuiAppBarLayoutBackgroundColor" format="reference|color"/>

    <!--Searchbar-->
    <attr name="fluentuiSearchbarBackgroundColor" format="reference|color"/>
    <attr name="fluentuiSearchbarSearchViewContainerBackgroundColor" format="reference|color"/>
    <attr name="fluentuiSearchbarBackButtonColor" format="reference|color"/>
    <attr name="fluentuiSearchbarSearchIconColor" format="reference|color"/>
    <attr name="fluentuiSearchbarSearchViewTextColor" format="reference|color"/>
    <attr name="fluentuiSearchbarSearchViewTextHintColor" format="reference|color"/>
    <attr name="fluentuiSearchbarSearchViewCursorColor" format="reference|color"/>
    <attr name="fluentuiSearchbarProgressColor" format="reference|color"/>
    <attr name="fluentuiSearchbarCloseIconColor" format="reference|color"/>

    <!--Toolbar-->
    <attr name="fluentuiToolbarBackgroundColor" format="reference|color"/>
    <attr name="fluentuiToolbarTitleTextColor" format="reference|color"/>
    <attr name="fluentuiToolbarSubtitleTextColor" format="reference|color"/>
    <attr name="fluentuiToolbarIconColor" format="reference|color"/>

    <!--common fluentui_topappbars Module attributes-->

    <!--AppBarLayout-->
    <attr name="fluentui_scrollBehavior" format="enum">
        <enum name="none" value="0" />
        <enum name="collapseToolbar" value="1" />
        <enum name="pin" value="2" />
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
    <!--AppBarLayout-->
    <dimen name="fluentui_app_bar_layout_elevation">0dp</dimen>
    <dimen name="fluentui_app_bar_layout_elevation_scroll">4dp</dimen>

    <!--Searchbar-->
    <dimen name="fluentui_searchbar_padding_bottom">3dp</dimen>
    <dimen name="fluentui_searchbar_search_view_container_margin_vertical">8dp</dimen>
    <dimen name="fluentui_searchbar_search_view_container_margin_end">16dp</dimen>
    <dimen name="fluentui_searchbar_search_view_container_search_icon_margin_start">16dp</dimen>
    <dimen name="fluentui_searchbar_search_view_container_back_button_margin_start">12dp</dimen>
    <dimen name="fluentui_searchbar_search_view_container_with_icons_margin_end">4dp</dimen>
    <dimen name="fluentui_searchbar_search_view_container_corner_radius">6dp</dimen>
    <dimen name="fluentui_searchbar_search_view_height">34dp</dimen>
    <dimen name="fluentui_searchbar_search_view_text_size">16sp</dimen>
    <dimen name="fluentui_searchbar_search_view_margin_start">12dp</dimen>
    <dimen name="fluentui_searchbar_search_view_action_view_margin_start">0dp</dimen>
    <dimen name="fluentui_searchbar_search_icon_padding_start">16dp</dimen>
    <dimen name="fluentui_searchbar_search_icon_padding_end">8dp</dimen>
    <dimen name="fluentui_searchbar_with_search_icon_search_view_text_padding_start">8dp</dimen>
    <!--This 1dp padding difference helps make room for the cursor and keep the hint aligned between focus states.-->
    <dimen name="fluentui_searchbar_with_back_button_search_view_text_padding_start">7dp</dimen>
    <dimen name="fluentui_searchbar_progress_size">28dp</dimen>

    <!--Toolbar-->
    <dimen name="fluentui_toolbar_navigation_icon_container_size">@dimen/fluentui_min_touch_size</dimen>
    <dimen name="fluentui_toolbar_padding_start">16dp</dimen>
    <dimen name="fluentui_toolbar_padding_start_with_avatar">8dp</dimen>
    <dimen name="fluentui_toolbar_title_margin_start">0dp</dimen>
    <dimen name="fluentui_toolbar_title_margin_start_with_avatar">16dp</dimen>

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

    <!--Searchbar-->
    <style name="Widget.FluentUI.SearchView" parent="Widget.AppCompat.SearchView">
        <item name="colorControlActivated">?attr/fluentuiSearchbarSearchViewCursorColor</item>
        <item name="android:textColorHint">?attr/fluentuiSearchbarSearchViewTextHintColor</item>
        <item name="android:editTextColor">?attr/fluentuiSearchbarSearchViewTextColor</item>
        <item name="android:textSize">@dimen/fluentui_searchbar_search_view_text_size</item>
    </style>
    <style name="Widget.FluentUI.CircularProgress.XSmall.Search">
        <item name="android:indeterminateTint">?attr/fluentuiSearchbarProgressColor</item>
        <item name="android:indeterminateTintMode">src_in</item>
        <item name="android:minHeight">@dimen/fluentui_searchbar_progress_size</item>
        <item name="android:minWidth">@dimen/fluentui_searchbar_progress_size</item>
        <item name="android:maxHeight">@dimen/fluentui_searchbar_progress_size</item>
        <item name="android:maxWidth">@dimen/fluentui_searchbar_progress_size</item>
    </style>
    <!--Toolbar-->
    <!--We use Widget.AppCompat.Toolbar instead of a ThemeOverlay to maintain Android's default Toolbar styling.-->
    <style name="Base.Widget.FluentUI.Toolbar" parent="@style/Widget.AppCompat.Toolbar">
        <item name="android:background">?attr/fluentuiToolbarBackgroundColor</item>
        <item name="titleTextAppearance">@style/TextAppearance.FluentUI.ToolbarTitle</item>
        <item name="subtitleTextAppearance">@style/TextAppearance.FluentUI.ToolbarSubtitle</item>
        <item name="popupTheme">@style/ThemeOverlay.AppCompat.Light</item>
    </style>
    <style name="Widget.FluentUI.Toolbar" parent="@style/Base.Widget.FluentUI.Toolbar" />
    <style name="Widget.FluentUI.Toolbar.OverflowButtonStyle" parent="Widget.AppCompat.ActionButton.Overflow">
        <item name="android:tint">?attr/fluentuiToolbarIconColor</item>
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
    <style name="Theme.FluentUI.TopAppBars.Base" parent="Base.Theme.FluentUI">
        <item name="toolbarStyle">@style/Widget.FluentUI.Toolbar</item>
        <item name="actionOverflowButtonStyle">@style/Widget.FluentUI.Toolbar.OverflowButtonStyle</item>
        <!-- *** Semantic Colors *** -->

        <!--AppBarLayout-->
        <item name="fluentuiAppBarLayoutBackgroundColor">?attr/colorPrimary</item>

        <!--Searchbar-->
        <item name="fluentuiSearchbarBackgroundColor">?attr/fluentuiBackgroundPrimaryColor</item>
        <item name="fluentuiSearchbarSearchViewContainerBackgroundColor">?attr/fluentuiBackgroundSecondary20Color</item>
        <item name="fluentuiSearchbarBackButtonColor">?attr/fluentuiForegroundOnPrimaryColor</item>
        <item name="fluentuiSearchbarSearchIconColor">?attr/fluentuiForegroundOnPrimary80Color</item>
        <item name="fluentuiSearchbarSearchViewTextColor">?attr/fluentuiForegroundOnPrimaryColor</item>
        <item name="fluentuiSearchbarSearchViewTextHintColor">?attr/fluentuiForegroundOnPrimary80Color</item>
        <item name="fluentuiSearchbarSearchViewCursorColor">?attr/fluentuiForegroundOnPrimaryColor</item>
        <item name="fluentuiSearchbarProgressColor">?attr/fluentuiForegroundOnPrimary70Color</item>
        <item name="fluentuiSearchbarCloseIconColor">?attr/fluentuiForegroundOnPrimary70Color</item>

       <!--Toolbar-->
        <item name="fluentuiToolbarBackgroundColor">?attr/colorPrimary</item>
        <item name="fluentuiToolbarTitleTextColor">?attr/fluentuiForegroundOnPrimaryColor</item>
        <item name="fluentuiToolbarSubtitleTextColor">?attr/fluentuiForegroundOnPrimaryColor</item>
        <item name="fluentuiToolbarIconColor">?attr/fluentuiForegroundOnPrimaryColor</item>

    </style>

    <!--
        All light theme semantic colors should be defined in the base theme as the default.
        Dark theme specific semantic colors should be defined in "themes.xml (night)".
    -->
    <style name="Theme.FluentUI.TopAppBars" parent="Theme.FluentUI.TopAppBars.Base"/>

    <!--
        This theme overlay targets only the attributes needed for a neutral AppBarLayout with a white background.
        Use as the theme attribute in an AppBarLayout or in a ContextThemeWrapper for AppBarLayout, Searchbar, or Toolbar.
    -->
    <style name="ThemeOverlay.FluentUI.NeutralAppBar" parent="">
        <!--AppBarLayout-->
        <item name="fluentuiAppBarLayoutBackgroundColor">?attr/fluentuiBackgroundColor</item>

        <!--Searchbar-->
        <item name="fluentuiSearchbarBackgroundColor">?attr/fluentuiBackgroundColor</item>
        <item name="fluentuiSearchbarSearchViewContainerBackgroundColor">#33C8C8C8</item>
        <item name="fluentuiSearchbarBackButtonColor">?attr/fluentuiForegroundSecondaryIconColor</item>
        <item name="fluentuiSearchbarSearchIconColor">?attr/fluentuiForegroundSecondaryIconColor</item>
        <item name="fluentuiSearchbarSearchViewTextColor">?attr/fluentuiForegroundColor</item>
        <item name="fluentuiSearchbarSearchViewTextHintColor">?attr/fluentuiForegroundColor</item>
        <item name="fluentuiSearchbarSearchViewCursorColor">?attr/colorPrimary</item>
        <item name="fluentuiSearchbarProgressColor">?attr/fluentuiForegroundSecondaryIconColor</item>
        <item name="fluentuiSearchbarCloseIconColor">?attr/fluentuiForegroundSecondaryIconColor</item>

        <!--Toolbar-->
        <item name="fluentuiToolbarBackgroundColor">?attr/fluentuiBackgroundColor</item>
        <item name="fluentuiToolbarTitleTextColor">?attr/fluentuiForegroundColor</item>
        <item name="fluentuiToolbarSubtitleTextColor">?attr/fluentuiForegroundColor</item>
        <item name="fluentuiToolbarIconColor">@color/fluentui_gray_500</item>
    </style>

</resources>
```
