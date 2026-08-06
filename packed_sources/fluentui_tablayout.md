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
src/main/java/com/microsoft/fluentui/tablayout/TabLayout.kt
src/main/java/com/microsoft/fluentui/tokenized/navigation/SideRail.kt
src/main/java/com/microsoft/fluentui/tokenized/navigation/TabBar.kt
src/main/java/com/microsoft/fluentui/tokenized/navigation/ViewPager.kt
src/main/java/com/microsoft/fluentui/tokenized/segmentedcontrols/Pill.kt
src/main/java/com/microsoft/fluentui/tokenized/segmentedcontrols/PillSwitch.kt
src/main/java/com/microsoft/fluentui/tokenized/segmentedcontrols/PillTabs.kt
src/main/res/values/attrs.xml
src/main/res/values/dimens.xml
src/main/res/values/themes.xml
```

# Files

## File: src/main/java/com/microsoft/fluentui/tablayout/TabLayout.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentui.tablayout

import android.content.Context
import android.graphics.drawable.StateListDrawable
import android.os.Build
import android.util.AttributeSet
import android.view.View
import android.view.ViewGroup
import android.view.accessibility.AccessibilityNodeInfo
import android.widget.LinearLayout
import androidx.core.content.ContextCompat
import androidx.core.graphics.drawable.DrawableCompat
import com.google.android.material.tabs.TabLayout
import com.microsoft.fluentui.theming.FluentUIContextThemeWrapper
import com.microsoft.fluentui.util.ThemeUtil
import com.microsoft.fluentui.view.TemplateView

/**
 * [TabLayout] contains a styled TabLayout widget which provides a way to organize content
 * The template uses already existing Android Design Support Library [TabLayout].*/
class TabLayout : TemplateView {
    enum class TabType {
        STANDARD, SWITCH, PILLS
    }

    /**
     *  This [tabLayout] stores the Android Design Support Library [TabLayout] attached to the given template.
     *  This can be accessed after [TabLayout] has been added to the window if created programmatically.
     *  */
    var tabLayout: TabLayout? = null
        private set

    /* This [tabType] stores the type of TabLayout. It supports [TabType.STANDARD], [TabType.SWITCH], [TabType.PILLS] */
    var tabType: TabType? = null
        set(value) {
            field = value
            updateTemplate(true)
        }

    private var tabLayoutContainer: ViewGroup? = null
    private val containerBackgroundColor: Int
    private val tabsBackgroundColor: Int
    private val selectedTabBackgroundColor: Int
    private val unselectedTabBackgroundColor: Int
    private val tabSelectedTextColor: Int
    private val tabUnselectedTextColor: Int

    @JvmOverloads
    constructor(context: Context, attrs: AttributeSet? = null, defStyleAttr: Int = 0) : super(FluentUIContextThemeWrapper(context,R.style.Theme_FluentUI_TabLayout), attrs, defStyleAttr) {
        val styledAttributes = context.obtainStyledAttributes(attrs, R.styleable.TabLayout)
        val tabTypeOrdinal = styledAttributes.getInt(R.styleable.TabLayout_fluentui_tabType, TabType.STANDARD.ordinal)
        /**
         * Use this.context while accessing themed attributes within a constructor
         * As here, the object is still not initialized, just [context] will refer
         * to the constructor parameter with same name, which typically contains
         * theme of the calling app, and TabLayout attributes may not be resolved
         * in that theme
         **/
        containerBackgroundColor = styledAttributes.getColor(
            R.styleable.TabLayout_fluentui_containerBackgroundColor,
            ThemeUtil.getColor(this.context, R.attr.fluentuiTabLayoutContainerBackgroundColor))
        tabsBackgroundColor = styledAttributes.getColor(
            R.styleable.TabLayout_fluentui_tabsBackgroundColor,
            ThemeUtil.getColor(this.context, R.attr.fluentuiTabLayoutBackgroundColor))
        selectedTabBackgroundColor = styledAttributes.getColor(
            R.styleable.TabLayout_fluentui_tabSelectedBackgroundColor,
            ThemeUtil.getColor(this.context, R.attr.fluentuiTabSelectedBackgroundColor))
        unselectedTabBackgroundColor = styledAttributes.getColor(
            R.styleable.TabLayout_fluentui_tabUnselectedBackgroundColor,
            ThemeUtil.getColor(this.context, R.attr.fluentuiTabUnselectedBackgroundColor))
        tabSelectedTextColor = styledAttributes.getColor(
            R.styleable.TabLayout_fluentui_tabSelectedTextColor,
            ThemeUtil.getColor(this.context, R.attr.fluentuiTabSelectedTextColor))
        tabUnselectedTextColor = styledAttributes.getColor(
            R.styleable.TabLayout_fluentui_tabUnselectedTextColor,
            ThemeUtil.getColor(this.context, R.attr.fluentuiTabUnselectedTextColor))
        tabType = TabType.values()[tabTypeOrdinal]
        styledAttributes.recycle()
    }

    override val templateId: Int
        get() = R.layout.view_tab_layout

    override fun onTemplateLoaded() {
        super.onTemplateLoaded()
        tabLayoutContainer = findViewInTemplateById(R.id.tab_layout_container)
        tabLayout = findViewInTemplateById(R.id.tab_layout)
        tabLayoutContainer?.setBackgroundColor(containerBackgroundColor)
    }

    override fun onAttachedToWindow() {
        super.onAttachedToWindow()
        updateTemplate()
    }

    /**
     * Updates the given template based on the [tabType]. For [TabType.PILLS], this method must be called
     * to set the appropriate margins if the [tabType] is set before the Tabs have been added.
     * */
    fun updateTemplate(explicit:Boolean = false) {
        val tabLayout = tabLayout ?: return
        val paddingHorizontalLeft = resources.getDimension(R.dimen.fluentui_tab_padding_horizontal).toInt()
        var paddingHorizontalRight = resources.getDimension(R.dimen.fluentui_tab_padding_horizontal).toInt()
        val paddingVertical = resources.getDimension(R.dimen.fluentui_tab_padding_vertical).toInt()
        when (tabType) {
            TabType.STANDARD -> {
                tabLayout.tabMode = TabLayout.MODE_FIXED
                tabLayout.layoutParams.width = LayoutParams.MATCH_PARENT
                setTabLayoutBackground()
            }
            TabType.SWITCH -> {
                tabLayout.tabMode = TabLayout.MODE_SCROLLABLE
                tabLayout.layoutParams.width = LayoutParams.WRAP_CONTENT
                setTabLayoutBackground()
            }
            TabType.PILLS -> {
                tabLayout.tabMode = TabLayout.MODE_SCROLLABLE
                tabLayout.layoutParams.width = LayoutParams.MATCH_PARENT
                tabLayout.setBackgroundResource(0)
                updateMargin()
                paddingHorizontalRight = 0
            }
            else -> {
                throw IllegalArgumentException("TabType not supported")
            }
        }
        tabLayoutContainer?.setPadding(paddingHorizontalLeft, paddingVertical, paddingHorizontalRight, paddingVertical)
        setSelectorProperties(explicit)
        setTextAppearance()
    }

    /**
     * Updates the right margin for the tabs in [tabLayout]. Used for [TabType.PILLS]
     * */
    private fun updateMargin() {
        val tabLayout = tabLayout ?: return
        val viewGroup = tabLayout.getChildAt(0) as ViewGroup
        for (i in 0 until tabLayout.tabCount - 1) {
            val tab: View = viewGroup.getChildAt(i) as TabLayout.TabView
            tab.layoutParams = (tab.layoutParams as LinearLayout.LayoutParams).apply {
                rightMargin = resources.getDimension(R.dimen.fluentui_tab_margin).toInt()
            }
        }
    }

    /**
     * sets accessibility config here for tab layout.
     * This has couple of APi level issues so we handle only for anadroid 9 and below
     * for android 10 & above things should run fine by default
     */
    private fun setTabAccessibility(tabLayout: TabLayout, i: Int, tabView: TabLayout.TabView) {
        if (Build.VERSION.SDK_INT <= Build.VERSION_CODES.P) {
            val tab = tabLayout.getTabAt(i)
            tab?.contentDescription = tab?.text?.toString() + context.getString(R.string.tab_content_description, (i + 1), tabLayout.tabCount)
            tabView.setAccessibilityDelegate(object : AccessibilityDelegate() {
                override fun onInitializeAccessibilityNodeInfo(
                    host: View,
                    info: AccessibilityNodeInfo
                ) {
                    super.onInitializeAccessibilityNodeInfo(host, info)
                    if (Build.VERSION.SDK_INT == Build.VERSION_CODES.P) {
                        info?.tooltipText = ""
                    }
                }
            })
        }
    }

    private fun setTabLayoutBackground() {
        val tabLayout = tabLayout ?: return
        val drawable = ContextCompat.getDrawable(context, R.drawable.tab_layout_background)
        val wrappedDrawable = DrawableCompat.wrap(drawable!!)
        DrawableCompat.setTint(wrappedDrawable, tabsBackgroundColor)
        tabLayout.background = wrappedDrawable
    }

    private fun setTextAppearance() {
        val tabLayout = tabLayout ?: return
        tabLayout.setTabTextColors(tabUnselectedTextColor, tabSelectedTextColor)
    }

    private fun setSelectorProperties(explicit: Boolean= false) {
        val tabLayout = tabLayout ?: return
        val viewGroup = tabLayout.getChildAt(0) as ViewGroup
        for (i in 0 until tabLayout.tabCount) {
            val tab: TabLayout.TabView = viewGroup.getChildAt(i) as TabLayout.TabView
            tab.importantForAccessibility = View.IMPORTANT_FOR_ACCESSIBILITY_YES
            tab.background = getStateListDrawable()
            setTabAccessibility(tabLayout, i, tab)
        }
        if (explicit) {
            tabLayout.requestFocus()
        }
    }

    private fun getStateListDrawable(): StateListDrawable? {
        val selectedDrawable = ContextCompat.getDrawable(context, R.drawable.tab_background)
            ?: return null
        val selectedWrappedDrawable = DrawableCompat.wrap(selectedDrawable).mutate()
        DrawableCompat.setTint(selectedWrappedDrawable, selectedTabBackgroundColor)

        val unselectedDrawable = selectedDrawable.constantState?.newDrawable()
            ?: return null
        val unselectedWrappedDrawable = DrawableCompat.wrap(unselectedDrawable).mutate()
        DrawableCompat.setTint(unselectedWrappedDrawable, unselectedTabBackgroundColor)

        val states = StateListDrawable()
        states.addState(intArrayOf(android.R.attr.state_selected), selectedWrappedDrawable)
        states.addState(intArrayOf(-android.R.attr.state_selected), unselectedWrappedDrawable)
        return states
    }
}
```

## File: src/main/java/com/microsoft/fluentui/tokenized/navigation/SideRail.kt
```kotlin
package com.microsoft.fluentui.tokenized.navigation

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxHeight
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.selection.selectableGroup
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.ControlTokens
import com.microsoft.fluentui.theme.token.FluentStyle
import com.microsoft.fluentui.theme.token.controlTokens.SideRailInfo
import com.microsoft.fluentui.theme.token.controlTokens.SideRailTokens
import com.microsoft.fluentui.theme.token.controlTokens.TabItemInfo
import com.microsoft.fluentui.theme.token.controlTokens.TabItemTokens
import com.microsoft.fluentui.theme.token.controlTokens.TabTextAlignment
import com.microsoft.fluentui.tokenized.tabItem.TabItem

/**
 * Side rails provide access to multiple destinations in your app. Used mainly in tablets and wide screen devices
 *
 * @param topTabDataList provide list of [TabData] to create top tabs.
 * @param modifier the [Modifier] to be applied to this item
 * @param topTabSelectedIndex Index of selected top tab.
 * @param bottomTabSelectedIndex Index of selected bottom tab.
 * @param header [Composable] to provide header view.
 * @param showIconText whether to show text under icons in top and bottom tabs.
 * @param bottomTabDataList provide list of [TabData] to create bottom tabs.
 * @param tabItemTokens [TabItemTokens] to apply on tabs.
 * @param sideRailTokens provide appearance values. If not provided then tokens will be picked from AppThemeController
 *
 */
@Composable
fun SideRail(
    topTabDataList: List<TabData>,
    modifier: Modifier = Modifier,
    topTabSelectedIndex: Int = 0,
    bottomTabSelectedIndex: Int = -1,
    header: @Composable (() -> Unit)? = null,
    showIconText: Boolean = false,
    bottomTabDataList: List<TabData>? = null,
    tabItemTokens: TabItemTokens? = null,
    sideRailTokens: SideRailTokens? = null
) {
    val themeID =
        FluentTheme.themeID    //Adding This only for recomposition in case of Token Updates. Unused otherwise.
    val token = sideRailTokens
        ?: FluentTheme.controlTokens.tokens[ControlTokens.ControlType.SideRailControlType] as SideRailTokens
    val sideRailInfo = SideRailInfo()

    val borderColor = token.borderColor(sideRailInfo)
    val borderWidth = token.borderWidth(sideRailInfo)
    val topMargin = token.topMargin(sideRailInfo)
    val bottomMargin = token.bottomMargin(sideRailInfo)
    val headerPadding = token.headerPadding(sideRailInfo)
    val backgroundBrush = token.backgroundBrush(sideRailInfo)

    Box(
        modifier = modifier
            .fillMaxHeight()
            .background(backgroundBrush)
    ) {
        Box(
            Modifier
                .fillMaxHeight()
                .width(borderWidth)
                .background(borderColor)
                .align(Alignment.CenterEnd)
        )
        Column(
            modifier = Modifier.padding(end = borderWidth),
            horizontalAlignment = Alignment.CenterHorizontally
        ) {
            Spacer(modifier = Modifier.height(topMargin))
            Box(modifier = Modifier.padding(headerPadding)) {
                header?.invoke()
            }
            Column(
                modifier = Modifier
                    .fillMaxHeight()
                    .weight(1f).selectableGroup(), horizontalAlignment = Alignment.CenterHorizontally
            ) {
                SideRailTabs(
                    tabDataList = topTabDataList,
                    selectedIndex = topTabSelectedIndex,
                    showIconText = showIconText,
                    tabItemTokens = tabItemTokens
                )
            }
            if (bottomTabDataList != null) {
                Column(modifier = Modifier.selectableGroup(), horizontalAlignment = Alignment.CenterHorizontally) {
                    SideRailTabs(
                        tabDataList = bottomTabDataList,
                        selectedIndex = bottomTabSelectedIndex,
                        showIconText = showIconText,
                        tabItemTokens = tabItemTokens
                    )
                }
                Spacer(modifier = Modifier.height(bottomMargin))
            }

        }
    }

}

@Composable
private fun SideRailTabs(
    tabDataList: List<TabData>,
    selectedIndex: Int,
    showIconText: Boolean,
    tabItemTokens: TabItemTokens? = null
) {
    class TabItemCustomTokens : TabItemTokens() {
        @Composable
        override fun padding(tabItemInfo: TabItemInfo): PaddingValues {
            return PaddingValues(top = 18.dp, bottom = 18.dp)
        }
    }
    tabDataList.forEachIndexed { index, tabData ->
        tabData.selected = index == selectedIndex
        TabItem(
            title = tabData.title,
            icon = if (tabData.selected) tabData.selectedIcon else tabData.icon,
            textAlignment = if (showIconText) TabTextAlignment.VERTICAL else TabTextAlignment.NO_TEXT,
            selected = tabData.selected,
            onClick = tabData.onClick,
            accessory = tabData.badge,
            fixedWidth = true,
            tabItemTokens = tabItemTokens
                ?: TabItemCustomTokens(),
            style = if (tabData.selected) FluentStyle.Brand else FluentStyle.Neutral
        )
    }
}
```

## File: src/main/java/com/microsoft/fluentui/tokenized/navigation/TabBar.kt
```kotlin
package com.microsoft.fluentui.tokenized.navigation

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.semantics.contentDescription
import androidx.compose.ui.semantics.semantics
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.ControlTokens
import com.microsoft.fluentui.theme.token.FluentStyle
import com.microsoft.fluentui.theme.token.controlTokens.TabBarInfo
import com.microsoft.fluentui.theme.token.controlTokens.TabBarTokens
import com.microsoft.fluentui.theme.token.controlTokens.TabItemTokens
import com.microsoft.fluentui.theme.token.controlTokens.TabTextAlignment
import com.microsoft.fluentui.tokenized.tabItem.TabItem
import com.microsoft.fluentui.tablayout.R

data class TabData(
    var title: String,
    var icon: ImageVector,
    var selectedIcon: ImageVector = icon,
    var selected: Boolean = false,
    var onClick: () -> Unit,
    var badge: @Composable (() -> Unit)? = null,
    var accessibilityDescription: String? = null,  //Custom announcement for Talkback
)

/**
 * TabBar displays tabs that are arranged horizontally.
 *
 *  @param tabDataList provide list of [TabData] to create tabs.
 *  @param modifier the [Modifier] to be applied to this item
 *  @param selectedIndex Index of selected tax. This should be updated onClick of TabData & provide back to TabBar.
 *  @param tabTextAlignment Placement of text in Tab
 *  @param showIndicator Add an indicator under the selected icon
 *  @param tabItemTokens [TabItemTokens] to apply on tabs.
 *  @param tabBarTokens provide appearance values. If not provided then tokens will be picked from AppThemeController
 *
 */
@Composable
fun TabBar(
    tabDataList: List<TabData>,
    modifier: Modifier = Modifier,
    selectedIndex: Int = 0,
    tabTextAlignment: TabTextAlignment = TabTextAlignment.VERTICAL,
    showIndicator: Boolean = false,
    tabItemTokens: TabItemTokens? = null,
    tabBarTokens: TabBarTokens? = null
) {
    val themeID =
        FluentTheme.themeID    //Adding This only for recomposition in case of Token Updates. Unused otherwise.
    val token = tabBarTokens
        ?: FluentTheme.controlTokens.tokens[ControlTokens.ControlType.TabBarControlType] as TabBarTokens
    val resources = LocalContext.current.resources

    Column(modifier.fillMaxWidth()) {
        Box(
            Modifier
                .fillMaxWidth()
                .height(token.topBorderWidth(tabBarInfo = TabBarInfo()))
                .background(color = token.topBorderColor(tabBarInfo = TabBarInfo()))
        )
        Row(
            modifier = Modifier.fillMaxWidth()
        ) {
            tabDataList.forEachIndexed { index, tabData ->
                tabData.selected = index == selectedIndex
                var accessibilityDescriptionValue = if(tabData.accessibilityDescription != null) { tabData.accessibilityDescription }
                                               else{ tabData.title + if(tabData.selected) resources.getString(R.string.tab_active).prependIndent(": ") else resources.getString(R.string.tab_inactive).prependIndent(": ") }
                TabItem(
                    title = tabData.title,
                    modifier = Modifier
                        .semantics {
                            if (accessibilityDescriptionValue != null) {
                                contentDescription = accessibilityDescriptionValue
                            }
                        }
                        .fillMaxWidth()
                        .weight(1F),
                    icon = if (tabData.selected) tabData.selectedIcon else tabData.icon,
                    textAlignment = tabTextAlignment,
                    selected = tabData.selected,
                    onClick = tabData.onClick,
                    accessory = tabData.badge,
                    showIndicator = showIndicator,
                    tabItemTokens = tabItemTokens
                        ?: FluentTheme.controlTokens.tokens[ControlTokens.ControlType.TabItemControlType] as TabItemTokens,
                    style = if (tabData.selected) FluentStyle.Brand else FluentStyle.Neutral
                )
            }
        }
    }
}
```

## File: src/main/java/com/microsoft/fluentui/tokenized/navigation/ViewPager.kt
```kotlin
package com.microsoft.fluentui.tokenized.navigation

import android.graphics.Paint.Align
import androidx.compose.foundation.ExperimentalFoundationApi
import androidx.compose.foundation.pager.HorizontalPager
import androidx.compose.foundation.pager.PageSize
import androidx.compose.foundation.pager.PagerState
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.ControlTokens
import com.microsoft.fluentui.theme.token.controlTokens.ViewPagerInfo
import com.microsoft.fluentui.theme.token.controlTokens.ViewPagerTokens

/**
 * API to create a ViewPager.
 *
 * @param pagerState PagerState to manage the state of ViewPager
 * @param pageContent Content to be displayed in ViewPager
 * @param modifier Optional modifier for ViewPager
 * @param pageSize Size of the page. Default: [PageSize.Fill]
 * @param userScrollEnabled Boolean for enabling/disabling user scroll. Default: [false]
 * @param verticalAlignment Alignment of content in ViewPager. Default: [Alignment.CenterVertically]
 * @param viewPagerTokens Tokens to customize appearance of ViewPager. Default: [null]
 */
@OptIn(ExperimentalFoundationApi::class)
@Composable
fun ViewPager(
    pagerState: PagerState,
    pageContent: @Composable () -> Unit,
    modifier: Modifier = Modifier,
    pageSize: PageSize = PageSize.Fill,
    userScrollEnabled: Boolean = false,
    verticalAlignment: Alignment.Vertical = Alignment.CenterVertically,
    viewPagerTokens: ViewPagerTokens? = null
) {
    val token =
        viewPagerTokens
            ?: FluentTheme.controlTokens.tokens[ControlTokens.ControlType.ViewPagerControlType] as ViewPagerTokens

    val viewPagerInfo = ViewPagerInfo()
    // HorizontalPager is a horizontally scrolling pager using the provided pagerState
        HorizontalPager(
            state = pagerState,
            modifier = modifier,
            contentPadding = token.contentPadding(viewPagerInfo),
            pageSpacing = token.pageSpacing(viewPagerInfo),
            pageSize = pageSize,
            userScrollEnabled = userScrollEnabled,
            verticalAlignment = verticalAlignment
        ) {
            pageContent()
        }
}
```

## File: src/main/java/com/microsoft/fluentui/tokenized/segmentedcontrols/Pill.kt
```kotlin
package com.microsoft.fluentui.tokenized.segmentedcontrols

import androidx.compose.animation.core.Animatable
import androidx.compose.animation.core.Spring
import androidx.compose.animation.core.spring
import androidx.compose.animation.core.tween
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
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.draw.scale
import androidx.compose.ui.focus.onFocusEvent
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.drawscope.Fill
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.semantics.Role
import androidx.compose.ui.semantics.clearAndSetSemantics
import androidx.compose.ui.semantics.contentDescription
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.semantics.stateDescription
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.tablayout.R
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.ControlTokens
import com.microsoft.fluentui.theme.token.FluentGlobalTokens
import com.microsoft.fluentui.theme.token.FluentStyle
import com.microsoft.fluentui.theme.token.Icon
import com.microsoft.fluentui.theme.token.controlTokens.PillBarInfo
import com.microsoft.fluentui.theme.token.controlTokens.PillBarTokens
import com.microsoft.fluentui.theme.token.controlTokens.PillButtonInfo
import com.microsoft.fluentui.theme.token.controlTokens.PillButtonTokens
import com.microsoft.fluentui.util.dpToPx
import kotlinx.coroutines.launch
import kotlin.math.max

/**
 * Pill Meta Data defines meta data for  a pill.
 * @param text: the text that's displayed on the Pill
 * @param onClick: onClick callback for defining the click action on the pill
 * @param icon: icon that's displayed on the Pill.
 * @param enabled: to make pill disabled or enabled for click interactions
 * @param notificationDot: boolean which defines whether to show a notification dot or not on the pill.
 * @param calloutSelectionState: boolean which let's the user define if "selected" or "not selected" state of pill must be announced for the accessibility purposes
 * @param semanticContentName: Pill name that must be announced for accessibility purposes, if it's null then @param text is used for accessibility announcement
 */
data class PillMetaData(
    var text: String? = null,
    var onClick: (() -> Unit),
    var icon: ImageVector? = null,
    var enabled: Boolean = true,
    var selected: Boolean = false,
    var notificationDot: Boolean = false,
    var calloutSelectionState: Boolean = true,
    var semanticContentName: String? = null,
)

/**
 * API to create Pill shaped Button which will further be used in tabs and bars.
 *
 * @param pillMetaData Metadata for a single pill. Type: [PillMetaData]
 * @param modifier Optional Modifier to customize the design and behaviour of pill button
 * @param style Color Scheme of pill shaped button. Default: [FluentStyle.Neutral]
 * @param interactionSource Interaction Source Object to handle gestures.
 * @param pillButtonTokens Tokens to customize the design of pill button.
 */
@Composable
fun PillButton(
    pillMetaData: PillMetaData,
    modifier: Modifier = Modifier,
    style: FluentStyle = FluentStyle.Neutral,
    interactionSource: MutableInteractionSource = remember { MutableInteractionSource() },
    pillButtonTokens: PillButtonTokens? = null
) {
    val themeID =
        FluentTheme.themeID    //Adding This only for recomposition in case of Token Updates. Unused otherwise.
    val token = pillButtonTokens
        ?: FluentTheme.controlTokens.tokens[ControlTokens.ControlType.PillButtonControlType] as PillButtonTokens
    val pillButtonInfo = PillButtonInfo(
        style,
        pillMetaData.enabled,
        pillMetaData.selected
    )
    val shape = RoundedCornerShape(50)
    val scaleBox = remember { Animatable(1.0F) }

    LaunchedEffect(key1 = pillMetaData.selected) {
        if (pillMetaData.selected) {
            launch {
                scaleBox.animateTo(
                    targetValue = 0.95F,
                    animationSpec = tween(
                        durationMillis = 50
                    )
                )
                scaleBox.animateTo(
                    targetValue = 1.0F,
                    animationSpec = spring(
                        dampingRatio = Spring.DampingRatioLowBouncy,
                        stiffness = Spring.StiffnessLow
                    )
                )
            }
        }
    }

    val backgroundColor = token.backgroundBrush(pillButtonInfo = pillButtonInfo)
        .getBrushByState(
            enabled = pillMetaData.enabled,
            selected = pillMetaData.selected,
            interactionSource = interactionSource
        )

    val borderColor = token.borderColor(pillButtonInfo = pillButtonInfo)

    val borderWidth = token.borderWidth(pillButtonInfo = pillButtonInfo)

    val iconColor =
        token.iconColor(pillButtonInfo = pillButtonInfo).getColorByState(
            enabled = pillMetaData.enabled,
            selected = pillMetaData.selected,
            interactionSource = interactionSource
        )
    val textColor =
        token.textColor(pillButtonInfo = pillButtonInfo).getColorByState(
            enabled = pillMetaData.enabled,
            selected = pillMetaData.selected,
            interactionSource = interactionSource
        )

    val fontStyle = token.typography(pillButtonInfo)

    val focusStroke = token.focusStroke(pillButtonInfo)
    var focusedBorderModifier: Modifier = Modifier
    for (borderStroke in focusStroke) {
        focusedBorderModifier =
            focusedBorderModifier.border(borderStroke, shape)
    }

    val clickAndSemanticsModifier = modifier.clickable(
        interactionSource = interactionSource,
        indication = rememberRipple(),
        enabled = pillMetaData.enabled,
        onClickLabel = null,
        role = Role.Button,
        onClick = pillMetaData.onClick
    )

    val selectedString = if(!pillMetaData.calloutSelectionState)  ""
    else if (pillMetaData.selected)
        LocalContext.current.resources.getString(R.string.fluentui_selected)
    else
        LocalContext.current.resources.getString(R.string.fluentui_not_selected)

    val enabledString = if (pillMetaData.enabled)
        LocalContext.current.resources.getString(R.string.fluentui_enabled)
    else
        LocalContext.current.resources.getString(R.string.fluentui_disabled)

    Box(
        modifier
            .scale(scaleBox.value)
            .defaultMinSize(minHeight = token.minHeight(pillButtonInfo))
            .clip(shape)
            .background(backgroundColor, shape)
            .border(width = borderWidth, color = borderColor, shape = shape)
            .then(clickAndSemanticsModifier)
            .then(if (interactionSource.collectIsFocusedAsState().value || interactionSource.collectIsHoveredAsState().value) focusedBorderModifier else Modifier)
            .padding(vertical = token.verticalPadding(pillButtonInfo))
            .semantics(true) {
                contentDescription =
                    if (pillMetaData.enabled) "${pillMetaData.semanticContentName ?: pillMetaData.text ?:  ""} $selectedString"
                    else "${pillMetaData.semanticContentName ?: pillMetaData.text ?: ""} $enabledString"
            },
        contentAlignment = Alignment.Center
    ) {
        Row(Modifier.width(IntrinsicSize.Max)) {
            Spacer(Modifier.requiredWidth(token.horizontalMargin(pillButtonInfo = pillButtonInfo)))
            if (pillMetaData.icon != null) {
                Spacer(Modifier.requiredWidth(token.iconSpace(pillButtonInfo = pillButtonInfo)))
                Icon(
                    pillMetaData.icon!!,
                    pillMetaData.text,
                    modifier = Modifier
                        .size(token.iconSize(pillButtonInfo))
                        .clearAndSetSemantics { },
                    tint = iconColor
                )
                if(pillMetaData.text != null){
                    Spacer(Modifier.requiredWidth(token.iconSpace(pillButtonInfo = pillButtonInfo)))
                }
            }
            if(pillMetaData.text != null){

                BasicText(
                    pillMetaData.text!!,
                    modifier = Modifier
                        .weight(1F)
                        .clearAndSetSemantics { },
                    style = fontStyle.merge(
                        TextStyle(color = textColor)
                    ),
                    maxLines = 1,
                    overflow = TextOverflow.Ellipsis
                )
            }
            if (pillMetaData.notificationDot) {
                val notificationDotColor: Color =
                    token.notificationDotColor(pillButtonInfo)
                        .getColorByState(
                            enabled = pillMetaData.enabled,
                            selected = pillMetaData.selected,
                            interactionSource = interactionSource
                        )
                Spacer(Modifier.requiredWidth(FluentGlobalTokens.SizeTokens.Size20.value))
                Canvas(
                    modifier = Modifier
                        .padding(top = 2.dp, bottom = 12.dp)
                        .sizeIn(minWidth = 6.dp, minHeight = 6.dp)
                ) {
                    drawCircle(
                        color = notificationDotColor, style = Fill, radius = dpToPx(3.dp)
                    )
                }
                if (pillMetaData.icon != null)
                    Spacer(Modifier.requiredWidth(FluentGlobalTokens.SizeTokens.Size100.value))
                else
                    Spacer(Modifier.requiredWidth(FluentGlobalTokens.SizeTokens.Size80.value))
            } else {
                Spacer(Modifier.requiredWidth(token.horizontalMargin(pillButtonInfo = pillButtonInfo)))
            }
        }
    }
}

/**
 * API to create Bar of Pill button. The PillBar control is a linear set of two or more PillButton, each of which functions as a mutually exclusive button.
 * PillBar are commonly used as filter for search results.
 *
 * @param metadataList
 * @param modifier
 * @param style
 * @param showBackground
 * @param pillAlignment
 * @param pillButtonTokens
 * @param pillBarTokens
 */
@Composable
fun PillBar(
    metadataList: MutableList<PillMetaData>,
    modifier: Modifier = Modifier,
    style: FluentStyle = FluentStyle.Neutral,
    showBackground: Boolean = false,
    pillAlignment: Alignment.Horizontal = Alignment.CenterHorizontally,
    pillButtonTokens: PillButtonTokens? = null,
    pillBarTokens: PillBarTokens? = null
) {
    if (metadataList.size == 0)
        return

    val themeID =
        FluentTheme.themeID    //Adding This only for recomposition in case of Token Updates. Unused otherwise.
    val token = pillBarTokens
        ?: FluentTheme.controlTokens.tokens[ControlTokens.ControlType.PillBarControlType] as PillBarTokens

    val pillBarInfo = PillBarInfo(style)
    val padding = token.padding(pillBarInfo = pillBarInfo)
    val lazyListState = rememberLazyListState()
    val scope = rememberCoroutineScope()
    val positionString: String = LocalContext.current.resources.getString(R.string.position_string)
    LazyRow(
        modifier = modifier
            .fillMaxWidth()
            .background(if (showBackground) token.backgroundBrush(pillBarInfo) else SolidColor(Color.Unspecified))
            .focusable(enabled = false),
        contentPadding = PaddingValues(padding),
        horizontalArrangement = Arrangement.spacedBy(8.dp, pillAlignment),
        state = lazyListState
    ) {
        metadataList.forEachIndexed { index, pillMetadata ->
            item(index.toString()) {
                PillButton(
                    pillMetadata,
                    modifier = Modifier
                        .onFocusEvent { focusState ->
                            if (focusState.isFocused) {
                                scope.launch {
                                    lazyListState.animateScrollToItem(
                                        max(0, index - 2)
                                    )
                                }
                            }
                        }
                        .semantics(mergeDescendants = true) {
                            stateDescription =
                                if (metadataList.size > 1) positionString.format(
                                    index + 1,
                                    metadataList.size
                                ) else ""
                        },
                    style = style, pillButtonTokens = pillButtonTokens
                )
            }
        }
    }
}
```

## File: src/main/java/com/microsoft/fluentui/tokenized/segmentedcontrols/PillSwitch.kt
```kotlin
package com.microsoft.fluentui.tokenized.segmentedcontrols

import androidx.compose.foundation.background
import androidx.compose.foundation.focusable
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.wrapContentWidth
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.rememberLazyListState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.runtime.Composable
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.focus.onFocusEvent
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.ControlTokens
import com.microsoft.fluentui.theme.token.FluentStyle
import com.microsoft.fluentui.theme.token.controlTokens.PillButtonTokens
import com.microsoft.fluentui.theme.token.controlTokens.PillSwitchInfo
import com.microsoft.fluentui.theme.token.controlTokens.PillSwitchTokens
import kotlinx.coroutines.launch
import kotlin.math.max

/**
 * API to create PillSwitches. The PillSwitch control is a linear set of two or more PillButton, each of which functions as a mutually exclusive button.
 * PillSwitches are used to toggling between two views.
 *
 * @param metadataList List of [PillMetaData] which contains information for all buttons in Tab
 * @param modifier Optional Modifier for Tabs
 * @param selectedIndex Index of the PillButton to be selected. Default: [0]
 * @param style Style of Tabs and inherent PillButtons. Default: [FluentStyle.Neutral]
 * @param pillButtonTokens Tokens to provide appearance value to PillButton
 * @param pillSwitchTokens Tokens to provide appearance value to PillSwitch
 */
@Composable
fun PillSwitch(
    metadataList: MutableList<PillMetaData>,
    modifier: Modifier = Modifier,
    selectedIndex: Int = 0,
    style: FluentStyle = FluentStyle.Neutral,
    pillButtonTokens: PillButtonTokens? = null,
    pillSwitchTokens: PillSwitchTokens? = null
) {
    if (metadataList.size == 0)
        return

    val themeID =
        FluentTheme.themeID    //Adding This only for recomposition in case of Token Updates. Unused otherwise.
    val token = pillSwitchTokens
        ?: FluentTheme.controlTokens.tokens[ControlTokens.ControlType.PillSwitchControlType] as PillSwitchTokens

    val pillSwitchInfo = PillSwitchInfo(style)
    val shape = RoundedCornerShape(50)

    val lazyListState = rememberLazyListState()
    val scope = rememberCoroutineScope()

    Row(
        modifier = Modifier
            .wrapContentWidth()
            .padding(horizontal = token.pillSwitchRowPadding(pillSwitchInfo))
            .background(Color.Transparent)
            .focusable(false)
    ) {
        LazyRow(
            modifier = modifier
                .wrapContentWidth()
                .padding(horizontal = token.pillSwitchRowPadding(pillSwitchInfo))
                .focusable(enabled = false)
                .clip(shape)
                .background(token.backgroundBrush(pillSwitchInfo), shape),
            state = lazyListState
        ) {
            metadataList.forEachIndexed { index, pillMetadata ->
                item(index.toString()) {
                    pillMetadata.selected = (selectedIndex == index)
                    PillButton(
                        pillMetadata,
                        modifier = Modifier
                            .wrapContentWidth()
                            .onFocusEvent { focusState ->
                                if (focusState.isFocused) {
                                    scope.launch {
                                        lazyListState.animateScrollToItem(
                                            max(0, index - 2)
                                        )
                                    }
                                }
                            },
                        style = style,
                        pillButtonTokens = pillButtonTokens
                    )
                }
            }
        }
    }
}
```

## File: src/main/java/com/microsoft/fluentui/tokenized/segmentedcontrols/PillTabs.kt
```kotlin
package com.microsoft.fluentui.tokenized.segmentedcontrols

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.ControlTokens
import com.microsoft.fluentui.theme.token.FluentStyle
import com.microsoft.fluentui.theme.token.controlTokens.PillButtonTokens
import com.microsoft.fluentui.theme.token.controlTokens.PillTabsInfo
import com.microsoft.fluentui.theme.token.controlTokens.PillTabsTokens

/**
 * API to create PillTabs. The PillTabs control is a linear set of two or more PillButton, each of which functions as a mutually exclusive button.
 * Within the control, all PillButton are equal in width.
 * PillTabs are often used to display different views.

View Documentation
 *
 * @param metadataList List of [PillMetaData] which contains information for all buttons in Tab
 * @param modifier Optional Modifier for PillTabs
 * @param selectedIndex Index of the PillButton to be selected. Default: [0]
 * @param scrollable Boolean to make Tab scrollable. Only used if more than 4 items in [metadataList]. PillTabs start working as PillBar in case conditions meet
 * @param style Style of PillTabs and inherent PillButtons. Default: [FluentStyle.Neutral]
 * @param pillButtonTokens Tokens to provide appearance value to PillButton
 * @param tabsTokens Tokens to provide appearance value to PillTabs
 */
@Composable
fun PillTabs(
    metadataList: MutableList<PillMetaData>,
    modifier: Modifier = Modifier,
    selectedIndex: Int = 0,
    scrollable: Boolean = false,
    style: FluentStyle = FluentStyle.Neutral,
    pillButtonTokens: PillButtonTokens? = null,
    tabsTokens: PillTabsTokens? = null
) {
    if (metadataList.size == 0)
        return

    val themeID =
        FluentTheme.themeID    //Adding This only for recomposition in case of Token Updates. Unused otherwise.
    val token =
        tabsTokens
            ?: FluentTheme.controlTokens.tokens[ControlTokens.ControlType.PillTabsControlType] as PillTabsTokens

    val pillTabsInfo = PillTabsInfo(style)
    val shape = RoundedCornerShape(50)

    if (scrollable && metadataList.size > 4) {
        metadataList.forEachIndexed { index, pillMetaData ->
            pillMetaData.selected = index == selectedIndex
        }
        PillBar(
            metadataList,
            modifier = modifier,
            style = style,
            showBackground = false,
            pillButtonTokens = pillButtonTokens,
            pillBarTokens = tabsTokens
        )
    } else {
        Row(
            modifier = modifier
                .clip(shape)
                .padding(horizontal = 16.dp)
                .background(token.trackBackgroundBrush(pillTabsInfo), shape)
        ) {
            metadataList.forEachIndexed { index, pillMetadata ->
                pillMetadata.selected = (selectedIndex == index)
                PillButton(
                    pillMetadata,
                    modifier = Modifier
                        .weight(1F),
                    style = style,
                    pillButtonTokens = pillButtonTokens
                )
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
    <!--TabLayout-->
    <attr name="fluentuiTabLayoutContainerBackgroundColor" format="reference|color"/>
    <attr name="fluentuiTabLayoutBackgroundColor" format="reference|color"/>
    <attr name="fluentuiTabSelectedTextColor" format="reference|color"/>
    <attr name="fluentuiTabUnselectedTextColor" format="reference|color"/>
    <attr name="fluentuiTabUnselectedBackgroundColor" format="reference|color"/>
    <attr name="fluentuiTabSelectedBackgroundColor" format="reference|color"/>
    <attr name="fluentuiTabTextAppearance" format="reference" />

    <!--common fluentui_tablayout Module attributes-->
    <attr name="fluentui_tabType" format="enum">
        <enum name="Standard" value="0" />
        <enum name="Switch" value="1" />
        <enum name="Pills" value="2" />
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
    <!-- TabLayout -->
    <dimen name="fluentui_tab_height">48dp</dimen>
    <dimen name="fluentui_tab_padding_horizontal">16dp</dimen>
    <dimen name="fluentui_tab_padding_vertical">8dp</dimen>
    <dimen name="fluentui_tab_content_start">32dp</dimen>
    <dimen name="fluentui_tab_radius">20dp</dimen>
    <dimen name="fluentui_tab_indicator_height">0dp</dimen>
    <dimen name="fluentui_tab_margin">8dp</dimen>
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
    <style name="Theme.FluentUI.TabLayout.Base" parent="Base.Theme.FluentUI">
    <!--TabLayout-->
    <item name="fluentuiTabSelectedTextColor">?attr/fluentuiBackgroundPrimaryColor</item>
    <item name="fluentuiTabUnselectedTextColor">?attr/fluentuiBackgroundColor</item>
    <item name="fluentuiTabLayoutContainerBackgroundColor">?attr/fluentuiBackgroundPrimaryColor</item>
    <item name="fluentuiTabLayoutBackgroundColor">@color/fluentui_communication_shade_10</item>
    <item name="fluentuiTabSelectedBackgroundColor">?attr/fluentuiBackgroundColor</item>
    <item name="fluentuiTabUnselectedBackgroundColor">?attr/fluentuiTabLayoutBackgroundColor</item>
    <item name="fluentuiTabTextAppearance">@style/TextAppearance.FluentUI.Tab</item>
    </style>

    <style name="Theme.FluentUI.TabLayout" parent="Theme.FluentUI.TabLayout.Base"/>
</resources>
```
