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
src/main/java/com/example/theme/token/CustomizedAliasTokens.kt
src/main/java/com/example/theme/token/GradientTokens.kt
src/main/java/com/example/theme/token/MyAvatarTokens.kt
src/main/java/com/example/theme/token/MyButtonTokens.kt
src/main/java/com/example/theme/token/MyControlTokens.kt
src/main/java/com/microsoft/fluentuidemo/AppProperties.kt
src/main/java/com/microsoft/fluentuidemo/CustomizedTokens.kt
src/main/java/com/microsoft/fluentuidemo/DemoActivity.kt
src/main/java/com/microsoft/fluentuidemo/Demos.kt
src/main/java/com/microsoft/fluentuidemo/demos/actionbar/ActionBarDemoActivity.kt
src/main/java/com/microsoft/fluentuidemo/demos/actionbar/V2ActionBarDemoActivity.kt
src/main/java/com/microsoft/fluentuidemo/demos/ActionBarLayoutActivity.kt
src/main/java/com/microsoft/fluentuidemo/demos/AppBarLayoutActivity.kt
src/main/java/com/microsoft/fluentuidemo/demos/AvatarGroupViewActivity.kt
src/main/java/com/microsoft/fluentuidemo/demos/AvatarViewActivity.kt
src/main/java/com/microsoft/fluentuidemo/demos/BasicInputsActivity.kt
src/main/java/com/microsoft/fluentuidemo/demos/BottomNavigationActivity.kt
src/main/java/com/microsoft/fluentuidemo/demos/BottomSheetActivity.kt
src/main/java/com/microsoft/fluentuidemo/demos/CalendarViewActivity.kt
src/main/java/com/microsoft/fluentuidemo/demos/ContextualCommandBarActivity.kt
src/main/java/com/microsoft/fluentuidemo/demos/DateTimePickerActivity.kt
src/main/java/com/microsoft/fluentuidemo/demos/DrawerActivity.kt
src/main/java/com/microsoft/fluentuidemo/demos/list/IBaseListItem.kt
src/main/java/com/microsoft/fluentuidemo/demos/list/IButtonItem.kt
src/main/java/com/microsoft/fluentuidemo/demos/list/IListItem.kt
src/main/java/com/microsoft/fluentuidemo/demos/list/IListSubHeader.kt
src/main/java/com/microsoft/fluentuidemo/demos/list/ListAdapter.kt
src/main/java/com/microsoft/fluentuidemo/demos/ListItemViewActivity.kt
src/main/java/com/microsoft/fluentuidemo/demos/PeoplePickerViewActivity.kt
src/main/java/com/microsoft/fluentuidemo/demos/PersistentBottomSheetActivity.kt
src/main/java/com/microsoft/fluentuidemo/demos/PersonaChipViewActivity.kt
src/main/java/com/microsoft/fluentuidemo/demos/PersonaListViewActivity.kt
src/main/java/com/microsoft/fluentuidemo/demos/PersonaViewActivity.kt
src/main/java/com/microsoft/fluentuidemo/demos/PopupMenuActivity.kt
src/main/java/com/microsoft/fluentuidemo/demos/ProgressActivity.kt
src/main/java/com/microsoft/fluentuidemo/demos/SnackbarActivity.kt
src/main/java/com/microsoft/fluentuidemo/demos/TabLayoutActivity.kt
src/main/java/com/microsoft/fluentuidemo/demos/TemplateViewActivity.kt
src/main/java/com/microsoft/fluentuidemo/demos/TooltipActivity.kt
src/main/java/com/microsoft/fluentuidemo/demos/TypographyActivity.kt
src/main/java/com/microsoft/fluentuidemo/demos/V2AcrylicActivity.kt
src/main/java/com/microsoft/fluentuidemo/demos/V2ActionBarActivity.kt
src/main/java/com/microsoft/fluentuidemo/demos/V2AppBarActivity.kt
src/main/java/com/microsoft/fluentuidemo/demos/V2AvatarActivity.kt
src/main/java/com/microsoft/fluentuidemo/demos/V2AvatarCarouselActivity.kt
src/main/java/com/microsoft/fluentuidemo/demos/V2AvatarGroupActivity.kt
src/main/java/com/microsoft/fluentuidemo/demos/V2BadgeActivity.kt
src/main/java/com/microsoft/fluentuidemo/demos/V2BannerActivity.kt
src/main/java/com/microsoft/fluentuidemo/demos/V2BasicChipActivity.kt
src/main/java/com/microsoft/fluentuidemo/demos/V2BasicControlsActivity.kt
src/main/java/com/microsoft/fluentuidemo/demos/V2BottomDrawerActivity.kt
src/main/java/com/microsoft/fluentuidemo/demos/V2BottomSheetActivity.kt
src/main/java/com/microsoft/fluentuidemo/demos/V2ButtonsActivity.kt
src/main/java/com/microsoft/fluentuidemo/demos/V2CardActivity.kt
src/main/java/com/microsoft/fluentuidemo/demos/V2CardNudgeActivity.kt
src/main/java/com/microsoft/fluentuidemo/demos/V2CitationActivity.kt
src/main/java/com/microsoft/fluentuidemo/demos/V2ContextualCommandBarActivity.kt
src/main/java/com/microsoft/fluentuidemo/demos/V2DialogActivity.kt
src/main/java/com/microsoft/fluentuidemo/demos/V2DrawerActivity.kt
src/main/java/com/microsoft/fluentuidemo/demos/V2LabelActivity.kt
src/main/java/com/microsoft/fluentuidemo/demos/V2ListItemActivity.kt
src/main/java/com/microsoft/fluentuidemo/demos/V2MenuActivity.kt
src/main/java/com/microsoft/fluentuidemo/demos/V2PeoplePickerActivity.kt
src/main/java/com/microsoft/fluentuidemo/demos/V2PersonaActivity.kt
src/main/java/com/microsoft/fluentuidemo/demos/V2PersonaChipActivity.kt
src/main/java/com/microsoft/fluentuidemo/demos/V2PersonaListActivity.kt
src/main/java/com/microsoft/fluentuidemo/demos/V2ProgressActivity.kt
src/main/java/com/microsoft/fluentuidemo/demos/V2ScaffoldActivity.kt
src/main/java/com/microsoft/fluentuidemo/demos/V2SearchBarActivity.kt
src/main/java/com/microsoft/fluentuidemo/demos/V2SegmentedControlActivity.kt
src/main/java/com/microsoft/fluentuidemo/demos/V2ShimmerActivity.kt
src/main/java/com/microsoft/fluentuidemo/demos/V2SideRailActivity.kt
src/main/java/com/microsoft/fluentuidemo/demos/V2SnackbarActivity.kt
src/main/java/com/microsoft/fluentuidemo/demos/V2TabBarActivity.kt
src/main/java/com/microsoft/fluentuidemo/demos/V2TextFieldActivity.kt
src/main/java/com/microsoft/fluentuidemo/demos/V2ToolTipActivity.kt
src/main/java/com/microsoft/fluentuidemo/demos/views/Cell.kt
src/main/java/com/microsoft/fluentuidemo/icons/__ListItemIcons.kt
src/main/java/com/microsoft/fluentuidemo/icons/listitemicons/Chevron.kt
src/main/java/com/microsoft/fluentuidemo/icons/listitemicons/Folder40.kt
src/main/java/com/microsoft/fluentuidemo/util/AvatarUtils.kt
src/main/java/com/microsoft/fluentuidemo/util/Content.kt
src/main/java/com/microsoft/fluentuidemo/util/DemoUtils.kt
src/main/java/com/microsoft/fluentuidemo/util/PersonaUtils.kt
src/main/java/com/microsoft/fluentuidemo/util/Strings.android.kt
src/main/java/com/microsoft/fluentuidemo/util/Strings.kt
src/main/java/com/microsoft/fluentuidemo/V2DemoActivity.kt
src/main/java/com/microsoft/fluentuidemo/V2DemoListActivity.kt
src/main/java/com/microsoft/fluentuidemo/V2DesignTokensActivity.kt
src/main/java/com/microsoft/fluentuidemo/V2StackableSnackbarActivity.kt
src/main/res/values/colors.xml
src/main/res/values/dimens.xml
src/main/res/values/styles.xml
```

# Files

## File: src/main/java/com/example/theme/token/CustomizedAliasTokens.kt
```kotlin
package com.example.theme.token


import androidx.compose.ui.graphics.Color
import com.microsoft.fluentui.theme.token.AliasTokens
import com.microsoft.fluentui.theme.token.FluentAliasTokens
import com.microsoft.fluentui.theme.token.FluentColor
import com.microsoft.fluentui.theme.token.TokenSet

class OneNoteAliasTokens : AliasTokens() {
    override val brandColor: TokenSet<FluentAliasTokens.BrandColorTokens, Color> by lazy {
        TokenSet { token ->
            when (token) {
                FluentAliasTokens.BrandColorTokens.Color10 -> Color(0xFF443168)
                FluentAliasTokens.BrandColorTokens.Color20 -> Color(0xFF584183)
                FluentAliasTokens.BrandColorTokens.Color30 -> Color(0xFF430E60)
                FluentAliasTokens.BrandColorTokens.Color40 -> Color(0xFF7B64A3)
                FluentAliasTokens.BrandColorTokens.Color50 -> Color(0xFF5B1382)
                FluentAliasTokens.BrandColorTokens.Color60 -> Color(0xFF6C179A)
                FluentAliasTokens.BrandColorTokens.Color70 -> Color(0xFF9D87C4)
                FluentAliasTokens.BrandColorTokens.Color80 -> Color(0xFF7719AA)
                FluentAliasTokens.BrandColorTokens.Color90 -> Color(0xFF862EB5)
                FluentAliasTokens.BrandColorTokens.Color100 -> Color(0xFFC0AAE4)
                FluentAliasTokens.BrandColorTokens.Color110 -> Color(0xFFCEBBED)
                FluentAliasTokens.BrandColorTokens.Color120 -> Color(0xFFDCCDF6)
                FluentAliasTokens.BrandColorTokens.Color130 -> Color(0xFFA864CD)
                FluentAliasTokens.BrandColorTokens.Color140 -> Color(0xFFEADEFF)
                FluentAliasTokens.BrandColorTokens.Color150 -> Color(0xFFD1ABE6)
                FluentAliasTokens.BrandColorTokens.Color160 -> Color(0xFFE6D1F2)
                else -> {
                    super.brandColor[token]
                }
            }
        }
    }

    override val brandBackgroundColor: TokenSet<FluentAliasTokens.BrandBackgroundColorTokens, FluentColor> by lazy {
        TokenSet { token ->
            when (token) {
                FluentAliasTokens.BrandBackgroundColorTokens.BrandBackground1 ->
                    FluentColor(
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color80],
                        dark = brandColor[FluentAliasTokens.BrandColorTokens.Color100]
                    )

                FluentAliasTokens.BrandBackgroundColorTokens.BrandBackground1Pressed ->
                    FluentColor(
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color10],
                        dark = brandColor[FluentAliasTokens.BrandColorTokens.Color140]
                    )

                FluentAliasTokens.BrandBackgroundColorTokens.BrandBackground1Selected ->
                    FluentColor(
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color60],
                        dark = brandColor[FluentAliasTokens.BrandColorTokens.Color150]
                    )

                FluentAliasTokens.BrandBackgroundColorTokens.BrandBackground2 ->
                    FluentColor(
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color50],
                        dark = Color.Unspecified
                    )

                FluentAliasTokens.BrandBackgroundColorTokens.BrandBackground2Pressed ->
                    FluentColor(
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color30],
                        dark = Color.Unspecified
                    )

                FluentAliasTokens.BrandBackgroundColorTokens.BrandBackground2Selected ->
                    FluentColor(
                        light = Color.Black,
                        dark = Color.Unspecified
                    )

                FluentAliasTokens.BrandBackgroundColorTokens.BrandBackground3 ->
                    FluentColor(
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color80],
                        dark = Color.Unspecified
                    )

                FluentAliasTokens.BrandBackgroundColorTokens.BrandBackgroundTint ->
                    FluentColor(
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color140],
                        dark = brandColor[FluentAliasTokens.BrandColorTokens.Color30]
                    )

                FluentAliasTokens.BrandBackgroundColorTokens.BrandBackgroundDisabled ->
                    FluentColor(
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color120],
                        dark = brandColor[FluentAliasTokens.BrandColorTokens.Color20]
                    )
            }
        }
    }

    override val brandForegroundColor: TokenSet<FluentAliasTokens.BrandForegroundColorTokens, FluentColor> by lazy {
        TokenSet { token ->
            when (token) {
                FluentAliasTokens.BrandForegroundColorTokens.BrandForeground1 ->
                    FluentColor(
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color80],
                        dark = brandColor[FluentAliasTokens.BrandColorTokens.Color100]
                    )

                FluentAliasTokens.BrandForegroundColorTokens.BrandForeground1Pressed ->
                    FluentColor(
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color10],
                        dark = brandColor[FluentAliasTokens.BrandColorTokens.Color140]
                    )

                FluentAliasTokens.BrandForegroundColorTokens.BrandForeground1Selected ->
                    FluentColor(
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color60],
                        dark = brandColor[FluentAliasTokens.BrandColorTokens.Color150]
                    )

                FluentAliasTokens.BrandForegroundColorTokens.BrandForegroundTint ->
                    FluentColor(
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color80],
                        dark = brandColor[FluentAliasTokens.BrandColorTokens.Color100]
                    )

                FluentAliasTokens.BrandForegroundColorTokens.BrandForegroundDisabled1 ->
                    FluentColor(
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color130],
                        dark = brandColor[FluentAliasTokens.BrandColorTokens.Color130]
                    )

                FluentAliasTokens.BrandForegroundColorTokens.BrandForegroundDisabled2 ->
                    FluentColor(
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color110],
                        dark = brandColor[FluentAliasTokens.BrandColorTokens.Color30]
                    )
            }
        }
    }

    override val brandStroke: TokenSet<FluentAliasTokens.BrandStrokeColorTokens, FluentColor> by lazy {
        TokenSet { token ->
            when (token) {
                FluentAliasTokens.BrandStrokeColorTokens.BrandStroke1 ->
                    FluentColor(
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color80],
                        dark = brandColor[FluentAliasTokens.BrandColorTokens.Color100]
                    )

                FluentAliasTokens.BrandStrokeColorTokens.BrandStroke1Pressed ->
                    FluentColor(
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color10],
                        dark = brandColor[FluentAliasTokens.BrandColorTokens.Color140]
                    )

                FluentAliasTokens.BrandStrokeColorTokens.BrandStroke1Selected ->
                    FluentColor(
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color60],
                        dark = brandColor[FluentAliasTokens.BrandColorTokens.Color150]
                    )
            }
        }
    }
}

class WordAliasTokens : AliasTokens() {
    override val brandColor: TokenSet<FluentAliasTokens.BrandColorTokens, Color> by lazy {
        TokenSet { token ->
            when (token) {
                FluentAliasTokens.BrandColorTokens.Color10 -> Color(0xFF071225)
                FluentAliasTokens.BrandColorTokens.Color20 -> Color(0xFF0C2145)
                FluentAliasTokens.BrandColorTokens.Color30 -> Color(0xFF0E336A)
                FluentAliasTokens.BrandColorTokens.Color40 -> Color(0xFF19428A)
                FluentAliasTokens.BrandColorTokens.Color50 -> Color(0xFF13458F)
                FluentAliasTokens.BrandColorTokens.Color60 -> Color(0xFF1651AA)
                FluentAliasTokens.BrandColorTokens.Color70 -> Color(0xFF2461CA)
                FluentAliasTokens.BrandColorTokens.Color80 -> Color(0xFF185ABD)
                FluentAliasTokens.BrandColorTokens.Color90 -> Color(0xFF2E6AC5)
                FluentAliasTokens.BrandColorTokens.Color100 -> Color(0xFF296FE6)
                FluentAliasTokens.BrandColorTokens.Color110 -> Color(0xFF3D7CEB)
                FluentAliasTokens.BrandColorTokens.Color120 -> Color(0xFF598FEC)
                FluentAliasTokens.BrandColorTokens.Color130 -> Color(0xFF6794D7)
                FluentAliasTokens.BrandColorTokens.Color140 -> Color(0xFF82ABF1)
                FluentAliasTokens.BrandColorTokens.Color150 -> Color(0xFFAEC6EB)
                FluentAliasTokens.BrandColorTokens.Color160 -> Color(0xFFD2E0F4)
                else -> {
                    super.brandColor[token]
                }
            }
        }
    }

    override val brandBackgroundColor: TokenSet<FluentAliasTokens.BrandBackgroundColorTokens, FluentColor> by lazy {
        TokenSet { token ->
            when (token) {
                FluentAliasTokens.BrandBackgroundColorTokens.BrandBackground1 ->
                    FluentColor(
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color80],
                        dark = brandColor[FluentAliasTokens.BrandColorTokens.Color120]
                    )

                FluentAliasTokens.BrandBackgroundColorTokens.BrandBackground1Pressed ->
                    FluentColor(
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color40],
                        dark = brandColor[FluentAliasTokens.BrandColorTokens.Color160]
                    )

                FluentAliasTokens.BrandBackgroundColorTokens.BrandBackground1Selected ->
                    FluentColor(
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color60],
                        dark = brandColor[FluentAliasTokens.BrandColorTokens.Color140]
                    )

                FluentAliasTokens.BrandBackgroundColorTokens.BrandBackground2 ->
                    FluentColor(
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color60],
                        dark = Color.Unspecified
                    )

                FluentAliasTokens.BrandBackgroundColorTokens.BrandBackground2Pressed ->
                    FluentColor(
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color20],
                        dark = Color.Unspecified
                    )

                FluentAliasTokens.BrandBackgroundColorTokens.BrandBackground2Selected ->
                    FluentColor(
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color40],
                        dark = Color.Unspecified
                    )

                FluentAliasTokens.BrandBackgroundColorTokens.BrandBackground3 ->
                    FluentColor(
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color40],
                        dark = Color.Unspecified
                    )

                FluentAliasTokens.BrandBackgroundColorTokens.BrandBackgroundTint ->
                    FluentColor(
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color140],
                        dark = brandColor[FluentAliasTokens.BrandColorTokens.Color30]
                    )

                FluentAliasTokens.BrandBackgroundColorTokens.BrandBackgroundDisabled ->
                    FluentColor(
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color160],
                        dark = brandColor[FluentAliasTokens.BrandColorTokens.Color30]
                    )
            }
        }
    }

    override val brandForegroundColor: TokenSet<FluentAliasTokens.BrandForegroundColorTokens, FluentColor> by lazy {
        TokenSet { token ->
            when (token) {
                FluentAliasTokens.BrandForegroundColorTokens.BrandForeground1 ->
                    FluentColor(
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color80],
                        dark = brandColor[FluentAliasTokens.BrandColorTokens.Color120]
                    )

                FluentAliasTokens.BrandForegroundColorTokens.BrandForeground1Pressed ->
                    FluentColor(
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color40],
                        dark = brandColor[FluentAliasTokens.BrandColorTokens.Color160]
                    )

                FluentAliasTokens.BrandForegroundColorTokens.BrandForeground1Selected ->
                    FluentColor(
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color60],
                        dark = brandColor[FluentAliasTokens.BrandColorTokens.Color140]
                    )

                FluentAliasTokens.BrandForegroundColorTokens.BrandForegroundTint ->
                    FluentColor(
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color60],
                        dark = brandColor[FluentAliasTokens.BrandColorTokens.Color140]
                    )

                FluentAliasTokens.BrandForegroundColorTokens.BrandForegroundDisabled1 ->
                    FluentColor(
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color110],
                        dark = brandColor[FluentAliasTokens.BrandColorTokens.Color90]
                    )

                FluentAliasTokens.BrandForegroundColorTokens.BrandForegroundDisabled2 ->
                    FluentColor(
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color150],
                        dark = brandColor[FluentAliasTokens.BrandColorTokens.Color40]
                    )
            }
        }
    }

    override val brandStroke: TokenSet<FluentAliasTokens.BrandStrokeColorTokens, FluentColor> by lazy {
        TokenSet { token ->
            when (token) {
                FluentAliasTokens.BrandStrokeColorTokens.BrandStroke1 ->
                    FluentColor(
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color80],
                        dark = brandColor[FluentAliasTokens.BrandColorTokens.Color120]
                    )

                FluentAliasTokens.BrandStrokeColorTokens.BrandStroke1Pressed ->
                    FluentColor(
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color40],
                        dark = brandColor[FluentAliasTokens.BrandColorTokens.Color160]
                    )

                FluentAliasTokens.BrandStrokeColorTokens.BrandStroke1Selected ->
                    FluentColor(
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color60],
                        dark = brandColor[FluentAliasTokens.BrandColorTokens.Color140]
                    )
            }
        }
    }
}

class ExcelAliasTokens : AliasTokens() {
    override val brandColor: TokenSet<FluentAliasTokens.BrandColorTokens, Color> by lazy {
        TokenSet { token ->
            when (token) {
                FluentAliasTokens.BrandColorTokens.Color10 -> Color(0xFF03160A)
                FluentAliasTokens.BrandColorTokens.Color20 -> Color(0xFF052912)
                FluentAliasTokens.BrandColorTokens.Color30 -> Color(0xFF094624)
                FluentAliasTokens.BrandColorTokens.Color40 -> Color(0xFF0A5325)
                FluentAliasTokens.BrandColorTokens.Color50 -> Color(0xFF0C5F32)
                FluentAliasTokens.BrandColorTokens.Color60 -> Color(0xFF0F703B)
                FluentAliasTokens.BrandColorTokens.Color70 -> Color(0xFF0F7937)
                FluentAliasTokens.BrandColorTokens.Color80 -> Color(0xFF107C41)
                FluentAliasTokens.BrandColorTokens.Color90 -> Color(0xFF218D51)
                FluentAliasTokens.BrandColorTokens.Color100 -> Color(0xFF10893C)
                FluentAliasTokens.BrandColorTokens.Color110 -> Color(0xFF1F954A)
                FluentAliasTokens.BrandColorTokens.Color120 -> Color(0xFF37A660)
                FluentAliasTokens.BrandColorTokens.Color130 -> Color(0xFF55B17E)
                FluentAliasTokens.BrandColorTokens.Color140 -> Color(0xFF60BD82)
                FluentAliasTokens.BrandColorTokens.Color150 -> Color(0xFFA0D8B9)
                FluentAliasTokens.BrandColorTokens.Color160 -> Color(0xFFCAEAD8)
                else -> {
                    super.brandColor[token]
                }
            }
        }
    }

    override val brandBackgroundColor: TokenSet<FluentAliasTokens.BrandBackgroundColorTokens, FluentColor> by lazy {
        TokenSet { token ->
            when (token) {
                FluentAliasTokens.BrandBackgroundColorTokens.BrandBackground1 ->
                    FluentColor(
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color80],
                        dark = brandColor[FluentAliasTokens.BrandColorTokens.Color130]
                    )

                FluentAliasTokens.BrandBackgroundColorTokens.BrandBackground1Pressed ->
                    FluentColor(
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color40],
                        dark = brandColor[FluentAliasTokens.BrandColorTokens.Color160]
                    )

                FluentAliasTokens.BrandBackgroundColorTokens.BrandBackground1Selected ->
                    FluentColor(
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color60],
                        dark = brandColor[FluentAliasTokens.BrandColorTokens.Color140]
                    )

                FluentAliasTokens.BrandBackgroundColorTokens.BrandBackground2 ->
                    FluentColor(
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color60],
                        dark = Color.Unspecified
                    )

                FluentAliasTokens.BrandBackgroundColorTokens.BrandBackground2Pressed ->
                    FluentColor(
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color20],
                        dark = Color.Unspecified
                    )

                FluentAliasTokens.BrandBackgroundColorTokens.BrandBackground2Selected ->
                    FluentColor(
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color40],
                        dark = Color.Unspecified
                    )

                FluentAliasTokens.BrandBackgroundColorTokens.BrandBackground3 ->
                    FluentColor(
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color40],
                        dark = Color.Unspecified
                    )

                FluentAliasTokens.BrandBackgroundColorTokens.BrandBackgroundTint ->
                    FluentColor(
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color160],
                        dark = brandColor[FluentAliasTokens.BrandColorTokens.Color30]
                    )

                FluentAliasTokens.BrandBackgroundColorTokens.BrandBackgroundDisabled ->
                    FluentColor(
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color150],
                        dark = brandColor[FluentAliasTokens.BrandColorTokens.Color40]
                    )
            }
        }
    }

    override val brandForegroundColor: TokenSet<FluentAliasTokens.BrandForegroundColorTokens, FluentColor> by lazy {
        TokenSet { token ->
            when (token) {
                FluentAliasTokens.BrandForegroundColorTokens.BrandForeground1 ->
                    FluentColor(
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color80],
                        dark = brandColor[FluentAliasTokens.BrandColorTokens.Color130]
                    )

                FluentAliasTokens.BrandForegroundColorTokens.BrandForeground1Pressed ->
                    FluentColor(
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color40],
                        dark = brandColor[FluentAliasTokens.BrandColorTokens.Color160]
                    )

                FluentAliasTokens.BrandForegroundColorTokens.BrandForeground1Selected ->
                    FluentColor(
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color60],
                        dark = brandColor[FluentAliasTokens.BrandColorTokens.Color140]
                    )

                FluentAliasTokens.BrandForegroundColorTokens.BrandForegroundTint ->
                    FluentColor(
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color50],
                        dark = brandColor[FluentAliasTokens.BrandColorTokens.Color140]
                    )

                FluentAliasTokens.BrandForegroundColorTokens.BrandForegroundDisabled1 ->
                    FluentColor(
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color120],
                        dark = brandColor[FluentAliasTokens.BrandColorTokens.Color90]
                    )

                FluentAliasTokens.BrandForegroundColorTokens.BrandForegroundDisabled2 ->
                    FluentColor(
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color160],
                        dark = brandColor[FluentAliasTokens.BrandColorTokens.Color60]
                    )
            }
        }
    }

    override val brandStroke: TokenSet<FluentAliasTokens.BrandStrokeColorTokens, FluentColor> by lazy {
        TokenSet { token ->
            when (token) {
                FluentAliasTokens.BrandStrokeColorTokens.BrandStroke1 ->
                    FluentColor(
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color80],
                        dark = brandColor[FluentAliasTokens.BrandColorTokens.Color130]
                    )

                FluentAliasTokens.BrandStrokeColorTokens.BrandStroke1Pressed ->
                    FluentColor(
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color40],
                        dark = brandColor[FluentAliasTokens.BrandColorTokens.Color160]
                    )

                FluentAliasTokens.BrandStrokeColorTokens.BrandStroke1Selected ->
                    FluentColor(
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color60],
                        dark = brandColor[FluentAliasTokens.BrandColorTokens.Color140]
                    )
            }
        }
    }
}

class PowerPointAliasTokens : AliasTokens() {
    override val brandColor: TokenSet<FluentAliasTokens.BrandColorTokens, Color> by lazy {
        TokenSet { token ->
            when (token) {
                FluentAliasTokens.BrandColorTokens.Color10 -> Color(0xFF200D03)
                FluentAliasTokens.BrandColorTokens.Color20 -> Color(0xFF3C1805)
                FluentAliasTokens.BrandColorTokens.Color30 -> Color(0xFF6E220F)
                FluentAliasTokens.BrandColorTokens.Color40 -> Color(0xFF79310A)
                FluentAliasTokens.BrandColorTokens.Color50 -> Color(0xFF952F15)
                FluentAliasTokens.BrandColorTokens.Color60 -> Color(0xFFB13719)
                FluentAliasTokens.BrandColorTokens.Color70 -> Color(0xFFB1470E)
                FluentAliasTokens.BrandColorTokens.Color80 -> Color(0xFFC43E1C)
                FluentAliasTokens.BrandColorTokens.Color90 -> Color(0xFFCB5031)
                FluentAliasTokens.BrandColorTokens.Color100 -> Color(0xFFCA5010)
                FluentAliasTokens.BrandColorTokens.Color110 -> Color(0xFFCF6024)
                FluentAliasTokens.BrandColorTokens.Color120 -> Color(0xFFD67540)
                FluentAliasTokens.BrandColorTokens.Color130 -> Color(0xFFDC816A)
                FluentAliasTokens.BrandColorTokens.Color140 -> Color(0xFFE1966D)
                FluentAliasTokens.BrandColorTokens.Color150 -> Color(0xFFEDBCB0)
                FluentAliasTokens.BrandColorTokens.Color160 -> Color(0xFFF6DBD4)
                else -> {
                    super.brandColor[token]
                }
            }
        }
    }

    override val brandBackgroundColor: TokenSet<FluentAliasTokens.BrandBackgroundColorTokens, FluentColor> by lazy {
        TokenSet { token ->
            when (token) {
                FluentAliasTokens.BrandBackgroundColorTokens.BrandBackground1 ->
                    FluentColor(
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color80],
                        dark = brandColor[FluentAliasTokens.BrandColorTokens.Color130]
                    )

                FluentAliasTokens.BrandBackgroundColorTokens.BrandBackground1Pressed ->
                    FluentColor(
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color40],
                        dark = brandColor[FluentAliasTokens.BrandColorTokens.Color160]
                    )

                FluentAliasTokens.BrandBackgroundColorTokens.BrandBackground1Selected ->
                    FluentColor(
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color60],
                        dark = brandColor[FluentAliasTokens.BrandColorTokens.Color140]
                    )

                FluentAliasTokens.BrandBackgroundColorTokens.BrandBackground2 ->
                    FluentColor(
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color60],
                        dark = Color.Unspecified
                    )

                FluentAliasTokens.BrandBackgroundColorTokens.BrandBackground2Pressed ->
                    FluentColor(
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color20],
                        dark = Color.Unspecified
                    )

                FluentAliasTokens.BrandBackgroundColorTokens.BrandBackground2Selected ->
                    FluentColor(
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color40],
                        dark = Color.Unspecified
                    )

                FluentAliasTokens.BrandBackgroundColorTokens.BrandBackground3 ->
                    FluentColor(
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color40],
                        dark = Color.Unspecified
                    )

                FluentAliasTokens.BrandBackgroundColorTokens.BrandBackgroundTint ->
                    FluentColor(
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color160],
                        dark = brandColor[FluentAliasTokens.BrandColorTokens.Color40]
                    )

                FluentAliasTokens.BrandBackgroundColorTokens.BrandBackgroundDisabled ->
                    FluentColor(
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color150],
                        dark = brandColor[FluentAliasTokens.BrandColorTokens.Color40]
                    )
            }
        }
    }

    override val brandForegroundColor: TokenSet<FluentAliasTokens.BrandForegroundColorTokens, FluentColor> by lazy {
        TokenSet { token ->
            when (token) {
                FluentAliasTokens.BrandForegroundColorTokens.BrandForeground1 ->
                    FluentColor(
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color80],
                        dark = brandColor[FluentAliasTokens.BrandColorTokens.Color130]
                    )

                FluentAliasTokens.BrandForegroundColorTokens.BrandForeground1Pressed ->
                    FluentColor(
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color40],
                        dark = brandColor[FluentAliasTokens.BrandColorTokens.Color160]
                    )

                FluentAliasTokens.BrandForegroundColorTokens.BrandForeground1Selected ->
                    FluentColor(
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color60],
                        dark = brandColor[FluentAliasTokens.BrandColorTokens.Color140]
                    )

                FluentAliasTokens.BrandForegroundColorTokens.BrandForegroundTint ->
                    FluentColor(
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color60],
                        dark = brandColor[FluentAliasTokens.BrandColorTokens.Color150]
                    )

                FluentAliasTokens.BrandForegroundColorTokens.BrandForegroundDisabled1 ->
                    FluentColor(
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color130],
                        dark = brandColor[FluentAliasTokens.BrandColorTokens.Color90]
                    )

                FluentAliasTokens.BrandForegroundColorTokens.BrandForegroundDisabled2 ->
                    FluentColor(
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color150],
                        dark = brandColor[FluentAliasTokens.BrandColorTokens.Color40]
                    )
            }
        }
    }

    override val brandStroke: TokenSet<FluentAliasTokens.BrandStrokeColorTokens, FluentColor> by lazy {
        TokenSet { token ->
            when (token) {
                FluentAliasTokens.BrandStrokeColorTokens.BrandStroke1 ->
                    FluentColor(
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color80],
                        dark = brandColor[FluentAliasTokens.BrandColorTokens.Color130]
                    )

                FluentAliasTokens.BrandStrokeColorTokens.BrandStroke1Pressed ->
                    FluentColor(
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color40],
                        dark = brandColor[FluentAliasTokens.BrandColorTokens.Color160]
                    )

                FluentAliasTokens.BrandStrokeColorTokens.BrandStroke1Selected ->
                    FluentColor(
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color60],
                        dark = brandColor[FluentAliasTokens.BrandColorTokens.Color140]
                    )
            }
        }
    }
}

class M365AliasTokens : AliasTokens() {
    override val brandColor: TokenSet<FluentAliasTokens.BrandColorTokens, Color> by lazy {
        TokenSet { token ->
            when (token) {
                FluentAliasTokens.BrandColorTokens.Color10 -> Color(0xFF16152B)
                FluentAliasTokens.BrandColorTokens.Color20 -> Color(0xFF1E1D40)
                FluentAliasTokens.BrandColorTokens.Color30 -> Color(0xFF27265C)
                FluentAliasTokens.BrandColorTokens.Color40 -> Color(0xFF2E2E78)
                FluentAliasTokens.BrandColorTokens.Color50 -> Color(0xFF353696)
                FluentAliasTokens.BrandColorTokens.Color60 -> Color(0xFF3B3FB2)
                FluentAliasTokens.BrandColorTokens.Color70 -> Color(0xFF3E45C9)
                FluentAliasTokens.BrandColorTokens.Color80 -> Color(0xFF464FEB)
                FluentAliasTokens.BrandColorTokens.Color90 -> Color(0xFF515EF5)
                FluentAliasTokens.BrandColorTokens.Color100 -> Color(0xFF5F71FA)
                FluentAliasTokens.BrandColorTokens.Color110 -> Color(0xFF7385FF)
                FluentAliasTokens.BrandColorTokens.Color120 -> Color(0xFF8295FF)
                FluentAliasTokens.BrandColorTokens.Color130 -> Color(0xFF96A8FF)
                FluentAliasTokens.BrandColorTokens.Color140 -> Color(0xFFB0BEFF)
                FluentAliasTokens.BrandColorTokens.Color150 -> Color(0xFFCCD6FF)
                FluentAliasTokens.BrandColorTokens.Color160 -> Color(0xFFEBEFFF)
                else -> {
                    super.brandColor[token]
                }
            }
        }
    }
}

class TeamsAliasTokens : AliasTokens() {
    override val brandColor: TokenSet<FluentAliasTokens.BrandColorTokens, Color> by lazy {
        TokenSet { token ->
            when (token) {
                FluentAliasTokens.BrandColorTokens.Color10 -> Color(0xFF2B2B40)
                FluentAliasTokens.BrandColorTokens.Color20 -> Color(0xFF2F2F4A)
                FluentAliasTokens.BrandColorTokens.Color30 -> Color(0xFF333357)
                FluentAliasTokens.BrandColorTokens.Color40 -> Color(0xFF383966)
                FluentAliasTokens.BrandColorTokens.Color50 -> Color(0xFF3D3E78)
                FluentAliasTokens.BrandColorTokens.Color60 -> Color(0xFF444791)
                FluentAliasTokens.BrandColorTokens.Color70 -> Color(0xFF4F52B2)
                FluentAliasTokens.BrandColorTokens.Color80 -> Color(0xFF5B5FC7)
                FluentAliasTokens.BrandColorTokens.Color90 -> Color(0xFF7579EB)
                FluentAliasTokens.BrandColorTokens.Color100 -> Color(0xFF7F85F5)
                FluentAliasTokens.BrandColorTokens.Color110 -> Color(0xFF9299F7)
                FluentAliasTokens.BrandColorTokens.Color120 -> Color(0xFFAAB1FA)
                FluentAliasTokens.BrandColorTokens.Color130 -> Color(0xFFB6BCFA)
                FluentAliasTokens.BrandColorTokens.Color140 -> Color(0xFFC5CBFA)
                FluentAliasTokens.BrandColorTokens.Color150 -> Color(0xFFDCE0FA)
                FluentAliasTokens.BrandColorTokens.Color160 -> Color(0xFFE8EBFA)
                else -> {
                    super.brandColor[token]
                }
            }
        }
    }
}
```

## File: src/main/java/com/example/theme/token/GradientTokens.kt
```kotlin
package com.example.theme.token

import androidx.compose.runtime.Composable
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import com.microsoft.fluentui.theme.token.FluentStyle
import com.microsoft.fluentui.theme.token.StateBrush
import com.microsoft.fluentui.theme.token.controlTokens.AppBarInfo
import com.microsoft.fluentui.theme.token.controlTokens.AppBarTokens
import com.microsoft.fluentui.theme.token.controlTokens.FABInfo
import com.microsoft.fluentui.theme.token.controlTokens.FABTokens

private var gradient = Brush.linearGradient(
    0.0f to Color(0xFF464FEB),
    0.7f to Color(0xFF47CFFA),
    0.92f to Color(0xFFB47CF8),
    start = Offset.Zero,
    end = Offset.Infinite
)

class MyAppBarToken : AppBarTokens() {
    @Composable
    override fun backgroundBrush(info: AppBarInfo): Brush {
        return if (info.style == FluentStyle.Brand) gradient else super.backgroundBrush(info)
    }
}

class MyFABToken : FABTokens() {
    @Composable
    override fun backgroundBrush(info: FABInfo): StateBrush {
        return StateBrush(
            rest = gradient,
            pressed = gradient,
        )
    }
}
```

## File: src/main/java/com/example/theme/token/MyAvatarTokens.kt
```kotlin
package com.example.theme.token

import androidx.compose.runtime.Composable
import com.microsoft.fluentui.theme.token.controlTokens.AvatarInfo
import com.microsoft.fluentui.theme.token.controlTokens.AvatarStyle
import com.microsoft.fluentui.theme.token.controlTokens.AvatarTokens

class AnonymousAvatarTokens : AvatarTokens() {

    @Composable
    override fun avatarStyle(avatarInfo: AvatarInfo): AvatarStyle {
        return AvatarStyle.Anonymous
    }
}

class StandardInvertedAvatarTokens : AvatarTokens() {

    @Composable
    override fun avatarStyle(avatarInfo: AvatarInfo): AvatarStyle {
        return AvatarStyle.StandardInverted
    }
}

class AnonymousAccentAvatarTokens : AvatarTokens() {

    @Composable
    override fun avatarStyle(avatarInfo: AvatarInfo): AvatarStyle {
        return AvatarStyle.AnonymousAccent
    }
}
```

## File: src/main/java/com/example/theme/token/MyButtonTokens.kt
```kotlin
package com.example.theme.token

import androidx.compose.runtime.Composable
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.theme.token.controlTokens.ButtonInfo
import com.microsoft.fluentui.theme.token.controlTokens.ButtonSize
import com.microsoft.fluentui.theme.token.controlTokens.ButtonTokens

open class MyButtonTokens : ButtonTokens() {

    @Composable
    override fun fixedHeight(buttonInfo: ButtonInfo): Dp {
        return when (buttonInfo.size) {
            ButtonSize.Small -> 40.dp
            ButtonSize.Medium -> 48.dp
            ButtonSize.Large -> 60.dp
        }
    }

    @Composable
    override fun cornerRadius(buttonInfo: ButtonInfo): Dp {
        return 0.dp
    }
}
```

## File: src/main/java/com/example/theme/token/MyControlTokens.kt
```kotlin
package com.example.theme.token

import androidx.compose.foundation.Image
import com.microsoft.fluentui.theme.token.*

class MyControlTokens : ControlTokens(){
    enum class MyControlType : IType {
        MyButtonTokens
    }

    override val tokens: TokenSet<IType, IControlToken> by lazy {
        TokenSet { type ->
            when(type){
                MyControlType.MyButtonTokens -> MyButtonTokens()
                else -> {
                    super.tokens[type]
                }
            }
        }
    }
}
```

## File: src/main/java/com/microsoft/fluentuidemo/AppProperties.kt
```kotlin
package com.microsoft.fluentuidemo

import android.app.Activity
import android.content.Context
import android.content.Intent
import androidx.activity.ComponentActivity
import androidx.appcompat.app.AppCompatDelegate
import androidx.compose.foundation.clickable
import androidx.compose.foundation.isSystemInDarkTheme
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.runtime.Composable
import androidx.compose.runtime.State
import androidx.compose.runtime.getValue
import androidx.compose.runtime.livedata.observeAsState
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.toArgb
import androidx.compose.ui.platform.LocalView
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.window.DialogProperties
import androidx.core.app.NavUtils.navigateUpTo
import androidx.core.view.WindowCompat
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.example.theme.token.ExcelAliasTokens
import com.example.theme.token.M365AliasTokens
import com.example.theme.token.OneNoteAliasTokens
import com.example.theme.token.PowerPointAliasTokens
import com.example.theme.token.TeamsAliasTokens
import com.example.theme.token.WordAliasTokens
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.ThemeMode
import com.microsoft.fluentui.theme.token.AliasTokens
import com.microsoft.fluentui.theme.token.FluentAliasTokens
import com.microsoft.fluentui.theme.token.FluentGlobalTokens
import com.microsoft.fluentui.theme.token.FluentStyle
import com.microsoft.fluentui.theme.token.Icon
import com.microsoft.fluentui.theme.token.StateBrush
import com.microsoft.fluentui.theme.token.controlTokens.BorderType
import com.microsoft.fluentui.theme.token.controlTokens.RadioButtonInfo
import com.microsoft.fluentui.theme.token.controlTokens.RadioButtonTokens
import com.microsoft.fluentui.theme.token.controlTokens.SectionHeaderStyle
import com.microsoft.fluentui.tokenized.controls.RadioButton
import com.microsoft.fluentui.tokenized.controls.ToggleSwitch
import com.microsoft.fluentui.tokenized.listitem.ListItem
import com.microsoft.fluentui.tokenized.menu.Dialog
import com.microsoft.fluentui.tokenized.menu.Menu

object AppThemeViewModel : ViewModel() {
    lateinit var appThemeStyle: State<FluentStyle>
    private var themeStyle: MutableLiveData<FluentStyle> = MutableLiveData(FluentStyle.Brand)
    var selectedThemeIndex_: MutableLiveData<Int> = MutableLiveData(0)
    var selectedThemeMode_: MutableLiveData<ThemeMode> = MutableLiveData(ThemeMode.Auto)

    fun updateThemeStyle(overrideThemeStyle: FluentStyle) {
        themeStyle.value = overrideThemeStyle
    }

    @Composable
    fun observeThemeStyle(initial: FluentStyle): State<FluentStyle> {
        return this.themeStyle.observeAsState(initial)
    }
}

@Composable
fun SetStatusBarColor() {
    AppThemeViewModel.appThemeStyle =
        AppThemeViewModel.observeThemeStyle(initial = FluentStyle.Brand)
    val view = LocalView.current
    val window = (view.context as Activity).window
    val insets = WindowCompat.getInsetsController(window, view)
    window.statusBarColor = if (AppThemeViewModel.appThemeStyle.value == FluentStyle.Brand)
        FluentTheme.aliasTokens.brandBackgroundColor[FluentAliasTokens.BrandBackgroundColorTokens.BrandBackground1].value()
            .toArgb()
    else
        FluentTheme.aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background1].value()
            .toArgb()

    insets?.isAppearanceLightStatusBars =
        (!isSystemInDarkTheme() && AppThemeViewModel.appThemeStyle.value != FluentStyle.Brand && AppThemeViewModel.selectedThemeMode_.value != ThemeMode.Dark) || (isSystemInDarkTheme() && AppThemeViewModel.selectedThemeMode_.value == ThemeMode.Light && AppThemeViewModel.appThemeStyle.value != FluentStyle.Brand)
}

@Composable
fun AppBarMenu() {
    var expandedMenu by rememberSaveable { mutableStateOf(false) }
    Icon(
        painter = painterResource(id = R.drawable.ic_fluent_more_vertical_24_regular),
        contentDescription = stringResource(id = R.string.app_bar_more),
        modifier = Modifier
            .padding(FluentGlobalTokens.SizeTokens.Size120.value)
            .clickable { expandedMenu = true },
        tint = if (AppThemeViewModel.appThemeStyle.value == FluentStyle.Neutral) {
            FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground2].value(
                FluentTheme.themeMode
            )
        } else {
            FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundLightStatic].value(
                FluentTheme.themeMode
            )
        }
    )
    Menu(
        opened = expandedMenu,
        onDismissRequest = { expandedMenu = false },
    ) {
        Column(
            modifier = Modifier.verticalScroll(rememberScrollState())
        ) {
            var accentEnabled by remember { mutableStateOf(true) }
            ListItem.Item(
                text = stringResource(id = R.string.accent),
                onClick = {
                    accentEnabled = !accentEnabled
                    if (accentEnabled) {
                        AppThemeViewModel.updateThemeStyle(
                            FluentStyle.Brand
                        )
                    } else {
                        AppThemeViewModel.updateThemeStyle(
                            FluentStyle.Neutral
                        )
                    }
                },
                trailingAccessoryContent = {
                    ToggleSwitch(
                        onValueChange = {
                            accentEnabled = it
                            if (it) {
                                AppThemeViewModel.updateThemeStyle(
                                    FluentStyle.Brand
                                )
                            } else {
                                AppThemeViewModel.updateThemeStyle(
                                    FluentStyle.Neutral
                                )
                            }
                        },
                        checkedState = AppThemeViewModel.appThemeStyle.value == FluentStyle.Brand,
                    )
                },
                border = BorderType.Bottom,
                listItemTokens = CustomizedTokens.listItemTokens
            )

            var showAppearanceDialog by remember { mutableStateOf(false) }
            ListItem.Item(
                text = stringResource(id = R.string.appearance),
                leadingAccessoryContent = {
                    Icon(
                        painter = painterResource(id = R.drawable.ic_fluent_dark_theme_24_regular),
                        contentDescription = stringResource(id = R.string.appearance),
                        tint = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground2].value(),
                    )
                },
                onClick = { showAppearanceDialog = !showAppearanceDialog },
                listItemTokens = CustomizedTokens.listItemTokens
            )

            if (showAppearanceDialog) {
                Dialog(
                    dialogProperties = DialogProperties(
                        dismissOnClickOutside = true,
                        dismissOnBackPress = true
                    ),
                    onDismiss = { showAppearanceDialog = !showAppearanceDialog },
                ) {
                    SetAppThemeMode { showAppearanceDialog = !showAppearanceDialog }
                }
            }

            ListItem.SectionHeader(
                title = stringResource(id = R.string.choose_brand_theme),
                enableChevron = false,
                style = SectionHeaderStyle.Subtle,
                listItemTokens = CustomizedTokens.listItemTokens
            )
            SetAppTheme()
        }
    }
}

@Composable
fun SetAppThemeMode(onThemeModeClick: () -> Unit) {
    Column {
        ListItem.SectionHeader(
            title = stringResource(id = R.string.choose_appearance),
            enableChevron = false,
            listItemTokens = CustomizedTokens.listItemTokens
        )

        val selectedThemeMode by AppThemeViewModel.selectedThemeMode_.observeAsState()
        ListItem.Item(
            text = stringResource(id = R.string.appearance_system_default),
            onClick = { appThemeToggle(ThemeMode.Auto, onThemeModeClick ) },
            leadingAccessoryContent = {
                RadioButton(
                    selected = selectedThemeMode == ThemeMode.Auto,
                    onClick = { appThemeToggle(ThemeMode.Auto, onThemeModeClick ) },
                )
            },
            listItemTokens = CustomizedTokens.listItemTokens
        )

        ListItem.Item(
            text = stringResource(id = R.string.appearance_light),
            onClick = { appThemeToggle(ThemeMode.Light, onThemeModeClick ) },
            leadingAccessoryContent = {
                RadioButton(
                    selected = selectedThemeMode == ThemeMode.Light,
                    onClick = { appThemeToggle(ThemeMode.Light, onThemeModeClick ) },
                )
            },
            listItemTokens = CustomizedTokens.listItemTokens
        )

        ListItem.Item(
            text = stringResource(id = R.string.appearance_dark),
            onClick = { appThemeToggle(ThemeMode.Dark, onThemeModeClick) },
            leadingAccessoryContent = {
                RadioButton(
                    selected = selectedThemeMode == ThemeMode.Dark,
                    onClick = { appThemeToggle(ThemeMode.Dark, onThemeModeClick) },
                )
            },
            listItemTokens = CustomizedTokens.listItemTokens
        )
    }
}

fun appThemeToggle(appThemeMode: ThemeMode, onThemeModeClick: () -> Unit) {
    AppThemeViewModel.selectedThemeMode_.value = appThemeMode
    FluentTheme.updateThemeMode(appThemeMode)
    onThemeModeClick()
    when(appThemeMode){
        ThemeMode.Auto -> AppCompatDelegate.setDefaultNightMode(AppCompatDelegate.MODE_NIGHT_FOLLOW_SYSTEM)
        ThemeMode.Light -> AppCompatDelegate.setDefaultNightMode(AppCompatDelegate.MODE_NIGHT_NO)
        ThemeMode.Dark -> AppCompatDelegate.setDefaultNightMode(AppCompatDelegate.MODE_NIGHT_YES)
    }
}
@Composable
fun SetAppTheme() {
    val selectedThemeIndex by AppThemeViewModel.selectedThemeIndex_.observeAsState()
    val themesList = arrayOf(
        Pair(AliasTokens(), stringResource(id = R.string.fluent_brand_theme)),
        Pair(OneNoteAliasTokens(), stringResource(id = R.string.one_note_theme)),
        Pair(WordAliasTokens(), stringResource(id = R.string.word_theme)),
        Pair(ExcelAliasTokens(), stringResource(id = R.string.excel_theme)),
        Pair(PowerPointAliasTokens(), stringResource(id = R.string.powerpoint_theme)),
        Pair(M365AliasTokens(), stringResource(id = R.string.m365_theme)),
        Pair(TeamsAliasTokens(), stringResource(id = R.string.teams_theme))
    )

    themesList.forEachIndexed { index, theme ->
        ListItem.Item(
            text = theme.second,
            onClick = {
                FluentTheme.updateAliasTokens(theme.first)
                AppThemeViewModel.selectedThemeIndex_.value = index
            },
            leadingAccessoryContent = {
                RadioButton(
                    selected = selectedThemeIndex == index,
                    onClick = {
                        FluentTheme.updateAliasTokens(theme.first)
                        AppThemeViewModel.selectedThemeIndex_.value = index
                    },
                    radioButtonToken = object : RadioButtonTokens() {
                        @Composable
                        override fun backgroundBrush(radioButtonInfo: RadioButtonInfo): StateBrush {
                            return StateBrush(
                                rest = SolidColor(theme.first.brandColor[FluentAliasTokens.BrandColorTokens.Color80]),
                                selected = SolidColor(theme.first.brandColor[FluentAliasTokens.BrandColorTokens.Color80])
                            )
                        }
                    }
                )
            },
            listItemTokens = CustomizedTokens.listItemTokens
        )
    }
}

object Navigation {
    private var navigationStack = ArrayDeque<Class<ComponentActivity>>()
    fun forwardNavigation(
        currentActivity: ComponentActivity,
        targetActivity: Class<out androidx.core.app.ComponentActivity>,
        vararg extraData: Pair<String, java.io.Serializable>
    ) {
        val intent = Intent(currentActivity, targetActivity)
        extraData.forEach {
            intent.putExtra(it.first, it.second)
        }
        navigationStack.add(currentActivity.javaClass)
        currentActivity.startActivity(intent)
    }

    fun backNavigation(context: Context) {
        navigateUpTo(context as Activity, Intent(context, navigationStack.removeLast()))
    }
}
```

## File: src/main/java/com/microsoft/fluentuidemo/CustomizedTokens.kt
```kotlin
package com.microsoft.fluentuidemo

import androidx.compose.runtime.Composable
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.unit.Dp
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.ThemeMode
import com.microsoft.fluentui.theme.token.FluentAliasTokens
import com.microsoft.fluentui.theme.token.FluentColor
import com.microsoft.fluentui.theme.token.FluentGlobalTokens
import com.microsoft.fluentui.theme.token.FluentStyle
import com.microsoft.fluentui.theme.token.StateBrush
import com.microsoft.fluentui.theme.token.controlTokens.ListItemInfo
import com.microsoft.fluentui.theme.token.controlTokens.ListItemTokens
import com.microsoft.fluentui.theme.token.controlTokens.SearchBarInfo
import com.microsoft.fluentui.theme.token.controlTokens.SearchBarTokens

object CustomizedTokens {
    val listItemTokens = object : ListItemTokens() {
        @Composable
        override fun backgroundBrush(listItemInfo: ListItemInfo): StateBrush {
            return StateBrush(
                rest = SolidColor(FluentTheme.aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background2].value()),
                pressed = SolidColor(FluentTheme.aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background2Pressed].value())
            )
        }
    }
}

object CustomizedSearchBarTokens: SearchBarTokens() {
    @Composable
    override fun height(searchBarInfo: SearchBarInfo): Dp {
        return FluentGlobalTokens.SizeTokens.Size480.value
    }

    @Composable
    override fun elevation(searchBarInfo: SearchBarInfo): Dp =
        FluentGlobalTokens.ShadowTokens.Shadow16.value

    @Composable
    override fun cornerRadius(searchBarInfo: SearchBarInfo): Dp =
        FluentGlobalTokens.CornerRadiusTokens.CornerRadius160.value

    @Composable
    override fun borderWidth(searchBarInfo: SearchBarInfo): Dp =
        FluentGlobalTokens.StrokeWidthTokens.StrokeWidth10.value

    @Composable
    override fun inputBackgroundBrush(searchBarInfo: SearchBarInfo): Brush {
        return SolidColor(
            when (searchBarInfo.style) {
                FluentStyle.Neutral ->
                    FluentTheme.aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background3].value(
                        themeMode = FluentTheme.themeMode
                    )

                FluentStyle.Brand ->
                    FluentColor(
                        light = FluentTheme.aliasTokens.brandBackgroundColor[FluentAliasTokens.BrandBackgroundColorTokens.BrandBackground2].value(
                            ThemeMode.Light
                        ),
                        dark = FluentTheme.aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background5].value(
                            ThemeMode.Dark
                        )
                    ).value(themeMode = FluentTheme.themeMode)
            }
        )
    }
}
```

## File: src/main/java/com/microsoft/fluentuidemo/DemoActivity.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentuidemo

import android.content.Intent
import android.os.Bundle
import android.view.MenuItem
import android.view.ViewGroup
import androidx.appcompat.app.AppCompatActivity
import com.microsoft.fluentuidemo.databinding.ActivityDemoDetailBinding
import java.util.UUID

abstract class DemoActivity : AppCompatActivity() {
    companion object {
        const val DEMO_ID = "demo_id"
    }

    protected open val contentNeedsScrollableContainer: Boolean
        get() = true

    protected lateinit var demoBinding: ActivityDemoDetailBinding

    protected lateinit var container: ViewGroup

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        demoBinding = ActivityDemoDetailBinding.inflate(layoutInflater)
        setContentView(demoBinding.root)

        // Show the Up button in the action bar.
        supportActionBar?.setDisplayHomeAsUpEnabled(true)

        // Set demo title
        val demoID = intent.getSerializableExtra(DEMO_ID) as UUID
        val demo: Demo? = V1DEMO.find { it.id == demoID }
        if (demo != null)
            title = demo.title

        container =
            if (contentNeedsScrollableContainer) demoBinding.demoDetailScrollableContainer else demoBinding.demoDetailContainer
    }

    override fun onOptionsItemSelected(item: MenuItem): Boolean {
        return when (item.itemId) {
            android.R.id.home -> {
                navigateUpTo(Intent(this, V2DemoListActivity::class.java))
                true
            }

            else -> super.onOptionsItemSelected(item)
        }
    }
}
```

## File: src/main/java/com/microsoft/fluentuidemo/Demos.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentuidemo

import androidx.core.app.ComponentActivity
import com.microsoft.fluentuidemo.demos.ActionBarLayoutActivity
import com.microsoft.fluentuidemo.demos.AppBarLayoutActivity
import com.microsoft.fluentuidemo.demos.AvatarGroupViewActivity
import com.microsoft.fluentuidemo.demos.AvatarViewActivity
import com.microsoft.fluentuidemo.demos.BasicInputsActivity
import com.microsoft.fluentuidemo.demos.BottomNavigationActivity
import com.microsoft.fluentuidemo.demos.BottomSheetActivity
import com.microsoft.fluentuidemo.demos.CalendarViewActivity
import com.microsoft.fluentuidemo.demos.ContextualCommandBarActivity
import com.microsoft.fluentuidemo.demos.DateTimePickerActivity
import com.microsoft.fluentuidemo.demos.DrawerActivity
import com.microsoft.fluentuidemo.demos.ListItemViewActivity
import com.microsoft.fluentuidemo.demos.PeoplePickerViewActivity
import com.microsoft.fluentuidemo.demos.PersistentBottomSheetActivity
import com.microsoft.fluentuidemo.demos.PersonaChipViewActivity
import com.microsoft.fluentuidemo.demos.PersonaListViewActivity
import com.microsoft.fluentuidemo.demos.PersonaViewActivity
import com.microsoft.fluentuidemo.demos.PopupMenuActivity
import com.microsoft.fluentuidemo.demos.ProgressActivity
import com.microsoft.fluentuidemo.demos.SnackbarActivity
import com.microsoft.fluentuidemo.demos.TabLayoutActivity
import com.microsoft.fluentuidemo.demos.TemplateViewActivity
import com.microsoft.fluentuidemo.demos.TooltipActivity
import com.microsoft.fluentuidemo.demos.TypographyActivity
import com.microsoft.fluentuidemo.demos.V2AcrylicPaneActivity
import com.microsoft.fluentuidemo.demos.V2ActionBarActivity
import com.microsoft.fluentuidemo.demos.V2AppBarActivity
import com.microsoft.fluentuidemo.demos.V2AvatarActivity
import com.microsoft.fluentuidemo.demos.V2AvatarCarouselActivity
import com.microsoft.fluentuidemo.demos.V2AvatarGroupActivity
import com.microsoft.fluentuidemo.demos.V2BadgeActivity
import com.microsoft.fluentuidemo.demos.V2BannerActivity
import com.microsoft.fluentuidemo.demos.V2BasicChipActivity
import com.microsoft.fluentuidemo.demos.V2BasicControlsActivity
import com.microsoft.fluentuidemo.demos.V2BottomDrawerActivity
import com.microsoft.fluentuidemo.demos.V2BottomSheetActivity
import com.microsoft.fluentuidemo.demos.V2ButtonsActivity
import com.microsoft.fluentuidemo.demos.V2CardActivity
import com.microsoft.fluentuidemo.demos.V2CardNudgeActivity
import com.microsoft.fluentuidemo.demos.V2CitationActivity
import com.microsoft.fluentuidemo.demos.V2ContextualCommandBarActivity
import com.microsoft.fluentuidemo.demos.V2DialogActivity
import com.microsoft.fluentuidemo.demos.V2DrawerActivity
import com.microsoft.fluentuidemo.demos.V2LabelActivity
import com.microsoft.fluentuidemo.demos.V2ListItemActivity
import com.microsoft.fluentuidemo.demos.V2MenuActivity
import com.microsoft.fluentuidemo.demos.V2PeoplePickerActivity
import com.microsoft.fluentuidemo.demos.V2PersonaActivity
import com.microsoft.fluentuidemo.demos.V2PersonaChipActivity
import com.microsoft.fluentuidemo.demos.V2PersonaListActivity
import com.microsoft.fluentuidemo.demos.V2ProgressActivity
import com.microsoft.fluentuidemo.demos.V2ScaffoldActivity
import com.microsoft.fluentuidemo.demos.V2SearchBarActivity
import com.microsoft.fluentuidemo.demos.V2SegmentedControlActivity
import com.microsoft.fluentuidemo.demos.V2ShimmerActivity
import com.microsoft.fluentuidemo.demos.V2SideRailActivity
import com.microsoft.fluentuidemo.demos.V2SnackbarActivity
import com.microsoft.fluentuidemo.demos.V2StackableSnackbarActivity
import com.microsoft.fluentuidemo.demos.V2TabBarActivity
import com.microsoft.fluentuidemo.demos.V2TextFieldActivity
import com.microsoft.fluentuidemo.demos.V2ToolTipActivity
import java.util.UUID
import kotlin.reflect.KClass

enum class Badge {
    None,
    New,
    Modified,
    APIBreak
}

const val V2ACRYLICPANE = "V2 Acrylic Pane"
const val V2ACTION_BAR = "V2 ActionBar"
const val V2AVATAR = "V2 Avatar"
const val V2AVATAR_CAROUSEL = "V2 Avatar Carousel"
const val V2AVATAR_GROUP = "V2 Avatar Group"
const val V2BADGE = "V2 Badge"
const val V2BANNER = "V2 Banner"
const val V2BASIC_CHIP = "V2 Basic Chip"
const val V2BASIC_CONTROLS = "V2 Basic Controls"
const val V2BOTTOM_DRAWER = "V2 Bottom Drawer"
const val V2BOTTOM_SHEET = "V2 BottomSheet"
const val V2BUTTON = "V2 Buttons"
const val V2CARD = "V2 Card"
const val V2CARD_NUDGE = "V2 Card Nudge"
const val V2CITATION = "V2 Citation"
const val V2CONTEXTUAL_COMMAND_BAR = "V2 ContextualCommandBar"
const val V2DIALOG = "V2 Dialog"
const val V2DRAWER = "V2 Drawer"
const val V2LIST_ITEM = "V2 ListItem"
const val V2MENU = "V2 Menu"
const val V2PEOPLE_PICKER = "V2 People Picker"
const val V2PERSONA = "V2 Persona"
const val V2PERSONA_CHIP = "V2 PersonaChip"
const val V2PERSONA_LIST = "V2 PersonaList"
const val V2PROGRESS = "V2 Progress"
const val V2SCAFFOLD = "V2 Scaffold"
const val V2SEARCHBAR = "V2 SearchBar"
const val V2SEGMENTED_CONTROL = "V2 SegmentedControl"
const val V2SHIMMER = "V2 Shimmer"
const val V2SIDE_RAIL = "V2 SideRail"
const val V2SNACKBAR = "V2 Snackbar"
const val V2STACKABLE_SNACKBAR = "V2 StackableSnackbar"
const val V2TAB_BAR = "V2 TabBar"
const val V2TEXT_FIELD = "V2 TextField"
const val V2TOOL_TIP = "V2 ToolTip"
const val ACTION_BAR_LAYOUT = "ActionBarLayout"
const val APP_BAR_LAYOUT = "AppBarLayout"
const val V2APP_BAR_LAYOUT = "V2 AppBarLayout"
const val AVATAR_VIEW = "AvatarView"
const val AVATAR_GROUP_VIEW = "AvatarGroupView"
const val BASIC_INPUTS = "Basic Inputs"
const val BOTTOM_NAVIGATION = "BottomNavigation"
const val BOTTOM_SHEET = "BottomSheet"
const val CALENDAR_VIEW = "CalendarView"
const val CONTEXTUAL_COMMAND_BAR = "ContextualCommandBar"
const val DATE_TIME_PICKER = "DateTimePicker"
const val DRAWER = "Drawer"
const val V2LABEL = "V2 Label"
const val LIST_ITEM_VIEW = "ListItemView"
const val PEOPLE_PICKER_VIEW = "PeoplePickerView"
const val PERSISTENT_BOTTOM_SHEET = "PersistentBottomSheet"
const val PERSONA_CHIP_VIEW = "PersonaChipView"
const val PERSONA_LIST_VIEW = "PersonaListView"
const val PERSONA_VIEW = "PersonaView"
const val POPUP_MENU = "PopupMenu"
const val PROGRESS = "Progress"
const val SNACKBAR = "Snackbar"
const val TAB_LAYOUT = "TabLayout"
const val TEMPLATE_VIEW = "TemplateView"
const val TOOLTIP = "Tooltip"
const val TYPOGRAPHY = "Typography"

val V1DEMO = arrayListOf(
    Demo(ACTION_BAR_LAYOUT, ActionBarLayoutActivity::class),
    Demo(APP_BAR_LAYOUT, AppBarLayoutActivity::class),
    Demo(AVATAR_VIEW, AvatarViewActivity::class),
    Demo(AVATAR_GROUP_VIEW, AvatarGroupViewActivity::class),
    Demo(BASIC_INPUTS, BasicInputsActivity::class),
    Demo(BOTTOM_NAVIGATION, BottomNavigationActivity::class),
    Demo(BOTTOM_SHEET, BottomSheetActivity::class),
    Demo(CALENDAR_VIEW, CalendarViewActivity::class),
    Demo(CONTEXTUAL_COMMAND_BAR, ContextualCommandBarActivity::class),
    Demo(DATE_TIME_PICKER, DateTimePickerActivity::class),
    Demo(DRAWER, DrawerActivity::class),
    Demo(LIST_ITEM_VIEW, ListItemViewActivity::class),
    Demo(PEOPLE_PICKER_VIEW, PeoplePickerViewActivity::class, Badge.Modified),
    Demo(PERSISTENT_BOTTOM_SHEET, PersistentBottomSheetActivity::class),
    Demo(PERSONA_CHIP_VIEW, PersonaChipViewActivity::class),
    Demo(PERSONA_LIST_VIEW, PersonaListViewActivity::class),
    Demo(PERSONA_VIEW, PersonaViewActivity::class),
    Demo(POPUP_MENU, PopupMenuActivity::class),
    Demo(PROGRESS, ProgressActivity::class),
    Demo(SNACKBAR, SnackbarActivity::class),
    Demo(TAB_LAYOUT, TabLayoutActivity::class),
    Demo(TEMPLATE_VIEW, TemplateViewActivity::class),
    Demo(TOOLTIP, TooltipActivity::class),
    Demo(TYPOGRAPHY, TypographyActivity::class)
)

val V2DEMO = arrayListOf(
    Demo(V2ACRYLICPANE, V2AcrylicPaneActivity::class, Badge.New),
    Demo(V2ACTION_BAR, V2ActionBarActivity::class),
    Demo(V2APP_BAR_LAYOUT, V2AppBarActivity::class, Badge.Modified),
    Demo(V2AVATAR, V2AvatarActivity::class),
    Demo(V2AVATAR_CAROUSEL, V2AvatarCarouselActivity::class),
    Demo(V2AVATAR_GROUP, V2AvatarGroupActivity::class),
    Demo(V2BADGE, V2BadgeActivity::class),
    Demo(V2BANNER, V2BannerActivity::class),
    Demo(V2BASIC_CHIP, V2BasicChipActivity::class),
    Demo(V2BASIC_CONTROLS, V2BasicControlsActivity::class),
    Demo(V2BOTTOM_DRAWER, V2BottomDrawerActivity::class),
    Demo(V2BOTTOM_SHEET, V2BottomSheetActivity::class, Badge.Modified),
    Demo(V2BUTTON, V2ButtonsActivity::class, Badge.Modified),
    Demo(V2CARD, V2CardActivity::class),
    Demo(V2CARD_NUDGE, V2CardNudgeActivity::class),
    Demo(V2CITATION, V2CitationActivity::class),
    Demo(V2CONTEXTUAL_COMMAND_BAR, V2ContextualCommandBarActivity::class),
    Demo(V2DIALOG, V2DialogActivity::class),
    Demo(V2DRAWER, V2DrawerActivity::class, Badge.Modified),
    Demo(V2LABEL, V2LabelActivity::class),
    Demo(V2LIST_ITEM, V2ListItemActivity::class, Badge.Modified),
    Demo(V2MENU, V2MenuActivity::class),
    Demo(V2PEOPLE_PICKER, V2PeoplePickerActivity::class),
    Demo(V2PERSONA, V2PersonaActivity::class),
    Demo(V2PERSONA_CHIP, V2PersonaChipActivity::class),
    Demo(V2PERSONA_LIST, V2PersonaListActivity::class),
    Demo(V2PROGRESS, V2ProgressActivity::class),
    Demo(V2SCAFFOLD, V2ScaffoldActivity::class),
    Demo(V2SEARCHBAR, V2SearchBarActivity::class, Badge.Modified),
    Demo(V2SEGMENTED_CONTROL, V2SegmentedControlActivity::class),
    Demo(V2SHIMMER, V2ShimmerActivity::class, Badge.Modified),
    Demo(V2SIDE_RAIL, V2SideRailActivity::class),
    Demo(V2SNACKBAR, V2SnackbarActivity::class, Badge.Modified),
    Demo(V2STACKABLE_SNACKBAR, V2StackableSnackbarActivity::class, Badge.New),
    Demo(V2TAB_BAR, V2TabBarActivity::class),
    Demo(V2TEXT_FIELD, V2TextFieldActivity::class),
    Demo(V2TOOL_TIP, V2ToolTipActivity::class),
    )

val DUO_DEMOS = arrayListOf(
    Demo(APP_BAR_LAYOUT, AppBarLayoutActivity::class),
    Demo(BOTTOM_SHEET, BottomSheetActivity::class),
    Demo(CALENDAR_VIEW, CalendarViewActivity::class),
    Demo(DRAWER, DrawerActivity::class),
    Demo(PEOPLE_PICKER_VIEW, PeoplePickerViewActivity::class),
    Demo(DATE_TIME_PICKER, DateTimePickerActivity::class),
    Demo(POPUP_MENU, PopupMenuActivity::class),
    Demo(SNACKBAR, SnackbarActivity::class),
    Demo(TOOLTIP, TooltipActivity::class)
)

data class Demo(
    val title: String, val demoClass: KClass<out ComponentActivity>,
    val badge: Badge = Badge.None
) {
    val id: UUID = UUID.randomUUID()
}
```

## File: src/main/java/com/microsoft/fluentuidemo/demos/actionbar/ActionBarDemoActivity.kt
```kotlin
package com.microsoft.fluentuidemo.demos.actionbar

import android.os.Bundle
import android.view.Gravity
import android.view.View
import android.view.ViewGroup
import android.widget.FrameLayout
import androidx.core.content.ContextCompat
import androidx.viewpager.widget.PagerAdapter
import com.microsoft.fluentui.actionbar.ActionBarLayout
import com.microsoft.fluentuidemo.DemoActivity
import com.microsoft.fluentuidemo.R
import com.microsoft.fluentuidemo.databinding.DemoActionBarActivityBinding

class ActionBarDemoActivity : DemoActivity() {

    private lateinit var actionbarBinding: DemoActionBarActivityBinding

    override fun onCreate(savedInstanceState: Bundle?) {
        actionbarBinding = DemoActionBarActivityBinding.inflate(layoutInflater)
        super.onCreate(savedInstanceState)
        setContentView(actionbarBinding.root)

        val position = intent.getIntExtra("POSITION", 0)
        val mode = intent.getIntExtra("TYPE", ActionBarLayout.Type.BASIC.ordinal)

        val params = FrameLayout.LayoutParams(
            FrameLayout.LayoutParams.WRAP_CONTENT,
            FrameLayout.LayoutParams.WRAP_CONTENT
        )
        params.gravity = if (position == 1) Gravity.TOP else Gravity.BOTTOM

        actionbarBinding.actionbar1.layoutParams = params
        actionbarBinding.actionbar1.setMode(mode)

        val pagerAdapter = DummyPagerAdapter()
        pagerAdapter.setData(createPageList())
        actionbarBinding.viewpager1.adapter = pagerAdapter
        actionbarBinding.actionbar1.setPager(actionbarBinding.viewpager1)
        actionbarBinding.actionbar1.setLaunchMainScreen { finish() }

    }

    private fun createPageList(): List<View> {
        val pageList: MutableList<View> = ArrayList()
        pageList.add(
            createPageView(
                ContextCompat.getColor(
                    applicationContext,
                    R.color.fluentui_communication_tint_20
                )
            )
        )
        pageList.add(
            createPageView(
                ContextCompat.getColor(
                    applicationContext,
                    R.color.fluentui_communication_tint_30
                )
            )
        )
        pageList.add(
            createPageView(
                ContextCompat.getColor(
                    applicationContext,
                    R.color.fluentui_communication_tint_40
                )
            )
        )

        return pageList
    }

    private fun createPageView(color: Int): View {
        val view = View(this)
        view.setBackgroundColor(color)
        return view
    }

    class DummyPagerAdapter : PagerAdapter() {
        private var viewList: List<View>

        init {
            this.viewList = ArrayList()
        }

        override fun instantiateItem(collection: ViewGroup, position: Int): Any {
            val view = viewList.get(position)
            collection.addView(view)
            return view
        }

        override fun destroyItem(collection: ViewGroup, position: Int, view: Any) {
            collection.removeView(view as View)
        }

        override fun isViewFromObject(view: View, obj: Any): Boolean {
            return view === obj
        }

        override fun getCount(): Int {
            return viewList.size
        }

        fun setData(list: List<View>) {
            viewList = list
        }
    }
}
```

## File: src/main/java/com/microsoft/fluentuidemo/demos/actionbar/V2ActionBarDemoActivity.kt
```kotlin
package com.microsoft.fluentuidemo.demos.actionbar

import android.os.Bundle
import androidx.activity.compose.setContent
import androidx.compose.foundation.ExperimentalFoundationApi
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.WindowInsets
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.statusBars
import androidx.compose.foundation.pager.rememberPagerState
import androidx.compose.foundation.text.BasicText
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import com.microsoft.fluentui.compose.Scaffold
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.FluentAliasTokens
import com.microsoft.fluentui.tokenized.actionbar.ActionBar
import com.microsoft.fluentui.tokenized.navigation.ViewPager
import com.microsoft.fluentuidemo.SetStatusBarColor
import com.microsoft.fluentuidemo.V2DemoActivity

class V2ActionBarDemoActivity : V2DemoActivity() {
    init {
        setupActivity(this)
    }

    @OptIn(ExperimentalFoundationApi::class)
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        val context = this
        val selectedActionBarType = intent.getIntExtra("ACTION_BAR_TYPE", 0)
        val selectedActionBarPosition = intent.getIntExtra("ACTION_BAR_POSITION", 0)
        setContent {
            FluentTheme {
                SetStatusBarColor()
                val noOfPages = 5
                val pagerState = rememberPagerState(pageCount = { noOfPages })

                val actionBar = @androidx.compose.runtime.Composable {
                    ActionBar(
                        pagerState = pagerState,
                        startCallback = {
                            this.finish()
                        },
                        type = selectedActionBarType
                    )
                }
                Scaffold(
                    contentWindowInsets = WindowInsets.statusBars,
                    topBar = if (selectedActionBarPosition == 0)
                        actionBar
                    else {
                        {}
                    },
                    bottomBar = if (selectedActionBarPosition == 1) {
                        actionBar
                    } else {
                        {}
                    }
                ) {
                    Box(
                        modifier = Modifier
                            .fillMaxSize()
                            .background(FluentTheme.aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background1].value())
                            .padding(it)
                    ) {
                        ViewPager(
                            pagerState = pagerState,
                            modifier = Modifier.fillMaxSize(),
                            pageContent = {
                                Box(
                                    Modifier
                                        .fillMaxSize()
                                        .background(
                                            color = if (pagerState.currentPage % 2 == 0) Color.Cyan else Color.LightGray
                                        )
                                ) {
                                    BasicText(
                                        text = "Page ${pagerState.currentPage}",
                                        modifier = Modifier.align(Alignment.Center)
                                    )
                                }
                            }
                        )
                    }
                }
            }
        }
    }
}
```

## File: src/main/java/com/microsoft/fluentuidemo/demos/ActionBarLayoutActivity.kt
```kotlin
package com.microsoft.fluentuidemo.demos

import android.content.Intent
import android.os.Bundle
import android.view.LayoutInflater
import com.microsoft.fluentui.actionbar.ActionBarLayout
import com.microsoft.fluentui.snackbar.Snackbar
import com.microsoft.fluentuidemo.Demo
import com.microsoft.fluentuidemo.DemoActivity
import com.microsoft.fluentuidemo.R
import com.microsoft.fluentuidemo.databinding.ActivityActionBarLayoutBinding
import com.microsoft.fluentuidemo.demos.actionbar.ActionBarDemoActivity

class ActionBarLayoutActivity : DemoActivity() {

    private lateinit var actionBarBinding: ActivityActionBarLayoutBinding

    override fun onCreate(savedInstanceState: Bundle?) {

        super.onCreate(savedInstanceState)
        actionBarBinding = ActivityActionBarLayoutBinding.inflate(
            LayoutInflater.from(container.context),
            container,
            true
        )

        actionBarBinding.startDemoBtn.setOnClickListener {
            var position = actionBarBinding.actionBarPositionRgroup.checkedRadioButtonId
            var type = actionBarBinding.actionBarTypeRgroup.checkedRadioButtonId
            if (position == -1 || type == -1) {
                Snackbar.make(
                    demoBinding.rootView,
                    "Please select position and type",
                    Snackbar.LENGTH_SHORT
                ).show()
            } else {
                position = when (position) {
                    R.id.action_bar_position_top -> 1
                    else -> 0
                }

                type = when (type) {
                    R.id.action_bar_type_icon -> ActionBarLayout.Type.ICON.ordinal
                    R.id.action_bar_type_carousel -> ActionBarLayout.Type.CAROUSEL.ordinal
                    else -> ActionBarLayout.Type.BASIC.ordinal
                }

                val demo = Demo("DEMOACTIONBAR", ActionBarDemoActivity::class)
                val actionBarIntent = Intent(this, demo.demoClass.java)
                actionBarIntent.putExtra(DEMO_ID, demo.id)
                actionBarIntent.putExtra("POSITION", position)
                actionBarIntent.putExtra("TYPE", type)
                startActivity(actionBarIntent)
            }
        }
    }
}
```

## File: src/main/java/com/microsoft/fluentuidemo/demos/AppBarLayoutActivity.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentuidemo.demos

import android.graphics.PorterDuff
import android.os.Bundle
import android.os.Handler
import android.os.Looper
import android.view.*
import androidx.core.content.ContextCompat
import androidx.recyclerview.widget.DividerItemDecoration
import com.microsoft.fluentui.appbarlayout.AppBarLayout
import com.microsoft.fluentui.listitem.ListItemDivider
import com.microsoft.fluentui.listitem.ListSubHeaderView
import com.microsoft.fluentui.search.Searchbar
import com.microsoft.fluentui.snackbar.Snackbar
import com.microsoft.fluentui.theming.FluentUIContextThemeWrapper
import com.microsoft.fluentui.util.ThemeUtil
import com.microsoft.fluentui.util.getTintedDrawable
import com.microsoft.fluentuidemo.DemoActivity
import com.microsoft.fluentuidemo.R
import com.microsoft.fluentuidemo.databinding.ActivityAppBarLayoutBinding
import com.microsoft.fluentuidemo.demos.list.*
import com.microsoft.fluentuidemo.util.Avatar

class AppBarLayoutActivity : DemoActivity(), View.OnClickListener {
    companion object {
        private var themeId = R.style.AppTheme
        private const val SCROLL_BEHAVIOR = "scrollBehavior"
        private const val NAVIGATION_ICON_TYPE = "navigationIconType"
        private const val SEARCHBAR_IS_ACTION_MENU_VIEW = "searchbarIsActionMenuView"
        private const val SEARCHBAR_HAS_FOCUS = "searchbarHasFocus"
        private const val SEARCHBAR_QUERY = "searchbarQuery"
    }

    private lateinit var appBarBinding: ActivityAppBarLayoutBinding

    enum class NavigationIconType {
        NONE, AVATAR, BACK_ICON
    }

    override val contentNeedsScrollableContainer: Boolean
        get() = false

    private var optionsMenu: Menu? = null
        set(value) {
            field = value
            updateSearchbar()
            updateSearchbarFocus()
            updateSearchbarQuery()
        }
    private var scrollBehavior: AppBarLayout.ScrollBehavior =
        AppBarLayout.ScrollBehavior.COLLAPSE_TOOLBAR
        set(value) {
            field = value
            updateScrollBehavior()
        }
    private var navigationIconType: NavigationIconType = NavigationIconType.BACK_ICON
        set(value) {
            field = value
            updateNavigationIcon()
        }
    private var searchbarIsActionMenuView: Boolean = false
        set(value) {
            field = value
            updateSearchbar()
        }
    private var searchbarHasFocus: Boolean = false
        set(value) {
            field = value
            updateSearchbarFocus()
        }
    private var searchbarQuery: String = ""
        set(value) {
            field = value
            updateSearchbarQuery()
        }

    private val adapter = ListAdapter(this)
    private lateinit var scrollBehaviorSubHeader: ListSubHeader
    private lateinit var navigationIconButton: ButtonItem
    private lateinit var searchbarButton: ButtonItem
    private lateinit var searchbar: Searchbar

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        appBarBinding = ActivityAppBarLayoutBinding.inflate(
            LayoutInflater.from(container.context),
            container,
            true
        )
        setTheme(themeId)

        searchbar = createSearchbar()

        scrollBehaviorSubHeader = createListSubHeader(
            resources.getString(
                R.string.app_bar_layout_toggle_scroll_behavior_sub_header,
                scrollBehavior.toString()
            )
        )
        navigationIconButton = ButtonItem(
            buttonText = resources.getString(R.string.app_bar_layout_hide_icon_button),
            id = R.id.app_bar_layout_toggle_navigation_icon_button,
            onClickListener = this
        )
        searchbarButton = ButtonItem(
            buttonText = resources.getString(R.string.app_bar_layout_searchbar_accessory_view_button),
            id = R.id.app_bar_layout_toggle_searchbar_type_button,
            onClickListener = this
        )
        var scrollBehaviorOrdinal = scrollBehavior.ordinal
        var navigationIconTypeOrdinal = navigationIconType.ordinal
        savedInstanceState?.let {
            scrollBehaviorOrdinal = it.getInt(SCROLL_BEHAVIOR)
            navigationIconTypeOrdinal = it.getInt(NAVIGATION_ICON_TYPE)
            searchbarIsActionMenuView = it.getBoolean(SEARCHBAR_IS_ACTION_MENU_VIEW)
            searchbarHasFocus = it.getBoolean(SEARCHBAR_HAS_FOCUS)
            searchbarQuery = it.getString(SEARCHBAR_QUERY) ?: ""
        }

        scrollBehavior = AppBarLayout.ScrollBehavior.values()[scrollBehaviorOrdinal]
        navigationIconType = NavigationIconType.values()[navigationIconTypeOrdinal]

        setupList()
        demoBinding.appBar.scrollTargetViewId = R.id.app_bar_layout_list

        updateScrollBehavior()
        updateNavigationIcon()
        updateSearchbar()
    }

    override fun onSaveInstanceState(outState: Bundle) {
        super.onSaveInstanceState(outState)

        searchbarQuery = searchbar.query.toString()

        outState.putInt(SCROLL_BEHAVIOR, scrollBehavior.ordinal)
        outState.putInt(NAVIGATION_ICON_TYPE, navigationIconType.ordinal)
        outState.putBoolean(SEARCHBAR_IS_ACTION_MENU_VIEW, searchbarIsActionMenuView)
        outState.putBoolean(SEARCHBAR_HAS_FOCUS, searchbarHasFocus)
        outState.putString(SEARCHBAR_QUERY, searchbarQuery)
    }

    override fun onClick(view: View) {
        val viewId = view.id
        when (view.id) {
            R.id.app_bar_layout_toggle_scroll_behavior_button -> {
                scrollBehavior = when (scrollBehavior) {
                    AppBarLayout.ScrollBehavior.NONE -> AppBarLayout.ScrollBehavior.COLLAPSE_TOOLBAR
                    AppBarLayout.ScrollBehavior.COLLAPSE_TOOLBAR -> AppBarLayout.ScrollBehavior.PIN
                    AppBarLayout.ScrollBehavior.PIN -> AppBarLayout.ScrollBehavior.NONE
                }
            }
            R.id.app_bar_layout_toggle_navigation_icon_button ->
                navigationIconType = when (navigationIconType) {
                    NavigationIconType.NONE -> NavigationIconType.AVATAR
                    NavigationIconType.AVATAR -> NavigationIconType.BACK_ICON
                    NavigationIconType.BACK_ICON -> NavigationIconType.NONE
                }
            R.id.app_bar_layout_toggle_searchbar_type_button ->
                searchbarIsActionMenuView = !searchbarIsActionMenuView
            R.id.app_bar_layout_toggle_theme_button -> {
                themeId = when (themeId) {
                    R.style.AppTheme -> R.style.AppTheme_Neutral
                    R.style.AppTheme_Neutral -> R.style.AppTheme_Orange
                    else -> R.style.AppTheme
                }

                recreate()
            }
        }
        Handler(Looper.getMainLooper()).postDelayed(
            {
                // for setting keyboard focus
                findViewById<View>(viewId).requestFocus()
                if (viewId == R.id.app_bar_layout_toggle_theme_button) {
                    val themeName = when (themeId) {
                        R.style.AppTheme -> "Default"
                        R.style.AppTheme_Neutral -> "Neutral"
                        else -> "Orange"
                    }
                    findViewById<View>(viewId).announceForAccessibility("Theme: ${themeName}")
                }
            }, 500
        )
    }

    override fun onCreateOptionsMenu(menu: Menu): Boolean {
        menuInflater.inflate(R.menu.menu_app_bar_layout, menu)

        optionsMenu = menu

        for (index in 0 until menu.size()) {
            val drawable = menu.getItem(index).icon
            drawable?.setColorFilter(
                ThemeUtil.getThemeAttrColor(this, R.attr.fluentuiToolbarIconColor),
                PorterDuff.Mode.SRC_IN
            )
        }

        return true
    }

    override fun onOptionsItemSelected(item: MenuItem): Boolean {
        if (item.itemId == R.id.app_bar_layout_action_search)
            (item.actionView as? Searchbar)?.requestSearchViewFocus()

        return super.onOptionsItemSelected(item)
    }

    private fun updateScrollBehavior() {
        if (demoBinding.appBar == null)
            return

        demoBinding.appBar.scrollBehavior = scrollBehavior

        scrollBehaviorSubHeader.title =
            resources.getString(
                R.string.app_bar_layout_toggle_scroll_behavior_sub_header,
                scrollBehavior.toString()
            )

        adapter.notifyDataSetChanged()
    }

    private fun updateNavigationIcon() {
        if (demoBinding.appBar == null)
            return

        searchbar.clearFocus()
        optionsMenu?.findItem(R.id.app_bar_layout_action_search)?.collapseActionView()

        when (navigationIconType) {
            NavigationIconType.NONE -> {
                demoBinding.appBar.toolbar.navigationIcon = null

                navigationIconButton.buttonText =
                    resources.getString(R.string.app_bar_layout_show_avatar_button)
            }
            NavigationIconType.AVATAR -> {
                val avatar = Avatar(resources.getString(R.string.persona_name_mauricio_august))
                avatar.avatarImageResourceId = R.drawable.avatar_mauricio_august
                demoBinding.appBar.toolbar.setNavigationOnClickListener {
                    Snackbar.make(
                        demoBinding.rootView,
                        getString(R.string.app_bar_layout_navigation_icon_clicked)
                    ).show()
                }
                demoBinding.appBar.toolbar.avatar = avatar

                navigationIconButton.buttonText =
                    resources.getString(R.string.app_bar_layout_show_back_icon_button)
            }
            NavigationIconType.BACK_ICON -> {
                val backArrow =
                    ContextCompat.getDrawable(this, R.drawable.ms_ic_arrow_left_24_filled)
                /*
                 Wrapping this by FluentUIContext so that we need not declare this attr in Theme,
                 In case our theme is not extending Fluent Theme.
                 But if declare this attr in theme then no context wrapping is required
                 */
                backArrow?.setTint(
                    ThemeUtil.getThemeAttrColor(
                        FluentUIContextThemeWrapper(
                            this,
                            R.style.Theme_FluentUI_Components
                        ), R.attr.fluentuiToolbarIconColor
                    )
                )
                demoBinding.appBar.toolbar.navigationIcon = backArrow
                demoBinding.appBar.toolbar.setNavigationOnClickListener {
                    onBackPressed()
                }

                navigationIconButton.buttonText =
                    resources.getString(R.string.app_bar_layout_hide_icon_button)
            }
        }

        adapter.notifyDataSetChanged()
    }

    private fun updateSearchbar() {
        if (demoBinding.appBar == null)
            return

        searchbar.isActionMenuView = searchbarIsActionMenuView
        if (searchbarIsActionMenuView) {
            val optionsMenu = optionsMenu ?: return
            demoBinding.appBar.accessoryView = null

            val searchIcon = getTintedDrawable(
                R.drawable.ms_ic_search_24_filled,
                ThemeUtil.getThemeAttrColor(this, R.attr.fluentuiToolbarIconColor)
            )
            optionsMenu.add(
                R.id.app_bar_menu,
                R.id.app_bar_layout_action_search,
                0,
                getString(R.string.app_bar_layout_menu_search)
            )
                .setIcon(searchIcon)
                .setActionView(searchbar)
                .setShowAsAction(MenuItem.SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW or MenuItem.SHOW_AS_ACTION_ALWAYS)

            searchbarButton.buttonText =
                resources.getString(R.string.app_bar_layout_searchbar_accessory_view_button)
        } else {
            optionsMenu?.removeItem(R.id.app_bar_layout_action_search)
            demoBinding.appBar.accessoryView = searchbar
            searchbarButton.buttonText =
                resources.getString(R.string.app_bar_layout_searchbar_action_view_button)
        }

        adapter.notifyDataSetChanged()
    }

    private fun updateSearchbarFocus() {
        if (demoBinding.appBar == null)
            return

        if (searchbarHasFocus) {
            optionsMenu?.performIdentifierAction(R.id.app_bar_layout_action_search, 0)
            searchbar.requestSearchViewFocus()
        }
    }

    private fun updateSearchbarQuery() {
        if (demoBinding.appBar == null)
            return

        searchbar.setQuery(searchbarQuery, false)
    }

    private fun createSearchbar(): Searchbar {
        val searchbar = Searchbar(ContextThemeWrapper(this, themeId))
        searchbar.onQueryTextFocusChangeListener = View.OnFocusChangeListener { v, hasFocus ->
            searchbarHasFocus = hasFocus
        }

        return searchbar
    }

    private fun setupList() {
        adapter.listItems = createList()
        appBarBinding.appBarLayoutList.adapter = adapter
        appBarBinding.appBarLayoutList.addItemDecoration(
            ListItemDivider(
                this,
                DividerItemDecoration.VERTICAL
            )
        )
    }

    private fun createList(): ArrayList<IBaseListItem> {
        val scrollBehaviorSection = createSection(
            scrollBehaviorSubHeader,
            arrayListOf(
                ButtonItem(
                    buttonText = resources.getString(R.string.app_bar_layout_toggle_scroll_behavior_button),
                    id = R.id.app_bar_layout_toggle_scroll_behavior_button,
                    onClickListener = this
                )
            )
        )

        val navigationIconSection = createSection(
            createListSubHeader(resources.getString(R.string.app_bar_layout_toggle_navigation_icon_sub_header)),
            arrayListOf(navigationIconButton)
        )

        val searchbarSection = createSection(
            createListSubHeader(resources.getString(R.string.app_bar_layout_toggle_searchbar_sub_header)),
            arrayListOf(searchbarButton)
        )

        val themeSection = createSection(
            createListSubHeader(resources.getString(R.string.app_bar_layout_toggle_theme_sub_header)),
            arrayListOf(
                ButtonItem(
                    buttonText = resources.getString(R.string.app_bar_layout_toggle_theme_button),
                    id = R.id.app_bar_layout_toggle_theme_button,
                    onClickListener = this
                )
            )
        )

        val extraListItems = ArrayList<IBaseListItem>()
        for (index in 0..35)
            extraListItems.add(ListItem("${getString(R.string.app_bar_layout_list_item)} $index"))

        val extraScrollableContextSection = createSection(
            createListSubHeader(getString(R.string.app_bar_layout_list_sub_header)),
            extraListItems
        )

        return (scrollBehaviorSection + navigationIconSection + searchbarSection + themeSection + extraScrollableContextSection) as ArrayList<IBaseListItem>
    }

    private fun createSection(
        subHeader: ListSubHeader,
        items: ArrayList<IBaseListItem>
    ): ArrayList<IBaseListItem> {
        val itemArray = arrayListOf(subHeader) as ArrayList<IBaseListItem>
        itemArray.addAll(items)
        return itemArray
    }

    private fun createListSubHeader(text: String): ListSubHeader {
        val listSubHeader = ListSubHeader(text)
        listSubHeader.titleColor = ListSubHeaderView.TitleColor.SECONDARY
        return listSubHeader
    }
}
```

## File: src/main/java/com/microsoft/fluentuidemo/demos/AvatarGroupViewActivity.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentuidemo.demos

import android.content.Context
import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.inputmethod.EditorInfo
import android.view.inputmethod.InputMethodManager
import com.microsoft.fluentui.persona.AvatarBorderStyle
import com.microsoft.fluentui.persona.AvatarGroupStyle
import com.microsoft.fluentui.persona.AvatarGroupView
import com.microsoft.fluentui.persona.AvatarSize
import com.microsoft.fluentui.popupmenu.PopupMenu
import com.microsoft.fluentui.popupmenu.PopupMenuItem
import com.microsoft.fluentui.snackbar.Snackbar
import com.microsoft.fluentuidemo.DemoActivity
import com.microsoft.fluentuidemo.R
import com.microsoft.fluentuidemo.databinding.ActivityAvatarGroupViewBinding
import com.microsoft.fluentuidemo.util.createAvatarList
import com.microsoft.fluentuidemo.util.createAvatarNameList
import com.microsoft.fluentuidemo.util.createImageAvatarList
import com.microsoft.fluentuidemo.util.createSmallAvatarList

class AvatarGroupViewActivity : DemoActivity() {
    private var singleCheckedItemId: Int = -1
    var borderStyle: AvatarBorderStyle = AvatarBorderStyle.RING

    private lateinit var avatarGroupBinding: ActivityAvatarGroupViewBinding
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        avatarGroupBinding = ActivityAvatarGroupViewBinding.inflate(
            LayoutInflater.from(container.context),
            container,
            true
        )
        avatarGroupBinding.avatarFaceStackExampleXxlargePhoto.setAvatars(createAvatarList(this))
        avatarGroupBinding.avatarFaceStackExampleXlargePhoto.setAvatars(createAvatarNameList(this))
        avatarGroupBinding.avatarFaceStackExampleLargePhoto.setAvatars(createSmallAvatarList(this))
        avatarGroupBinding.avatarFaceStackExampleMediumPhoto.setAvatars(createImageAvatarList(this))
        createFaceStackFromCode(avatarGroupBinding.avatarFaceStackExampleSmallPhoto)
        avatarGroupBinding.avatarFaceStackExampleXsmallPhoto.setAvatars(createAvatarList(this))
        avatarGroupBinding.avatarFacePileExampleXxlargePhoto.setAvatars(createAvatarNameList(this))
        avatarGroupBinding.avatarFacePileExampleXlargePhoto.setAvatars(createSmallAvatarList(this))
        avatarGroupBinding.avatarFacePileExampleLargePhoto.setAvatars(createImageAvatarList(this))
        createFacePileFromCode(avatarGroupBinding.avatarFacePileExampleMediumPhoto)
        avatarGroupBinding.avatarFacePileExampleSmallPhoto.setAvatars(createAvatarList(this))
        avatarGroupBinding.avatarFacePileExampleXsmallPhoto.setAvatars(createAvatarList(this))

        avatarGroupBinding.avatarFaceStackExampleXsmallPhotoOverflow.setAvatars(
            createAvatarList(
                this
            )
        )
        avatarGroupBinding.avatarFacePileExampleXsmallPhotoOverflow.setAvatars(createAvatarList(this))

        setupMaxAvatarDisplayed(avatarGroupBinding.maxDisplayedAvatar)

        avatarGroupBinding.overflowAvatarCount.setOnEditorActionListener { v, actionId, event ->
            return@setOnEditorActionListener when (actionId) {
                EditorInfo.IME_ACTION_DONE -> {
                    avatarGroupBinding.avatarFaceStackExampleXsmallPhotoOverflow.overflowAvatarCount =
                        Integer.parseInt(avatarGroupBinding.overflowAvatarCount.text.toString())
                    avatarGroupBinding.avatarFacePileExampleXsmallPhotoOverflow.overflowAvatarCount =
                        Integer.parseInt(avatarGroupBinding.overflowAvatarCount.text.toString())

                    val imm =
                        v.context.getSystemService(Context.INPUT_METHOD_SERVICE) as InputMethodManager
                    imm.hideSoftInputFromWindow(v.windowToken, 0)
                    true
                }
                else -> {
                    false
                }
            }
        }

        avatarGroupBinding.avatarBorderToggle.setOnClickListener {
            toggleBorders()
        }
    }

    private fun createFaceStackFromCode(avatarGroupView: AvatarGroupView) {
        avatarGroupView.avatarGroupStyle = AvatarGroupStyle.STACK
        avatarGroupView.avatarSize = AvatarSize.SMALL
        avatarGroupView.avatarBorderStyle = AvatarBorderStyle.RING
        avatarGroupView.setAvatars(createAvatarList(this))
        avatarGroupView.listener = object : AvatarGroupView.Listener {
            override fun onAvatarClicked(index: Int) {
                Snackbar.make(
                    demoBinding.rootView,
                    String.format(getString(R.string.avatar_group_avatar_clicked), index),
                    Snackbar.LENGTH_SHORT
                ).show()
            }

            override fun onOverFlowClicked() {
                Snackbar.make(
                    demoBinding.rootView,
                    getString(R.string.avatar_group_overflow_clicked),
                    Snackbar.LENGTH_SHORT
                ).show()
            }
        }
    }

    private fun createFacePileFromCode(avatarGroupView: AvatarGroupView) {
        avatarGroupView.avatarGroupStyle = AvatarGroupStyle.PILE
        avatarGroupView.avatarSize = AvatarSize.MEDIUM
        avatarGroupView.avatarBorderStyle = AvatarBorderStyle.RING
        avatarGroupView.setAvatars(createAvatarList(this))
    }

    private fun setupMaxAvatarDisplayed(anchorView: View) {
        val popupMenuItems: ArrayList<PopupMenuItem> = ArrayList()
        for (id in 1..4) {
            popupMenuItems.add(PopupMenuItem(id, id.toString()))
            avatarGroupBinding.maxDisplayedAvatar.text = id.toString()
        }

        val onPopupMenuItemClickListener = object : PopupMenuItem.OnClickListener {
            override fun onPopupMenuItemClicked(popupMenuItem: PopupMenuItem) {
                singleCheckedItemId = popupMenuItem.id
                avatarGroupBinding.maxDisplayedAvatar.text = popupMenuItem.title
                setMaxAvatarDisplayedForAllViews(popupMenuItem.id)
            }
        }
        val popupMenu =
            PopupMenu(this, anchorView, popupMenuItems, PopupMenu.ItemCheckableBehavior.SINGLE)
        popupMenu.onItemClickListener = onPopupMenuItemClickListener
        anchorView.setOnClickListener {
            popupMenu.show()
        }
    }

    private fun toggleBorders() {
        borderStyle =
            if (borderStyle == AvatarBorderStyle.RING) AvatarBorderStyle.NO_BORDER else AvatarBorderStyle.RING
        avatarGroupBinding.avatarFaceStackExampleXxlargePhoto.avatarBorderStyle = borderStyle
        avatarGroupBinding.avatarFaceStackExampleXlargePhoto.avatarBorderStyle = borderStyle
        avatarGroupBinding.avatarFaceStackExampleLargePhoto.avatarBorderStyle = borderStyle
        avatarGroupBinding.avatarFaceStackExampleMediumPhoto.avatarBorderStyle = borderStyle
        avatarGroupBinding.avatarFaceStackExampleSmallPhoto.avatarBorderStyle = borderStyle
        avatarGroupBinding.avatarFaceStackExampleXsmallPhoto.avatarBorderStyle = borderStyle
        avatarGroupBinding.avatarFacePileExampleXxlargePhoto.avatarBorderStyle = borderStyle
        avatarGroupBinding.avatarFacePileExampleXlargePhoto.avatarBorderStyle = borderStyle
        avatarGroupBinding.avatarFacePileExampleLargePhoto.avatarBorderStyle = borderStyle
        avatarGroupBinding.avatarFacePileExampleMediumPhoto.avatarBorderStyle = borderStyle
        avatarGroupBinding.avatarFacePileExampleSmallPhoto.avatarBorderStyle = borderStyle
        avatarGroupBinding.avatarFacePileExampleXsmallPhoto.avatarBorderStyle = borderStyle
    }

    private fun setMaxAvatarDisplayedForAllViews(id: Int) {
        avatarGroupBinding.avatarFaceStackExampleXxlargePhoto.maxDisplayedAvatars = id
        avatarGroupBinding.avatarFaceStackExampleXlargePhoto.maxDisplayedAvatars = id
        avatarGroupBinding.avatarFaceStackExampleLargePhoto.maxDisplayedAvatars = id
        avatarGroupBinding.avatarFaceStackExampleMediumPhoto.maxDisplayedAvatars = id
        avatarGroupBinding.avatarFaceStackExampleSmallPhoto.maxDisplayedAvatars = id
        avatarGroupBinding.avatarFaceStackExampleXsmallPhoto.maxDisplayedAvatars = id
        avatarGroupBinding.avatarFacePileExampleXxlargePhoto.maxDisplayedAvatars = id
        avatarGroupBinding.avatarFacePileExampleXlargePhoto.maxDisplayedAvatars = id
        avatarGroupBinding.avatarFacePileExampleLargePhoto.maxDisplayedAvatars = id
        avatarGroupBinding.avatarFacePileExampleMediumPhoto.maxDisplayedAvatars = id
        avatarGroupBinding.avatarFacePileExampleSmallPhoto.maxDisplayedAvatars = id
        avatarGroupBinding.avatarFacePileExampleXsmallPhoto.maxDisplayedAvatars = id

        avatarGroupBinding.avatarFaceStackExampleXsmallPhotoOverflow.maxDisplayedAvatars = id
        avatarGroupBinding.avatarFacePileExampleXsmallPhotoOverflow.maxDisplayedAvatars = id
    }
}
```

## File: src/main/java/com/microsoft/fluentuidemo/demos/AvatarViewActivity.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentuidemo.demos

import android.graphics.Color
import android.os.Bundle
import android.view.LayoutInflater
import android.widget.ImageView
import com.bumptech.glide.Glide
import com.microsoft.fluentui.persona.AvatarSize
import com.microsoft.fluentui.persona.AvatarStyle
import com.microsoft.fluentui.persona.AvatarView
import com.microsoft.fluentuidemo.DemoActivity
import com.microsoft.fluentuidemo.R
import com.microsoft.fluentuidemo.databinding.ActivityAvatarViewBinding
import com.squareup.picasso.Picasso

class AvatarViewActivity : DemoActivity() {
    private lateinit var avatarBinding: ActivityAvatarViewBinding
    override fun onCreate(savedInstanceState: Bundle?) {

        super.onCreate(savedInstanceState)
        avatarBinding = ActivityAvatarViewBinding.inflate(LayoutInflater.from(container.context), container, true)

        // Avatar drawables with bitmap
        loadBitmapFromPicasso(avatarBinding.avatarExampleMediumPhoto)
        loadBitmapFromGlide(avatarBinding.avatarExampleLargePhoto)

        avatarBinding.avatarExampleXlargePhoto.avatarImageResourceId = R.drawable.avatar_erik_nason

        avatarBinding.avatarExampleSmallPhoto.name = getString(R.string.persona_name_kat_larsson)
        avatarBinding.avatarExampleSmallPhoto.email = getString(R.string.persona_email_kat_larsson)
        avatarBinding.avatarExampleSmallPhoto.avatarImageResourceId = R.drawable.avatar_kat_larsson

        // Avatar drawable with initials
        avatarBinding.avatarExampleLargeInitialsSquare.name =
            getString(R.string.persona_email_henry_brill)
        avatarBinding.avatarExampleLargeInitialsSquare.avatarStyle = AvatarStyle.SQUARE

        // Change initials background color
        avatarBinding.avatarExampleXsmallInitials.avatarBackgroundColor = Color.DKGRAY

        // Add AvatarView with code
        createNewAvatarFromCode()
    }

    private fun loadBitmapFromPicasso(imageView: ImageView) {
        Picasso.get()
            .load(R.drawable.avatar_celeste_burton)
            .into(imageView)
    }

    private fun loadBitmapFromGlide(imageView: ImageView) {
        Glide.with(this)
            .load(R.drawable.avatar_isaac_fielder)
            .into(imageView)
    }

    private fun createNewAvatarFromCode() {
        val avatarName = getString(R.string.persona_name_mauricio_august)
        val avatarView = AvatarView(this)
        avatarView.avatarSize = AvatarSize.XXLARGE
        avatarView.name = avatarName
        avatarView.email = getString(R.string.persona_email_mauricio_august)
        avatarView.avatarContentDescriptionLabel = avatarName
        avatarBinding.avatarCircleExampleXxlarge.addView(avatarView)
    }
}
```

## File: src/main/java/com/microsoft/fluentuidemo/demos/BasicInputsActivity.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentuidemo.demos

import android.os.Bundle
import android.view.LayoutInflater
import com.microsoft.fluentuidemo.DemoActivity
import com.microsoft.fluentuidemo.R
import com.microsoft.fluentuidemo.databinding.ActivityBasicInputsBinding

class BasicInputsActivity : DemoActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        ActivityBasicInputsBinding.inflate(LayoutInflater.from(container.context), container, true)
    }
}
```

## File: src/main/java/com/microsoft/fluentuidemo/demos/BottomNavigationActivity.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentuidemo.demos

import android.os.Bundle
import android.view.LayoutInflater
import com.google.android.material.bottomnavigation.LabelVisibilityMode
import com.google.android.material.navigation.NavigationBarView
import com.microsoft.fluentuidemo.DemoActivity
import com.microsoft.fluentuidemo.R
import com.microsoft.fluentuidemo.databinding.ActivityBottomNavigationBinding

// TODO Replace outlined icons with fill icons when selected.
class BottomNavigationActivity : DemoActivity() {

    override val contentNeedsScrollableContainer: Boolean
        get() = false

    private lateinit var bottomNavigationBinding: ActivityBottomNavigationBinding
    override fun onCreate(savedInstanceState: Bundle?) {

        super.onCreate(savedInstanceState)
        bottomNavigationBinding = ActivityBottomNavigationBinding.inflate(
            LayoutInflater.from(container.context),
            container,
            true
        )

        bottomNavigationBinding.toggleLabelButton.setOnClickListener {
            var labelsState: String = ""
            // You can also achieve unlabeled items via @style/Widget.FluentUI.BottomNavigation.Unlabeled
            if (bottomNavigationBinding.bottomNavigation.labelVisibilityMode == LabelVisibilityMode.LABEL_VISIBILITY_UNLABELED) {
                bottomNavigationBinding.bottomNavigation.labelVisibilityMode =
                    NavigationBarView.LABEL_VISIBILITY_LABELED
                labelsState = "On"
            } else {
                bottomNavigationBinding.bottomNavigation.labelVisibilityMode =
                    NavigationBarView.LABEL_VISIBILITY_UNLABELED
                labelsState = "Off"
            }
            it.announceForAccessibility(
                resources.getString(
                    R.string.bottom_navigation_accessibility_labels_state,
                    labelsState
                )
            )
        }

        bottomNavigationBinding.threeMenuItemsButton.setOnClickListener {
            bottomNavigationBinding.bottomNavigation.menu.removeItem(R.id.action_calendar)
            bottomNavigationBinding.bottomNavigation.menu.removeItem(R.id.action_team)
            it.announceForAccessibility(
                resources.getString(
                    R.string.app_accessibility_selected,
                    resources.getString(R.string.bottom_navigation_three_menu_items_button)
                )
            )
        }

        bottomNavigationBinding.fourMenuItemsButton.setOnClickListener {
            bottomNavigationBinding.bottomNavigation.menu.removeItem(R.id.action_calendar)
            bottomNavigationBinding.bottomNavigation.menu.removeItem(R.id.action_team)

            bottomNavigationBinding.bottomNavigation.menu.add(
                R.id.bottom_navigation,
                R.id.action_calendar,
                3,
                resources.getString(R.string.bottom_navigation_menu_item_calendar)
            ).setIcon(R.drawable.ic_calendar_28_regular)
            it.announceForAccessibility(
                resources.getString(
                    R.string.app_accessibility_selected,
                    resources.getString(R.string.bottom_navigation_four_menu_items_button)
                )
            )
        }

        bottomNavigationBinding.fiveMenuItemsButton.setOnClickListener {
            bottomNavigationBinding.bottomNavigation.menu.removeItem(R.id.action_calendar)
            bottomNavigationBinding.bottomNavigation.menu.removeItem(R.id.action_team)

            bottomNavigationBinding.bottomNavigation.menu.add(
                R.id.bottom_navigation,
                R.id.action_calendar,
                3,
                resources.getString(R.string.bottom_navigation_menu_item_calendar)
            ).setIcon(R.drawable.ic_calendar_28_regular)
            bottomNavigationBinding.bottomNavigation.menu.add(
                R.id.bottom_navigation,
                R.id.action_team,
                4,
                resources.getString(R.string.bottom_navigation_menu_item_team)
            ).setIcon(R.drawable.ic_people_team_28_regular)
            it.announceForAccessibility(
                resources.getString(
                    R.string.app_accessibility_selected,
                    resources.getString(R.string.bottom_navigation_five_menu_items_button)
                )
            )
        }
    }
}
```

## File: src/main/java/com/microsoft/fluentuidemo/demos/BottomSheetActivity.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentuidemo.demos

import android.os.Bundle
import android.view.LayoutInflater
import android.widget.Switch
import android.widget.TextView
import com.microsoft.fluentui.bottomsheet.BottomSheet
import com.microsoft.fluentui.bottomsheet.BottomSheetDialog
import com.microsoft.fluentui.bottomsheet.BottomSheetItem
import com.microsoft.fluentui.snackbar.Snackbar
import com.microsoft.fluentuidemo.DemoActivity
import com.microsoft.fluentuidemo.R
import com.microsoft.fluentuidemo.databinding.ActivityBottomSheetBinding
import com.microsoft.fluentuidemo.util.createBitmapFromLayout

class BottomSheetActivity : DemoActivity(), BottomSheetItem.OnClickListener {
    private var bottomSheetDialog: BottomSheetDialog? = null

    private lateinit var bottomSheetBinding: ActivityBottomSheetBinding

    override fun onCreate(savedInstanceState: Bundle?) {

        super.onCreate(savedInstanceState)
        bottomSheetBinding = ActivityBottomSheetBinding.inflate(
            LayoutInflater.from(container.context),
            container,
            true
        )

        // Single line items
        bottomSheetBinding.showWithSingleLineItemsButton.setOnClickListener {
            val view = LayoutInflater.from(this).inflate(R.layout.accessory_content, null)
            val textView = view.findViewById<TextView>(R.id.bottom_sheet_item_nudge)
            textView.text = "10+"
            val bitmap1 = createBitmapFromLayout(view)
            textView.text = "100+"
            val bitmap2 = createBitmapFromLayout(view)
            textView.text = "123456789+"
            val bitmap3 = createBitmapFromLayout(view)

            val bottomSheet = BottomSheet.newInstance(
                arrayListOf(
                    BottomSheetItem(
                        R.id.bottom_sheet_item_flag,
                        R.drawable.ic_fluent_flag_24_regular,
                        getString(R.string.bottom_sheet_item_flag_title),
                        accessoryBitmap = bitmap1
                    ),
                    BottomSheetItem(
                        R.id.bottom_sheet_item_reply,
                        R.drawable.ic_fluent_reply_24_regular,
                        getString(R.string.bottom_sheet_item_reply_title),
                        disabled = true,
                        accessoryBitmap = bitmap2
                    ),
                    BottomSheetItem(
                        R.id.bottom_sheet_item_forward,
                        R.drawable.ic_fluent_forward_24_regular,
                        getString(R.string.bottom_sheet_item_forward_title),
                        accessoryBitmap = bitmap3,
                    ),
                    BottomSheetItem(
                        R.id.bottom_sheet_item_delete,
                        R.drawable.ic_delete_24_regular,
                        getString(R.string.bottom_sheet_item_delete_title)
                    ),
                    BottomSheetItem(
                        R.id.bottom_sheet_item_toggle,
                        R.drawable.ic_fluent_toggle_multiple_24_regular,
                        getString(R.string.bottom_sheet_item_toggle_title),
                        customAccessoryView = Switch(this)
                    )
                )
            )
            bottomSheet.show(supportFragmentManager, null)
        }

        // Double line items
        bottomSheetBinding.showWithDoubleLineItemsButton.setOnClickListener {
            val bottomSheet = BottomSheet.newInstance(
                arrayListOf(
                    BottomSheetItem(
                        R.id.bottom_sheet_item_camera,
                        R.drawable.ic_camera_24_regular,
                        getString(R.string.bottom_sheet_item_camera_title),
                        getString(R.string.bottom_sheet_item_camera_subtitle)
                    ),
                    BottomSheetItem(
                        R.id.bottom_sheet_item_gallery,
                        R.drawable.ic_image_library_24_regular,
                        getString(R.string.bottom_sheet_item_gallery_title),
                        getString(R.string.bottom_sheet_item_gallery_subtitle)
                    ),
                    BottomSheetItem(
                        R.id.bottom_sheet_item_videos,
                        R.drawable.ic_video_24_regular,
                        getString(R.string.bottom_sheet_item_videos_title),
                        getString(R.string.bottom_sheet_item_videos_subtitle)
                    ),
                    BottomSheetItem(
                        R.id.bottom_sheet_item_manage,
                        R.drawable.ic_settings_24_regular,
                        getString(R.string.bottom_sheet_item_manage_title),
                        getString(R.string.bottom_sheet_item_manage_subtitle)
                    )
                )
            )
            bottomSheet.show(supportFragmentManager, null)
        }

        // Single line header
        bottomSheetBinding.showWithSingleLineItemsAndHeaderButton.setOnClickListener {
            val bottomSheet = BottomSheet.newInstance(
                arrayListOf(
                    BottomSheetItem(
                        R.id.bottom_sheet_item_flag,
                        R.drawable.ic_fluent_flag_24_regular,
                        getString(R.string.bottom_sheet_item_flag_title)
                    ),
                    BottomSheetItem(
                        R.id.bottom_sheet_item_reply,
                        R.drawable.ic_fluent_reply_24_regular,
                        getString(R.string.bottom_sheet_item_reply_title)
                    ),
                    BottomSheetItem(
                        R.id.bottom_sheet_item_forward,
                        R.drawable.ic_fluent_forward_24_regular,
                        getString(R.string.bottom_sheet_item_forward_title)
                    ),
                    BottomSheetItem(
                        R.id.bottom_sheet_item_delete,
                        R.drawable.ic_delete_24_regular,
                        getString(R.string.bottom_sheet_item_delete_title)
                    )
                ),
                BottomSheetItem(
                    title = getString(R.string.bottom_sheet_item_single_line_header)
                )
            )
            bottomSheet.show(supportFragmentManager, null)
        }

        // Double line header
        bottomSheetBinding.showWithDoubleLineItemsAndTwoLineHeaderButton.setOnClickListener {
            val bottomSheet = BottomSheet.newInstance(
                arrayListOf(
                    BottomSheetItem(
                        R.id.bottom_sheet_item_double_line_header_share,
                        R.drawable.ic_share_24_filled,
                        getString(R.string.bottom_sheet_item_double_line_header_share)
                    ),
                    BottomSheetItem(
                        R.id.bottom_sheet_item_double_line_header_move,
                        R.drawable.ic_folder_move_24_regular,
                        getString(R.string.bottom_sheet_item_double_line_header_move)
                    ),
                    BottomSheetItem(
                        R.id.bottom_sheet_item_double_line_header_delete,
                        R.drawable.ic_delete_24_regular,
                        getString(R.string.bottom_sheet_item_double_line_header_delete)
                    ),
                    BottomSheetItem(
                        R.id.bottom_sheet_item_double_line_header_info,
                        R.drawable.ic_info_24_regular,
                        getString(R.string.bottom_sheet_item_double_line_header_info),
                        useDivider = true
                    )
                ),
                BottomSheetItem(
                    imageId = R.drawable.ic_folder_24_regular,
                    title = getString(R.string.bottom_sheet_item_double_line_header),
                    subtitle = getString(R.string.bottom_sheet_item_double_line_header_subtitle)
                )
            )
            bottomSheet.show(supportFragmentManager, null)
        }

        // Dialog
        bottomSheetBinding.showBottomSheetDialogButton.setOnClickListener {
            if (bottomSheetDialog == null) {
                bottomSheetDialog = BottomSheetDialog(
                    this,
                    arrayListOf(
                        BottomSheetItem(
                            R.id.bottom_sheet_item_clock,
                            R.drawable.ic_clock_24_regular,
                            getString(R.string.bottom_sheet_item_clock_title),
                            roleDescription = "Button"
                        ),
                        BottomSheetItem(
                            R.id.bottom_sheet_item_alarm,
                            R.drawable.ic_alert_24_regular,
                            getString(R.string.bottom_sheet_item_alarm_title),
                            roleDescription = "Button" //Example of setting role description for accessibility
                        ),
                        BottomSheetItem(
                            R.id.bottom_sheet_item_time_zone,
                            R.drawable.ic_globe_24_regular,
                            getString(R.string.bottom_sheet_item_time_zone_title),
                            roleDescription = "Button"
                        )
                    )
                )
                bottomSheetDialog?.onItemClickListener = this
            }

            bottomSheetDialog?.show()
        }
    }

    override fun onDestroy() {
        super.onDestroy()
        bottomSheetDialog?.dismiss()
    }

    override fun onBottomSheetItemClick(item: BottomSheetItem) {
        when (item.id) {
            // Single line items & single line header
            R.id.bottom_sheet_item_flag -> showSnackbar(resources.getString(R.string.bottom_sheet_item_flag_toast))
            R.id.bottom_sheet_item_reply -> showSnackbar(resources.getString(R.string.bottom_sheet_item_reply_toast))
            R.id.bottom_sheet_item_forward -> showSnackbar(resources.getString(R.string.bottom_sheet_item_forward_toast))
            R.id.bottom_sheet_item_delete -> showSnackbar(resources.getString(R.string.bottom_sheet_item_delete_toast))
            R.id.bottom_sheet_item_toggle -> showSnackbar(resources.getString(R.string.bottom_sheet_item_toggle_toast))

            // Double line items
            R.id.bottom_sheet_item_camera -> showSnackbar(resources.getString(R.string.bottom_sheet_item_camera_toast))
            R.id.bottom_sheet_item_gallery -> showSnackbar(resources.getString(R.string.bottom_sheet_item_gallery_toast))
            R.id.bottom_sheet_item_videos -> showSnackbar(resources.getString(R.string.bottom_sheet_item_videos_toast))
            R.id.bottom_sheet_item_manage -> showSnackbar(resources.getString(R.string.bottom_sheet_item_manage_toast))

            // Double line header
            R.id.bottom_sheet_item_double_line_header_move -> showSnackbar(getString(R.string.bottom_sheet_item_double_line_header_move_toast))
            R.id.bottom_sheet_item_double_line_header_share -> showSnackbar(getString(R.string.bottom_sheet_item_double_line_header_share_toast))
            R.id.bottom_sheet_item_double_line_header_delete -> showSnackbar(getString(R.string.bottom_sheet_item_double_line_header_delete_toast))
            R.id.bottom_sheet_item_double_line_header_info -> showSnackbar(getString(R.string.bottom_sheet_item_double_line_header_info_toast))

            // Dialog
            R.id.bottom_sheet_item_clock -> showSnackbar(resources.getString(R.string.bottom_sheet_item_clock_toast))
            R.id.bottom_sheet_item_alarm -> showSnackbar(resources.getString(R.string.bottom_sheet_item_alarm_toast))
            R.id.bottom_sheet_item_time_zone -> showSnackbar(resources.getString(R.string.bottom_sheet_item_time_zone_toast))
        }
    }

    private fun showSnackbar(message: String) {
        Snackbar.make(demoBinding.rootView, message).show()
    }
}
```

## File: src/main/java/com/microsoft/fluentuidemo/demos/CalendarViewActivity.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentuidemo.demos

import android.os.Bundle
import android.view.KeyEvent
import android.view.LayoutInflater
import android.view.View.TEXT_ALIGNMENT_TEXT_START
import com.microsoft.fluentui.calendar.OnDateSelectedListener
import com.microsoft.fluentui.util.DateStringUtils
import com.microsoft.fluentuidemo.DemoActivity
import com.microsoft.fluentuidemo.databinding.ActivityCalendarViewBinding
import java.time.Duration
import java.time.ZonedDateTime

class CalendarViewActivity : DemoActivity() {
    companion object {
        private const val DATE = "date"
    }


    override val contentNeedsScrollableContainer: Boolean
        get() = false

    private var savedDate: ZonedDateTime? = null

    private lateinit var calenderBinding: ActivityCalendarViewBinding

    override fun onCreate(savedInstanceState: Bundle?) {

        super.onCreate(savedInstanceState)
        calenderBinding = ActivityCalendarViewBinding.inflate(
            LayoutInflater.from(container.context),
            container,
            true
        )

        calenderBinding.calendarView.onDateSelectedListener = object : OnDateSelectedListener {
            override fun onDateSelected(date: ZonedDateTime) {
                setExampleDate(date)
            }
        }

        (savedInstanceState?.getSerializable(DATE) as? ZonedDateTime)?.let {
            setExampleDate(it)
        }
    }

    override fun onSaveInstanceState(outState: Bundle) {
        super.onSaveInstanceState(outState)
        outState.putSerializable(DATE, savedDate)
    }

    private fun setExampleDate(date: ZonedDateTime) {
        savedDate = date
        calenderBinding.exampleDateTitle.text = DateStringUtils.formatDateWithWeekDay(this, date)
        calenderBinding.calendarView.setSelectedDateRange(date.toLocalDate(), Duration.ZERO, false)
    }

    /**
     * This function allows the user to leave the calendar focus by pressing the tab key.
     * @param  keyCode The value in event.getKeyCode().
     * @param  event The KeyEvent object.
     */
    override fun onKeyDown(keyCode: Int, event: KeyEvent): Boolean {
        if (keyCode == KeyEvent.KEYCODE_TAB  && calenderBinding.calendarView.hasFocus()) {
            // Find the currently focused view
            val focusedView = currentFocus
            // Remove focus from the currently focused view
            focusedView?.clearFocus()

            return true // Consume the event
        }
        return super.onKeyDown(keyCode, event)
    }

}
```

## File: src/main/java/com/microsoft/fluentuidemo/demos/ContextualCommandBarActivity.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentuidemo.demos

import android.graphics.Bitmap
import android.graphics.Canvas
import android.os.Bundle
import android.util.TypedValue
import android.view.LayoutInflater
import android.view.View
import android.widget.SeekBar
import android.widget.Toast
import androidx.appcompat.content.res.AppCompatResources
import com.microsoft.fluentui.contextualcommandbar.CommandItem
import com.microsoft.fluentui.contextualcommandbar.CommandItemGroup
import com.microsoft.fluentui.contextualcommandbar.ContextualCommandBar
import com.microsoft.fluentui.contextualcommandbar.DefaultCommandItem
import com.microsoft.fluentuidemo.DemoActivity
import com.microsoft.fluentuidemo.R
import com.microsoft.fluentuidemo.databinding.ActivityContextualCommandBarBinding


class ContextualCommandBarActivity : DemoActivity() {

    private lateinit var ccbBinding: ActivityContextualCommandBarBinding

    override fun onCreate(savedInstanceState: Bundle?) {

        super.onCreate(savedInstanceState)
        ccbBinding = ActivityContextualCommandBarBinding.inflate(
            LayoutInflater.from(container.context),
            container,
            true
        )

        val itemGroups = arrayListOf<CommandItemGroup>()

        // Used to test bitmap support
        var drawable = AppCompatResources.getDrawable(this, R.drawable.ic_fluent_add_24_regular)
        val bitmap: Bitmap = Bitmap.createBitmap(
            drawable!!.intrinsicWidth,
            drawable.intrinsicHeight,
            Bitmap.Config.ARGB_8888
        )
        val canvas = Canvas(bitmap)
        drawable.setBounds(0, 0, canvas.width, canvas.height)
        drawable.draw(canvas)


        itemGroups.add(
            CommandItemGroup()
                .addItem(
                    DefaultCommandItem(
                        bitmap = bitmap,
                        contentDescription = getString(R.string.contextual_command_accessibility_add)
                    )
                )
                .addItem(
                    DefaultCommandItem(
                        R.drawable.ic_fluent_mention_24_regular,
                        contentDescription = getString(R.string.contextual_command_accessibility_mention),
                        enabled = false
                    )
                )
        )

        itemGroups.add(
            CommandItemGroup()
                .addItem(
                    DefaultCommandItem(
                        label = getString(R.string.contextual_command_accessibility_bold),
                        contentDescription = getString(R.string.contextual_command_accessibility_bold),
                        selected = true
                    )
                )
                .addItem(
                    DefaultCommandItem(
                        R.drawable.ic_fluent_text_italic_24_regular,
                        contentDescription = getString(R.string.contextual_command_accessibility_italic)
                    )
                )
                .addItem(
                    DefaultCommandItem(
                        label = getString(R.string.contextual_command_accessibility_underline),
                        contentDescription = getString(R.string.contextual_command_accessibility_underline)
                    )
                )
                .addItem(
                    DefaultCommandItem(
                        R.drawable.ic_fluent_text_strikethrough_24_regular,
                        contentDescription = getString(R.string.contextual_command_accessibility_strikethrough)
                    )
                )
        )

        itemGroups.add(
            CommandItemGroup()
                .addItem(
                    DefaultCommandItem(
                        R.drawable.ic_fluent_arrow_undo_24_regular,
                        contentDescription = getString(R.string.contextual_command_accessibility_undo),
                        selected = true
                    )
                )
                .addItem(
                    DefaultCommandItem(
                        R.drawable.ic_fluent_arrow_redo_24_regular,
                        contentDescription = getString(R.string.contextual_command_accessibility_redo)
                    )
                )
        )

        itemGroups.add(
            CommandItemGroup()
                .addItem(
                    DefaultCommandItem(
                        R.drawable.ic_fluent_text_bullet_list_24_regular,
                        contentDescription = getString(R.string.contextual_command_accessibility_bullet)
                    )
                )
                .addItem(
                    DefaultCommandItem(
                        R.drawable.ic_fluent_text_number_list_ltr_24_regular,
                        contentDescription = getString(R.string.contextual_command_accessibility_list)
                    )
                )
        )

        itemGroups.add(
            CommandItemGroup()
                .addItem(
                    DefaultCommandItem(
                        R.drawable.ic_fluent_link_24_regular,
                        contentDescription = getString(R.string.contextual_command_accessibility_link),
                        selected = true
                    )
                )
        )

        with(ccbBinding.contextualCommandBarDefault) {
            setItemGroups(itemGroups)
            setItemOnClickListener(object : CommandItem.OnItemClickListener {
                override fun onItemClick(item: CommandItem, view: View) {
                    Toast.makeText(
                        this@ContextualCommandBarActivity,
                        getString(
                            R.string.contextual_command_prompt_click_item,
                            item.getContentDescription()
                        ),
                        Toast.LENGTH_SHORT
                    ).show()
                }
            })

            setItemLongClickListener(object : CommandItem.OnItemLongClickListener {
                override fun onItemLongClick(item: CommandItem, view: View): Boolean {
                    Toast.makeText(
                        this@ContextualCommandBarActivity,
                        getString(
                            R.string.contextual_command_prompt_long_click_item,
                            item.getContentDescription()
                        ),
                        Toast.LENGTH_SHORT
                    ).show()
                    return true
                }
            })

            dismissCommandItem = ContextualCommandBar.DismissCommandItem(
                icon = R.drawable.ic_fluent_keyboard_dock_24_regular,
                contentDescription = getString(R.string.contextual_command_accessibility_dismiss),
                visible = true,
                position = ContextualCommandBar.DismissItemPosition.START,
                dismissListener = {
                    Toast.makeText(
                        this@ContextualCommandBarActivity,
                        getString(R.string.contextual_command_prompt_click_dismiss),
                        Toast.LENGTH_SHORT
                    ).show()
                }
            )
        }

        // Item update
        ccbBinding.insertItem.setOnClickListener {
            ccbBinding.contextualCommandBarDefault.addItemGroup(
                CommandItemGroup()
                    .addItem(
                        DefaultCommandItem(
                            icon = R.drawable.ic_fluent_add_24_regular,
                            contentDescription = getString(R.string.contextual_command_accessibility_add)
                        )
                    )
                    .addItem(
                        DefaultCommandItem(
                            icon = R.drawable.ic_fluent_mention_24_regular,
                            contentDescription = getString(R.string.contextual_command_accessibility_mention),
                            enabled = false
                        )
                    )
            )
        }
        ccbBinding.updateItem.setOnClickListener {
            val updatedItemGroup = CommandItemGroup()
                .addItem(
                    DefaultCommandItem(
                        R.drawable.ic_fluent_mention_24_regular,
                        contentDescription = getString(R.string.contextual_command_accessibility_mention),
                        enabled = false
                    )
                )
                .addItem(
                    DefaultCommandItem(
                        bitmap = bitmap,
                        contentDescription = getString(R.string.contextual_command_accessibility_add)
                    )
                )
            itemGroups[0] = updatedItemGroup
            ccbBinding.contextualCommandBarDefault.setItemGroups(itemGroups)

            (itemGroups[0].items[0] as DefaultCommandItem).setEnabled(false)
            (itemGroups[0].items[1] as DefaultCommandItem).setEnabled(true)
            (itemGroups[0].items[1] as DefaultCommandItem).setSelected(true)
            (itemGroups[1].items[2] as DefaultCommandItem).getView()?.alpha = 0.5F
            ccbBinding.contextualCommandBarDefault.notifyDataSetChanged()
        }

        // Spacing setting
        ccbBinding.contextualCommandBarGroupSpaceSeekbar.setOnSeekBarChangeListener(
            object : SeekBar.OnSeekBarChangeListener {
                override fun onProgressChanged(
                    seekBar: SeekBar?,
                    progress: Int,
                    fromUser: Boolean
                ) {
                    ccbBinding.contextualCommandBarGroupSpaceValue.text =
                        resources.getString(R.string.contextual_command_bar_space_value, progress)

                    if (!fromUser) {
                        return
                    }

                    ccbBinding.contextualCommandBarDefault.setCommandGroupSpace(
                        TypedValue.applyDimension(
                            TypedValue.COMPLEX_UNIT_DIP, progress.toFloat(),
                            resources.displayMetrics
                        ).toInt()
                    )
                }

                override fun onStartTrackingTouch(seekBar: SeekBar?) {
                }

                override fun onStopTrackingTouch(seekBar: SeekBar?) {
                }

            })
        ccbBinding.contextualCommandBarItemSpaceSeekbar.setOnSeekBarChangeListener(
            object : SeekBar.OnSeekBarChangeListener {
                override fun onProgressChanged(
                    seekBar: SeekBar?,
                    progress: Int,
                    fromUser: Boolean
                ) {
                    ccbBinding.contextualCommandBarItemSpaceValue.text =
                        resources.getString(R.string.contextual_command_bar_space_value, progress)

                    if (!fromUser) {
                        return
                    }

                    ccbBinding.contextualCommandBarDefault.setCommandItemSpace(
                        TypedValue.applyDimension(
                            TypedValue.COMPLEX_UNIT_DIP, progress.toFloat(),
                            resources.displayMetrics
                        ).toInt()
                    )
                }

                override fun onStartTrackingTouch(seekBar: SeekBar?) {
                }

                override fun onStopTrackingTouch(seekBar: SeekBar?) {
                }

            })
        ccbBinding.contextualCommandBarGroupSpaceSeekbar.progress = 16
        ccbBinding.contextualCommandBarItemSpaceSeekbar.progress = 2

        // Dismiss button setting
        ccbBinding.contextualCommandBarDismissPositionGroup.setOnCheckedChangeListener { _, checkedId ->
            ccbBinding.contextualCommandBarDefault.setDismissButtonPosition(
                when (checkedId) {
                    R.id.contextual_command_bar_dismiss_position_start -> ContextualCommandBar.DismissItemPosition.START
                    R.id.contextual_command_bar_dismiss_position_end -> ContextualCommandBar.DismissItemPosition.END
                    else -> ContextualCommandBar.DismissItemPosition.END
                }
            )
        }
        ccbBinding.contextualCommandBarDismissPositionEnd.isChecked = true
    }
}
```

## File: src/main/java/com/microsoft/fluentuidemo/demos/DateTimePickerActivity.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentuidemo.demos

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.widget.Button
import com.microsoft.fluentui.datetimepicker.DateTimePicker
import com.microsoft.fluentui.datetimepicker.DateTimePickerDialog
import com.microsoft.fluentui.datetimepicker.DateTimePickerDialog.DateRangeMode
import com.microsoft.fluentui.datetimepicker.DateTimePickerDialog.Mode
import com.microsoft.fluentui.util.DateStringUtils
import com.microsoft.fluentui.util.accessibilityManager
import com.microsoft.fluentui.util.isAccessibilityEnabled
import com.microsoft.fluentuidemo.DemoActivity
import com.microsoft.fluentuidemo.R
import com.microsoft.fluentuidemo.databinding.ActivityDateTimePickerBinding
import java.time.Duration
import java.time.ZonedDateTime

class DateTimePickerActivity : DemoActivity(), DateTimePickerDialog.OnDateTimePickedListener {
    companion object {
        private const val TAG_DATE_PICKER = "datePicker"
        private const val TAG_DATE_TIME_PICKER = "dateTimePicker"
        private const val TAG_START_DATE_PICKER = "startDatePicker"
        private const val TAG_END_DATE_PICKER = "endDatePicker"
        private const val TAG_DATE_TIME_RANGE_PICKER = "dateTimeRangePicker"

        private const val DATE_TIME = "dateTime"
        private const val DURATION_DATE = "durationDate"
        private const val DURATION_DATE_TIME = "durationDateTime"
        private const val START_DATE = "startDate"
        private const val START_DATE_TIME = "startDateTime"

        private const val FRAGMENT_TAG = "fragmentTag"
        private const val SINGLE_MODE_TAG = "singleModeTag"

        private const val DIALOG_DATE_TIME = "dialogDateTime"
        private const val DIALOG_MODE = "dialogMode"
        private const val IS_DIALOG_SHOWING = "isDialogShowing"
    }

    enum class DatePickerType(
        val buttonId: Int,
        val tag: String,
        val mode: Mode,
        val dateRangeMode: DateRangeMode
    ) {
        DATE(R.id.date_picker_button, TAG_DATE_PICKER, Mode.DATE, DateRangeMode.NONE),
        DATE_TIME(
            R.id.date_time_picker_date_selected_button,
            TAG_DATE_TIME_PICKER,
            Mode.DATE_TIME,
            DateRangeMode.NONE
        ),
        TIME_DATE(
            R.id.date_time_picker_time_selected_button,
            TAG_DATE_TIME_PICKER,
            Mode.TIME_DATE,
            DateRangeMode.NONE
        ),
        START_DATE(
            R.id.date_range_start_button,
            TAG_START_DATE_PICKER,
            Mode.DATE,
            DateRangeMode.START
        ),
        END_DATE(R.id.date_range_end_button, TAG_END_DATE_PICKER, Mode.DATE, DateRangeMode.END),
        START_DATE_TIME(
            R.id.date_time_range_start_button,
            TAG_DATE_TIME_RANGE_PICKER,
            Mode.DATE_TIME,
            DateRangeMode.START
        )
    }

    private var dateTimePickerDialog: DateTimePickerDialog? = null
    private var isDialogShowing: Boolean = false

    private lateinit var dateTimeBinding: ActivityDateTimePickerBinding

    // Date and time
    private var dateTime: ZonedDateTime? = null
        set(value) {
            if (value == null)
                return
            field = value
            val tag = singleModeTag ?: return
            if (tag == TAG_DATE_PICKER)
                dateTimeBinding.dateTextView.text =
                    DateStringUtils.formatDateWithWeekDay(this, value)
            else
                dateTimeBinding.dateTextView.text = DateStringUtils.formatFullDateTime(this, value)
        }

    // Date range
    private var startDate: ZonedDateTime? = null
        set(value) {
            if (value == null)
                return
            field = value
            dateTimeBinding.startDateTextView.text =
                DateStringUtils.formatDateWithWeekDay(this, value)
        }
    private var durationDate: Duration = Duration.ZERO
        set(value) {
            val startDate = startDate ?: return
            field = value
            val endDate = startDate.plus(value)
            dateTimeBinding.endDateTextView.text =
                DateStringUtils.formatDateWithWeekDay(this, endDate)
        }

    // Date and time range
    private var startDateTime: ZonedDateTime? = null
        set(value) {
            if (value == null)
                return
            field = value
            dateTimeBinding.startDateTimeTextView.text =
                DateStringUtils.formatFullDateTime(this, value)
        }
    private var durationDateTime: Duration = Duration.ZERO
        set(value) {
            val startDateTime = startDateTime ?: return
            field = value
            val endDateTime = startDateTime.plus(value)
            dateTimeBinding.endDateTimeTextView.text =
                DateStringUtils.formatFullDateTime(this, endDateTime)
        }

    // Dialog date and time
    private var dialogDateTime: ZonedDateTime? = null
        set(value) {
            if (value == null)
                return
            field = value
            val mode = dialogMode ?: getDialogMode()
            if (mode == Mode.DATE_TIME)
                dateTimeBinding.dateTimePickerDialogDateTextView.text =
                    DateStringUtils.formatDateWithWeekDay(this@DateTimePickerActivity, value)
            else
                dateTimeBinding.dateTimePickerDialogDateTextView.text =
                    DateStringUtils.formatFullDateTime(this@DateTimePickerActivity, value)
        }

    private var dateRangeMode: DateRangeMode = DateRangeMode.NONE
    private var singleModeTag: String? = null
    private var fragmentTag: String? = null
        set(value) {
            if (dateRangeMode == DateRangeMode.NONE)
                singleModeTag = value

            field = value
        }

    private var dialogMode: Mode? = null

    override fun onCreate(savedInstanceState: Bundle?) {

        super.onCreate(savedInstanceState)
        dateTimeBinding = ActivityDateTimePickerBinding.inflate(
            LayoutInflater.from(container.context),
            container,
            true
        )

        savedInstanceState?.let {
            fragmentTag = it.getString(FRAGMENT_TAG)
            dateTime = it.getSerializable(DATE_TIME) as? ZonedDateTime
            startDate = it.getSerializable(START_DATE) as? ZonedDateTime
            durationDate = it.getSerializable(DURATION_DATE) as Duration
            startDateTime = it.getSerializable(START_DATE_TIME) as? ZonedDateTime
            durationDateTime = it.getSerializable(DURATION_DATE_TIME) as Duration
            singleModeTag = it.getString(SINGLE_MODE_TAG)
            dialogMode = it.getSerializable(DIALOG_MODE) as? Mode
            dialogDateTime = it.getSerializable(DIALOG_DATE_TIME) as? ZonedDateTime
            isDialogShowing = savedInstanceState.getBoolean(IS_DIALOG_SHOWING)
        }

        // DateTimePickers
        DatePickerType.values().forEach { picker ->
            findViewById<Button>(picker.buttonId).setOnClickListener {
                createDateTimePicker(picker)
            }
        }

        // DateTimePickerDialog
        dateTimeBinding.dateTimePickerDialogButton.setOnClickListener {
            createDateTimePickerDialog()
        }

        updateButtonsForAccessibility(isAccessibilityEnabled)

        accessibilityManager.addAccessibilityStateChangeListener {
            updateButtonsForAccessibility(it)
        }
        if(isDialogShowing) {
            dateTimePickerDialog?.dismiss()
            createDateTimePickerDialog()
        }

    }


    override fun onSaveInstanceState(outState: Bundle) {
        super.onSaveInstanceState(outState)
        outState.putSerializable(DATE_TIME, dateTime)
        outState.putSerializable(DURATION_DATE, durationDate)
        outState.putSerializable(DURATION_DATE_TIME, durationDateTime)
        outState.putSerializable(START_DATE, startDate)
        outState.putSerializable(START_DATE_TIME, startDateTime)
        outState.putString(SINGLE_MODE_TAG, singleModeTag)
        outState.putString(FRAGMENT_TAG, fragmentTag)
        outState.putSerializable(DIALOG_MODE, dialogMode)
        outState.putSerializable(DIALOG_DATE_TIME, dialogDateTime)
        outState.putBoolean(IS_DIALOG_SHOWING, dateTimePickerDialog?.isShowing ?: false)
    }

    override fun onDestroy() {
        super.onDestroy()
        dateTimePickerDialog?.dismiss()
        dateTimePickerDialog = null
    }

    // DateTimePicker

    override fun onDateTimePicked(dateTime: ZonedDateTime, duration: Duration) {
        when (fragmentTag) {
            TAG_DATE_PICKER, TAG_DATE_TIME_PICKER -> {
                this.dateTime = dateTime
            }
            TAG_START_DATE_PICKER, TAG_END_DATE_PICKER -> {
                startDate = dateTime
                durationDate = duration
            }
            TAG_DATE_TIME_RANGE_PICKER -> {
                startDateTime = dateTime
                durationDateTime = duration
            }
        }
    }

    private fun createDateTimePicker(picker: DatePickerType) {
        dateRangeMode = picker.dateRangeMode
        fragmentTag = picker.tag
        val dateTimePicker = DateTimePicker.newInstance(
            this,
            picker.mode,
            picker.dateRangeMode,
            getFragmentDateTime(),
            getFragmentDuration()
        )
        dateTimePickerDialog?.onDateTimePickedListener = this
        dateTimePicker.show(supportFragmentManager, picker.tag)
    }

    // DateTimePickerDialog

    private fun createDateTimePickerDialog() {
        dateTimePickerDialog = DateTimePickerDialog(
            this,
            dialogMode ?: Mode.DATE_TIME,
            DateRangeMode.NONE,
            dialogDateTime ?: ZonedDateTime.now(),
            Duration.ZERO
        )

        dateTimePickerDialog?.onDateTimePickedListener =
            object : DateTimePickerDialog.OnDateTimePickedListener {
                override fun onDateTimePicked(dateTime: ZonedDateTime, duration: Duration) {
                    dialogMode = getDialogMode()
                    dialogDateTime = dateTime
                }
            }
        dateTimePickerDialog?.onDateTimeSelectedListener =
            object : DateTimePickerDialog.OnDateTimeSelectedListener{
                override fun onDateTimeSelected(dateTime: ZonedDateTime, duration: Duration) {
                    dialogMode = getDialogMode()
                    dialogDateTime = dateTime
                }
            }

        dateTimePickerDialog?.show()
    }

    // Accessibility

    private fun updateButtonsForAccessibility(accessibilityEnabled: Boolean) {
        if (accessibilityEnabled) {
            dateTimeBinding.dateTimePickerTimeSelectedButton.visibility = View.GONE
            dateTimeBinding.dateTimePickerDateSelectedButton.setText(R.string.date_time_picker_date_time_button)
        } else {
            dateTimeBinding.dateTimePickerTimeSelectedButton.visibility = View.VISIBLE
            dateTimeBinding.dateTimePickerDateSelectedButton.setText(R.string.date_time_picker_calendar_date_time_button)
        }
    }

    // Helpers

    private fun getFragmentDateTime(): ZonedDateTime =
        when (fragmentTag) {
            TAG_DATE_PICKER, TAG_DATE_TIME_PICKER -> dateTime ?: ZonedDateTime.now()
            TAG_START_DATE_PICKER, TAG_END_DATE_PICKER -> startDate ?: ZonedDateTime.now()
            TAG_DATE_TIME_RANGE_PICKER -> startDateTime ?: ZonedDateTime.now()
            else -> throw IllegalStateException("dialogTag expected")
        }

    private fun getFragmentDuration(): Duration =
        when (fragmentTag) {
            TAG_START_DATE_PICKER, TAG_END_DATE_PICKER -> durationDate
            TAG_DATE_TIME_RANGE_PICKER -> durationDateTime
            else -> Duration.ZERO
        }

    private fun getDialogMode(): Mode? {
        val dialog = dateTimePickerDialog ?: return null
        return if (dialog.pickerTab == DateTimePickerDialog.PickerTab.CALENDAR_VIEW)
            Mode.DATE_TIME
        else
            Mode.TIME_DATE
    }
}
```

## File: src/main/java/com/microsoft/fluentuidemo/demos/DrawerActivity.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentuidemo.demos

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import com.microsoft.fluentui.drawer.Drawer
import com.microsoft.fluentui.drawer.DrawerDialog
import com.microsoft.fluentui.drawer.OnDrawerContentCreatedListener
import com.microsoft.fluentui.persona.PersonaListView
import com.microsoft.fluentuidemo.DemoActivity
import com.microsoft.fluentuidemo.R
import com.microsoft.fluentuidemo.databinding.ActivityDrawerBinding
import com.microsoft.fluentuidemo.databinding.DemoDrawerContentBinding
import com.microsoft.fluentuidemo.databinding.DemoSideDrawerContentBinding
import com.microsoft.fluentuidemo.util.createPersonaList

class DrawerActivity : DemoActivity(), OnDrawerContentCreatedListener {

    private var drawerDialogDemo: DrawerDialog? = null

    private lateinit var drawerBinding: ActivityDrawerBinding

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        drawerBinding =
            ActivityDrawerBinding.inflate(LayoutInflater.from(container.context), container, true)
        drawerBinding.showDrawerButton.setOnClickListener {
            val drawerDemo = Drawer.newInstance(R.layout.demo_drawer_content)
            drawerDemo.show(supportFragmentManager, null)
        }

        drawerBinding.showDrawerDialogButton.setOnClickListener(this::clickListener)
        drawerBinding.showNoFadeBottomDialogButton.setOnClickListener(this::clickListener)
        drawerBinding.showTopDialogButton.setOnClickListener(this::clickListener)
        drawerBinding.showNoFadeTopDialogButton.setOnClickListener(this::clickListener)
        drawerBinding.showAnchorViewTopDialogButton.setOnClickListener(this::clickListener)
        drawerBinding.showNoTitleTopDialogButton.setOnClickListener(this::clickListener)
        drawerBinding.showBelowTitleTopDialogButton.setOnClickListener(this::clickListener)
        drawerBinding.showLeftDialogButton.setOnClickListener(this::clickListener)
        drawerBinding.showRightDialogButton.setOnClickListener(this::clickListener)
    }

    private fun clickListener(v: View) {
        when (v.id) {
            R.id.show_drawer_dialog_button -> {
                drawerDialogDemo = DrawerDialog(this)
            }
            R.id.show_no_fade_bottom_dialog_button -> {
                drawerDialogDemo = DrawerDialog(this, DrawerDialog.BehaviorType.BOTTOM, 0.0f)
            }
            R.id.show_top_dialog_button -> {
                drawerDialogDemo = DrawerDialog(this, DrawerDialog.BehaviorType.TOP)
            }
            R.id.show_no_fade_top_dialog_button -> {
                drawerDialogDemo = DrawerDialog(this, DrawerDialog.BehaviorType.TOP, 0.0f)
            }
            R.id.show_anchor_view_top_dialog_button -> {
                drawerDialogDemo = DrawerDialog(
                    this,
                    DrawerDialog.BehaviorType.TOP,
                    anchorView = findViewById<View>(R.id.show_anchor_view_top_dialog_button)
                )
            }
            R.id.show_no_title_top_dialog_button -> {
                drawerDialogDemo = DrawerDialog(
                    this,
                    DrawerDialog.BehaviorType.TOP,
                    titleBehavior = DrawerDialog.TitleBehavior.HIDE_TITLE
                )
            }
            R.id.show_below_title_top_dialog_button -> {
                drawerDialogDemo = DrawerDialog(
                    this,
                    DrawerDialog.BehaviorType.TOP,
                    titleBehavior = DrawerDialog.TitleBehavior.BELOW_TITLE
                )
            }
            R.id.show_left_dialog_button -> {
                drawerDialogDemo = DrawerDialog(this, DrawerDialog.BehaviorType.LEFT)
            }
            R.id.show_right_dialog_button -> {
                drawerDialogDemo = DrawerDialog(this, DrawerDialog.BehaviorType.RIGHT)
            }
        }
        drawerDialogDemo?.onDrawerContentCreatedListener = this

        if (v.id == R.id.show_left_dialog_button || v.id == R.id.show_right_dialog_button)
            drawerDialogDemo?.setContentView(R.layout.demo_side_drawer_content)
        else
            drawerDialogDemo?.setContentView(R.layout.demo_drawer_content)
        drawerDialogDemo?.show()
    }

    override fun onDestroy() {
        super.onDestroy()
        drawerDialogDemo?.dismiss()
    }

    override fun onDrawerContentCreated(drawerContents: View) {
        val personaList = createPersonaList(this)
        drawerContents.findViewById<PersonaListView>(R.id.drawer_demo_persona_list).personas = personaList
    }
}
```

## File: src/main/java/com/microsoft/fluentuidemo/demos/list/IBaseListItem.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentuidemo.demos.list

/**
 * This defines data associated with the most basic implementation of a list item.
 */
interface IBaseListItem {
    var title: String
}
```

## File: src/main/java/com/microsoft/fluentuidemo/demos/list/IButtonItem.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentuidemo.demos.list

import android.view.View

interface IButtonItem : IBaseListItem {
    var buttonText: String
    var id: Int
    var onClickListener: View.OnClickListener
}

data class ButtonItem(
    override var title: String = "",
    override var buttonText: String,
    override var id: Int,
    override var onClickListener: View.OnClickListener
) : IButtonItem
```

## File: src/main/java/com/microsoft/fluentuidemo/demos/list/IListItem.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentuidemo.demos.list

import android.text.TextUtils
import android.view.View
import com.microsoft.fluentui.listitem.ListItemView

/**
 * This defines data associated with [ListItemView]s.
 */
interface IListItem : IBaseListItem {
    var subtitle: String
    var footer: String

    var titleMaxLines: Int
    var subtitleMaxLines: Int
    var footerMaxLines: Int

    var titleTruncateAt: TextUtils.TruncateAt
    var subtitleTruncateAt: TextUtils.TruncateAt
    var footerTruncateAt: TextUtils.TruncateAt

    var customView: View?
    var customViewSize: ListItemView.CustomViewSize
    var customAccessoryView: View?
    var customSecondarySubtitleView: View?

    var layoutDensity: ListItemView.LayoutDensity
}

data class ListItem(override var title: String = "") : IListItem {
    override var subtitle: String = ""
    override var footer: String = ""

    override var titleMaxLines: Int = ListItemView.DEFAULT_MAX_LINES
    override var subtitleMaxLines: Int = ListItemView.DEFAULT_MAX_LINES
    override var footerMaxLines: Int = ListItemView.DEFAULT_MAX_LINES

    override var titleTruncateAt: TextUtils.TruncateAt = ListItemView.DEFAULT_TRUNCATION
    override var subtitleTruncateAt: TextUtils.TruncateAt = ListItemView.DEFAULT_TRUNCATION
    override var footerTruncateAt: TextUtils.TruncateAt = ListItemView.DEFAULT_TRUNCATION

    override var customView: View? = null
    override var customViewSize: ListItemView.CustomViewSize = ListItemView.DEFAULT_CUSTOM_VIEW_SIZE
    override var customAccessoryView: View? = null
    override var customSecondarySubtitleView: View? = null

    override var layoutDensity: ListItemView.LayoutDensity = ListItemView.DEFAULT_LAYOUT_DENSITY
}
```

## File: src/main/java/com/microsoft/fluentuidemo/demos/list/IListSubHeader.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentuidemo.demos.list

import android.view.View
import com.microsoft.fluentui.listitem.ListSubHeaderView

/**
 * This defines data associated with [ListSubHeaderView]s.
 */
interface IListSubHeader : IBaseListItem {
    var titleColor: ListSubHeaderView.TitleColor
    var customAccessoryView: View?
}

data class ListSubHeader(override var title: String = "") : IListSubHeader {
    override var titleColor: ListSubHeaderView.TitleColor = ListSubHeaderView.DEFAULT_TITLE_COLOR
    override var customAccessoryView: View? = null
}
```

## File: src/main/java/com/microsoft/fluentuidemo/demos/list/ListAdapter.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentuidemo.demos.list

import android.content.Context
import androidx.appcompat.widget.AppCompatButton
import androidx.recyclerview.widget.RecyclerView
import android.view.ViewGroup
import android.widget.FrameLayout
import android.widget.LinearLayout
import com.microsoft.fluentui.listitem.ListItemView
import com.microsoft.fluentui.listitem.ListSubHeaderView
import com.microsoft.fluentui.snackbar.Snackbar
import com.microsoft.fluentui.widget.Button
import com.microsoft.fluentuidemo.R
import java.util.*

class ListAdapter(private val context: Context) : RecyclerView.Adapter<RecyclerView.ViewHolder>() {
    private enum class ViewType {
        SUB_HEADER, ITEM, BUTTON_ITEM
    }

    var listItems = ArrayList<IBaseListItem>()

    override fun onCreateViewHolder(parent: ViewGroup, viewTypeOrdinal: Int): RecyclerView.ViewHolder {
        val lp = LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT)
        return when (ViewType.values()[viewTypeOrdinal]) {
            ViewType.SUB_HEADER -> {
                val subHeaderView = ListSubHeaderView(context)
                subHeaderView.layoutParams = lp
                ListSubHeaderViewHolder(subHeaderView)
            }
            ViewType.ITEM -> {
                val listItemView = ListItemView(context)
                listItemView.layoutParams = lp
                ListItemViewHolder(listItemView)
            }
            ViewType.BUTTON_ITEM -> {
                val buttonItemView = FrameLayout(context)
                buttonItemView.layoutParams = lp

                val button = Button(context)
                button.layoutParams = FrameLayout.LayoutParams(
                    FrameLayout.LayoutParams.WRAP_CONTENT,
                    context.resources.getDimension(R.dimen.fluentui_button_min_height).toInt()
                )
                buttonItemView.addView(button)

                val paddingHorizontal = context.resources.getDimension(R.dimen.default_layout_margin).toInt()
                val paddingVertical = context.resources.getDimension(R.dimen.button_list_item_vertical_padding).toInt()
                buttonItemView.setPaddingRelative(paddingHorizontal, paddingVertical, paddingHorizontal, paddingVertical)

                ButtonItemViewHolder(buttonItemView)
            }
        }
    }

    override fun onBindViewHolder(holder: RecyclerView.ViewHolder, position: Int) {
        val listItem = listItems[position]

        if (listItem is IListSubHeader)
            (holder as? ListSubHeaderViewHolder)?.setListSubHeader(listItem)

        if (listItem is IListItem)
            (holder as? ListItemViewHolder)?.setListItem(listItem)

        if (listItem is IButtonItem)
            (holder as? ButtonItemViewHolder)?.setButtonItem(listItem)
    }

    override fun onViewRecycled(holder: RecyclerView.ViewHolder) {
        super.onViewRecycled(holder)
        (holder as? ListItemViewHolder)?.clearCustomViews()
    }

    override fun getItemCount(): Int = listItems.size

    override fun getItemViewType(position: Int): Int {
        return when {
            listItems[position] is ListSubHeader -> ViewType.SUB_HEADER.ordinal
            listItems[position] is ButtonItem -> ViewType.BUTTON_ITEM.ordinal
            else -> ViewType.ITEM.ordinal
        }
    }

    private inner class ListItemViewHolder : RecyclerView.ViewHolder {
        private val listItemView: ListItemView

        constructor(view: ListItemView) : super(view) {
            listItemView = view
            listItemView.setOnClickListener {
                Snackbar.make(listItemView, context.resources.getString(R.string.list_item_click), Snackbar.LENGTH_SHORT).show()
            }
        }

        fun setListItem(listItem: IListItem) {
            listItemView.setListItem(listItem)
        }

        fun clearCustomViews() {
            listItemView.customView = null
            listItemView.customAccessoryView = null
        }
    }

    private class ListSubHeaderViewHolder : RecyclerView.ViewHolder {
        private val listSubHeaderView: ListSubHeaderView

        constructor(view: ListSubHeaderView) : super(view) {
            listSubHeaderView = view
        }

        fun setListSubHeader(listSubHeader: IListSubHeader) {
            listSubHeaderView.setListSubHeader(listSubHeader)
        }
    }

    private inner class ButtonItemViewHolder : RecyclerView.ViewHolder {
        private var button: Button? = null

        constructor(view: FrameLayout) : super(view) {
            button = view.getChildAt(0) as? Button ?: return
        }

        fun setButtonItem(buttonItem: IButtonItem) {
            button?.text = buttonItem.buttonText
            button?.id = buttonItem.id
            button?.setOnClickListener(buttonItem.onClickListener)
        }
    }
}

fun ListItemView.setListItem(listItem: IListItem) {
    title = listItem.title
    subtitle = listItem.subtitle
    footer = listItem.footer

    titleMaxLines = listItem.titleMaxLines
    subtitleMaxLines = listItem.subtitleMaxLines
    footerMaxLines = listItem.footerMaxLines

    titleTruncateAt = listItem.titleTruncateAt
    subtitleTruncateAt = listItem.subtitleTruncateAt
    footerTruncateAt = listItem.footerTruncateAt

    customView = listItem.customView
    customViewSize = listItem.customViewSize
    customAccessoryView = listItem.customAccessoryView
    customSecondarySubtitleView = listItem.customSecondarySubtitleView

    layoutDensity = listItem.layoutDensity
}

fun ListSubHeaderView.setListSubHeader(listSubHeader: IListSubHeader) {
    title = listSubHeader.title
    titleColor = listSubHeader.titleColor
    customAccessoryView = listSubHeader.customAccessoryView
}
```

## File: src/main/java/com/microsoft/fluentuidemo/demos/ListItemViewActivity.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentuidemo.demos

import android.graphics.drawable.Drawable
import android.os.Build
import android.os.Bundle
import android.text.TextUtils
import android.view.LayoutInflater
import android.view.View
import android.widget.ImageView
import android.widget.LinearLayout
import android.widget.TextView
import androidx.core.content.ContextCompat
import androidx.core.widget.TextViewCompat
import androidx.recyclerview.widget.DividerItemDecoration
import com.microsoft.fluentui.listitem.ListItemDivider
import com.microsoft.fluentui.listitem.ListItemView
import com.microsoft.fluentui.listitem.ListItemView.Companion.DEFAULT_CUSTOM_VIEW_SIZE
import com.microsoft.fluentui.listitem.ListItemView.Companion.DEFAULT_LAYOUT_DENSITY
import com.microsoft.fluentui.listitem.ListSubHeaderView
import com.microsoft.fluentui.persona.AvatarSize
import com.microsoft.fluentui.persona.AvatarView
import com.microsoft.fluentui.snackbar.Snackbar
import com.microsoft.fluentuidemo.DemoActivity
import com.microsoft.fluentuidemo.R
import com.microsoft.fluentuidemo.databinding.ActivityListItemViewBinding
import com.microsoft.fluentuidemo.demos.list.IBaseListItem
import com.microsoft.fluentuidemo.demos.list.ListAdapter
import com.microsoft.fluentuidemo.demos.list.ListItem
import com.microsoft.fluentuidemo.demos.list.ListSubHeader

class ListItemViewActivity : DemoActivity() {

    override val contentNeedsScrollableContainer: Boolean
        get() = false

    private lateinit var listBinding: ActivityListItemViewBinding
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        listBinding = ActivityListItemViewBinding.inflate(
            LayoutInflater.from(container.context),
            container,
            true
        )
        demoBinding.appBar.scrollTargetViewId = R.id.list_example

        val listAdapter = ListAdapter(this)
        listAdapter.listItems = createList()

        listBinding.listExample.adapter = listAdapter
        listBinding.listExample.addItemDecoration(
            ListItemDivider(
                this,
                DividerItemDecoration.VERTICAL
            )
        )
    }

    private fun createList(): ArrayList<IBaseListItem> {
        val smallIcon = ContextCompat.getDrawable(this, R.drawable.ic_folder_24_regular)
        val overflowIcon = ContextCompat.getDrawable(this, R.drawable.ic_more_vertical_24_filled)

        // Single-line list example

        val singleLineSection = createSection(
            createListSubHeader(
                getString(R.string.list_item_sub_header_single_line),
                ListSubHeaderView.TitleColor.TERTIARY,
                true
            ),
            arrayListOf(
                createListItem(
                    getString(R.string.list_item_title),
                    customView = createExampleCustomView(smallIcon),
                    customViewSize = ListItemView.CustomViewSize.SMALL
                ),
                createListItem(
                    getString(R.string.list_item_title),
                    customView = createExampleCustomView(smallIcon),
                    customViewSize = ListItemView.CustomViewSize.SMALL,
                    customAccessoryView = createExampleCustomView(overflowIcon),
                    addCustomAccessoryViewClick = true
                ),
                createListItem(
                    getString(R.string.list_item_title),
                    customView = createExampleAvatarView(R.drawable.avatar_charlotte_waltson),
                    customViewSize = ListItemView.CustomViewSize.MEDIUM,
                    customAccessoryView = createExampleTextView()
                )
            )
        )

        // Two-line list examples

        val twoLineSection = createSection(
            createListSubHeader(getString(R.string.list_item_sub_header_two_line)),
            arrayListOf(
                createListItem(
                    getString(R.string.list_item_title),
                    getString(R.string.list_item_subtitle),
                    customView = createExampleCustomView(smallIcon),
                    customViewSize = ListItemView.CustomViewSize.SMALL
                ),
                createListItem(
                    getString(R.string.list_item_title),
                    getString(R.string.list_item_subtitle),
                    customView = createExampleCustomView(smallIcon),
                    customViewSize = ListItemView.CustomViewSize.SMALL,
                    customAccessoryView = createExampleCustomView(overflowIcon),
                    addCustomAccessoryViewClick = true
                ),
                createListItem(
                    getString(R.string.list_item_title),
                    getString(R.string.list_item_subtitle),
                    customView = createExampleAvatarView(R.drawable.avatar_erik_nason),
                    customViewSize = ListItemView.CustomViewSize.MEDIUM,
                    customAccessoryView = createExampleTextView()
                )
            )
        )

        val twoLineDenseSection = createSection(
            createListSubHeader(getString(R.string.list_item_sub_header_two_line_dense)),
            arrayListOf(
                createListItem(
                    getString(R.string.list_item_title),
                    getString(R.string.list_item_subtitle),
                    customView = createExampleCustomView(smallIcon),
                    customViewSize = ListItemView.CustomViewSize.SMALL,
                    layoutDensity = ListItemView.LayoutDensity.COMPACT
                ),
                createListItem(
                    getString(R.string.list_item_title),
                    getString(R.string.list_item_subtitle),
                    customView = createExampleCustomView(smallIcon),
                    customViewSize = ListItemView.CustomViewSize.SMALL,
                    customAccessoryView = createExampleCustomView(overflowIcon),
                    addCustomAccessoryViewClick = true,
                    layoutDensity = ListItemView.LayoutDensity.COMPACT
                ),
                createListItem(
                    getString(R.string.list_item_title),
                    getString(R.string.list_item_subtitle),
                    customView = createExampleAvatarView(R.drawable.avatar_wanda_howard),
                    customViewSize = ListItemView.CustomViewSize.MEDIUM,
                    customAccessoryView = createExampleTextView(),
                    layoutDensity = ListItemView.LayoutDensity.COMPACT
                )
            )
        )

        val twoLineCustomSecondarySubtitleSection = createSection(
            createListSubHeader(getString(R.string.list_item_sub_header_two_line_custom_secondary_subtitle)),
            arrayListOf(
                createListItem(
                    getString(R.string.list_item_title),
                    getString(R.string.list_item_subtitle),
                    customView = createExampleCustomView(smallIcon),
                    customViewSize = ListItemView.CustomViewSize.SMALL,
                    customSecondarySubtitleView = createExampleCustomSecondarySubtitleView(),
                    layoutDensity = ListItemView.LayoutDensity.COMPACT
                ),
                createListItem(
                    getString(R.string.list_item_title),
                    getString(R.string.list_item_subtitle),
                    customView = createExampleCustomView(smallIcon),
                    customViewSize = ListItemView.CustomViewSize.SMALL,
                    customAccessoryView = createExampleCustomView(overflowIcon),
                    customSecondarySubtitleView = createExampleCustomSecondarySubtitleView(),
                    addCustomAccessoryViewClick = true,
                    layoutDensity = ListItemView.LayoutDensity.COMPACT
                ),
                createListItem(
                    getString(R.string.list_item_title),
                    getString(R.string.list_item_subtitle),
                    customView = createExampleAvatarView(R.drawable.avatar_wanda_howard),
                    customViewSize = ListItemView.CustomViewSize.MEDIUM,
                    customAccessoryView = createExampleTextView(),
                    customSecondarySubtitleView = createExampleCustomSecondarySubtitleView(),
                    layoutDensity = ListItemView.LayoutDensity.COMPACT
                )
            )
        )

        // Three-line list example

        val threeLineSection = createSection(
            createListSubHeader(
                getString(R.string.list_item_sub_header_three_line),
                ListSubHeaderView.TitleColor.SECONDARY,
                true
            ),
            arrayListOf(
                createListItem(
                    getString(R.string.list_item_title),
                    getString(R.string.list_item_subtitle),
                    getString(R.string.list_item_footer),
                    customView = createExampleCustomView(smallIcon),
                    customViewSize = ListItemView.CustomViewSize.SMALL
                ),
                createListItem(
                    getString(R.string.list_item_title),
                    getString(R.string.list_item_subtitle),
                    getString(R.string.list_item_footer),
                    customView = createExampleCustomView(smallIcon),
                    customViewSize = ListItemView.CustomViewSize.SMALL,
                    customAccessoryView = createExampleCustomView(overflowIcon),
                    addCustomAccessoryViewClick = true
                ),
                createListItem(
                    getString(R.string.list_item_title),
                    getString(R.string.list_item_subtitle),
                    getString(R.string.list_item_footer),
                    customView = createExampleAvatarView(R.drawable.avatar_carole_poland),
                    customViewSize = ListItemView.CustomViewSize.MEDIUM,
                    customAccessoryView = createExampleTextView()
                )
            )
        )


        // Layout variant examples

        val noCustomViewSection = createSection(
            createListSubHeader(getString(R.string.list_item_sub_header_no_custom_views)),
            arrayListOf(
                createListItem(getString(R.string.list_item_title)),
                createListItem(
                    getString(R.string.list_item_title),
                    getString(R.string.list_item_subtitle)
                ),
                createListItem(
                    getString(R.string.list_item_title),
                    getString(R.string.list_item_subtitle),
                    getString(R.string.list_item_footer)
                )
            )
        )

        val largeHeaderSection = createSection(
            createListSubHeader(getString(R.string.list_item_sub_header_large_header)),
            arrayListOf(
                createListItem(
                    getString(R.string.list_item_title),
                    getString(R.string.list_item_subtitle),
                    getString(R.string.list_item_footer),
                    customView = createExampleAvatarView(
                        R.drawable.avatar_johnie_mcconnell,
                        avatarSize = AvatarSize.XXLARGE
                    ),
                    customViewSize = ListItemView.CustomViewSize.LARGE
                ),
                createListItem(
                    getString(R.string.list_item_title),
                    footer = getString(R.string.list_item_footer),
                    customView = createExampleAvatarView(
                        avatarNameStringId = R.string.persona_name_elliot_woodward,
                        avatarSize = AvatarSize.XXLARGE
                    ),
                    customViewSize = ListItemView.CustomViewSize.LARGE
                ),
                createListItem(
                    getString(R.string.list_item_title),
                    getString(R.string.list_item_subtitle),
                    customView = createExampleAvatarView(
                        R.drawable.avatar_miguel_garcia,
                        avatarSize = AvatarSize.XXLARGE
                    ),
                    customViewSize = ListItemView.CustomViewSize.LARGE
                )
            )
        )

        val truncationSection = createSection(
            createListSubHeader(getString(R.string.list_item_sub_header_truncated_text)),
            arrayListOf(
                createListItem(
                    "${getString(R.string.list_item_truncation_middle)} ${getString(R.string.long_placeholder)}",
                    "${getString(R.string.long_placeholder)} ${getString(R.string.list_item_truncation_start)}",
                    "${getString(R.string.list_item_truncation_end)} ${getString(R.string.long_placeholder)}",
                    customView = createExampleCustomView(smallIcon),
                    customViewSize = ListItemView.CustomViewSize.SMALL
                ),
                createListItem(
                    "${getString(R.string.list_item_truncation_middle)} ${getString(R.string.long_placeholder)}",
                    "${getString(R.string.long_placeholder)} ${getString(R.string.list_item_truncation_start)}",
                    "${getString(R.string.list_item_truncation_end)} ${getString(R.string.long_placeholder)}",
                    customView = createExampleCustomView(smallIcon),
                    customViewSize = ListItemView.CustomViewSize.SMALL,
                    customAccessoryView = createExampleCustomView(overflowIcon),
                    addCustomAccessoryViewClick = true
                ),
                createListItem(
                    "${getString(R.string.list_item_truncation_middle)} ${getString(R.string.long_placeholder)}",
                    "${getString(R.string.long_placeholder)} ${getString(R.string.list_item_truncation_start)}",
                    "${getString(R.string.list_item_truncation_end)} ${getString(R.string.long_placeholder)}",
                    customView = createExampleAvatarView(R.drawable.avatar_robert_tolbert),
                    customViewSize = ListItemView.CustomViewSize.MEDIUM,
                    customAccessoryView = createExampleTextView()
                )
            )
        )

        val wrappingSection = createSection(
            createListSubHeader(getString(R.string.list_item_sub_header_wrapped_text)),
            arrayListOf(
                createListItem(
                    getString(R.string.long_placeholder),
                    wrap = true,
                    customView = createExampleCustomView(smallIcon),
                    customViewSize = ListItemView.CustomViewSize.SMALL
                ),
                createListItem(
                    getString(R.string.long_placeholder),
                    getString(R.string.long_placeholder),
                    wrap = true,
                    customView = createExampleCustomView(smallIcon),
                    customViewSize = ListItemView.CustomViewSize.SMALL,
                    customAccessoryView = createExampleCustomView(overflowIcon),
                    addCustomAccessoryViewClick = true
                ),
                createListItem(
                    getString(R.string.long_placeholder),
                    getString(R.string.long_placeholder),
                    getString(R.string.long_placeholder),
                    wrap = true,
                    customView = createExampleAvatarView(avatarNameStringId = R.string.persona_name_henry_brill),
                    customViewSize = ListItemView.CustomViewSize.MEDIUM,
                    customAccessoryView = createExampleTextView()
                )
            )
        )

        val twoLineListSections =
            twoLineSection + twoLineDenseSection + twoLineCustomSecondarySubtitleSection
        val layoutVariantSections =
            noCustomViewSection + largeHeaderSection + truncationSection + wrappingSection
        return (singleLineSection + twoLineListSections + threeLineSection + layoutVariantSections) as ArrayList<IBaseListItem>
    }

    private fun createSection(
        subHeader: ListSubHeader,
        items: ArrayList<ListItem>
    ): ArrayList<IBaseListItem> {
        val itemArray = arrayListOf(subHeader) as ArrayList<IBaseListItem>
        itemArray.addAll(items)
        return itemArray
    }

    private fun createListSubHeader(
        text: String,
        titleColor: ListSubHeaderView.TitleColor = ListSubHeaderView.DEFAULT_TITLE_COLOR,
        useCustomAccessoryView: Boolean = false
    ): ListSubHeader {
        val listSubHeader = ListSubHeader(text)
        listSubHeader.titleColor = titleColor

        if (useCustomAccessoryView) {
            val customTextView = TextView(this)
            customTextView.text = getString(R.string.list_item_sub_header_custom_accessory_text)
            TextViewCompat.setTextAppearance(
                customTextView,
                R.style.FluentUIDemo_ListItemSubHeaderTitle
            )
            customTextView.setOnClickListener {
                Snackbar.make(
                    it,
                    resources.getString(R.string.list_item_click_sub_header_custom_accessory_view),
                    Snackbar.LENGTH_SHORT
                ).show()
            }
            listSubHeader.customAccessoryView = customTextView
        }

        return listSubHeader
    }

    private fun createListItem(
        title: String,
        subtitle: String = "",
        footer: String = "",
        customView: View? = null,
        customViewSize: ListItemView.CustomViewSize = DEFAULT_CUSTOM_VIEW_SIZE,
        customAccessoryView: View? = null,
        customSecondarySubtitleView: View? = null,
        addCustomAccessoryViewClick: Boolean = false,
        layoutDensity: ListItemView.LayoutDensity = DEFAULT_LAYOUT_DENSITY,
        wrap: Boolean = false
    ): ListItem {
        val item = ListItem(title)

        item.subtitle = subtitle
        item.footer = footer
        item.layoutDensity = layoutDensity
        item.customAccessoryView = customAccessoryView
        item.customView = customView
        item.customViewSize = customViewSize
        item.customSecondarySubtitleView = customSecondarySubtitleView

        if (wrap) {
            item.titleMaxLines = 4
            item.subtitleMaxLines = 4
            item.footerMaxLines = 4
        } else {
            item.titleTruncateAt = TextUtils.TruncateAt.MIDDLE
            if (Build.VERSION.SDK_INT > Build.VERSION_CODES.LOLLIPOP)
            // In earlier APIs this crashes with an ArrayIndexOutOfBoundsException
                item.subtitleTruncateAt = TextUtils.TruncateAt.START
        }

        if (addCustomAccessoryViewClick && customAccessoryView != null)
            customAccessoryView.setOnClickListener {
                Snackbar.make(
                    customAccessoryView,
                    getString(R.string.list_item_click_custom_accessory_view),
                    Snackbar.LENGTH_SHORT
                ).show()
            }

        return item
    }

    private fun createExampleCustomView(drawable: Drawable?): ImageView {
        val imageView = ImageView(this)
        imageView.setImageDrawable(drawable)
        imageView.contentDescription = getString(R.string.list_item_more_options)
        return imageView
    }

    private fun createExampleTextView(): TextView {
        val textCustomAccessoryView = TextView(this)
        TextViewCompat.setTextAppearance(
            textCustomAccessoryView,
            R.style.TextAppearance_ListItemValue
        )
        textCustomAccessoryView.text = getString(R.string.list_item_custom_text_view)
        return textCustomAccessoryView
    }

    private fun createExampleAvatarView(
        avatarImageResourceId: Int = -1,
        avatarNameStringId: Int = -1,
        avatarSize: AvatarSize = AvatarSize.LARGE
    ): AvatarView {
        val avatarView = AvatarView(this)
        avatarView.avatarImageResourceId = avatarImageResourceId
        avatarView.avatarSize = avatarSize
        if (avatarNameStringId != -1)
            avatarView.name = getString(avatarNameStringId)
        return avatarView
    }

    private fun createExampleCustomSecondarySubtitleView(): LinearLayout {
        val dotTextView = TextView(this)
        dotTextView.text = " . "

        val secondarySubtitleTextView = TextView(this)
        TextViewCompat.setTextAppearance(
            secondarySubtitleTextView,
            R.style.TextAppearance_DemoListItemSubtitle
        )
        secondarySubtitleTextView.text = getString(R.string.list_item_secondary_subtitle)

        val linearLayout = LinearLayout(this)
        linearLayout.addView(dotTextView)
        linearLayout.addView(secondarySubtitleTextView)
        return linearLayout
    }
}
```

## File: src/main/java/com/microsoft/fluentuidemo/demos/PeoplePickerViewActivity.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentuidemo.demos

import android.os.Build
import android.os.Bundle
import android.view.LayoutInflater
import android.view.ViewGroup
import android.widget.LinearLayout
import com.microsoft.fluentui.peoplepicker.PeoplePickerAccessibilityTextProvider
import com.microsoft.fluentui.peoplepicker.PeoplePickerPersonaChipClickStyle
import com.microsoft.fluentui.peoplepicker.PeoplePickerView
import com.microsoft.fluentui.persona.IPersona
import com.microsoft.fluentui.snackbar.Snackbar
import com.microsoft.fluentuidemo.DemoActivity
import com.microsoft.fluentuidemo.R
import com.microsoft.fluentuidemo.databinding.ActivityPeoplePickerViewBinding
import com.microsoft.fluentuidemo.util.createCustomPersona
import com.microsoft.fluentuidemo.util.createPersonaList
import java.util.*

class PeoplePickerViewActivity : DemoActivity() {

    private lateinit var samplePersonas: ArrayList<IPersona>

    private lateinit var peoplePickerBinding: ActivityPeoplePickerViewBinding

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        peoplePickerBinding = ActivityPeoplePickerViewBinding.inflate(
            LayoutInflater.from(container.context),
            container,
            true
        )

        samplePersonas = createPersonaList(this)
        val accessibilityTextProvider = getAccessibilityTextProvider()

        // Use attributes to set personaChipClickStyle and label

        peoplePickerBinding.peoplePickerSelect.availablePersonas = samplePersonas
        val selectPickedPersonas = arrayListOf(
            samplePersonas[0],
            samplePersonas[1],
            samplePersonas[4],
            samplePersonas[5]
        )
        val selectSearchDirectoryPersonas = arrayListOf(
            samplePersonas[14],
            samplePersonas[7],
            samplePersonas[8],
            samplePersonas[9]
        )
        peoplePickerBinding.peoplePickerSelect.pickedPersonas = selectPickedPersonas
        peoplePickerBinding.peoplePickerSelect.showSearchDirectoryButton = true
        peoplePickerBinding.peoplePickerSelect.searchDirectorySuggestionsListener =
            createPersonaSuggestionsListener(selectSearchDirectoryPersonas)
        peoplePickerBinding.peoplePickerSelect.allowPersonaChipDragAndDrop = true
        peoplePickerBinding.peoplePickerSelect.onCreatePersona = { name, email ->
            createCustomPersona(this, name, email)
        }
        peoplePickerBinding.peoplePickerSelect.accessibilityTextProvider = accessibilityTextProvider

        peoplePickerBinding.peoplePickerSelectDeselect.availablePersonas = samplePersonas
        val selectDeselectPickedPersonas = arrayListOf(samplePersonas[2])
        peoplePickerBinding.peoplePickerSelectDeselect.pickedPersonas = selectDeselectPickedPersonas
        peoplePickerBinding.peoplePickerSelectDeselect.allowPersonaChipDragAndDrop = true
        peoplePickerBinding.peoplePickerSelectDeselect.accessibilityTextProvider =
            accessibilityTextProvider
        peoplePickerBinding.peoplePickerSelectDeselect.personaChipClickListener =
            object : PeoplePickerView.PersonaChipClickListener {
                override fun onClick(persona: IPersona) {
                    showSnackbar(
                        getString(
                            R.string.people_picker_persona_chip_click,
                            accessibilityTextProvider.getPersonaDescription(persona)
                        )
                    )
                }
            }

        // Use code to set personaChipClickStyle and label

        setupPeoplePickerView(
            "",
            samplePersonas,
            PeoplePickerPersonaChipClickStyle.NONE,
            valueHint = getString(R.string.people_picker_hint),
            showHint = true
        )
        setupPeoplePickerView(
            getString(R.string.people_picker_delete_example),
            samplePersonas,
            PeoplePickerPersonaChipClickStyle.DELETE
        )
        setupPeoplePickerView(
            getString(R.string.people_picker_picked_personas_listener),
            samplePersonas,
            pickedPersonasChangeListener = createPickedPersonasChangeListener()
        )
        setupPeoplePickerView(
            getString(R.string.people_picker_suggestions_listener),
            personaSuggestionsListener = createPersonaSuggestionsListener(samplePersonas)
        )

        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.P)
            peoplePickerBinding.peoplePickerSelect.requestFocus()
    }

    private fun getAccessibilityTextProvider() =
        object : PeoplePickerAccessibilityTextProvider(resources) {
            override fun getPersonaQuantityText(personas: ArrayList<IPersona>): String {
                return resources.getQuantityString(
                    R.plurals.people_picker_accessibility_text_view_example,
                    personas.size,
                    personas.size
                )
            }
        }

    private fun setupPeoplePickerView(
        labelText: String,
        availablePersonas: ArrayList<IPersona> = ArrayList(),
        personaChipClickStyle: PeoplePickerPersonaChipClickStyle = PeoplePickerPersonaChipClickStyle.SELECT,
        personaSuggestionsListener: PeoplePickerView.PersonaSuggestionsListener? = null,
        pickedPersonasChangeListener: PeoplePickerView.PickedPersonasChangeListener? = null,
        valueHint: String = "",
        showHint: Boolean = false
    ) {
        val peoplePickerView = PeoplePickerView(this)
        peoplePickerView.layoutParams = LinearLayout.LayoutParams(
            LinearLayout.LayoutParams.MATCH_PARENT,
            ViewGroup.LayoutParams.WRAP_CONTENT
        )
        with(peoplePickerView) {
            label = labelText
            this.availablePersonas = availablePersonas
            this.personaChipClickStyle = personaChipClickStyle
            this.personaSuggestionsListener = personaSuggestionsListener
            this.pickedPersonasChangeListener = pickedPersonasChangeListener
            allowPersonaChipDragAndDrop = true
            this.valueHint = valueHint
            this.showHint = showHint
        }
        peoplePickerBinding.peoplePickerLayout.addView(peoplePickerView)
    }

    private fun createPickedPersonasChangeListener(): PeoplePickerView.PickedPersonasChangeListener {
        return object : PeoplePickerView.PickedPersonasChangeListener {
            override fun onPersonaAdded(persona: IPersona) {
                showSnackbar("${getString(R.string.people_picker_dialog_title_added)} ${if (persona.name.isNotEmpty()) persona.name else persona.email}")
            }

            override fun onPersonaRemoved(persona: IPersona) {
                showSnackbar("${getString(R.string.people_picker_dialog_title_removed)} ${if (persona.name.isNotEmpty()) persona.name else persona.email}")
            }
        }
    }

    private fun createPersonaSuggestionsListener(personas: ArrayList<IPersona>): PeoplePickerView.PersonaSuggestionsListener {
        return object : PeoplePickerView.PersonaSuggestionsListener {
            override fun onGetSuggestedPersonas(
                searchConstraint: CharSequence?,
                availablePersonas: ArrayList<IPersona>?,
                pickedPersonas: ArrayList<IPersona>,
                completion: (suggestedPersonas: ArrayList<IPersona>) -> Unit
            ) {
                // Simulating async filtering with Timer
                Timer().schedule(
                    object : TimerTask() {
                        override fun run() {
                            completion(filterPersonas(searchConstraint, personas, pickedPersonas))
                        }
                    },
                    500
                )
            }
        }
    }

    private fun showSnackbar(text: String) {
        Snackbar.make(demoBinding.rootView, text, Snackbar.LENGTH_SHORT).show()
    }

    // Basic custom filtering example
    private fun filterPersonas(
        searchConstraint: CharSequence?,
        availablePersonas: ArrayList<IPersona>,
        pickedPersonas: ArrayList<IPersona>
    ): ArrayList<IPersona> {
        if (searchConstraint == null)
            return availablePersonas
        val constraint = searchConstraint.toString().lowercase(Locale.getDefault())
        val filteredResults = availablePersonas.filter {
            it.name.lowercase(Locale.getDefault()).contains(constraint) && !pickedPersonas.contains(
                it
            )
        }
        return ArrayList(filteredResults)
    }
}
```

## File: src/main/java/com/microsoft/fluentuidemo/demos/PersistentBottomSheetActivity.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentuidemo.demos

import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.os.Bundle
import android.view.Gravity
import android.view.LayoutInflater
import android.view.View
import android.view.ViewTreeObserver
import android.widget.ScrollView
import android.widget.TextView
import androidx.core.content.ContextCompat
import androidx.recyclerview.widget.LinearLayoutManager
import com.google.android.material.bottomsheet.BottomSheetBehavior
import com.microsoft.fluentui.bottomsheet.BottomSheetAdapter
import com.microsoft.fluentui.bottomsheet.BottomSheetItem
import com.microsoft.fluentui.persistentbottomsheet.PersistentBottomSheet
import com.microsoft.fluentui.persistentbottomsheet.SheetHorizontalItemAdapter
import com.microsoft.fluentui.persistentbottomsheet.SheetItem
import com.microsoft.fluentui.snackbar.Snackbar
import com.microsoft.fluentuidemo.DemoActivity
import com.microsoft.fluentuidemo.R
import com.microsoft.fluentuidemo.databinding.ActivityPersistentBottomSheetBinding
import com.microsoft.fluentuidemo.databinding.DemoPersistentSheetContentBinding
import com.microsoft.fluentuidemo.util.createBitmapFromLayout

class PersistentBottomSheetActivity : DemoActivity(), SheetItem.OnClickListener,
    BottomSheetItem.OnClickListener {

    override val contentNeedsScrollableContainer: Boolean
        get() = false

    private lateinit var persistentBottomSheetDemo: PersistentBottomSheet
    private lateinit var defaultPersistentBottomSheet: PersistentBottomSheet
    private lateinit var defaultPersistentBottomSheetContent: View
    private lateinit var currentSheet: PersistentBottomSheet
    private lateinit var scrollView: ScrollView
    private var isBack: Boolean = false
    private lateinit var view: TextView
    private lateinit var mHorizontalSheet: MutableList<SheetItem>
    private lateinit var mHorizontalSheet2: MutableList<SheetItem>

    private lateinit var persistentBottomSheetBinding: ActivityPersistentBottomSheetBinding
    private lateinit var persistentSheetContentBinding: DemoPersistentSheetContentBinding


    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        persistentBottomSheetBinding = ActivityPersistentBottomSheetBinding.inflate(
            LayoutInflater.from(container.context),
            container,
            true
        )
        persistentSheetContentBinding = DemoPersistentSheetContentBinding.inflate(LayoutInflater.from(this))

        persistentBottomSheetDemo = findViewById(R.id.demo_persistent_sheet)
        defaultPersistentBottomSheet = findViewById(R.id.default_persistent_sheet)
        scrollView = findViewById(R.id.scroll_container)
        defaultPersistentBottomSheetContent =
            LayoutInflater.from(this).inflate(R.layout.demo_persistent_sheet_content, null)

        val view = LayoutInflater.from(this).inflate(R.layout.accessory_content, null)
        val textView = view.findViewById<TextView>(R.id.bottom_sheet_item_nudge)
        textView.text = "10+"
        val bitmap1 = createBitmapFromLayout(view)
        textView.text = "100+"
        val bitmap2 = createBitmapFromLayout(view)
        textView.text = "123456789+"
        val bitmap3 = createBitmapFromLayout(view)


        PersistentBottomSheet.DefaultContentBuilder(this)
            .setCustomSheetContent(persistentSheetContentBinding.root)
            .buildWith(persistentBottomSheetDemo)
        persistentBottomSheetDemo.setDrawerHandleContentDescription(
            getString(R.string.drawer_content_desc_collapse_state),
            getString(R.string.drawer_content_desc_expand_state)
        )
        persistentBottomSheetDemo.backgroundViews = listOf(persistentBottomSheetBinding.demoMainContent, persistentBottomSheetBinding.scrollContainer) // These views shouldn't get accessibility focus when Sheet is expanded

        mHorizontalSheet = arrayListOf(
            SheetItem(
                R.id.bottom_sheet_item_flag,
                getString(R.string.bottom_sheet_item_flag_title),
                R.drawable.ic_fluent_flag_24_regular,
                ContextCompat.getColor(this, R.color.bottomsheet_horizontal_icon_tint),
                disabled = false,
                accessoryBitmap = bitmap1
            ),
            SheetItem(
                R.id.bottom_sheet_item_alarm,
                getString(R.string.bottom_sheet_item_custom_image),
                dummyBitmap(),
                disabled = true,
                accessoryBitmap = bitmap2
            ),
            SheetItem(
                R.id.persistent_sheet_item_add_view,
                getString(R.string.persistent_sheet_item_add_remove_view),
                R.drawable.ic_add_circle_28_fill,
                ContextCompat.getColor(this, R.color.bottomsheet_horizontal_icon_tint),
                disabled = false,
                accessoryBitmap = bitmap3
            ),
            SheetItem(
                R.id.persistent_sheet_item_change_height_button,
                getString(R.string.persistent_sheet_item_change_collapsed_height),
                R.drawable.ic_vertical_align_center_28_fill,
                ContextCompat.getColor(this, R.color.bottomsheet_horizontal_icon_tint),
                disabled = true
            ),
            SheetItem(
                R.id.bottom_sheet_item_reply,
                getString(R.string.bottom_sheet_item_reply_title),
                R.drawable.ic_fluent_reply_24_regular,
                ContextCompat.getColor(this, R.color.bottomsheet_horizontal_icon_tint),
                disabled = false
            ),
            SheetItem(
                R.id.bottom_sheet_item_forward,
                getString(R.string.bottom_sheet_item_forward_title),
                R.drawable.ic_fluent_forward_24_regular,
                ContextCompat.getColor(this, R.color.bottomsheet_horizontal_icon_tint),
                disabled = true
            ),
            SheetItem(
                R.id.bottom_sheet_item_delete,
                getString(R.string.bottom_sheet_item_delete_title),
                R.drawable.ic_delete_24_regular,
                ContextCompat.getColor(this, R.color.bottomsheet_horizontal_icon_tint),
                disabled = false
            ),
            SheetItem(
                R.id.bottom_sheet_item_delete,
                getString(R.string.bottom_sheet_item_delete_title),
                R.drawable.ic_delete_24_regular,
                ContextCompat.getColor(this, R.color.bottomsheet_horizontal_icon_tint),
                disabled = true
            ),
            SheetItem(
                R.id.bottom_sheet_item_delete,
                getString(R.string.bottom_sheet_item_delete_title),
                R.drawable.ic_delete_24_regular,
                ContextCompat.getColor(this, R.color.bottomsheet_horizontal_icon_tint),
                disabled = false
            )
        )

        mHorizontalSheet2 = arrayListOf(
            SheetItem(
                R.id.bottom_sheet_item_flag,
                getString(R.string.bottom_sheet_item_flag_title),
                R.drawable.ic_fluent_flag_24_regular,
                ContextCompat.getColor(this, R.color.bottomsheet_horizontal_icon_tint),
                disabled = true
            ),
            SheetItem(
                R.id.bottom_sheet_item_alarm,
                getString(R.string.bottom_sheet_item_custom_image),
                dummyBitmap(),
                disabled = false
            ),
            SheetItem(
                R.id.persistent_sheet_item_add_view,
                getString(R.string.persistent_sheet_item_add_remove_view),
                R.drawable.ic_add_circle_28_fill,
                ContextCompat.getColor(this, R.color.bottomsheet_horizontal_icon_tint),
                disabled = true
            ),
            SheetItem(
                R.id.persistent_sheet_item_change_height_button,
                getString(R.string.persistent_sheet_item_change_collapsed_height),
                R.drawable.ic_vertical_align_center_28_fill,
                ContextCompat.getColor(this, R.color.bottomsheet_horizontal_icon_tint),
                disabled = false
            ),
            SheetItem(
                R.id.bottom_sheet_item_reply,
                getString(R.string.bottom_sheet_item_reply_title),
                R.drawable.ic_fluent_reply_24_regular,
                ContextCompat.getColor(this, R.color.bottomsheet_horizontal_icon_tint),
                disabled = true
            )
        )


        persistentSheetContentBinding.sheetHorizontalItemList1.createHorizontalItemLayout(
            mHorizontalSheet
        )
        persistentSheetContentBinding.sheetHorizontalItemList1.sheetItemClickListener = this
        persistentSheetContentBinding.sheetHorizontalItemList1.setTextAppearance(R.style.TextAppearance_FluentUI_HorizontalListItemTitle)

        persistentSheetContentBinding.sheetHorizontalItemList2.createHorizontalItemLayout(
            mHorizontalSheet2
        )
        persistentSheetContentBinding.sheetHorizontalItemList2.sheetItemClickListener = this
        persistentSheetContentBinding.sheetHorizontalItemList2.setTextAppearance(R.style.TextAppearance_FluentUI_HorizontalListItemTitle)

        val marginBetweenView =
            resources.getDimension(R.dimen.fluentui_persistent_horizontal_item_right_margin).toInt()
        val horizontalListAdapter = SheetHorizontalItemAdapter(
            this,
            arrayListOf(
                SheetItem(
                    R.id.persistent_sheet_item_create_new_folder,
                    getString(R.string.persistent_sheet_item_create_new_folder_title),
                    R.drawable.ic_create_new_folder_24_filled,
                    ContextCompat.getColor(this, R.color.bottomsheet_horizontal_icon_tint),
                    disabled = true
                ),
                SheetItem(
                    R.id.persistent_sheet_item_edit,
                    getString(R.string.persistent_sheet_item_edit_title),
                    R.drawable.ic_edit_24_filled,
                    ContextCompat.getColor(this, R.color.bottomsheet_horizontal_icon_tint),
                    disabled = false
                ),
                SheetItem(
                    R.id.persistent_sheet_item_save,
                    getString(R.string.persistent_sheet_item_save_title),
                    R.drawable.ic_save_24_filled,
                    ContextCompat.getColor(this, R.color.bottomsheet_horizontal_icon_tint),
                    disabled = true
                ),
                SheetItem(
                    R.id.persistent_sheet_item_zoom_in,
                    getString(R.string.persistent_sheet_item_zoom_in_title),
                    R.drawable.ic_zoom_in_24_filled,
                    ContextCompat.getColor(this, R.color.bottomsheet_horizontal_icon_tint),
                ),
                SheetItem(
                    R.id.persistent_sheet_item_zoom_out,
                    getString(R.string.persistent_sheet_item_zoom_out_title),
                    R.drawable.ic_zoom_out_24_filled,
                    ContextCompat.getColor(this, R.color.bottomsheet_horizontal_icon_tint),
                    disabled = true
                )
            ), 0, marginBetweenView, drawerTint = ContextCompat.getColor(this, R.color.bottomsheet_horizontal_icon_tint).toInt()
        )
        horizontalListAdapter.mOnSheetItemClickListener = this
        persistentSheetContentBinding.sheetHorizontalItemList3.layoutManager =
            LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, false)
        persistentSheetContentBinding.sheetHorizontalItemList3.adapter = horizontalListAdapter


        val verticalListAdapter = BottomSheetAdapter(
            this,
            arrayListOf(
                BottomSheetItem(
                    R.id.bottom_sheet_item_camera,
                    R.drawable.ic_camera_24_regular,
                    getString(R.string.bottom_sheet_item_camera_title),
                    getString(R.string.bottom_sheet_item_camera_subtitle),
                    disabled = false,
                    accessoryBitmap = bitmap1
                ),
                BottomSheetItem(
                    R.id.bottom_sheet_item_gallery,
                    R.drawable.ic_image_library_24_regular,
                    getString(R.string.bottom_sheet_item_gallery_title),
                    getString(R.string.bottom_sheet_item_gallery_subtitle),
                    disabled = true,
                    accessoryBitmap = bitmap2
                ),
                BottomSheetItem(
                    R.id.bottom_sheet_item_videos,
                    R.drawable.ic_video_24_regular,
                    getString(R.string.bottom_sheet_item_videos_title),
                    getString(R.string.bottom_sheet_item_videos_subtitle),
                    accessoryBitmap = bitmap3
                ),
                BottomSheetItem(
                    R.id.bottom_sheet_item_manage,
                    R.drawable.ic_settings_24_regular,
                    getString(R.string.bottom_sheet_item_manage_title),
                    getString(R.string.bottom_sheet_item_manage_subtitle),
                    disabled = true
                )
            ), 0
        )
        verticalListAdapter.onBottomSheetItemClickListener = this
        persistentSheetContentBinding.sheetVerticalItemList1.adapter = verticalListAdapter

        persistentBottomSheetBinding.showPersistentBottomSheetButton.setOnClickListener {
            currentSheet.expand(focusDrawerHandle = true)
        }

        persistentBottomSheetBinding.collapsePersistentBottomSheetButton.setOnClickListener {
            if (currentSheet.getBottomSheetBehaviour().state == BottomSheetBehavior.STATE_HIDDEN) {
                currentSheet.show(focusDrawerHandle = true)
                persistentBottomSheetBinding.collapsePersistentBottomSheetButton.text =
                    getString(R.string.collapse_persistent_sheet_button)
            } else {
                currentSheet.hide()
                persistentBottomSheetBinding.collapsePersistentBottomSheetButton.text =
                    getString(R.string.show_persistent_sheet_button)
            }
        }

        persistentBottomSheetBinding.toggleBottomSheet.setOnClickListener {
            if (defaultPersistentBottomSheet.visibility == View.GONE) {
                currentSheet = defaultPersistentBottomSheet
                persistentBottomSheetDemo.visibility = View.GONE
                persistentBottomSheetBinding.setOneLineContent.visibility = View.VISIBLE
                showDefaultBottomSheet()
            } else {
                currentSheet = persistentBottomSheetDemo
                defaultPersistentBottomSheet.visibility = View.GONE
                persistentBottomSheetBinding.setOneLineContent.visibility = View.GONE
            }
            currentSheet.visibility = View.VISIBLE
            currentSheet.setDrawerHandleContentDescription(
                getString(R.string.drawer_content_desc_collapse_state),
                getString(R.string.drawer_content_desc_expand_state)
            )
        }

        persistentBottomSheetBinding.setOneLineContent.setOnClickListener {
            if (defaultPersistentBottomSheet.visibility == View.VISIBLE) {
                PersistentBottomSheet.DefaultContentBuilder(this)
                    .addHorizontalGridItemList(mHorizontalSheet2.subList(0, 5))
                    .buildWith(defaultPersistentBottomSheet)
                currentSheet.showPersistentSheet()
            }
        }

        //initially
        currentSheet = persistentBottomSheetDemo
        persistentBottomSheetBinding.setOneLineContent.visibility = View.GONE

        // scroll behaviour example
        scrollView.viewTreeObserver.addOnScrollChangedListener(ViewTreeObserver.OnScrollChangedListener {
            val scrollY: Int = scrollView.scrollY
            toggleBottomSheetVisibility(scrollY)
        })
        currentSheet.getBottomSheetBehaviour().isHideable = true

        persistentBottomSheetBinding.toggleDisableAllItems.setOnClickListener {
            for (item in mHorizontalSheet)
                item.disabled = !item.disabled
            for (item in mHorizontalSheet2)
                item.disabled = !item.disabled

            currentSheet.refreshSheetContent()
        }
    }

    private fun toggleBottomSheetVisibility(scrollY: Int) {
        if (scrollY > scrollView.maxScrollAmount / 2) {
            showHideBottomSheet(false)
        } else {
            showHideBottomSheet(true)
        }
    }

    private fun showHideBottomSheet(show: Boolean) {
        if (show && currentSheet.getBottomSheetBehaviour().state == BottomSheetBehavior.STATE_HIDDEN) {
            currentSheet.show()
            persistentBottomSheetBinding.collapsePersistentBottomSheetButton.text =
                getString(R.string.collapse_persistent_sheet_button)
        } else if (!show) {
            currentSheet.hide()
            persistentBottomSheetBinding.collapsePersistentBottomSheetButton.text =
                getString(R.string.show_persistent_sheet_button)
        }
    }

    private fun showDefaultBottomSheet() {

        defaultPersistentBottomSheet.setItemClickListener(this)
        PersistentBottomSheet.DefaultContentBuilder(this)
            .addHorizontalItemList(mHorizontalSheet2)
            .addDivider()
            .addHorizontalGridItemList(mHorizontalSheet)
            .addDivider()
            .addVerticalItemList(mHorizontalSheet, getString(R.string.fluentui_bottom_sheet_header))
            .addVerticalItemList(mHorizontalSheet, getString(R.string.fluentui_bottom_sheet_header))
            .buildWith(defaultPersistentBottomSheet)

    }


    override fun onSheetItemClick(item: SheetItem) {
        when (item.id) {
            R.id.persistent_sheet_item_add_view -> {
                if (currentSheet == defaultPersistentBottomSheet) {
                    mHorizontalSheet.addAll(mHorizontalSheet2)
                    mHorizontalSheet2.add(mHorizontalSheet2[0])
                    mHorizontalSheet2.removeAt(0)
                    currentSheet.refreshSheetContent()
                    return
                } else if (!this::view.isInitialized || view.parent == null) {
                    view = TextView(this)
                    view.text = getString(R.string.new_view)
                    view.height = 200
                    view.gravity = Gravity.CENTER
                    persistentBottomSheetDemo.addView(
                        view,
                        1,
                        persistentSheetContentBinding.demoBottomSheet
                    )
                } else {
                    persistentBottomSheetDemo.removeView(
                        view,
                        persistentSheetContentBinding.demoBottomSheet
                    )
                }
            }
            R.id.persistent_sheet_item_change_height_button -> {
                if (isBack)
                    persistentBottomSheetDemo.changePeekHeight(-400)
                else
                    persistentBottomSheetDemo.changePeekHeight(400)
                isBack = !isBack
            }


            R.id.bottom_sheet_item_flag -> {
                showSnackbar(resources.getString(R.string.bottom_sheet_item_flag_toast))
                item.drawable =
                    if (item.drawable == R.drawable.ic_fluent_flag_24_regular) R.drawable.ic_flag_24_filled else R.drawable.ic_fluent_flag_24_regular
                item.contentDescription = resources.getString(R.string.bottom_sheet_item_flag_toast)
                currentSheet.refreshSheetContent()
                return
            }
            R.id.bottom_sheet_item_reply -> showSnackbar(resources.getString(R.string.bottom_sheet_item_reply_toast))
            R.id.bottom_sheet_item_forward -> showSnackbar(resources.getString(R.string.bottom_sheet_item_forward_toast))
            R.id.bottom_sheet_item_delete -> showSnackbar(resources.getString(R.string.bottom_sheet_item_delete_toast))

            R.id.persistent_sheet_item_create_new_folder -> showSnackbar(resources.getString(R.string.persistent_sheet_item_create_new_folder_toast))
            R.id.persistent_sheet_item_edit -> showSnackbar(resources.getString(R.string.persistent_sheet_item_edit_toast))
            R.id.persistent_sheet_item_save -> showSnackbar(resources.getString(R.string.persistent_sheet_item_save_toast))
            R.id.persistent_sheet_item_zoom_in -> showSnackbar(resources.getString(R.string.persistent_sheet_item_zoom_in_toast))
            R.id.persistent_sheet_item_zoom_out -> showSnackbar(resources.getString(R.string.persistent_sheet_item_zoom_out_toast))
        }

    }

    override fun onBottomSheetItemClick(item: BottomSheetItem) {
        when (item.id) {
            R.id.bottom_sheet_item_camera -> {
                showSnackbar(resources.getString(R.string.bottom_sheet_item_camera_toast))
            }
            R.id.bottom_sheet_item_gallery -> showSnackbar(resources.getString(R.string.bottom_sheet_item_gallery_toast))
            R.id.bottom_sheet_item_videos -> showSnackbar(resources.getString(R.string.bottom_sheet_item_videos_toast))
            R.id.bottom_sheet_item_manage -> showSnackbar(resources.getString(R.string.bottom_sheet_item_manage_toast))
        }
    }

    private fun showSnackbar(message: String) {
        Snackbar.make(demoBinding.rootView, message).show()
    }

    private fun dummyBitmap(): Bitmap {
        val option = BitmapFactory.Options()
        option.outHeight = resources.getDimensionPixelSize(R.dimen.image_size)
        option.outWidth = resources.getDimensionPixelSize(R.dimen.image_size)
        return Bitmap.createScaledBitmap(
            BitmapFactory.decodeResource(
                resources,
                R.drawable.avatar_allan_munger
            ), option.outWidth, option.outHeight, false
        )
    }

    override fun onBackPressed() {
        if (currentSheet.getBottomSheetBehaviour().state == BottomSheetBehavior.STATE_EXPANDED) {
            currentSheet.collapse()
        } else {
            super.onBackPressed()
        }
    }

}
```

## File: src/main/java/com/microsoft/fluentuidemo/demos/PersonaChipViewActivity.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentuidemo.demos

import android.os.Bundle
import android.view.LayoutInflater
import android.view.ViewGroup
import android.widget.LinearLayout
import com.microsoft.fluentui.persona.PersonaChipView
import com.microsoft.fluentui.snackbar.Snackbar
import com.microsoft.fluentuidemo.DemoActivity
import com.microsoft.fluentuidemo.R
import com.microsoft.fluentuidemo.databinding.ActivityPersonaChipViewBinding

class PersonaChipViewActivity : DemoActivity() {

    private lateinit var personaChipBinding: ActivityPersonaChipViewBinding

    private val personaChipViewListener = object : PersonaChipView.Listener {
        override fun onSelected(selected: Boolean) {}

        override fun onClicked() {
            Snackbar.make(
                demoBinding.rootView,
                getString(R.string.persona_chip_example_click),
                Snackbar.LENGTH_SHORT
            ).show()
        }
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        personaChipBinding = ActivityPersonaChipViewBinding.inflate(
            LayoutInflater.from(container.context),
            container,
            true
        )

        createDisabledPersonaChip()
        personaChipBinding.personaChipExampleBasic.listener = personaChipViewListener
        personaChipBinding.personaChipExampleNoIcon.listener = personaChipViewListener
        personaChipBinding.personaChipExampleError.listener = personaChipViewListener
        personaChipBinding.personaChipExampleError.hasError = true
    }

    private fun createDisabledPersonaChip() {
        val personaName = resources.getString(R.string.persona_name_kat_larsson)
        val personaChipView = PersonaChipView(this)
        personaChipView.isEnabled = false
        personaChipView.name = personaName
        personaChipView.email = resources.getString(R.string.persona_email_kat_larsson)
        personaChipView.layoutParams = LinearLayout.LayoutParams(
            LinearLayout.LayoutParams.WRAP_CONTENT,
            ViewGroup.LayoutParams.WRAP_CONTENT
        )
        personaChipView.avatarContentDescriptionLabel = personaName
        personaChipBinding.personaChipLayout.addView(personaChipView)
    }
}
```

## File: src/main/java/com/microsoft/fluentuidemo/demos/PersonaListViewActivity.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentuidemo.demos

import android.os.Bundle
import android.view.LayoutInflater
import com.microsoft.fluentui.persona.IPersona
import com.microsoft.fluentui.persona.PersonaListView
import com.microsoft.fluentui.snackbar.Snackbar
import com.microsoft.fluentuidemo.DemoActivity
import com.microsoft.fluentuidemo.R
import com.microsoft.fluentuidemo.databinding.ActivityPersonaListViewBinding
import com.microsoft.fluentuidemo.util.createPersonaList

class PersonaListViewActivity : DemoActivity() {

    override val contentNeedsScrollableContainer: Boolean
        get() = false

    private lateinit var personaListBinding: ActivityPersonaListViewBinding
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        personaListBinding = ActivityPersonaListViewBinding.inflate(
            LayoutInflater.from(container.context),
            container,
            true
        )

        demoBinding.appBar.scrollTargetViewId = R.id.persona_list_view_example

        personaListBinding.personaListViewExample.personas = createPersonaList(this)
        personaListBinding.personaListViewExample.onItemClickedListener =
            object : PersonaListView.OnItemClickedListener {
                override fun onItemClicked(persona: IPersona) {
                    Snackbar.make(
                        demoBinding.rootView,
                        "You clicked on the cell for ${persona.name}, ${persona.subtitle}",
                        Snackbar.LENGTH_SHORT
                    ).show()
                }
            }
    }
}
```

## File: src/main/java/com/microsoft/fluentuidemo/demos/PersonaViewActivity.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentuidemo.demos

import android.os.Bundle
import android.view.LayoutInflater
import android.view.ViewGroup
import android.widget.LinearLayout
import com.microsoft.fluentui.persona.AvatarSize
import com.microsoft.fluentui.persona.PersonaView
import com.microsoft.fluentuidemo.DemoActivity
import com.microsoft.fluentuidemo.R
import com.microsoft.fluentuidemo.databinding.ActivityPersonaViewBinding

class PersonaViewActivity : DemoActivity() {

    private lateinit var personaBinding: ActivityPersonaViewBinding

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        personaBinding = ActivityPersonaViewBinding.inflate(
            LayoutInflater.from(container.context),
            container,
            true
        )

        // Add Persona programmatically
        createNewPersonaFromCode()
    }

    private fun createNewPersonaFromCode() {
        val personaName = resources.getString(R.string.persona_name_mauricio_august)
        val personaView = PersonaView(this)
        personaView.avatarSize = AvatarSize.SMALL
        personaView.name = personaName
        personaView.email = resources.getString(R.string.persona_email_mauricio_august)
        personaView.avatarContentDescriptionLabel = personaName
        personaView.layoutParams = LinearLayout.LayoutParams(
            LinearLayout.LayoutParams.WRAP_CONTENT,
            ViewGroup.LayoutParams.WRAP_CONTENT
        )
        personaBinding.personaLayout.addView(personaView)
    }
}
```

## File: src/main/java/com/microsoft/fluentuidemo/demos/PopupMenuActivity.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentuidemo.demos

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import com.microsoft.fluentui.popupmenu.PopupMenu
import com.microsoft.fluentui.popupmenu.PopupMenuItem
import com.microsoft.fluentui.snackbar.Snackbar
import com.microsoft.fluentuidemo.DemoActivity
import com.microsoft.fluentuidemo.R
import com.microsoft.fluentuidemo.databinding.ActivityPopupMenuBinding

class PopupMenuActivity : DemoActivity(), View.OnClickListener {
    companion object {
        private const val SINGLE_CHECKED_ITEM_ID = "singleCheckedItemId"
        private const val ALL_CHECKED_ITEMS = "allCheckedItems"
    }

    override val contentNeedsScrollableContainer: Boolean
        get() = false

    private var singleCheckedItemId: Int = -1
    private var allCheckedItems: ArrayList<PopupMenuItem>? = null
    private lateinit var popupMenuBinding: ActivityPopupMenuBinding

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        popupMenuBinding = ActivityPopupMenuBinding.inflate(
            LayoutInflater.from(container.context),
            container,
            true
        )

        popupMenuBinding.noCheck.setOnClickListener(this)
        popupMenuBinding.noCheck2.setOnClickListener(this)
        popupMenuBinding.singleCheck.setOnClickListener(this)
        popupMenuBinding.allCheck.setOnClickListener(this)

        savedInstanceState?.let {
            singleCheckedItemId = it.getInt(SINGLE_CHECKED_ITEM_ID)
            allCheckedItems = it.getParcelableArrayList(ALL_CHECKED_ITEMS)
        }
    }

    override fun onSaveInstanceState(outState: Bundle) {
        super.onSaveInstanceState(outState)

        outState.putInt(SINGLE_CHECKED_ITEM_ID, singleCheckedItemId)
        outState.putParcelableArrayList(ALL_CHECKED_ITEMS, allCheckedItems)
    }

    override fun onClick(anchorView: View) {
        when (anchorView) {
            popupMenuBinding.noCheck -> showPopupNoCheck(anchorView)
            popupMenuBinding.noCheck2 -> showPopupNoCheck(anchorView)
            popupMenuBinding.singleCheck -> showPopupSingleCheck(anchorView)
            popupMenuBinding.allCheck -> showPopupAllCheck(anchorView)
        }
    }

    private fun showPopupNoCheck(anchorView: View) {
        val popupMenuItems = arrayListOf(
            PopupMenuItem(R.id.popup_menu_item_share, getString(R.string.popup_menu_item_share), roleDescription = "Button"),
            PopupMenuItem(R.id.popup_menu_item_follow, getString(R.string.popup_menu_item_follow), roleDescription = "Button"),
            PopupMenuItem(
                R.id.popup_menu_item_invite_people,
                getString(R.string.popup_menu_item_invite_people),
                roleDescription = "Button"
            ),
            PopupMenuItem(
                R.id.popup_menu_item_refresh_page,
                getString(R.string.popup_menu_item_refresh_page),
                roleDescription = "Button"
            ),
            PopupMenuItem(
                R.id.popup_menu_item_open_in_browser,
                getString(R.string.popup_menu_item_open_in_browser),
                roleDescription = "Button"
            ),
            PopupMenuItem(
                R.id.popup_menu_item_multiline,
                getString(R.string.popup_menu_item_multiline),
                roleDescription = "Button"
            )
        )

        val onPopupMenuItemClickListener = object : PopupMenuItem.OnClickListener {
            override fun onPopupMenuItemClicked(popupMenuItem: PopupMenuItem) {
                showSnackbar(popupMenuItem)
            }
        }

        showPopupMenu(
            anchorView,
            popupMenuItems,
            PopupMenu.ItemCheckableBehavior.NONE,
            onPopupMenuItemClickListener
        )
    }

    private fun showPopupSingleCheck(anchorView: View) {
        val popupMenuItems = arrayListOf(
            PopupMenuItem(
                R.id.popup_menu_item_all_news,
                getString(R.string.popup_menu_item_all_news),
                showDividerBelow = true
            ),
            PopupMenuItem(
                R.id.popup_menu_item_saved_news,
                getString(R.string.popup_menu_item_saved_news)
            ),
            PopupMenuItem(
                R.id.popup_menu_item_news_from_sites,
                getString(R.string.popup_menu_item_news_from_sites)
            ),
            PopupMenuItem(
                R.id.popup_menu_item_contoso_travel,
                getString(R.string.popup_menu_item_contoso_travel)
            )
        )

        popupMenuItems.forEach { popupMenuItem ->
            popupMenuItem.isChecked = popupMenuItem.id == singleCheckedItemId
        }

        val onPopupMenuItemClickListener = object : PopupMenuItem.OnClickListener {
            override fun onPopupMenuItemClicked(popupMenuItem: PopupMenuItem) {
                showSnackbar(popupMenuItem)
                singleCheckedItemId = popupMenuItem.id
            }
        }

        showPopupMenu(
            anchorView,
            popupMenuItems,
            PopupMenu.ItemCheckableBehavior.SINGLE,
            onPopupMenuItemClickListener
        )
    }

    private fun showPopupAllCheck(anchorView: View) {
        if (allCheckedItems == null)
            allCheckedItems = arrayListOf(
                PopupMenuItem(
                    R.id.popup_menu_item_notify_outside,
                    getString(R.string.popup_menu_item_notify_outside),
                    R.drawable.ic_sync_24_filled,
                ),
                PopupMenuItem(
                    R.id.popup_menu_item_notify_inactive,
                    getString(R.string.popup_menu_item_notify_inactive),
                    R.drawable.ic_clock_24_filled
                )
            )

        val onPopupMenuItemClickListener = object : PopupMenuItem.OnClickListener {
            override fun onPopupMenuItemClicked(popupMenuItem: PopupMenuItem) {
                showSnackbar(popupMenuItem)
            }
        }

        showPopupMenu(
            anchorView,
            allCheckedItems!!,
            PopupMenu.ItemCheckableBehavior.ALL,
            onPopupMenuItemClickListener
        )
    }

    private fun showPopupMenu(
        anchorView: View,
        items: ArrayList<PopupMenuItem>,
        itemCheckableBehavior: PopupMenu.ItemCheckableBehavior,
        onItemClickListener: PopupMenuItem.OnClickListener
    ) {
        val popupMenu = PopupMenu(this, anchorView, items, itemCheckableBehavior)
        popupMenu.onItemClickListener = onItemClickListener
        popupMenu.show()
    }

    private fun showSnackbar(popupMenuItem: PopupMenuItem) {
        Snackbar.make(
            demoBinding.rootView,
            "${getString(R.string.popup_menu_item_clicked)} ${popupMenuItem.title}"
        ).show()
    }
}
```

## File: src/main/java/com/microsoft/fluentuidemo/demos/ProgressActivity.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentuidemo.demos

import android.os.Bundle
import android.os.Handler
import android.view.LayoutInflater
import com.microsoft.fluentuidemo.DemoActivity
import com.microsoft.fluentuidemo.R
import com.microsoft.fluentuidemo.databinding.ActivityProgressBinding

class ProgressActivity : DemoActivity() {

    private lateinit var progressBinding: ActivityProgressBinding

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        progressBinding =
            ActivityProgressBinding.inflate(LayoutInflater.from(container.context), container, true)

        var progressStatus = 0
        val handler = Handler()

        // Updates linear determinate progress
        Thread {
            while (progressStatus < 100) {
                progressStatus++
                handler.post {
                    progressBinding.progressBarLinearDeterminate.progress = progressStatus
                }
                Thread.sleep(20)
                if (progressStatus == 100)
                    progressStatus = 0
            }
        }.start()
    }
}
```

## File: src/main/java/com/microsoft/fluentuidemo/demos/SnackbarActivity.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentuidemo.demos

import android.graphics.BitmapFactory
import android.graphics.Color
import android.graphics.PorterDuff
import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.widget.ImageView
import androidx.core.content.ContextCompat
import androidx.core.graphics.drawable.RoundedBitmapDrawableFactory
import com.microsoft.fluentui.persona.AvatarSize
import com.microsoft.fluentui.persona.AvatarView
import com.microsoft.fluentui.progress.ProgressBar
import com.microsoft.fluentui.snackbar.Snackbar
import com.microsoft.fluentui.util.createImageView
import com.microsoft.fluentuidemo.DemoActivity
import com.microsoft.fluentuidemo.R
import com.microsoft.fluentuidemo.databinding.ActivitySnackbarBinding
import java.util.*

class SnackbarActivity : DemoActivity(), View.OnClickListener {

    private lateinit var snackbarBinding: ActivitySnackbarBinding

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        snackbarBinding =
            ActivitySnackbarBinding.inflate(LayoutInflater.from(container.context), container, true)

        snackbarBinding.btnSnackbarSingleLine.setOnClickListener(this)
        snackbarBinding.btnSnackbarSingleLineCustomView.setOnClickListener(this)
        snackbarBinding.btnSnackbarSingleLineAction.setOnClickListener(this)
        snackbarBinding.btnSnackbarSingleLineActionCustomView.setOnClickListener(this)
        snackbarBinding.btnSnackbarSingleLineCustomTextColor.setOnClickListener(this)

        snackbarBinding.btnSnackbarMultiline.setOnClickListener(this)
        snackbarBinding.btnSnackbarMultilineCustomView.setOnClickListener(this)
        snackbarBinding.btnSnackbarMultilineAction.setOnClickListener(this)
        snackbarBinding.btnSnackbarMultilineActionCustomView.setOnClickListener(this)
        snackbarBinding.btnSnackbarMultilineLongAction.setOnClickListener(this)

        snackbarBinding.btnSnackbarAnnouncement.setOnClickListener(this)
        snackbarBinding.btnSnackbarPrimary.setOnClickListener(this)
        snackbarBinding.btnSnackbarLight.setOnClickListener(this)
        snackbarBinding.btnSnackbarWarning.setOnClickListener(this)
        snackbarBinding.btnSnackbarDanger.setOnClickListener(this)
    }

    override fun onClick(v: View) {
        val avatarView = AvatarView(this)
        avatarView.avatarSize = AvatarSize.MEDIUM
        avatarView.name = resources.getString(R.string.persona_name_johnie_mcconnell)

        val thumbnailImageView = ImageView(this)
        val thumbnailBitmap =
            BitmapFactory.decodeResource(resources, R.drawable.thumbnail_example_32)
        val roundedCornerThumbnailDrawable =
            RoundedBitmapDrawableFactory.create(resources, thumbnailBitmap)
        roundedCornerThumbnailDrawable.cornerRadius =
            resources.getDimension(R.dimen.fluentui_snackbar_background_corner_radius)
        thumbnailImageView.setImageDrawable(roundedCornerThumbnailDrawable)

        when (v.id) {
            // Single line

            R.id.btn_snackbar_single_line ->
                Snackbar.make(demoBinding.rootView, getString(R.string.snackbar_single_line))
                    .show()

            R.id.btn_snackbar_single_line_custom_view -> {
                val circularProgress =
                    ProgressBar(this, null, 0, R.style.Widget_FluentUI_CircularProgress_Small)
                circularProgress.indeterminateDrawable.setColorFilter(
                    ContextCompat.getColor(this, R.color.snackbar_circular_progress_drawable),
                    PorterDuff.Mode.SRC_IN
                )

                Snackbar.make(
                    demoBinding.rootView,
                    getString(R.string.snackbar_single_line),
                    Snackbar.LENGTH_LONG
                )
                    .setCustomView(circularProgress)
                    .show()
            }

            R.id.btn_snackbar_single_line_action ->
                Snackbar.make(demoBinding.rootView, getString(R.string.snackbar_single_line))
                    .setAction(getString(R.string.snackbar_action), View.OnClickListener {
                        // handle click here
                    })
                    .show()

            R.id.btn_snackbar_single_line_action_custom_view ->
                Snackbar.make(demoBinding.rootView, getString(R.string.snackbar_single_line))
                    .setCustomView(avatarView, Snackbar.CustomViewSize.MEDIUM)
                    .setAction(getString(R.string.snackbar_action), View.OnClickListener {
                        // handle click here
                    })
                    .show()

            R.id.btn_snackbar_single_line_custom_text_color ->
                Snackbar.make(demoBinding.rootView, getString(R.string.snackbar_single_line))
                    .setAction(getString(R.string.snackbar_action), View.OnClickListener {
                        // handle click here
                    })
                    .setTextColor(Color.parseColor("#FF0000"))
                    .setActionTextColor(Color.parseColor("#FF0000"))
                    .show()

            // Multiline

            R.id.btn_snackbar_multiline ->
                Snackbar.make(
                    demoBinding.rootView,
                    getString(R.string.snackbar_multiline),
                    Snackbar.LENGTH_LONG
                ).show()

            R.id.btn_snackbar_multiline_custom_view -> {
                val checkmarkIconImageView = createImageView(
                    R.drawable.ms_ic_checkmark_24_filled,
                    ContextCompat.getColor(this, R.color.fluentui_white)
                )
                Snackbar.make(
                    demoBinding.rootView,
                    getString(R.string.snackbar_multiline),
                    Snackbar.LENGTH_LONG
                )
                    .setCustomView(checkmarkIconImageView)
                    .show()
            }

            R.id.btn_snackbar_multiline_action -> {
                val snackbar = Snackbar.make(
                    demoBinding.rootView,
                    getString(R.string.snackbar_multiline),
                    Snackbar.LENGTH_INDEFINITE
                )
                    .setAction(getString(R.string.snackbar_action), View.OnClickListener {
                        // handle click here
                    })

                snackbar.show()

                Timer().schedule(object : TimerTask() {
                    override fun run() {
                        snackbar.view.post {
                            snackbar.setText(getString(R.string.snackbar_description_updated))
                        }
                    }
                }, 2000)
            }

            R.id.btn_snackbar_multiline_action_custom_view ->
                Snackbar.make(demoBinding.rootView, getString(R.string.snackbar_multiline))
                    .setCustomView(thumbnailImageView, Snackbar.CustomViewSize.MEDIUM)
                    .setAction(getString(R.string.snackbar_action), View.OnClickListener {
                        // handle click here
                    })
                    .show()

            R.id.btn_snackbar_multiline_long_action ->
                Snackbar.make(demoBinding.rootView, getString(R.string.snackbar_multiline))
                    .setAction(getString(R.string.snackbar_action_long), View.OnClickListener {
                        // handle click here
                    })
                    .show()

            // Announcement style

            R.id.btn_snackbar_announcement -> {
                val announcementIconImageView = ImageView(this)
                announcementIconImageView.setImageDrawable(
                    ContextCompat.getDrawable(
                        this,
                        R.drawable.ic_gift_24_filled
                    )
                )

                Snackbar.make(
                    demoBinding.rootView,
                    getString(R.string.snackbar_announcement),
                    style = Snackbar.Style.ANNOUNCEMENT
                )
                    .setCustomView(announcementIconImageView)
                    .setAction(getString(R.string.snackbar_action), View.OnClickListener {
                        // handle click here
                    })
                    .show()
            }

            // Primary style

            R.id.btn_snackbar_primary -> {
                Snackbar.make(
                    demoBinding.rootView,
                    getString(R.string.snackbar_primary),
                    style = Snackbar.Style.PRIMARY
                )
                    .setAction(getString(R.string.snackbar_action), View.OnClickListener {
                        // handle click here
                    })
                    .show()
            }

            // Light style

            R.id.btn_snackbar_light -> {
                Snackbar.make(
                    demoBinding.rootView,
                    getString(R.string.snackbar_light),
                    style = Snackbar.Style.LIGHT
                )
                    .setAction(getString(R.string.snackbar_action), View.OnClickListener {
                        // handle click here
                    })
                    .show()
            }

            // Warning style

            R.id.btn_snackbar_warning -> {
                Snackbar.make(
                    demoBinding.rootView,
                    getString(R.string.snackbar_warning),
                    style = Snackbar.Style.WARNING
                )
                    .setAction(getString(R.string.snackbar_action), View.OnClickListener {
                        // handle click here
                    })
                    .show()
            }

            // Danger style

            R.id.btn_snackbar_danger -> {
                Snackbar.make(
                    demoBinding.rootView,
                    getString(R.string.snackbar_danger),
                    style = Snackbar.Style.DANGER
                )
                    .setAction(getString(R.string.snackbar_action), View.OnClickListener {
                        // handle click here
                    })
                    .show()
            }
        }
    }
}
```

## File: src/main/java/com/microsoft/fluentuidemo/demos/TabLayoutActivity.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentuidemo.demos

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.core.content.ContextCompat
import androidx.viewpager.widget.PagerAdapter
import com.microsoft.fluentui.tablayout.TabLayout
import com.microsoft.fluentui.tablayout.TabLayout.TabType.*
import com.microsoft.fluentuidemo.DemoActivity
import com.microsoft.fluentuidemo.R
import com.microsoft.fluentuidemo.databinding.ActivityTabLayoutBinding

class TabLayoutActivity : DemoActivity() {

    private var adapter: TabPagerAdapter? = null
    private lateinit var tabLayout: com.google.android.material.tabs.TabLayout
    private lateinit var tabLayoutBinding: ActivityTabLayoutBinding

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        tabLayoutBinding = ActivityTabLayoutBinding.inflate(
            LayoutInflater.from(container.context),
            container,
            true
        )

        tabLayout = tabLayoutBinding.demoTabLayout.tabLayout ?: return
        adapter = TabPagerAdapter()
        adapter?.setData(createPageList())
        adapter?.setTitle(createPageTitleList())
        tabLayoutBinding.viewPager.adapter = adapter

        tabLayoutBinding.showTabStandardTwoSegment.setOnClickListener(this::clickListener)
        tabLayoutBinding.showTabStandardThreeSegment.setOnClickListener(this::clickListener)
        tabLayoutBinding.showTabStandardFourSegment.setOnClickListener(this::clickListener)
        tabLayoutBinding.showTabStandardWithPager.setOnClickListener(this::clickListener)
        tabLayoutBinding.showTabSwitch.setOnClickListener(this::clickListener)
        tabLayoutBinding.showTabPills.setOnClickListener(this::clickListener)
    }

    private fun clickListener(v: View) {
        tabLayoutBinding.demoTabLayout.visibility = View.VISIBLE
        tabLayout.removeAllTabs()
        tabLayout.setupWithViewPager(null)

        var tabType: TabLayout.TabType = STANDARD
        when (v.id) {
            R.id.show_tab_standard_two_segment -> {
                setTabs(2)
            }
            R.id.show_tab_standard_three_segment -> {
                setTabs(3)
            }
            R.id.show_tab_standard_four_segment -> {
                setTabs(4)
            }
            R.id.show_tab_switch -> {
                setTabs(2)
                tabType = SWITCH
            }
            R.id.show_tab_pills -> {
                setTabs(6)
                tabType = PILLS
            }
            R.id.show_tab_standard_with_pager -> {
                tabLayout.setupWithViewPager(tabLayoutBinding.viewPager)
            }
        }
        tabLayoutBinding.demoTabLayout.tabType = tabType
    }

    private fun setTabs(numTabs: Int) {
        for (i in 0 until numTabs) {
            tabLayout.addTab(tabLayout.newTab().setText("Label " + (i + 1)))
        }
    }

    private fun createPageTitleList(): List<String> {
        return listOf("Page 1", "Page 2", "Page 3")
    }

    private fun createPageList(): List<View> {
        return listOf(
            createPageView(R.color.fluentui_communication_tint_40),
            createPageView(R.color.fluentui_communication_tint_30),
            createPageView(R.color.fluentui_communication_tint_20)
        )
    }

    private fun createPageView(color: Int): View {
        val view = View(this)
        view.setBackgroundColor(ContextCompat.getColor(this, color))
        return view
    }

    class TabPagerAdapter : PagerAdapter() {
        private var viewList: List<View> = ArrayList()
        private var viewTitleList: List<String> = ArrayList()

        override fun instantiateItem(collection: ViewGroup, position: Int): Any {
            val view = viewList[position]
            collection.addView(view)
            return view
        }

        override fun destroyItem(collection: ViewGroup, position: Int, view: Any) {
            collection.removeView(view as View)
        }

        override fun isViewFromObject(view: View, obj: Any): Boolean = view === obj

        override fun getCount(): Int = viewList.size

        override fun getPageTitle(position: Int): CharSequence? = viewTitleList[position]

        fun setData(list: List<View>) {
            viewList = list
        }

        fun setTitle(list: List<String>) {
            viewTitleList = list
        }
    }
}
```

## File: src/main/java/com/microsoft/fluentuidemo/demos/TemplateViewActivity.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentuidemo.demos

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.LinearLayout
import android.widget.TextView
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.microsoft.fluentuidemo.DemoActivity
import com.microsoft.fluentuidemo.R
import com.microsoft.fluentuidemo.databinding.ActivityTemplateViewBinding
import com.microsoft.fluentuidemo.databinding.TemplateCellVerticalBinding
import com.microsoft.fluentuidemo.demos.views.Cell
import com.microsoft.fluentuidemo.demos.views.CellOrientation

class TemplateViewActivity : DemoActivity() {
    companion object {
        const val LIST_ITEM_COUNT = 1000
    }

    private lateinit var templateViewBinding: ActivityTemplateViewBinding

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        templateViewBinding = ActivityTemplateViewBinding.inflate(
            LayoutInflater.from(container.context),
            container,
            true
        )

        templateViewBinding.horizontalCell.setOnClickListener { onCellClicked(it as Cell) }
        templateViewBinding.verticalCell.setOnClickListener { onCellClicked(it as Cell) }

        templateViewBinding.templateListView.adapter = TemplateListViewAdapter()
        templateViewBinding.templateListView.layoutManager =
            LinearLayoutManager(this)
        templateViewBinding.templateListView.setHasFixedSize(true)

        templateViewBinding.regularListView.adapter = RegularListViewAdapter()
        templateViewBinding.regularListView.layoutManager =
            LinearLayoutManager(this)
        templateViewBinding.regularListView.setHasFixedSize(true)

        templateViewBinding.calculateCellsButton.setOnClickListener {
            val t = measureAndLayoutViews(createView = {
                val cell = Cell(this)
                cell.orientation = CellOrientation.VERTICAL
                return@measureAndLayoutViews cell
            })
            println("Cell.M&L: $t")
            templateViewBinding.calculateCellsButton.text =
                getString(R.string.calculate_cells) + " = $t ms"
            templateViewBinding.calculateCellsButton.announceForAccessibility(" took $t ms to load")
        }

        templateViewBinding.calculateLayoutsButton.setOnClickListener {
            val t = measureAndLayoutViews(createView = {
                // Emulation of Cell code without extra ViewGroup (Cell itself)
                val cell = layoutInflater.inflate(R.layout.template_cell_vertical, null)
                /*val titleView = */cell.findViewById(R.id.cell_title) as TextView
                /*val descriptionView = */cell.findViewById(R.id.cell_description) as TextView
                return@measureAndLayoutViews cell
            })
            println("Layout.M&L: $t")
            templateViewBinding.calculateLayoutsButton.text =
                getString(R.string.calculate_layouts) + " = $t ms"
            templateViewBinding.calculateLayoutsButton.announceForAccessibility(" took $t ms to load")
        }
    }

    private fun measureAndLayoutViews(createView: () -> View): Long {
        val t1 = System.nanoTime()

        for (i in 1..100) {
            val cell = createView()
            cell.requestLayout()
            cell.measure(0, 0)
            cell.layout(0, 0, cell.measuredWidth, cell.measuredHeight)
        }

        val t2 = System.nanoTime()
        return (t2 - t1) / 1000000
    }

    private fun onCellClicked(cell: Cell) {
        cell.orientation = when (cell.orientation) {
            CellOrientation.HORIZONTAL -> {
                cell.announceForAccessibility(getString(R.string.vertical_layout))
                CellOrientation.VERTICAL
            }
            CellOrientation.VERTICAL -> {
                cell.announceForAccessibility(getString(R.string.horizontal_layout))
                CellOrientation.HORIZONTAL
            }
        }
    }

    // Template list view adapter

    private class TemplateListViewAdapter :
        RecyclerView.Adapter<TemplateListViewAdapter.ViewHolder>() {
        override fun getItemCount(): Int = LIST_ITEM_COUNT

        override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ViewHolder {
            val cell = Cell(parent.context)
            cell.orientation = CellOrientation.VERTICAL
            cell.layoutParams = LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.WRAP_CONTENT
            )
            return ViewHolder(cell)
        }

        override fun onBindViewHolder(holder: ViewHolder, position: Int) {
            holder.cell.apply {
                title = "Title $position"
                description = "Description $position"
            }
        }

        class ViewHolder(val cell: Cell) : RecyclerView.ViewHolder(cell)
    }

    // Regular list view adapter

    private class RegularListViewAdapter :
        RecyclerView.Adapter<RegularListViewAdapter.ViewHolder>() {
        override fun getItemCount(): Int = LIST_ITEM_COUNT
        private lateinit var templateCellBinding: TemplateCellVerticalBinding

        override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ViewHolder {
            templateCellBinding = TemplateCellVerticalBinding.inflate(
                LayoutInflater.from(parent.context),
                parent,
                false
            )
//            val cell = LayoutInflater.from(parent.context).inflate(R.layout.template_cell_vertical, parent, false)
//            cell.layoutParams.height = ViewGroup.LayoutParams.WRAP_CONTENT
            return ViewHolder(templateCellBinding)
        }

        override fun onBindViewHolder(holder: ViewHolder, position: Int) {
            holder.apply {
                titleView.text = "Title $position"
                descriptionView.text = "Description $position"
            }
        }

        class ViewHolder(binding: TemplateCellVerticalBinding) :
            RecyclerView.ViewHolder(binding.root) {
            val titleView: TextView = binding.cellTitle
            val descriptionView: TextView = binding.cellDescription
        }
    }
}
```

## File: src/main/java/com/microsoft/fluentuidemo/demos/TooltipActivity.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentuidemo.demos

import android.graphics.PorterDuff
import android.os.Bundle
import android.view.KeyEvent
import android.view.LayoutInflater
import android.view.Menu
import android.view.MenuItem
import android.view.View
import android.view.ViewTreeObserver
import androidx.core.content.ContextCompat
import com.microsoft.fluentui.calendar.CalendarView
import com.microsoft.fluentui.snackbar.Snackbar
import com.microsoft.fluentui.tooltip.Tooltip
import com.microsoft.fluentui.util.ThemeUtil
import com.microsoft.fluentui.widget.Button
import com.microsoft.fluentuidemo.DemoActivity
import com.microsoft.fluentuidemo.R
import com.microsoft.fluentuidemo.databinding.ActivityTooltipBinding


class TooltipActivity : DemoActivity(), Tooltip.OnDismissListener, View.OnKeyListener {
    companion object {
        const val BUTTON_ID = "buttonId"
    }

    enum class TooltipType(
        val buttonId: Int,
        val messageId: Int,
        val offsetXId: Int,
        val offsetYId: Int
    ) {
        TOP_START(R.id.tooltip_anchor_top_start, R.string.tooltip_top_start_message, 0, 0),
        TOP_END(
            R.id.tooltip_anchor_top_end,
            R.string.tooltip_top_end_message,
            R.dimen.tooltip_example_offset_x,
            0
        ),
        BOTTOM_START(R.id.tooltip_anchor_bottom_start, R.string.tooltip_bottom_start_message, 0, 0),
        BOTTOM_END(
            R.id.tooltip_anchor_bottom_end,
            R.string.tooltip_bottom_end_message,
            0,
            R.dimen.tooltip_example_offset_y
        )
    }

    private var tooltip: Tooltip? = null

    private var optionsMenu: Menu? = null

    private var buttonId: Int = 0

    override val contentNeedsScrollableContainer: Boolean
        get() = false

    private lateinit var tooltipBinding: ActivityTooltipBinding

    override fun onCreate(savedInstanceState: Bundle?) {

        super.onCreate(savedInstanceState)
        tooltipBinding =
            ActivityTooltipBinding.inflate(LayoutInflater.from(container.context), container, true)

        TooltipType.values().forEach { type ->
            findViewById<Button>(type.buttonId).setOnClickListener {
                val config = Tooltip.Config(getDimen(type.offsetXId), getDimen(type.offsetYId))
                tooltip = Tooltip(this)
                if (it.id == R.id.tooltip_anchor_top_start) {
                    tooltip?.setCustomBackgroundColor(
                        ContextCompat.getColor(
                            baseContext,
                            R.color.tooltip_custom_color
                        )
                    )
                }
                tooltip?.show(it, resources.getString(type.messageId), config)
                buttonId = it.id
            }
            findViewById<Button>(type.buttonId).setOnKeyListener { v, keyCode, event ->
                if (keyCode == KeyEvent.KEYCODE_ESCAPE && event?.action == KeyEvent.ACTION_UP) {
                    // Dismiss tooltip when Escape key is pressed
                    tooltip?.dismiss()
                    tooltip = null
                }
                false
            }
        }

        tooltipBinding.tooltipAnchorCenter.setOnClickListener {
            tooltip = Tooltip(this).show(
                it,
                resources.getString(R.string.tooltip_center_message),
                Tooltip.Config(touchDismissLocation = Tooltip.TouchDismissLocation.INSIDE)
            )
            tooltip?.onDismissListener = this
            buttonId = it.id
        }
        tooltipBinding.tooltipAnchorCenter.setOnKeyListener { v, keyCode, event ->
                if (keyCode == KeyEvent.KEYCODE_ESCAPE && event?.action == KeyEvent.ACTION_UP) {
                    // Dismiss tooltip when Escape key is pressed
                    tooltip?.dismiss()
                    tooltip = null
                }
                false
            }

        tooltipBinding.tooltipAnchorCustomView.setOnClickListener {
            tooltip = Tooltip(this).setFocusable(true).show(
                it,
                LayoutInflater.from(this).inflate(R.layout.tooltip_custom_view, null)
            )
            tooltip?.onDismissListener = this
            buttonId = it.id
        }
        tooltipBinding.tooltipAnchorCustomView.setOnKeyListener { v, keyCode, event ->
                if (keyCode == KeyEvent.KEYCODE_ESCAPE && event?.action == KeyEvent.ACTION_UP) {
                    // Dismiss tooltip when Escape key is pressed
                    tooltip?.dismiss()
                    tooltip = null
                }
                false
            }

        tooltipBinding.tooltipAnchorCalendarDemo.setOnClickListener {
            tooltip = Tooltip(this).show(it, CalendarView(this), Tooltip.Config())
            tooltip?.onDismissListener = this
            buttonId = it.id
        }
        tooltipBinding.tooltipAnchorCalendarDemo.setOnKeyListener { v, keyCode, event ->
                if (keyCode == KeyEvent.KEYCODE_ESCAPE && event?.action == KeyEvent.ACTION_UP) {
                    // Dismiss tooltip when Escape key is pressed
                    tooltip?.dismiss()
                    tooltip = null
                }
                false
            }

        savedInstanceState?.let {
            buttonId = it.getInt(BUTTON_ID)
        }

    }

    override fun onKey(v: View?, keyCode: Int, event: KeyEvent?): Boolean {
        if (keyCode == KeyEvent.KEYCODE_ESCAPE && event?.action == KeyEvent.ACTION_UP) {
            // Dismiss tooltip when Escape key is pressed
            tooltip?.dismiss()
            tooltip = null
            return true // Event handled
        }
        return false // Event not handled
    }

    override fun onCreateOptionsMenu(menu: Menu): Boolean {
        menuInflater.inflate(R.menu.menu_app_bar_layout, menu)

        optionsMenu = menu

        for (index in 0 until menu.size()) {
            val drawable = menu.getItem(index).icon
            drawable?.setColorFilter(
                ThemeUtil.getThemeAttrColor(this, R.attr.fluentuiToolbarIconColor),
                PorterDuff.Mode.SRC_IN
            )
        }

        return true
    }

    override fun onOptionsItemSelected(item: MenuItem): Boolean {
        when (item.itemId) {
            R.id.action_flag -> {
                Tooltip(baseContext).show(
                    findViewById(item.itemId),
                    "Flag Tooltip Clicked",
                    Tooltip.Config(touchDismissLocation = Tooltip.TouchDismissLocation.INSIDE)
                ).onDismissListener = this

            }
        }
        return super.onOptionsItemSelected(item)
    }

    override fun onStart() {
        super.onStart()

        if (buttonId > 0) {
            val button = findViewById<Button>(buttonId)
            button.viewTreeObserver.addOnGlobalLayoutListener(object :
                ViewTreeObserver.OnGlobalLayoutListener {
                override fun onGlobalLayout() {
                    // Show tooltip on configuration change
                    button.performClick()
                    button.viewTreeObserver.removeOnGlobalLayoutListener(this)
                }
            })
        }
    }

    override fun onSaveInstanceState(outState: Bundle) {
        super.onSaveInstanceState(outState)

        outState.putInt(BUTTON_ID, buttonId)
    }

    override fun onPause() {
        super.onPause()

        tooltip?.let {
            if (!it.isShowing)
                buttonId = 0
            it.dismiss()
        }
    }

    override fun onDismiss() {
        Snackbar.make(
            demoBinding.rootView,
            resources.getString(R.string.tooltip_dismiss_message),
            Snackbar.LENGTH_SHORT
        ).show()
    }

    private fun getDimen(id: Int): Int =
        if (id > 0) Math.round(resources.getDimension(id)) else 0
}
```

## File: src/main/java/com/microsoft/fluentuidemo/demos/TypographyActivity.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentuidemo.demos

import android.os.Bundle
import android.view.LayoutInflater
import androidx.core.widget.TextViewCompat
import com.microsoft.fluentuidemo.DemoActivity
import com.microsoft.fluentuidemo.R
import com.microsoft.fluentuidemo.databinding.ActivityTypographyBinding

class TypographyActivity : DemoActivity() {

    private lateinit var typographyBinding: ActivityTypographyBinding

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        typographyBinding = ActivityTypographyBinding.inflate(
            LayoutInflater.from(container.context),
            container,
            true
        )
        TextViewCompat.setTextAppearance(
            typographyBinding.typographyExampleBody2,
            R.style.TextAppearance_FluentUI_Body2
        )
    }
}
```

## File: src/main/java/com/microsoft/fluentuidemo/demos/V2AcrylicActivity.kt
```kotlin
package com.microsoft.fluentuidemo.demos

import android.content.Context
import android.os.Bundle
import android.widget.Toast
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.tokenized.listitem.ListItem
import com.microsoft.fluentuidemo.R
import com.microsoft.fluentuidemo.V2DemoActivity
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.text.KeyboardActions
import androidx.compose.foundation.text.KeyboardOptions
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.Slider
import androidx.compose.material.SliderDefaults
import androidx.compose.material.Text
import androidx.compose.runtime.mutableFloatStateOf
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.ui.Alignment
import androidx.compose.ui.platform.LocalSoftwareKeyboardController
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.semantics.clearAndSetSemantics
import androidx.compose.ui.semantics.contentDescription
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.input.ImeAction
import androidx.compose.ui.text.input.KeyboardType
import androidx.compose.ui.unit.sp
import com.microsoft.fluentui.tokenized.acrylicpane.AcrylicPane
import com.microsoft.fluentui.icons.SearchBarIcons
import com.microsoft.fluentui.icons.searchbaricons.Office
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.FluentAliasTokens
import com.microsoft.fluentui.theme.token.FluentAliasTokens.NeutralForegroundColorTokens.Foreground2
import com.microsoft.fluentui.theme.token.FluentIcon
import com.microsoft.fluentui.theme.token.FluentStyle
import com.microsoft.fluentui.theme.token.controlTokens.AcrylicPaneInfo
import com.microsoft.fluentui.theme.token.controlTokens.AcrylicPaneOrientation
import com.microsoft.fluentui.theme.token.controlTokens.AcrylicPaneTokens
import com.microsoft.fluentui.tokenized.SearchBar
import com.microsoft.fluentui.tokenized.controls.RadioButton
import com.microsoft.fluentui.tokenized.drawer.DrawerValue
import com.microsoft.fluentui.tokenized.drawer.rememberBottomDrawerState
import com.microsoft.fluentui.tokenized.persona.Person
import com.microsoft.fluentuidemo.CustomizedSearchBarTokens
import com.microsoft.fluentuidemo.util.DemoAppStrings
import com.microsoft.fluentuidemo.util.PrimarySurfaceContent
import com.microsoft.fluentuidemo.util.getAndroidViewAsContent
import com.microsoft.fluentuidemo.util.getDemoAppString
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch

class V2AcrylicPaneActivity : V2DemoActivity() {
    init {
        setupActivity(this)
    }

    override val paramsUrl =
        "https://github.com/microsoft/fluentui-android/wiki/Controls#params-18" //TODO: Update this URL
    override val controlTokensUrl =
        "https://github.com/microsoft/fluentui-android/wiki/Controls#control-tokens-18"

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setActivityContent {
            CreateAcrylicPaneActivityUI(this)
        }
    }
}

@Composable
fun CreateAcrylicPaneActivityUI(
    context: Context
) {
    var acrylicPaneSize by rememberSaveable { mutableFloatStateOf(250.0f) }
    var acrylicPaneOrientation by rememberSaveable { mutableStateOf(AcrylicPaneOrientation.BOTTOM) }
    var acrylicPaneBlurRadius by rememberSaveable { mutableStateOf(0.0f) }
    val acrylicPaneTokens: AcrylicPaneTokens = object : AcrylicPaneTokens() {
        @Composable
        override fun acrylicPaneBlurRadius(acrylicPaneInfo: AcrylicPaneInfo): Int {
            return acrylicPaneBlurRadius.toInt()
        }
    }

    AcrylicPane(
        paneHeight = acrylicPaneSize.toInt().dp,
        orientation = acrylicPaneOrientation,
        component = { AcrylicPaneContent(context = context) },
        backgroundContent = {
            Column(
                modifier = Modifier
                    .verticalScroll(rememberScrollState())
                    .fillMaxWidth()
                    .padding(10.dp),
                horizontalAlignment = Alignment.CenterHorizontally,
            ) {
                Spacer(Modifier.height(300.dp))
                ListItem.Header(
                    title = "Acrylic Pane Orientation",
                    titleMaxLines = 2,
                    modifier = Modifier
                        .clearAndSetSemantics {
                            this.contentDescription = "Acrylic Pane Orientation"
                        },
                )
                val checkBoxSelectedValues = List(3) { rememberSaveable { mutableStateOf(false) } }
                when (acrylicPaneOrientation) {
                    AcrylicPaneOrientation.TOP -> checkBoxSelectedValues[0].value = true
                    AcrylicPaneOrientation.CENTER -> checkBoxSelectedValues[1].value = true
                    AcrylicPaneOrientation.BOTTOM -> checkBoxSelectedValues[2].value = true
                }
                val acrylicPaneOrientations = listOf(
                    AcrylicPaneOrientation.TOP,
                    AcrylicPaneOrientation.CENTER,
                    AcrylicPaneOrientation.BOTTOM,
                )
                val orientations = listOf("Top", "Center", "Bottom")
                for (i in 0..2) {
                    Row(
                        verticalAlignment = Alignment.CenterVertically,
                        horizontalArrangement = Arrangement.Start,
                        modifier = Modifier
                            .fillMaxWidth()
                            .padding(horizontal = 10.dp, vertical = 3.dp)
                    ) {
                        Text(text = "Orientation ${orientations[i]}")
                        Spacer(modifier = Modifier.width(320.dp))
                        RadioButton(
                            onClick = {
                                selectRadioGroupButton(i, checkBoxSelectedValues)
                                acrylicPaneOrientation = acrylicPaneOrientations[i]
                            },
                            selected = checkBoxSelectedValues[i].value
                        )
                    }
                }
                ListItem.Header(
                    title = "Blur Radius",
                    titleMaxLines = 2,
                    modifier = Modifier
                        .clearAndSetSemantics {
                            this.contentDescription = "Acrylic Pane Blur Radius"
                        },
                )
                Slider(
                    value = acrylicPaneBlurRadius,
                    onValueChange = { acrylicPaneBlurRadius = it },
                    valueRange = 0F..200F,
                    colors = SliderDefaults.colors(
                        thumbColor = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value(
                            FluentTheme.themeMode
                        ),
                        activeTrackColor = FluentTheme.aliasTokens.brandColor[FluentAliasTokens.BrandColorTokens.Color80],
                        inactiveTrackColor = FluentTheme.aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background3].value(
                            FluentTheme.themeMode
                        ),
                        disabledThumbColor = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundDisable1].value(
                            FluentTheme.themeMode
                        ),
                        disabledActiveTrackColor = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundDisable1].value(
                            FluentTheme.themeMode
                        ),
                        disabledInactiveTrackColor = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundDisable1].value(
                            FluentTheme.themeMode
                        )
                    ),
                    steps = 9
                )
                ListItem.Header(
                    title = "Acrylic Pane Size",
                    titleMaxLines = 2,
                    modifier = Modifier
                        .clearAndSetSemantics {
                            this.contentDescription = "Acrylic Pane Size"
                        },
                )
                Slider(
                    value = acrylicPaneSize,
                    onValueChange = { acrylicPaneSize = it },
                    valueRange = 0F..500F,
                    colors = SliderDefaults.colors(
                        thumbColor = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value(
                            FluentTheme.themeMode
                        ),
                        activeTrackColor = FluentTheme.aliasTokens.brandColor[FluentAliasTokens.BrandColorTokens.Color80],
                        inactiveTrackColor = FluentTheme.aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background3].value(
                            FluentTheme.themeMode
                        ),
                        disabledThumbColor = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundDisable1].value(
                            FluentTheme.themeMode
                        ),
                        disabledActiveTrackColor = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundDisable1].value(
                            FluentTheme.themeMode
                        ),
                        disabledInactiveTrackColor = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundDisable1].value(
                            FluentTheme.themeMode
                        )
                    ),
                    steps = 9
                )
                ListItem.Header(
                    title = "Test Bottom Drawer",
                    titleMaxLines = 2,
                    modifier = Modifier
                        .clearAndSetSemantics {
                            this.contentDescription = "Test Bottom Drawer"
                        },
                )
                ShowBottomDrawer()
                ListItem.Header(
                    title = "Scroll Test",
                    titleMaxLines = 2,
                    modifier = Modifier
                        .clearAndSetSemantics {
                            this.contentDescription = "Test Bottom Drawer"
                        },
                )
                repeat(40) {
                    Row(
                        verticalAlignment = Alignment.CenterVertically,
                        horizontalArrangement = Arrangement.Start,
                        modifier = Modifier
                            .fillMaxWidth()
                            .padding(horizontal = 12.dp, vertical = 5.dp)
                    ) {
                        Text(
                            text = "Text $it", fontSize = 14.sp,
                            style = FluentTheme.aliasTokens.typography[FluentAliasTokens.TypographyTokens.Body1]
                                .merge(
                                    TextStyle(
                                        color = FluentTheme.aliasTokens.neutralForegroundColor[Foreground2].value(
                                            themeMode = FluentTheme.themeMode
                                        )
                                    )
                                )
                        )
                    }
                }
            }
        },
        acrylicPaneTokens = acrylicPaneTokens
    )
}

@Composable
fun ShowBottomDrawer() {
    val scope = rememberCoroutineScope()

    val drawerState = rememberBottomDrawerState(
        initialValue = DrawerValue.Closed,
        expandable = true,
        skipOpenState = false
    )

    val open: () -> Unit = {
        scope.launch { drawerState.open() }
    }
    val expand: () -> Unit = {
        scope.launch { drawerState.expand() }
    }
    val close: () -> Unit = {
        scope.launch { drawerState.close() }
    }
    Row {
        PrimarySurfaceContent(
            open,
            text = stringResource(id = R.string.drawer_open)
        )
        Spacer(modifier = Modifier.width(10.dp))
        PrimarySurfaceContent(
            expand,
            text = stringResource(id = R.string.drawer_expand)
        )
    }
    var selectedContent by rememberSaveable { mutableStateOf(ContentType.FULL_SCREEN_SCROLLABLE_CONTENT) }
    val drawerContent = getAndroidViewAsContent(selectedContent)
    var maxLandscapeWidthFraction by rememberSaveable { mutableFloatStateOf(1F) }
    var preventDismissalOnScrimClick by rememberSaveable { mutableStateOf(false) }
    com.microsoft.fluentui.tokenized.drawer.BottomDrawer(
        drawerState = drawerState,
        drawerContent = { drawerContent(close) },
        scrimVisible = true,
        slideOver = true,
        showHandle = true,
        enableSwipeDismiss = true,
        maxLandscapeWidthFraction = maxLandscapeWidthFraction,
        preventDismissalOnScrimClick = preventDismissalOnScrimClick
    )
}

@Composable
fun AcrylicPaneContent(context: Context) {
    val scope = rememberCoroutineScope()

    val microphonePressedString = getDemoAppString(DemoAppStrings.MicrophonePressed)
    val rightViewPressedString = getDemoAppString(DemoAppStrings.RightViewPressed)
    val keyboardSearchPressedString = getDemoAppString(DemoAppStrings.KeyboardSearchPressed)
    var loading by rememberSaveable { mutableStateOf(false) }
    val keyboardController = LocalSoftwareKeyboardController.current
    var autoCorrectEnabled: Boolean by rememberSaveable { mutableStateOf(false) }
    var enableMicrophoneCallback: Boolean by rememberSaveable { mutableStateOf(true) }
    var searchBarStyle: FluentStyle by rememberSaveable { mutableStateOf(FluentStyle.Brand) }
    var displayRightAccessory: Boolean by rememberSaveable { mutableStateOf(true) }
    var selectedPeople: Person? by rememberSaveable { mutableStateOf(null) }
    val showCustomizedAppBar = false
    Column {
        Spacer(modifier = Modifier.height(80.dp))
        Row(
            Modifier
                .height(5.dp)
                .padding(20.dp)
        ) {
            SearchBar(
                onValueChange = { query, selectedPerson ->
                    scope.launch {
                        loading = true
                        delay(2000)
                        loading = false
                    }
                },
                style = searchBarStyle,
                loading = loading,
                selectedPerson = selectedPeople,
                microphoneCallback = if (enableMicrophoneCallback) {
                    {
                        Toast.makeText(context, microphonePressedString, Toast.LENGTH_SHORT)
                            .show()
                    }
                } else null,
                keyboardOptions = KeyboardOptions(
                    autoCorrect = autoCorrectEnabled,
                    keyboardType = KeyboardType.Email,
                    imeAction = ImeAction.Search
                ),
                keyboardActions = KeyboardActions(
                    onSearch = {
                        Toast.makeText(
                            context,
                            keyboardSearchPressedString,
                            Toast.LENGTH_SHORT
                        )
                            .show()
                        keyboardController?.hide()
                    }
                ),
                rightAccessoryIcon = if (displayRightAccessory) {
                    FluentIcon(
                        SearchBarIcons.Office,
                        contentDescription = "Office",
                        onClick = {
                            Toast.makeText(
                                context,
                                rightViewPressedString,
                                Toast.LENGTH_SHORT
                            )
                                .show()
                        }
                    )
                } else null,
                searchBarTokens = if (showCustomizedAppBar) {
                    CustomizedSearchBarTokens
                } else null,
                modifier = if (showCustomizedAppBar) Modifier.requiredHeight(60.dp) else Modifier
            )
        }
    }
}
```

## File: src/main/java/com/microsoft/fluentuidemo/demos/V2ActionBarActivity.kt
```kotlin
package com.microsoft.fluentuidemo.demos

import android.os.Bundle
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.text.BasicText
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.ThemeMode
import com.microsoft.fluentui.theme.token.FluentAliasTokens
import com.microsoft.fluentui.tokenized.controls.Button
import com.microsoft.fluentui.tokenized.controls.RadioButton
import com.microsoft.fluentui.tokenized.listitem.ListItem
import com.microsoft.fluentuidemo.Demo
import com.microsoft.fluentuidemo.DemoActivity.Companion.DEMO_ID
import com.microsoft.fluentuidemo.Navigation
import com.microsoft.fluentuidemo.R
import com.microsoft.fluentuidemo.V2DemoActivity
import com.microsoft.fluentuidemo.demos.actionbar.V2ActionBarDemoActivity

const val ACTION_BAR_TOP_RADIO = "actionBarTopRadio"
const val ACTION_BAR_BOTTOM_RADIO = "actionBarBottomRadio"
const val ACTION_BAR_BASIC_TYPE_RADIO = "actionBarBasicTypeRadio"
const val ACTION_BAR_ICON_TYPE_RADIO = "actionBarIconTypeRadio"
const val ACTION_BAR_CAROUSEL_TYPE_RADIO = "actionBarCarouselTypeRadio"

class V2ActionBarActivity : V2DemoActivity() {
    init {
        setupActivity(this)
    }

    override val paramsUrl = "https://github.com/microsoft/fluentui-android/wiki/Controls#params-37"
    override val controlTokensUrl =
        "https://github.com/microsoft/fluentui-android/wiki/Controls#control-tokens-35"

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        val context = this

        setActivityContent {
            val actionBarPos = listOf(0, 1)
            val actionBarType = listOf(0, 1, 2)
            var selectedActionBarPos by rememberSaveable { mutableStateOf(actionBarPos[0]) }
            var selectedActionBarType by rememberSaveable { mutableStateOf(actionBarType[0]) }

            Column {
                ListItem.Header(title = resources.getString(R.string.actionbar_position_heading))
                Column(
                    modifier = Modifier.padding(16.dp),
                    verticalArrangement = Arrangement.spacedBy(10.dp),
                ) {
                    ActionBarRow(
                        text = R.string.actionbar_position_top_radio_label,
                        testTag = ACTION_BAR_TOP_RADIO,
                        selected = selectedActionBarPos == actionBarPos[0],
                        onClick = { selectedActionBarPos = actionBarPos[0] }
                    )
                    ActionBarRow(
                        text = R.string.actionbar_position_bottom_radio_label,
                        testTag = ACTION_BAR_BOTTOM_RADIO,
                        selected = selectedActionBarPos == actionBarPos[1],
                        onClick = { selectedActionBarPos = actionBarPos[1] }
                    )
                }
                ListItem.Header(title = resources.getString(R.string.actionbar_type_heading))
                Column(
                    modifier = Modifier.padding(16.dp),
                    verticalArrangement = Arrangement.spacedBy(10.dp),
                ) {
                    ActionBarRow(
                        text = R.string.actionbar_basic_radio_label,
                        testTag = ACTION_BAR_BASIC_TYPE_RADIO,
                        selected = selectedActionBarType == actionBarType[0],
                        onClick = { selectedActionBarType = actionBarType[0] }
                    )
                    ActionBarRow(
                        text = R.string.actionbar_icon_radio_label,
                        testTag = ACTION_BAR_ICON_TYPE_RADIO,
                        selected = selectedActionBarType == actionBarType[1],
                        onClick = { selectedActionBarType = actionBarType[1] }
                    )

                    ActionBarRow(
                        text = R.string.actionbar_carousel_radio_label,
                        testTag = ACTION_BAR_CAROUSEL_TYPE_RADIO,
                        selected = selectedActionBarType == actionBarType[2],
                        onClick = { selectedActionBarType = actionBarType[2] }
                    )
                }

                Button(
                    text = resources.getString(R.string.actionbar_start_button),
                    onClick = {
                        val demo = Demo("DEMOACTIONBAR", V2ActionBarDemoActivity::class)
                        val packageContext = this@V2ActionBarActivity
                        Navigation.forwardNavigation(
                            packageContext,
                            demo.demoClass.java,
                            Pair(DEMO_ID, demo.id),
                            Pair(DEMO_TITLE, demo.title),
                            Pair("ACTION_BAR_TYPE", selectedActionBarType),
                            Pair("ACTION_BAR_POSITION", selectedActionBarPos)
                        )
                    },
                    modifier = Modifier.padding(16.dp)
                )
            }
        }
    }

    @Composable
    fun ActionBarRow(
        text: Int,
        testTag: String,
        selected: Boolean,
        onClick: () -> Unit
    ) {
        Row(
            horizontalArrangement = Arrangement.spacedBy(16.dp),
            verticalAlignment = Alignment.CenterVertically,
            modifier = Modifier.fillMaxWidth()
        ) {
            BasicText(
                text = resources.getString(text),
                modifier = Modifier.weight(1F),
                style = TextStyle(
                    color = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground3].value(
                        themeMode = ThemeMode.Auto
                    )
                )
            )
            RadioButton(
                modifier = Modifier.testTag(testTag),
                selected = selected,
                onClick = onClick
            )
        }
    }
}
```

## File: src/main/java/com/microsoft/fluentuidemo/demos/V2AppBarActivity.kt
```kotlin
package com.microsoft.fluentuidemo.demos

import android.os.Bundle
import android.widget.Toast
import androidx.compose.animation.core.LinearEasing
import androidx.compose.animation.core.animateFloatAsState
import androidx.compose.animation.core.tween
import androidx.compose.foundation.gestures.detectDragGestures
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.requiredSize
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Add
import androidx.compose.material.icons.filled.Email
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.rememberUpdatedState
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.focus.onFocusChanged
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.ListItemIcons
import com.microsoft.fluentui.icons.SearchBarIcons
import com.microsoft.fluentui.icons.listitemicons.Chevron
import com.microsoft.fluentui.icons.searchbaricons.Arrowback
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.ThemeMode
import com.microsoft.fluentui.theme.token.FluentAliasTokens
import com.microsoft.fluentui.theme.token.FluentColor
import com.microsoft.fluentui.theme.token.FluentIcon
import com.microsoft.fluentui.theme.token.FluentStyle
import com.microsoft.fluentui.theme.token.Icon
import com.microsoft.fluentui.theme.token.controlTokens.AppBarInfo
import com.microsoft.fluentui.theme.token.controlTokens.AppBarSize
import com.microsoft.fluentui.theme.token.controlTokens.AppBarTokens
import com.microsoft.fluentui.theme.token.controlTokens.AvatarSize
import com.microsoft.fluentui.theme.token.controlTokens.AvatarStatus
import com.microsoft.fluentui.theme.token.controlTokens.TooltipControls
import com.microsoft.fluentui.tokenized.AppBar
import com.microsoft.fluentui.tokenized.SearchBar
import com.microsoft.fluentui.tokenized.controls.ToggleSwitch
import com.microsoft.fluentui.tokenized.listitem.ChevronOrientation
import com.microsoft.fluentui.tokenized.listitem.ListItem
import com.microsoft.fluentui.tokenized.persona.Avatar
import com.microsoft.fluentui.tokenized.persona.Person
import com.microsoft.fluentui.tokenized.segmentedcontrols.PillBar
import com.microsoft.fluentui.tokenized.segmentedcontrols.PillMetaData
import com.microsoft.fluentuidemo.R
import com.microsoft.fluentuidemo.V2DemoActivity
import kotlin.math.max

// Tags used for testing
const val APP_BAR_MODIFIABLE_PARAMETER_SECTION = "App Bar Modifiable Parameters"
const val APP_BAR_SUBTITLE_PARAM = "App Bar Subtitle Param"
const val APP_BAR_STYLE_PARAM = "App Bar AppBar Style Param"
const val APP_BAR_BUTTONBAR_PARAM = "App Bar ButtonBar Param"
const val APP_BAR_SEARCHBAR_PARAM = "App Bar SearchBar Param"
const val APP_BAR_LOGO_PARAM = "App Bar Logo Param"
const val APP_BAR_CENTER_ALIGN_PARAM = "App Bar Center Align Param"
const val APP_BAR_ENABLE_TOOLTIPS_PARAM = "App Bar Enable Tooltips Param"
const val APP_BAR_NAVIGATION_ICON_PARAM = "App Bar Navigation Icon Param"

class V2AppBarActivity : V2DemoActivity() {
    init {
        setupActivity(this)
    }

    override val paramsUrl = "https://github.com/microsoft/fluentui-android/wiki/Controls#params"
    override val controlTokensUrl =
        "https://github.com/microsoft/fluentui-android/wiki/Controls#control-tokens"

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        val context = this

        setActivityContent {

            var style: FluentStyle by rememberSaveable { mutableStateOf(FluentStyle.Neutral) }
            var appBarSize: AppBarSize by rememberSaveable { mutableStateOf(AppBarSize.Small) }
            var searchMode: Boolean by rememberSaveable { mutableStateOf(false) }
            var subtitle: String? by rememberSaveable { mutableStateOf("Subtitle") }
            var enableSearchBar: Boolean by rememberSaveable { mutableStateOf(false) }
            var enableButtonBar: Boolean by rememberSaveable { mutableStateOf(false) }
            var enableBottomBorder: Boolean by rememberSaveable { mutableStateOf(true) }
            var centerAlignAppBar: Boolean by rememberSaveable { mutableStateOf(false) }
            var enableTooltips: Boolean by rememberSaveable { mutableStateOf(false) }
            var showNavigationIcon: Boolean by rememberSaveable { mutableStateOf(true) }
            var yAxisDelta: Float by rememberSaveable { mutableStateOf(1.0F) }
            var enableLogo: Boolean by rememberSaveable { mutableStateOf(true) }

            Column(modifier = Modifier.pointerInput(Unit) {
                detectDragGestures { _, distance ->
                    if (searchMode)
                        yAxisDelta = 0F
                    else
                        yAxisDelta = max(0F, distance.y + 10F) / 20F
                }
            }) {
                ListItem.SectionHeader(
                    title = LocalContext.current.resources.getString(R.string.app_modifiable_parameters),
                    modifier = Modifier.testTag(APP_BAR_MODIFIABLE_PARAMETER_SECTION),
                    enableChevron = true,
                    enableContentOpenCloseTransition = true,
                    chevronOrientation = ChevronOrientation(90f, 0f),
                ) {
                    Column {
                        ListItem.Header(LocalContext.current.resources.getString(R.string.app_bar_size))
                        PillBar(
                            mutableListOf(
                                PillMetaData(
                                    text = LocalContext.current.resources.getString(R.string.fluentui_large),
                                    onClick = { appBarSize = AppBarSize.Large },
                                    selected = appBarSize == AppBarSize.Large
                                ),
                                PillMetaData(
                                    text = LocalContext.current.resources.getString(R.string.fluentui_medium),
                                    onClick = { appBarSize = AppBarSize.Medium },
                                    selected = appBarSize == AppBarSize.Medium
                                ),
                                PillMetaData(
                                    text = LocalContext.current.resources.getString(R.string.fluentui_small),
                                    onClick = { appBarSize = AppBarSize.Small },
                                    selected = appBarSize == AppBarSize.Small
                                ),
                                PillMetaData(
                                    text = LocalContext.current.resources.getString(R.string.fluentui_search),
                                    onClick = { searchMode = !searchMode },
                                    selected = searchMode
                                )
                            ), style = style,
                            showBackground = true
                        )

                        val subtitleText =
                            LocalContext.current.resources.getString(R.string.app_bar_subtitle)
                        ListItem.Item(
                            text = subtitleText,
                            subText = if (subtitle.isNullOrBlank())
                                LocalContext.current.resources.getString(R.string.fluentui_disabled)
                            else
                                LocalContext.current.resources.getString(R.string.fluentui_enabled),
                            trailingAccessoryContent = {
                                ToggleSwitch(
                                    onValueChange = {
                                        subtitle =
                                            if (subtitle.isNullOrBlank())
                                                subtitleText
                                            else
                                                null
                                    },
                                    modifier = Modifier.testTag(APP_BAR_SUBTITLE_PARAM),
                                    checkedState = !subtitle.isNullOrBlank()
                                )
                            }
                        )

                        ListItem.Item(
                            text = LocalContext.current.resources.getString(R.string.app_bar_style),
                            subText = if (style == FluentStyle.Neutral)
                                LocalContext.current.resources.getString(R.string.fluentui_neutral)
                            else
                                LocalContext.current.resources.getString(R.string.fluentui_brand),
                            trailingAccessoryContent = {
                                ToggleSwitch(
                                    onValueChange = {
                                        style =
                                            if (style == FluentStyle.Neutral)
                                                FluentStyle.Brand
                                            else
                                                FluentStyle.Neutral
                                    },
                                    modifier = Modifier.testTag(APP_BAR_STYLE_PARAM),
                                    checkedState = style == FluentStyle.Brand
                                )
                            }
                        )

                        ListItem.Item(
                            text = LocalContext.current.resources.getString(R.string.buttonbar),
                            subText = if (enableButtonBar)
                                LocalContext.current.resources.getString(R.string.fluentui_enabled)
                            else
                                LocalContext.current.resources.getString(R.string.fluentui_disabled),
                            trailingAccessoryContent = {
                                ToggleSwitch(
                                    onValueChange = {
                                        enableButtonBar = !enableButtonBar
                                    },
                                    modifier = Modifier.testTag(APP_BAR_BUTTONBAR_PARAM),
                                    checkedState = enableButtonBar
                                )
                            }
                        )

                        ListItem.Item(
                            text = LocalContext.current.resources.getString(R.string.searchbar),
                            subText = if (enableSearchBar)
                                LocalContext.current.resources.getString(R.string.fluentui_enabled)
                            else
                                LocalContext.current.resources.getString(R.string.fluentui_disabled),
                            trailingAccessoryContent = {
                                enableSearchBar = enableSearchBar || searchMode
                                ToggleSwitch(
                                    onValueChange = {
                                        enableSearchBar = !enableSearchBar
                                    },
                                    modifier = Modifier.testTag(APP_BAR_SEARCHBAR_PARAM),
                                    checkedState = enableSearchBar,
                                    enabledSwitch = !searchMode
                                )
                            }
                        )

                        ListItem.Item(
                            text = LocalContext.current.resources.getString(R.string.app_bar_bottom_border),
                            subText = if (enableBottomBorder)
                                LocalContext.current.resources.getString(R.string.fluentui_enabled)
                            else
                                LocalContext.current.resources.getString(R.string.fluentui_disabled),
                            trailingAccessoryContent = {
                                ToggleSwitch(
                                    onValueChange = {
                                        enableBottomBorder = !enableBottomBorder
                                    },
                                    checkedState = enableBottomBorder,
                                )
                            }
                        )

                        ListItem.Item(
                            text = LocalContext.current.resources.getString(R.string.left_logo),
                            subText = if (enableLogo)
                                LocalContext.current.resources.getString(R.string.fluentui_enabled)
                            else
                                LocalContext.current.resources.getString(R.string.fluentui_disabled),
                            trailingAccessoryContent = {
                                ToggleSwitch(
                                    onValueChange = {
                                        enableLogo = !enableLogo
                                    },
                                    modifier = Modifier.testTag(APP_BAR_LOGO_PARAM),
                                    checkedState = enableLogo
                                )
                            }
                        )

                        ListItem.Item(
                            text = LocalContext.current.resources.getString(R.string.navigation_icon),
                            subText = if (showNavigationIcon)
                                LocalContext.current.resources.getString(R.string.fluentui_enabled)
                            else
                                LocalContext.current.resources.getString(R.string.fluentui_disabled),
                            trailingAccessoryContent = {
                                ToggleSwitch(
                                    onValueChange = {
                                        showNavigationIcon = !showNavigationIcon
                                    },
                                    modifier = Modifier.testTag(APP_BAR_NAVIGATION_ICON_PARAM),
                                    checkedState = showNavigationIcon
                                )
                            }
                        )
                        ListItem.Item(
                            text = LocalContext.current.resources.getString(R.string.center_title_alignment),
                            subText = if (centerAlignAppBar)
                                LocalContext.current.resources.getString(R.string.fluentui_enabled)
                            else
                                LocalContext.current.resources.getString(R.string.fluentui_disabled),
                            trailingAccessoryContent = {
                                ToggleSwitch(
                                    onValueChange = {
                                        centerAlignAppBar = !centerAlignAppBar
                                    },
                                    modifier = Modifier.testTag(APP_BAR_CENTER_ALIGN_PARAM),
                                    checkedState = centerAlignAppBar
                                )
                            }
                        )
                        ListItem.Item(
                            text = LocalContext.current.resources.getString(R.string.enable_tooltips),
                            subText = if (enableTooltips)
                                LocalContext.current.resources.getString(R.string.fluentui_enabled)
                            else
                                LocalContext.current.resources.getString(R.string.fluentui_disabled),
                            trailingAccessoryContent = {
                                ToggleSwitch(
                                    onValueChange = {
                                        enableTooltips = !enableTooltips
                                    },
                                    modifier = Modifier.testTag(APP_BAR_ENABLE_TOOLTIPS_PARAM),
                                    checkedState = enableTooltips
                                )
                            }
                        )
                    }
                }

                val buttonBarList = mutableListOf<PillMetaData>()
                for (idx in 1..6) {
                    buttonBarList.add(
                        PillMetaData(
                            "Button $idx",
                            {
                                Toast.makeText(
                                    context,
                                    "Button $idx pressed",
                                    Toast.LENGTH_SHORT
                                ).show()
                            }
                        )
                    )
                }

                val appTitleDelta: Float by animateFloatAsState(
                    if (searchMode) 0F else 1F,
                    animationSpec = tween(durationMillis = 150, easing = LinearEasing)
                )

                val yAxisDeltaCoerced = yAxisDelta.coerceIn(0F, 1F)

                val accessoryDelta: Float by animateFloatAsState(yAxisDeltaCoerced)
                val rightIconColor: Color = if (style == FluentStyle.Neutral)
                    FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground2].value(
                        FluentTheme.themeMode
                    )
                else
                    FluentColor(
                        light = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundOnColor].value(
                            ThemeMode.Light
                        ),
                        dark = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground2].value(
                            ThemeMode.Dark
                        )
                    ).value(FluentTheme.themeMode)
                val appBarTokens = object : AppBarTokens() {
                    @Composable
                    override fun tooltipVisibilityControls(info: AppBarInfo): TooltipControls {
                        return TooltipControls(
                            enableTitleTooltip = enableTooltips,
                            enableSubtitleTooltip = enableTooltips,
                            enableNavigationIconTooltip = enableTooltips,
                        )
                    }
                }
                AppBar(
                    title = "Fluent UI Demo",
                    navigationIcon = if (showNavigationIcon) {
                        FluentIcon(
                            SearchBarIcons.Arrowback,
                            contentDescription = "Navigate Back",
                            onLongClick = {
                                Toast.makeText(
                                    context,
                                    "Navigation Icon long pressed",
                                    Toast.LENGTH_SHORT
                                ).show()
                            },
                            onClick = {
                                Toast.makeText(
                                    context,
                                    "Navigation Icon pressed",
                                    Toast.LENGTH_SHORT
                                ).show()
                            },
                            flipOnRtl = true
                        )
                    } else null,
                    subTitle = subtitle,
                    centerAlignAppBar = centerAlignAppBar,
                    logo = if (enableLogo) {
                        {
                            Avatar(
                                Person(
                                    "Allan",
                                    "Munger",
                                    status = AvatarStatus.DND,
                                    isActive = true
                                ),
                                enablePresence = true,
                                size = AvatarSize.Size32,
                                modifier = if (!showNavigationIcon) {
                                    Modifier.padding(start = 16.dp)
                                } else Modifier
                            )
                        }
                    } else null,
                    postTitleIcon = FluentIcon(
                        ListItemIcons.Chevron,
                        contentDescription = LocalContext.current.resources.getString(R.string.fluentui_chevron),
                        flipOnRtl = true
                    ) {
                        Toast.makeText(context, "Title Icon pressed", Toast.LENGTH_SHORT).show()
                    },
                    postSubtitleIcon = FluentIcon(
                        ListItemIcons.Chevron,
                        contentDescription = LocalContext.current.resources.getString(R.string.fluentui_chevron),
                        onClick = {
                            Toast.makeText(context, "Subtitle Icon pressed", Toast.LENGTH_SHORT)
                                .show()
                        },
                        flipOnRtl = true
                    ),
                    appBarSize = appBarSize,
                    style = style,
                    searchMode = searchMode,
                    bottomBorder = enableBottomBorder,
                    searchBar = if (enableSearchBar) {
                        {
                            SearchBar(
                                onValueChange = { _, _ -> },
                                modifier = Modifier.onFocusChanged { focusState ->
                                    when {
                                        focusState.isFocused -> {
                                            searchMode = true
                                        }
                                    }
                                },
                                style = style,
                                navigationIconCallback = { searchMode = false }
                            )
                        }
                    } else null,
                    bottomBar = if (enableButtonBar) {
                        { PillBar(metadataList = buttonBarList, style = style) }
                    } else null,
                    appTitleDelta = appTitleDelta,
                    accessoryDelta = accessoryDelta,
                    appBarTokens = appBarTokens,
                    rightAccessoryView = {
                        Icon(
                            Icons.Filled.Add,
                            "Add",
                            modifier = Modifier
                                .padding(10.dp)
                                .requiredSize(24.dp),
                            tint = rightIconColor,
                            onClick = {
                                Toast
                                    .makeText(
                                        context,
                                        "Navigation Icon 1 Pressed",
                                        Toast.LENGTH_SHORT
                                    )
                                    .show()
                            }
                        )
                        Icon(
                            Icons.Filled.Email,
                            "E-mail",
                            modifier = Modifier
                                .padding(10.dp)
                                .requiredSize(24.dp),
                            tint = rightIconColor,
                            onClick = {
                                Toast
                                    .makeText(
                                        context,
                                        "Navigation Icon 2 Pressed",
                                        Toast.LENGTH_SHORT
                                    )
                                    .show()
                            }
                        )
                    }
                )
            }
        }
    }
}
```

## File: src/main/java/com/microsoft/fluentuidemo/demos/V2AvatarActivity.kt
```kotlin
package com.microsoft.fluentuidemo.demos

import android.os.Bundle
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.text.BasicText
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.Divider
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.unit.dp
import com.example.theme.token.AnonymousAccentAvatarTokens
import com.example.theme.token.AnonymousAvatarTokens
import com.example.theme.token.StandardInvertedAvatarTokens
import com.microsoft.fluentui.theme.token.controlTokens.AvatarSize
import com.microsoft.fluentui.theme.token.controlTokens.AvatarStatus
import com.microsoft.fluentui.theme.token.controlTokens.CutoutStyle
import com.microsoft.fluentui.tokenized.controls.Button
import com.microsoft.fluentui.tokenized.persona.Avatar
import com.microsoft.fluentui.tokenized.persona.Group
import com.microsoft.fluentui.tokenized.persona.Person
import com.microsoft.fluentuidemo.R
import com.microsoft.fluentuidemo.V2DemoActivity

class V2AvatarActivity : V2DemoActivity() {
    init {
        setupActivity(this)
    }

    override val paramsUrl = "https://github.com/microsoft/fluentui-android/wiki/Controls#params-1"
    override val controlTokensUrl = "https://github.com/microsoft/fluentui-android/wiki/Controls#control-tokens-1"

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        setActivityContent {
            Column(
                Modifier
                    .padding(16.dp)
                    .verticalScroll(rememberScrollState()),
                verticalArrangement = Arrangement.spacedBy(14.dp, Alignment.CenterVertically)
            ) {
                var isActive by rememberSaveable { mutableStateOf(true) }
                var isOOO by rememberSaveable { mutableStateOf(false) }
                var isActivityDotPresent by rememberSaveable { mutableStateOf(false) }

                BasicText(
                    modifier = Modifier.padding(start = 16.dp),
                    text = "Avatar Cutout",
                    style = TextStyle(color = Color(0xFF2886DE))
                )
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.spacedBy(
                        12.dp,
                        Alignment.CenterHorizontally
                    ),
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    val person: Person = Person(
                        "Kat", "Larsson",
                        isActive = isActive,
                        image = R.drawable.avatar_kat_larsson
                    )
                    val personNoImage: Person = Person(
                        "Kat", "Larsson",
                        isActive = isActive,
                    )
                    Avatar(
                        person,
                        cutoutContentDescription = "heart",
                        size = AvatarSize.Size40,
                        enableActivityRings = true,
                        cutoutIconDrawable = R.drawable.cutout_heart16x16
                    )
                    Avatar(
                        personNoImage,
                        size = AvatarSize.Size40,
                        enableActivityRings = true,
                        cutoutIconDrawable = R.drawable.cutout_laughing24x24
                    )
                    Avatar(
                        person,
                        size = AvatarSize.Size40,
                        enableActivityRings = true,
                        cutoutIconDrawable = R.drawable.cutout_excel32x32,
                        cutoutStyle = CutoutStyle.Square
                    )
                    Avatar(
                        person,
                        size = AvatarSize.Size56,
                        enableActivityRings = true,
                        cutoutIconDrawable = R.drawable.cutout_people32x32
                    )
                    Avatar(
                        personNoImage,
                        size = AvatarSize.Size56,
                        enableActivityRings = true,
                        cutoutIconDrawable = R.drawable.cutout_onenote32x32,
                        cutoutStyle = CutoutStyle.Square
                    )
                    Avatar(
                        person,
                        size = AvatarSize.Size56,
                        enableActivityRings = true,
                        cutoutIconDrawable = R.drawable.cutout_pp48x48,
                        cutoutStyle = CutoutStyle.Square
                    )
                }
                Divider()

                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.spacedBy(
                        10.dp,
                        Alignment.CenterHorizontally
                    )
                ) {
                    Button(
                        onClick = { isActive = !isActive },
                        text = "Toggle Activity Ring",
                        contentDescription = "Activity Ring ${if (isActive) "enabled" else "disabled"}"
                    )
                    Button(
                        onClick = { isOOO = !isOOO },
                        text = "Toggle OOO",
                        contentDescription = "OOO status ${if (isOOO) "enabled" else "disabled"}"
                    )
                }
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.spacedBy(
                        10.dp,
                        Alignment.CenterHorizontally
                    )
                ) {
                    Button(
                        onClick = { isActivityDotPresent = !isActivityDotPresent },
                        text = "Toggle Activity Dot",
                        contentDescription = "Activity Dot ${if (isActivityDotPresent) "enabled" else "disabled"}"
                    )
                }

                Divider()

                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.spacedBy(
                        12.dp,
                        Alignment.CenterHorizontally
                    ),
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    val person: Person = Person(
                        "Allan", "Munger",
                        image = R.drawable.avatar_allan_munger, isActive = isActive,
                        status = AvatarStatus.Available, isOOO = isOOO
                    )
                    val personNoImage: Person = Person(
                        "Allan", "Munger",
                        isActive = isActive,
                        status = AvatarStatus.Available, isOOO = isOOO
                    )

                    Avatar(person, size = AvatarSize.Size16, enableActivityRings = true, enableActivityDot = isActivityDotPresent)
                    Avatar(person, size = AvatarSize.Size20, enableActivityRings = true, enableActivityDot = isActivityDotPresent)
                    Avatar(person, size = AvatarSize.Size24, enableActivityRings = true, enableActivityDot = isActivityDotPresent)

                    Avatar(
                        personNoImage,
                        size = AvatarSize.Size32,
                        enableActivityRings = true,
                        avatarToken = AnonymousAvatarTokens(),
                        enableActivityDot = isActivityDotPresent
                    )
                    Avatar(
                        person,
                        size = AvatarSize.Size40,
                        enableActivityRings = true,
                        avatarToken = AnonymousAvatarTokens(),
                        enableActivityDot = isActivityDotPresent
                    )
                    Avatar(
                        personNoImage,
                        size = AvatarSize.Size56,
                        enableActivityRings = true,
                        avatarToken = AnonymousAvatarTokens(),
                        enableActivityDot = isActivityDotPresent
                    )
                    Avatar(personNoImage, size = AvatarSize.Size72, enableActivityRings = true, enableActivityDot = isActivityDotPresent)
                }

                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.spacedBy(
                        12.dp,
                        Alignment.CenterHorizontally
                    ),
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    val person: Person = Person(
                        "Amanda", "Brady",
                        image = R.drawable.avatar_amanda_brady, isActive = isActive,
                        status = AvatarStatus.Away, isOOO = isOOO
                    )

                    Avatar(person, size = AvatarSize.Size16, enableActivityRings = true, enableActivityDot = isActivityDotPresent)
                    Avatar(person, size = AvatarSize.Size20, enableActivityRings = true, enableActivityDot = isActivityDotPresent)
                    Avatar(person, size = AvatarSize.Size24, enableActivityRings = true, enableActivityDot = isActivityDotPresent)
                    Avatar(person, size = AvatarSize.Size32, enableActivityRings = true, enableActivityDot = isActivityDotPresent)
                    Avatar(person, size = AvatarSize.Size40, enableActivityRings = true, enableActivityDot = isActivityDotPresent)
                    Avatar(person, size = AvatarSize.Size56, enableActivityRings = true, enableActivityDot = isActivityDotPresent)
                    Avatar(person, size = AvatarSize.Size72, enableActivityRings = true, enableActivityDot = isActivityDotPresent)
                }

                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.spacedBy(
                        12.dp,
                        Alignment.CenterHorizontally
                    ),
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    val person: Person = Person(
                        "Kat", "Larson", isActive = isActive,
                        status = AvatarStatus.Busy, isOOO = isOOO
                    )

                    Avatar(
                        person,
                        size = AvatarSize.Size16,
                        enableActivityRings = false,
                        avatarToken = AnonymousAccentAvatarTokens(),
                        enableActivityDot = isActivityDotPresent
                    )
                    Avatar(
                        person,
                        size = AvatarSize.Size20,
                        enableActivityRings = false,
                        avatarToken = AnonymousAccentAvatarTokens(),
                        enableActivityDot = isActivityDotPresent
                    )
                    Avatar(
                        person,
                        size = AvatarSize.Size24,
                        enableActivityRings = false,
                        avatarToken = AnonymousAccentAvatarTokens(),
                        enableActivityDot = isActivityDotPresent
                    )
                    Avatar(
                        person,
                        size = AvatarSize.Size32,
                        enableActivityRings = false,
                        avatarToken = AnonymousAccentAvatarTokens(),
                        enableActivityDot = isActivityDotPresent
                    )
                    Avatar(
                        person,
                        size = AvatarSize.Size40,
                        enableActivityRings = false,
                        avatarToken = AnonymousAccentAvatarTokens(),
                        enableActivityDot = isActivityDotPresent
                    )
                    Avatar(
                        person,
                        size = AvatarSize.Size56,
                        enableActivityRings = false,
                        avatarToken = AnonymousAccentAvatarTokens(),
                        enableActivityDot = isActivityDotPresent
                    )
                    Avatar(
                        person,
                        size = AvatarSize.Size72,
                        enableActivityRings = false,
                        avatarToken = AnonymousAccentAvatarTokens(),
                        enableActivityDot = isActivityDotPresent
                    )
                }

                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.spacedBy(
                        12.dp,
                        Alignment.CenterHorizontally
                    ),
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    val person: Person = Person(
                        "Robin", "Counts",
                        isActive = isActive, status = AvatarStatus.DND, isOOO = isOOO
                    )

                    val personNoInitial: Person = Person(
                        "123", "456",
                        isActive = isActive, status = AvatarStatus.DND, isOOO = isOOO
                    )


                    Avatar(person, size = AvatarSize.Size16, enableActivityRings = true, enableActivityDot = isActivityDotPresent)
                    Avatar(person, size = AvatarSize.Size20, enableActivityRings = true, enableActivityDot = isActivityDotPresent)
                    Avatar(person, size = AvatarSize.Size24, enableActivityRings = true, enableActivityDot = isActivityDotPresent)
                    Avatar(person, size = AvatarSize.Size32, enableActivityRings = true, enableActivityDot = isActivityDotPresent)

                    Avatar(
                        personNoInitial,
                        size = AvatarSize.Size40,
                        enableActivityRings = true,
                        avatarToken = StandardInvertedAvatarTokens(),
                        enableActivityDot = isActivityDotPresent
                    )
                    Avatar(
                        personNoInitial,
                        size = AvatarSize.Size56,
                        enableActivityRings = true,
                        avatarToken = StandardInvertedAvatarTokens(),
                        enableActivityDot = isActivityDotPresent
                    )
                    Avatar(
                        personNoInitial,
                        size = AvatarSize.Size72,
                        enableActivityRings = true,
                        avatarToken = StandardInvertedAvatarTokens(),
                        enableActivityDot = isActivityDotPresent
                    )
                }

                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.spacedBy(
                        12.dp,
                        Alignment.CenterHorizontally
                    ),
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    val person: Person = Person(
                        "Wanda", "Howard",
                        isActive = isActive, status = AvatarStatus.Offline, isOOO = isOOO
                    )
                    val personNoName: Person = Person(
                        "", "",
                        isActive = isActive, status = AvatarStatus.Offline, isOOO = isOOO
                    )

                    Avatar(
                        person,
                        size = AvatarSize.Size16,
                        enableActivityRings = false,
                        avatarToken = StandardInvertedAvatarTokens(),
                        enableActivityDot = isActivityDotPresent
                    )
                    Avatar(
                        person,
                        size = AvatarSize.Size20,
                        enableActivityRings = true,
                        avatarToken = StandardInvertedAvatarTokens(),
                        enableActivityDot = isActivityDotPresent
                    )
                    Avatar(
                        person,
                        size = AvatarSize.Size24,
                        enableActivityRings = true,
                        avatarToken = StandardInvertedAvatarTokens(),
                        enableActivityDot = isActivityDotPresent
                    )
                    Avatar(
                        person,
                        size = AvatarSize.Size32,
                        enableActivityRings = true,
                        avatarToken = StandardInvertedAvatarTokens(),
                        enableActivityDot = isActivityDotPresent
                    )

                    Avatar(
                        personNoName,
                        size = AvatarSize.Size40,
                        enableActivityRings = false,
                        avatarToken = AnonymousAvatarTokens(),
                        enableActivityDot = isActivityDotPresent
                    )
                    Avatar(
                        personNoName,
                        size = AvatarSize.Size56,
                        enableActivityRings = true,
                        avatarToken = AnonymousAvatarTokens(),
                        enableActivityDot = isActivityDotPresent
                    )
                    Avatar(
                        personNoName,
                        size = AvatarSize.Size72,
                        enableActivityRings = true,
                        avatarToken = AnonymousAvatarTokens(),
                        enableActivityDot = isActivityDotPresent
                    )
                }

                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.spacedBy(
                        12.dp,
                        Alignment.CenterHorizontally
                    ),
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    val group: Group = Group(
                        listOf(
                            Person(
                                "Allan", "Munger",
                                image = R.drawable.avatar_allan_munger, isActive = isActive,
                                status = AvatarStatus.Available, isOOO = isOOO
                            ),
                            Person(
                                "Wanda", "Howard",
                                image = R.drawable.avatar_wanda_howard,
                                status = AvatarStatus.Busy, isOOO = isOOO
                            ),
                            Person(
                                "Kat", "Larson",
                                status = AvatarStatus.Busy, isOOO = isOOO
                            ),
                            Person(
                                "Amanda", "Brady",
                                image = R.drawable.avatar_amanda_brady, isActive = isActive,
                                status = AvatarStatus.Away, isOOO = isOOO
                            )
                        ), "Gang Of 4"
                    )

                    val groupNoName: Group = Group(
                        listOf(
                            Person(
                                "Allan", "Munger",
                                image = R.drawable.avatar_allan_munger, isActive = isActive,
                                status = AvatarStatus.Available, isOOO = isOOO
                            ),
                            Person(
                                "Wanda", "Howard",
                                image = R.drawable.avatar_wanda_howard,
                                status = AvatarStatus.Busy, isOOO = isOOO
                            ),
                            Person(
                                "Kat", "Larson",
                                status = AvatarStatus.Busy, isOOO = isOOO
                            ),
                            Person(
                                "Amanda", "Brady",
                                image = R.drawable.avatar_amanda_brady, isActive = isActive,
                                status = AvatarStatus.Away, isOOO = isOOO
                            )
                        ), ""
                    )

                    Avatar(group, size = AvatarSize.Size16)
                    Avatar(
                        group,
                        size = AvatarSize.Size20,
                        avatarToken = StandardInvertedAvatarTokens()
                    )
                    Avatar(
                        group,
                        size = AvatarSize.Size24,
                        avatarToken = StandardInvertedAvatarTokens()
                    )
                    Avatar(
                        group,
                        size = AvatarSize.Size32,
                        avatarToken = AnonymousAvatarTokens()
                    )

                    Avatar(
                        groupNoName,
                        size = AvatarSize.Size40,
                        avatarToken = AnonymousAccentAvatarTokens()
                    )
                    Avatar(group, size = AvatarSize.Size56)
                    Avatar(
                        groupNoName,
                        size = AvatarSize.Size72,
                        avatarToken = StandardInvertedAvatarTokens()
                    )
                }
            }
        }
    }
}
```

## File: src/main/java/com/microsoft/fluentuidemo/demos/V2AvatarCarouselActivity.kt
```kotlin
package com.microsoft.fluentuidemo.demos

import android.content.Context
import android.os.Bundle
import android.widget.Toast
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.text.BasicText
import androidx.compose.material.Divider
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.theme.token.controlTokens.AvatarCarouselSize
import com.microsoft.fluentui.theme.token.controlTokens.AvatarStatus
import com.microsoft.fluentui.tokenized.persona.AvatarCarousel
import com.microsoft.fluentui.tokenized.persona.AvatarCarouselItem
import com.microsoft.fluentui.tokenized.persona.Person
import com.microsoft.fluentuidemo.R
import com.microsoft.fluentuidemo.V2DemoActivity

const val AVATAR_CAROUSEL_LARGE_CAROUSEL = "Avatar Large carousel"
const val AVATAR_CAROUSEL_SMALL_CAROUSEL = "Avatar Small carousel"

class V2AvatarCarouselActivity : V2DemoActivity() {
    init {
        setupActivity(this)
    }

    override val paramsUrl = "https://github.com/microsoft/fluentui-android/wiki/Controls#params-2"
    override val controlTokensUrl =
        "https://github.com/microsoft/fluentui-android/wiki/Controls#control-tokens-2"

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        setActivityContent {
            CreateAvatarCarouselActivityUI()
        }
    }
}

@Composable
private fun createAvatarPersons(mContext: Context): ArrayList<AvatarCarouselItem> {
    return arrayListOf(
        AvatarCarouselItem(
            person = Person(
                "Allan",
                "Munger",
                image = R.drawable.avatar_allan_munger,
                isActive = true,
                status = AvatarStatus.Available,
                isOOO = false
            ),
            enableActivityRing = true,
            onItemClick = { mToast(mContext, "Allan") }
        ),
        AvatarCarouselItem(
            person = Person(
                "Amanda",
                "Brady",
                image = R.drawable.avatar_amanda_brady,
                isActive = true,
                status = AvatarStatus.Away,
                isOOO = false
            ),
            enableActivityRing = true,
            onItemClick = { mToast(mContext, "Amanda") }
        ),
        AvatarCarouselItem(
            person = Person(
                "Ashley",
                "McCarthy",
                image = R.drawable.avatar_ashley_mccarthy,
                isActive = true,
                status = AvatarStatus.Blocked,
                isOOO = false,
            ),
            enabled = false,
            onItemClick = { mToast(mContext, "Ashley") }
        ),
        AvatarCarouselItem(
            person = Person(
                "Wanda",
                "Howard",
                image = R.drawable.avatar_wanda_howard,
                isActive = true,
                status = AvatarStatus.Busy,
                isOOO = false
            ),
            enableActivityRing = false,
            onItemClick = { mToast(mContext, "Wanda") }
        ),
        AvatarCarouselItem(
            person = Person(
                "Celeste",
                "Burton",
                image = R.drawable.avatar_celeste_burton,
                isActive = true,
                status = AvatarStatus.Blocked,
                isOOO = false,
            ),
            enabled = false,
            onItemClick = { mToast(mContext, "Celeste") }
        ),
        AvatarCarouselItem(
            person = Person(
                "Cecil",
                "Folk",
                image = R.drawable.avatar_cecil_folk,
                isActive = true,
                status = AvatarStatus.Available,
                isOOO = false
            ),
            onItemClick = { mToast(mContext, "Cecil") }
        ),
        AvatarCarouselItem(
            person = Person(
                "Carlos",
                "Slattery",
                image = R.drawable.avatar_carlos_slattery,
                isActive = true,
                status = AvatarStatus.Offline,
                isOOO = false
            ),
            onItemClick = { mToast(mContext, "Carlos") }
        ),
        AvatarCarouselItem(
            person = Person(
                "Carole",
                "Poland",
                image = R.drawable.avatar_carole_poland,
                isActive = true,
                status = AvatarStatus.Unknown,
                isOOO = false
            ),
            enableActivityRing = true,
            onItemClick = { mToast(mContext, "Carole") }
        ),
        AvatarCarouselItem(
            person = Person(
                "Charlotte",
                "Waltson",
                image = R.drawable.avatar_charlotte_waltson,
                isActive = true,
                status = AvatarStatus.Blocked,
                isOOO = false
            ),
            enabled = false,
            onItemClick = { mToast(mContext, "Charlotte") }
        ),
        AvatarCarouselItem(
            person = Person(
                "Colin",
                "Badllinger",
                image = R.drawable.avatar_colin_ballinger,
                isActive = true,
                status = AvatarStatus.Available,
                isOOO = false
            ),
            onItemClick = { mToast(mContext, "Colin") }
        ),
        AvatarCarouselItem(
            person = Person(
                "Daisy",
                "Phillips",
                image = R.drawable.avatar_daisy_phillips,
                isActive = true,
                status = AvatarStatus.Available,
                isOOO = false
            ),
            onItemClick = { mToast(mContext, "Daisy") }
        ),
        AvatarCarouselItem(
            person = Person(
                "Elliot",
                "Woodward",
                image = R.drawable.avatar_elliot_woodward,
                isActive = true,
                status = AvatarStatus.Available,
                isOOO = false
            ),
            enableActivityRing = true,
            onItemClick = { mToast(mContext, "Elliot") }
        ),
        AvatarCarouselItem(
            person = Person(
                "Elvia",
                "Atkins",
                image = R.drawable.avatar_elvia_atkins,
                isActive = true,
                status = AvatarStatus.Blocked,
                isOOO = false
            ),
            enabled = false,
            onItemClick = { mToast(mContext, "Elvia") }
        )
    )
}

@Composable
private fun CreateAvatarCarouselActivityUI() {
    val mContext = LocalContext.current
    Column(
        verticalArrangement = Arrangement.spacedBy(16.dp),
        modifier = Modifier.padding(top = 8.dp)
    ) {
        BasicText(
            modifier = Modifier.padding(start = 8.dp),
            text = "Large Avatar Carousel",
            style = TextStyle(color = Color(0xFF2886DE))
        )
        AvatarCarousel(
            avatarList = createAvatarPersons(mContext),
            size = AvatarCarouselSize.Large,
            modifier = Modifier.testTag(AVATAR_CAROUSEL_LARGE_CAROUSEL)
        )
        Divider(Modifier.fillMaxWidth())
        BasicText(
            modifier = Modifier.padding(start = 8.dp),
            text = "Medium Avatar Carousel with Presence indicator",
            style = TextStyle(color = Color(0xFF2886DE))
        )
        AvatarCarousel(
            avatarList = createAvatarPersons(mContext),
            size = AvatarCarouselSize.Small,
            enablePresence = true,
            modifier = Modifier.testTag(AVATAR_CAROUSEL_SMALL_CAROUSEL)
        )
    }
}

var toast: Toast? = null
private fun mToast(context: Context, name: String) {
    toast?.cancel()
    toast = Toast.makeText(context, "Clicked on $name", Toast.LENGTH_SHORT)
    toast?.show()
}
```

## File: src/main/java/com/microsoft/fluentuidemo/demos/V2AvatarGroupActivity.kt
```kotlin
package com.microsoft.fluentuidemo.demos

import android.os.Bundle
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.text.BasicText
import androidx.compose.material.Divider
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.unit.dp
import com.example.theme.token.AnonymousAccentAvatarTokens
import com.example.theme.token.AnonymousAvatarTokens
import com.example.theme.token.StandardInvertedAvatarTokens
import com.microsoft.fluentui.theme.FluentTheme.aliasTokens
import com.microsoft.fluentui.theme.token.FluentAliasTokens
import com.microsoft.fluentui.theme.token.controlTokens.AvatarGroupStyle
import com.microsoft.fluentui.theme.token.controlTokens.AvatarSize
import com.microsoft.fluentui.theme.token.controlTokens.AvatarStatus
import com.microsoft.fluentui.tokenized.controls.Button
import com.microsoft.fluentui.tokenized.persona.AvatarGroup
import com.microsoft.fluentui.tokenized.persona.Group
import com.microsoft.fluentui.tokenized.persona.Person
import com.microsoft.fluentuidemo.R
import com.microsoft.fluentuidemo.V2DemoActivity

class V2AvatarGroupActivity : V2DemoActivity() {
    init {
        setupActivity(this)
    }

    override val paramsUrl = "https://github.com/microsoft/fluentui-android/wiki/Controls#params-3"
    override val controlTokensUrl =
        "https://github.com/microsoft/fluentui-android/wiki/Controls#control-tokens-3"

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        setActivityContent {
            Column(
                Modifier.background(Color.LightGray),
                verticalArrangement = Arrangement.spacedBy(5.dp, Alignment.CenterVertically)
            ) {
                var isActive by rememberSaveable { mutableStateOf(false) }
                var enablePresence by rememberSaveable { mutableStateOf(true) }
                var maxVisibleAvatar by rememberSaveable { mutableStateOf(1) }
                var enableActivityDot by rememberSaveable { mutableStateOf(false) }

                val group = Group(
                    listOf(
                        Person(
                            "Allan", "Munger",
                            image = R.drawable.avatar_allan_munger,
                            isActive = isActive
                        ),
                        Person(
                            "Amanda", "Brady",
                            isActive = !isActive, status = AvatarStatus.Offline
                        ),
                        Person(
                            "", "",
                            isActive = isActive, status = AvatarStatus.DND, isOOO = true
                        ),
                        Person(
                            "Carlos", "Slathery",
                            isActive = !isActive, status = AvatarStatus.Busy, isOOO = true
                        ),
                        Person(
                            "Celeste", "Burton",
                            image = R.drawable.avatar_celeste_burton,
                            isActive = isActive, status = AvatarStatus.Away
                        ),
                        Person(
                            "", "",
                            isActive = isActive, status = AvatarStatus.Unknown
                        ),
                        Person(
                            "Miguel", "Garcia",
                            image = R.drawable.avatar_miguel_garcia,
                            isActive = isActive, status = AvatarStatus.Blocked
                        )
                    ), "Fluent UI Android"
                )

                Row(
                    Modifier
                        .fillMaxWidth()
                        .padding(5.dp), horizontalArrangement = Arrangement.SpaceEvenly,
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Button(
                        onClick = { if (maxVisibleAvatar > 0) maxVisibleAvatar-- },
                        enabled = (maxVisibleAvatar > 0),
                        text = "-",
                        contentDescription = "Max Visible Avatar $maxVisibleAvatar"
                    )
                    BasicText("$maxVisibleAvatar")
                    Button(
                        onClick = { maxVisibleAvatar++ },
                        enabled = (maxVisibleAvatar < group.members.size),
                        text = "+",
                        contentDescription = "Max Visible Avatar $maxVisibleAvatar"
                    )
                    Button(
                        onClick = { enableActivityDot = !enableActivityDot },
                        text = "Show Activity Dot",
                        contentDescription = "Activity Dot ${if (enableActivityDot) "Enabled" else "Disabled"}"
                    )
                }

                Row(
                    Modifier
                        .fillMaxWidth()
                        .padding(5.dp), horizontalArrangement = Arrangement.SpaceEvenly,
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Button(
                        onClick = { isActive = !isActive },
                        text = "Swap Active State",
                        contentDescription = "Active Status ${if (isActive) "Active" else "Inactive"}"
                    )
                    Button(
                        onClick = { enablePresence = !enablePresence },
                        text = "Toggle Presence",
                        contentDescription = "Presence Status ${if (enablePresence) "Enabled" else "Disabled"}"
                    )
                }

                Divider()

                LazyColumn(modifier = Modifier.fillMaxWidth()) {
                    item {
                        Row(horizontalArrangement = Arrangement.Center) {
                            BasicText(
                                "Stack Group Style",
                                style = aliasTokens.typography[FluentAliasTokens.TypographyTokens.Title2]
                            )
                        }
                    }
                    item {
                        LazyRow(
                            horizontalArrangement = Arrangement.SpaceEvenly,
                            verticalAlignment = Alignment.CenterVertically
                        ) {
                            item {
                                BasicText("Size 16: ")
                            }
                            item {
                                AvatarGroup(
                                    group,
                                    size = AvatarSize.Size16,
                                    maxVisibleAvatar = maxVisibleAvatar,
                                    enablePresence = enablePresence,
                                    enableActivityDot = enableActivityDot
                                )
                            }
                        }
                    }
                    item {
                        LazyRow(
                            verticalAlignment = Alignment.CenterVertically,
                            modifier = Modifier.fillMaxSize()
                        ) {
                            item {
                                BasicText("Size 20: ")
                            }
                            item {
                                AvatarGroup(
                                    group,
                                    size = AvatarSize.Size20,
                                    maxVisibleAvatar = maxVisibleAvatar,
                                    enablePresence = enablePresence,
                                    avatarToken = AnonymousAvatarTokens(),
                                    enableActivityDot = enableActivityDot
                                )
                            }
                        }
                    }
                    item {
                        LazyRow(
                            verticalAlignment = Alignment.CenterVertically,
                            modifier = Modifier.fillMaxSize()
                        ) {
                            item {
                                BasicText("Size 24: ")
                            }
                            item {
                                AvatarGroup(
                                    group,
                                    size = AvatarSize.Size24,
                                    maxVisibleAvatar = maxVisibleAvatar,
                                    enablePresence = enablePresence,
                                    avatarToken = AnonymousAvatarTokens(),
                                    enableActivityDot = enableActivityDot
                                )
                            }
                        }
                    }
                    item {
                        LazyRow(
                            verticalAlignment = Alignment.CenterVertically,
                            modifier = Modifier.fillMaxSize()
                        ) {
                            item {
                                BasicText("Size 32: ")
                            }
                            item {
                                AvatarGroup(
                                    group,
                                    size = AvatarSize.Size32,
                                    maxVisibleAvatar = maxVisibleAvatar,
                                    enablePresence = enablePresence,
                                    enableActivityDot = enableActivityDot
                                )
                            }
                        }
                    }
                    item {
                        LazyRow(
                            verticalAlignment = Alignment.CenterVertically,
                            modifier = Modifier.fillMaxSize()
                        ) {
                            item {
                                BasicText("Size 40: ")
                            }
                            item {
                                AvatarGroup(
                                    group,
                                    size = AvatarSize.Size40,
                                    maxVisibleAvatar = maxVisibleAvatar,
                                    enablePresence = enablePresence,
                                    avatarToken = AnonymousAccentAvatarTokens(),
                                    enableActivityDot = enableActivityDot
                                )
                            }
                        }
                    }
                    item {
                        LazyRow(
                            verticalAlignment = Alignment.CenterVertically,
                            modifier = Modifier.fillMaxSize()
                        ) {
                            item {
                                BasicText("Size 56: ")
                            }
                            item {
                                AvatarGroup(
                                    group,
                                    size = AvatarSize.Size56,
                                    maxVisibleAvatar = maxVisibleAvatar,
                                    enablePresence = enablePresence,
                                    enableActivityDot = enableActivityDot
                                )
                            }
                        }
                    }
                    item {
                        LazyRow(
                            verticalAlignment = Alignment.CenterVertically,
                            modifier = Modifier.fillMaxSize()
                        ) {
                            item {
                                BasicText("Size 72: ")
                            }
                            item {
                                AvatarGroup(
                                    group,
                                    size = AvatarSize.Size72,
                                    maxVisibleAvatar = maxVisibleAvatar,
                                    enablePresence = enablePresence,
                                    avatarToken = StandardInvertedAvatarTokens(),
                                    enableActivityDot = enableActivityDot
                                )
                            }
                        }
                    }

                    item {
                        Row(horizontalArrangement = Arrangement.Center) {
                            BasicText(
                                "Pile Group Style",
                                style = aliasTokens.typography[FluentAliasTokens.TypographyTokens.Title2]
                            )
                        }
                    }
                    item {
                        LazyRow(
                            verticalAlignment = Alignment.CenterVertically,
                            modifier = Modifier.fillMaxSize()
                        ) {
                            item {
                                BasicText("Size 16: ")
                            }
                            item {
                                AvatarGroup(
                                    group,
                                    size = AvatarSize.Size16,
                                    style = AvatarGroupStyle.Pile,
                                    maxVisibleAvatar = maxVisibleAvatar,
                                    enablePresence = enablePresence,
                                    enableActivityDot = enableActivityDot
                                )
                            }
                        }
                    }
                    item {
                        LazyRow(
                            verticalAlignment = Alignment.CenterVertically,
                            modifier = Modifier.fillMaxSize()
                        ) {
                            item {
                                BasicText("Size 20: ")
                            }
                            item {
                                AvatarGroup(
                                    group,
                                    size = AvatarSize.Size20,
                                    style = AvatarGroupStyle.Pile,
                                    maxVisibleAvatar = maxVisibleAvatar,
                                    enablePresence = enablePresence,
                                    avatarToken = AnonymousAvatarTokens(),
                                    enableActivityDot = enableActivityDot
                                )
                            }
                        }
                    }
                    item {
                        LazyRow(
                            verticalAlignment = Alignment.CenterVertically,
                            modifier = Modifier.fillMaxSize()
                        ) {
                            item {
                                BasicText("Size 24: ")
                            }
                            item {
                                AvatarGroup(
                                    group,
                                    size = AvatarSize.Size24,
                                    style = AvatarGroupStyle.Pile,
                                    maxVisibleAvatar = maxVisibleAvatar,
                                    enablePresence = enablePresence,
                                    avatarToken = AnonymousAvatarTokens(),
                                    enableActivityDot = enableActivityDot
                                )
                            }
                        }
                    }
                    item {
                        LazyRow(
                            verticalAlignment = Alignment.CenterVertically,
                            modifier = Modifier.fillMaxSize()
                        ) {
                            item {
                                BasicText("Size 32: ")
                            }
                            item {
                                AvatarGroup(
                                    group,
                                    size = AvatarSize.Size32,
                                    style = AvatarGroupStyle.Pile,
                                    maxVisibleAvatar = maxVisibleAvatar,
                                    enablePresence = enablePresence,
                                    enableActivityDot = enableActivityDot
                                )
                            }
                        }
                    }
                    item {
                        LazyRow(
                            verticalAlignment = Alignment.CenterVertically,
                            modifier = Modifier.fillMaxSize()
                        ) {
                            item {
                                BasicText("Size 40: ")
                            }
                            item {
                                AvatarGroup(
                                    group,
                                    size = AvatarSize.Size40,
                                    style = AvatarGroupStyle.Pile,
                                    maxVisibleAvatar = maxVisibleAvatar,
                                    enablePresence = enablePresence,
                                    avatarToken = AnonymousAccentAvatarTokens(),
                                    enableActivityDot = enableActivityDot
                                )
                            }
                        }
                    }
                    item {
                        LazyRow(
                            verticalAlignment = Alignment.CenterVertically,
                            modifier = Modifier.fillMaxSize()
                        ) {
                            item {
                                BasicText("Size 56: ")
                            }
                            item {
                                AvatarGroup(
                                    group,
                                    size = AvatarSize.Size56,
                                    style = AvatarGroupStyle.Pile,
                                    maxVisibleAvatar = maxVisibleAvatar,
                                    enablePresence = enablePresence,
                                    enableActivityDot = enableActivityDot
                                )
                            }
                        }
                    }
                    item {
                        LazyRow(
                            verticalAlignment = Alignment.CenterVertically,
                            modifier = Modifier.fillMaxSize()
                        ) {
                            item { BasicText("Size 72: ") }
                            item {
                                AvatarGroup(
                                    group,
                                    size = AvatarSize.Size72,
                                    style = AvatarGroupStyle.Pile,
                                    maxVisibleAvatar = maxVisibleAvatar,
                                    enablePresence = enablePresence,
                                    avatarToken = StandardInvertedAvatarTokens(),
                                    enableActivityDot = enableActivityDot
                                )
                            }
                        }
                    }

                    item {
                        Row(horizontalArrangement = Arrangement.Center) {
                            BasicText(
                                "Pie Group Style",
                                style = aliasTokens.typography[FluentAliasTokens.TypographyTokens.Title2]
                            )
                        }
                    }
                    item {
                        LazyRow(
                            verticalAlignment = Alignment.CenterVertically,
                            modifier = Modifier.fillMaxSize()
                        ) {
                            item {
                                BasicText("Size 16: ")
                            }
                            item {
                                AvatarGroup(
                                    group,
                                    size = AvatarSize.Size16,
                                    style = AvatarGroupStyle.Pie,
                                    maxVisibleAvatar = maxVisibleAvatar,
                                    enableActivityDot = enableActivityDot
                                )
                            }
                        }
                    }
                    item {
                        LazyRow(
                            verticalAlignment = Alignment.CenterVertically,
                            modifier = Modifier.fillMaxSize()
                        ) {
                            item {
                                BasicText("Size 20: ")
                            }
                            item {
                                AvatarGroup(
                                    group,
                                    size = AvatarSize.Size20,
                                    style = AvatarGroupStyle.Pie,
                                    maxVisibleAvatar = maxVisibleAvatar,
                                    avatarToken = AnonymousAvatarTokens(),
                                    enableActivityDot = enableActivityDot
                                )
                            }
                        }
                    }
                    item {
                        LazyRow(
                            verticalAlignment = Alignment.CenterVertically,
                            modifier = Modifier.fillMaxSize()
                        ) {
                            item {
                                BasicText("Size 24: ")
                            }
                            item {
                                AvatarGroup(
                                    group,
                                    size = AvatarSize.Size24,
                                    style = AvatarGroupStyle.Pie,
                                    maxVisibleAvatar = maxVisibleAvatar,
                                    avatarToken = AnonymousAvatarTokens(),
                                    enableActivityDot = enableActivityDot
                                )
                            }
                        }
                    }
                    item {
                        LazyRow(
                            verticalAlignment = Alignment.CenterVertically,
                            modifier = Modifier.fillMaxSize()
                        ) {
                            item {
                                BasicText("Size 32: ")
                            }
                            item {
                                AvatarGroup(
                                    group,
                                    size = AvatarSize.Size32,
                                    style = AvatarGroupStyle.Pie,
                                    maxVisibleAvatar = maxVisibleAvatar,
                                    enableActivityDot = enableActivityDot
                                )
                            }
                        }
                    }
                    item {
                        LazyRow(
                            verticalAlignment = Alignment.CenterVertically,
                            modifier = Modifier.fillMaxSize()
                        ) {
                            item {
                                BasicText("Size 40: ")
                            }
                            item {
                                AvatarGroup(
                                    group,
                                    size = AvatarSize.Size40,
                                    style = AvatarGroupStyle.Pie,
                                    maxVisibleAvatar = maxVisibleAvatar,
                                    avatarToken = AnonymousAccentAvatarTokens(),
                                    enableActivityDot = enableActivityDot
                                )
                            }
                        }
                    }
                    item {
                        LazyRow(
                            verticalAlignment = Alignment.CenterVertically,
                            modifier = Modifier.fillMaxSize()
                        ) {
                            item {
                                BasicText("Size 56: ")
                            }
                            item {
                                AvatarGroup(
                                    group,
                                    size = AvatarSize.Size56,
                                    style = AvatarGroupStyle.Pie,
                                    maxVisibleAvatar = maxVisibleAvatar,
                                    enableActivityDot = enableActivityDot
                                )
                            }
                        }
                    }
                    item {
                        LazyRow(
                            verticalAlignment = Alignment.CenterVertically,
                            modifier = Modifier.fillMaxSize()
                        ) {
                            item { BasicText("Size 72: ") }
                            item {
                                AvatarGroup(
                                    group,
                                    size = AvatarSize.Size72,
                                    style = AvatarGroupStyle.Pie,
                                    maxVisibleAvatar = maxVisibleAvatar,
                                    avatarToken = StandardInvertedAvatarTokens(),
                                    enableActivityDot = enableActivityDot
                                )
                            }
                        }
                    }
                }
            }
        }
    }
}
```

## File: src/main/java/com/microsoft/fluentuidemo/demos/V2BadgeActivity.kt
```kotlin
package com.microsoft.fluentuidemo.demos

import android.os.Bundle
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.text.BasicText
import androidx.compose.ui.Alignment.Companion.CenterVertically
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.ThemeMode
import com.microsoft.fluentui.theme.token.FluentAliasTokens
import com.microsoft.fluentui.theme.token.controlTokens.AppBarSize
import com.microsoft.fluentui.theme.token.controlTokens.BadgeType
import com.microsoft.fluentui.tokenized.notification.Badge
import com.microsoft.fluentuidemo.R
import com.microsoft.fluentuidemo.V2DemoActivity

const val BADGE_DOT = "Dot Badge"
const val BADGE_CHARACTER = "Character Badge"
const val BADGE_LIST = "List Badge"

class V2BadgeActivity : V2DemoActivity() {
    override val appBarSize = AppBarSize.Medium

    init {
        setupActivity(this)
    }

    override val paramsUrl = "https://github.com/microsoft/fluentui-android/wiki/Controls#params-4"
    override val controlTokensUrl =
        "https://github.com/microsoft/fluentui-android/wiki/Controls#control-tokens-4"

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        setActivityContent {
            val title1Font =
                FluentTheme.aliasTokens.typography[FluentAliasTokens.TypographyTokens.Title1]
            val title2Font =
                FluentTheme.aliasTokens.typography[FluentAliasTokens.TypographyTokens.Title2]

            Column(
                Modifier
                    .fillMaxSize()
                    .background(Color.Gray)
            ) {
                BasicText(
                    text = resources.getString(R.string.badge_notification_badge),
                    style = title1Font.merge(TextStyle(color = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value())),
                    modifier = Modifier.padding(8.dp)
                )
                Row(Modifier.padding(16.dp), verticalAlignment = CenterVertically) {
                    BasicText(
                        text = resources.getString(R.string.badge_notification_dot),
                        style = title2Font.merge(TextStyle(color = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value()))
                    )
                    Spacer(modifier = Modifier.width(16.dp))
                    Badge(modifier = Modifier.testTag(BADGE_DOT))
                }
                Row(Modifier.padding(16.dp), verticalAlignment = CenterVertically) {
                    BasicText(
                        text = resources.getString(R.string.badge_notification_character),
                        style = title2Font.merge(TextStyle(color = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value()))
                    )
                    Spacer(modifier = Modifier.width(16.dp))
                    LazyRow {
                        item {
                            Spacer(modifier = Modifier.width(8.dp))
                            Badge(
                                text = "1",
                                badgeType = BadgeType.Character,
                                modifier = Modifier.testTag(BADGE_CHARACTER)
                            )
                        }
                        item {
                            Spacer(modifier = Modifier.width(8.dp))
                            Badge(text = "2", badgeType = BadgeType.Character)
                        }
                        item {
                            Spacer(modifier = Modifier.width(8.dp))
                            Badge(text = "8", badgeType = BadgeType.Character)
                        }
                        item {
                            Spacer(modifier = Modifier.width(8.dp))
                            Badge(text = "12", badgeType = BadgeType.Character)
                        }
                        item {
                            Spacer(modifier = Modifier.width(8.dp))
                            Badge(text = "123", badgeType = BadgeType.Character)
                        }
                        item {
                            Spacer(modifier = Modifier.width(8.dp))
                            Badge(text = "12345678910", badgeType = BadgeType.Character)
                        }
                        item {
                            Spacer(modifier = Modifier.width(8.dp))
                            Badge(text = "Badge", badgeType = BadgeType.Character)
                        }
                    }
                }
                Row(Modifier.padding(16.dp)) {
                    BasicText(
                        text = "List",
                        style = title2Font.merge(
                            TextStyle(
                                color = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value(
                                    themeMode = FluentTheme.themeMode
                                )
                            )
                        )
                    )
                    Spacer(modifier = Modifier.width(16.dp))
                    LazyRow {
                        item {
                            Spacer(modifier = Modifier.width(8.dp))
                            Badge(
                                text = "1",
                                badgeType = BadgeType.List,
                                modifier = Modifier.testTag(BADGE_LIST)
                            )
                        }
                        item {
                            Spacer(modifier = Modifier.width(8.dp))
                            Badge(text = "2", badgeType = BadgeType.List)
                        }
                        item {
                            Spacer(modifier = Modifier.width(8.dp))
                            Badge(text = "8", badgeType = BadgeType.List)
                        }
                        item {
                            Spacer(modifier = Modifier.width(8.dp))
                            Badge(text = "12", badgeType = BadgeType.List)
                        }
                        item {
                            Spacer(modifier = Modifier.width(8.dp))
                            Badge(text = "123", badgeType = BadgeType.List)
                        }
                        item {
                            Spacer(modifier = Modifier.width(8.dp))
                            Badge(text = "12345678910", badgeType = BadgeType.List)
                        }
                        item {
                            Spacer(modifier = Modifier.width(8.dp))
                            Badge(text = "Badge", badgeType = BadgeType.List)
                        }
                    }
                }
            }
        }
    }
}
```

## File: src/main/java/com/microsoft/fluentuidemo/demos/V2BannerActivity.kt
```kotlin
package com.microsoft.fluentuidemo.demos

import android.content.Context
import android.os.Bundle
import android.widget.Toast
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxHeight
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.outlined.Clear
import androidx.compose.material.icons.outlined.Info
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.theme.token.FluentIcon
import com.microsoft.fluentui.tokenized.controls.ToggleSwitch
import com.microsoft.fluentui.tokenized.listitem.ChevronOrientation
import com.microsoft.fluentui.tokenized.listitem.ListItem
import com.microsoft.fluentui.tokenized.notification.Banner
import com.microsoft.fluentuidemo.R
import com.microsoft.fluentuidemo.V2DemoActivity

class V2BannerActivity : V2DemoActivity() {
    init {
        setupActivity(this)
    }

    override val paramsUrl = "https://github.com/microsoft/fluentui-android/wiki/Controls#params-8"
    override val controlTokensUrl =
        "https://github.com/microsoft/fluentui-android/wiki/Controls#control-tokens-8"

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        setActivityContent {
            CreateBannerActivityUI(this)
        }
    }

    @Composable
    private fun CreateBannerActivityUI(context: Context) {
        var icon: Boolean by rememberSaveable { mutableStateOf(true) }
        var actionButtonText: Boolean by rememberSaveable { mutableStateOf(true) }
        var actionButtonIcon: Boolean by rememberSaveable { mutableStateOf(false) }
        var accessoryActionButtons: Boolean by rememberSaveable { mutableStateOf(false) }
        var centerText: Boolean by rememberSaveable { mutableStateOf(false) }
        Column(verticalArrangement = Arrangement.spacedBy(16.dp)) {
            ListItem.SectionHeader(
                title = LocalContext.current.resources.getString(R.string.app_modifiable_parameters),
                enableChevron = true,
                enableContentOpenCloseTransition = true,
                chevronOrientation = ChevronOrientation(90f, 0f),
            ) {
                LazyColumn(Modifier.fillMaxHeight(0.5F)) {
                    item {
                        ListItem.Item(
                            text = LocalContext.current.resources.getString(R.string.fluentui_icon),
                            subText = if (!icon)
                                LocalContext.current.resources.getString(R.string.fluentui_disabled)
                            else
                                LocalContext.current.resources.getString(R.string.fluentui_enabled),
                            trailingAccessoryContent = {
                                ToggleSwitch(
                                    onValueChange = {
                                        icon = it
                                    },
                                    checkedState = icon
                                )
                            }
                        )
                    }
                    item {
                        ListItem.Item(
                            text = LocalContext.current.resources.getString(R.string.fluentui_action_button),
                            subText = if (!actionButtonText)
                                LocalContext.current.resources.getString(R.string.fluentui_disabled)
                            else
                                LocalContext.current.resources.getString(R.string.fluentui_enabled),
                            trailingAccessoryContent = {
                                ToggleSwitch(
                                    onValueChange = {
                                        actionButtonText = it
                                        if (actionButtonText) {
                                            actionButtonIcon = false
                                        }
                                    },
                                    checkedState = actionButtonText
                                )
                            }
                        )
                    }
                    item {
                        ListItem.Item(
                            text = LocalContext.current.resources.getString(R.string.fluentui_action_button_icon),
                            subText = if (!actionButtonIcon)
                                LocalContext.current.resources.getString(R.string.fluentui_disabled)
                            else
                                LocalContext.current.resources.getString(R.string.fluentui_enabled),
                            trailingAccessoryContent = {
                                ToggleSwitch(
                                    onValueChange = {
                                        actionButtonIcon = it
                                        if (actionButtonIcon) {
                                            actionButtonText = false
                                        }
                                    },
                                    checkedState = actionButtonIcon
                                )
                            }
                        )
                    }
                    item {
                        ListItem.Item(
                            text = LocalContext.current.resources.getString(R.string.fluentui_accessory_button),
                            subText = if (!accessoryActionButtons)
                                LocalContext.current.resources.getString(R.string.fluentui_disabled)
                            else
                                LocalContext.current.resources.getString(R.string.fluentui_enabled),
                            trailingAccessoryContent = {
                                ToggleSwitch(
                                    onValueChange = {
                                        accessoryActionButtons = it
                                    },
                                    checkedState = accessoryActionButtons
                                )
                            }
                        )
                    }
                    item {
                        ListItem.Item(
                            text = LocalContext.current.resources.getString(R.string.fluentui_center),
                            subText = if (!centerText)
                                LocalContext.current.resources.getString(R.string.fluentui_disabled)
                            else
                                LocalContext.current.resources.getString(R.string.fluentui_enabled),
                            trailingAccessoryContent = {
                                ToggleSwitch(
                                    onValueChange = {
                                        centerText = it
                                        if (centerText) {
                                            icon = false
                                            actionButtonText = false
                                            actionButtonIcon = false
                                            accessoryActionButtons = false
                                        }
                                    },
                                    checkedState = centerText
                                )
                            }
                        )
                    }
                }
            }
            Box(modifier = Modifier.padding(horizontal = 8.dp)) {
                Banner(
                    text = "Uploading 1 file",
                    isTextCentered = centerText,
                    leadingIcon = if (icon) {
                        FluentIcon(light = Icons.Outlined.Info)
                    } else null,
                    actionButtonOnClick = { Toast.makeText(
                        context,
                        "Action button clicked",
                        Toast.LENGTH_SHORT
                    ).show() },
                    actionButtonText = if (actionButtonText) "Review" else null,
                    actionButtonIcon = if (actionButtonIcon) FluentIcon(light = Icons.Outlined.Clear) else null,
                    accessoryTextButton1 = if (accessoryActionButtons) "Action1" else null,
                    accessoryTextButton2 = if (accessoryActionButtons) "Action2" else null,
                    accessoryTextButton1OnClick = { Toast.makeText(
                        context,
                        "Accessory button1 clicked",
                        Toast.LENGTH_SHORT
                    ).show() },
                    accessoryTextButton2OnClick = { Toast.makeText(
                        context,
                        "Accessory button2 clicked",
                        Toast.LENGTH_SHORT
                    ).show() }
                )
            }
        }

    }
}
```

## File: src/main/java/com/microsoft/fluentuidemo/demos/V2BasicChipActivity.kt
```kotlin
package com.microsoft.fluentuidemo.demos

import android.os.Bundle
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Arrangement.Absolute.spacedBy
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.padding
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.outlined.Add
import androidx.compose.material.icons.outlined.ShoppingCart
import androidx.compose.runtime.Composable
import androidx.compose.runtime.mutableStateListOf
import androidx.compose.runtime.saveable.listSaver
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.runtime.toMutableStateList
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.FluentAliasTokens
import com.microsoft.fluentui.theme.token.FluentIcon
import com.microsoft.fluentui.theme.token.Icon
import com.microsoft.fluentui.theme.token.StateBrush
import com.microsoft.fluentui.theme.token.StateColor
import com.microsoft.fluentui.theme.token.controlTokens.BasicChipInfo
import com.microsoft.fluentui.theme.token.controlTokens.BasicChipTokens
import com.microsoft.fluentui.tokenized.controls.BasicChip
import com.microsoft.fluentui.tokenized.controls.Label
import com.microsoft.fluentuidemo.V2DemoActivity

class V2BasicChipActivity : V2DemoActivity() {
    init {
        setupActivity(this)
    }

    override val paramsUrl = "https://github.com/microsoft/fluentui-android/wiki/Controls#params-13"
    override val controlTokensUrl =
        "https://github.com/microsoft/fluentui-android/wiki/Controls#control-tokens-13"

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        setActivityContent {
            CreateBasicChipActivityUI()
        }
    }

    @Composable
    private fun CreateBasicChipActivityUI() {
        var selectedList = rememberSaveable(
            saver = listSaver(
                save = { stateList ->
                    if (stateList.isNotEmpty()) {
                        val first = stateList.first()
                        if (!canBeSaved(first)) {
                            throw IllegalStateException("${first::class} cannot be saved. By default only types which can be stored in the Bundle class can be saved.")
                        }
                    }
                    stateList.toList()
                },
                restore = { it.toMutableStateList() }
            )) {
            mutableStateListOf(
                false,
                false,
                false,
                false,
                false,
                false,
                false,
                false,
                false,
                false
            )
        }

        class CustomChipToken1 : BasicChipTokens() {
            @Composable
            override fun backgroundBrush(basicChipInfo: BasicChipInfo): StateBrush {
                return StateBrush(
                    rest = SolidColor(
                        FluentTheme.aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background5].value(
                            themeMode = FluentTheme.themeMode
                        )
                    ),
                    selected = SolidColor(
                        FluentTheme.aliasTokens.brandBackgroundColor[FluentAliasTokens.BrandBackgroundColorTokens.BrandBackgroundTint].value(
                            themeMode = FluentTheme.themeMode
                        )
                    )
                )
            }

            @Composable
            override fun textColor(basicChipInfo: BasicChipInfo): StateColor {
                return StateColor(
                    rest = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground2].value(
                        themeMode = FluentTheme.themeMode
                    ),
                    selected = FluentTheme.aliasTokens.brandBackgroundColor[FluentAliasTokens.BrandBackgroundColorTokens.BrandBackground1Selected].value(
                        themeMode = FluentTheme.themeMode
                    )
                )
            }
        }

        class CustomChipToken2 : BasicChipTokens() {
            @Composable
            override fun backgroundBrush(basicChipInfo: BasicChipInfo): StateBrush {
                return StateBrush(
                    rest = SolidColor(
                        FluentTheme.aliasTokens.brandBackgroundColor[FluentAliasTokens.BrandBackgroundColorTokens.BrandBackgroundTint].value(
                            themeMode = FluentTheme.themeMode
                        )
                    ),
                    selected = SolidColor(
                        FluentTheme.aliasTokens.brandBackgroundColor[FluentAliasTokens.BrandBackgroundColorTokens.BrandBackground1].value(
                            themeMode = FluentTheme.themeMode
                        )
                    ),
                    disabled = SolidColor(
                        FluentTheme.aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background5].value(
                            themeMode = FluentTheme.themeMode
                        )
                    )
                )
            }

            @Composable
            override fun textColor(basicChipInfo: BasicChipInfo): StateColor {
                return StateColor(
                    rest = FluentTheme.aliasTokens.brandForegroundColor[FluentAliasTokens.BrandForegroundColorTokens.BrandForegroundTint].value(
                        themeMode = FluentTheme.themeMode
                    ),
                    selected = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundOnColor].value(
                        themeMode = FluentTheme.themeMode
                    ),
                    disabled = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundDisable1].value(
                        themeMode = FluentTheme.themeMode
                    )
                )
            }
        }
        Column(
            modifier = Modifier.padding(16.dp),
            verticalArrangement = Arrangement.spacedBy(16.dp)
        ) {
            Label(text = "Basic Chip", textStyle = FluentAliasTokens.TypographyTokens.Body1Strong)
            Row(horizontalArrangement = spacedBy(8.dp)) {
                BasicChip(
                    label = "Word",
                    selected = selectedList[0],
                    onClick = { selectedList[0] = !selectedList[0] })
                BasicChip(
                    label = "Excel",
                    selected = selectedList[1],
                    onClick = { selectedList[1] = !selectedList[1] })
                BasicChip(
                    label = "PowerPoint",
                    selected = selectedList[2],
                    onClick = { selectedList[2] = !selectedList[2] })
                BasicChip(
                    label = "PDF",
                    selected = selectedList[3],
                    onClick = { selectedList[3] = !selectedList[3] })
            }
            Label(text = "Chip States", textStyle = FluentAliasTokens.TypographyTokens.Body1Strong)
            Row(horizontalArrangement = spacedBy(8.dp)) {
                BasicChip(
                    label = "Enabled", onClick = {})
                BasicChip(
                    label = "Selected",
                    selected = true, onClick = {})
                BasicChip(
                    label = "Disabled",
                    enabled = false
                )
                BasicChip(
                    label = "Static"
                )
            }
            Label(
                text = "Time (Custom Color)",
                textStyle = FluentAliasTokens.TypographyTokens.Body1Strong
            )
            Row(horizontalArrangement = spacedBy(8.dp)) {
                BasicChip(
                    basicChipTokens = CustomChipToken2(),
                    label = "Today",
                    selected = selectedList[4],
                    onClick = { selectedList[4] = !selectedList[4] })
                BasicChip(
                    basicChipTokens = CustomChipToken2(),
                    label = "Yesterday",
                    selected = selectedList[5],
                    onClick = { selectedList[5] = !selectedList[5] })
                BasicChip(
                    basicChipTokens = CustomChipToken2(),
                    label = "Last Week",
                    selected = selectedList[6],
                    onClick = { selectedList[6] = !selectedList[6] })
            }
            Label(
                text = "Custom UI Chips",
                textStyle = FluentAliasTokens.TypographyTokens.Body1Strong
            )
            Row(horizontalArrangement = spacedBy(8.dp)) {
                BasicChip(
                    label = "Label",
                    leadingAccessory = { Icon(FluentIcon(Icons.Outlined.ShoppingCart)) },
                    selected = selectedList[7],
                    onClick = { selectedList[7] = !selectedList[7] })
                BasicChip(
                    label = "Label",
                    trailingAccessory = { Icon(FluentIcon(Icons.Outlined.Add)) },
                    selected = selectedList[8],
                    onClick = { selectedList[8] = !selectedList[8] })
            }
            Label(
                text = "Custom Color Chips",
                textStyle = FluentAliasTokens.TypographyTokens.Body1Strong
            )
            Row(horizontalArrangement = spacedBy(8.dp)) {
                BasicChip(
                    label = "Label",
                    selected = selectedList[9],
                    onClick = { selectedList[9] = !selectedList[9] },
                    basicChipTokens = CustomChipToken1()
                )
            }
        }
    }
}
```

## File: src/main/java/com/microsoft/fluentuidemo/demos/V2BasicControlsActivity.kt
```kotlin
package com.microsoft.fluentuidemo.demos

import android.os.Bundle
import android.widget.Toast
import androidx.compose.foundation.focusable
import androidx.compose.foundation.interaction.MutableInteractionSource
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.selection.selectable
import androidx.compose.foundation.text.BasicText
import androidx.compose.material.Divider
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.semantics.Role
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import com.example.theme.token.MyControlTokens
import com.example.theme.token.OneNoteAliasTokens
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.ThemeMode
import com.microsoft.fluentui.theme.token.AliasTokens
import com.microsoft.fluentui.theme.token.ControlTokens
import com.microsoft.fluentui.theme.token.FluentAliasTokens
import com.microsoft.fluentui.tokenized.controls.CheckBox
import com.microsoft.fluentui.tokenized.controls.RadioButton
import com.microsoft.fluentui.tokenized.controls.ToggleSwitch
import com.microsoft.fluentuidemo.V2DemoActivity
import androidx.compose.ui.platform.testTag

// Tags used for testing
const val BASIC_CONTROLS_TOGGLE_ENABLE = "Basic Controls Toggle Switch Enable"
const val BASIC_CONTROLS_CHECK_BOX = "Basic Controls Check Box"
const val BASIC_CONTROLS_RADIO_1 = "Basic Controls Radio Button 1"
const val BASIC_CONTROLS_RADIO_2 = "Basic Controls Radio Button 2"

class V2BasicControlsActivity : V2DemoActivity() {
    init {
        setupActivity(this)
    }

    override val paramsUrl = "https://github.com/microsoft/fluentui-android/wiki/Controls#params-5"
    override val controlTokensUrl =
        "https://github.com/microsoft/fluentui-android/wiki/Controls#control-tokens-5"

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        val context = this
        setActivityContent {
            Column(
                verticalArrangement = Arrangement.spacedBy(10.dp),
                modifier = Modifier.padding(16.dp)
            ) {

                var checked by remember { mutableStateOf(true) }
                var enabled by remember { mutableStateOf(false) }
                val themes = listOf("Theme 1", "Theme 2")
                val selectedOption = remember { mutableStateOf(themes[0]) }

                Row(
                    horizontalArrangement = Arrangement.spacedBy(30.dp),
                    verticalAlignment = Alignment.CenterVertically,
                    modifier = Modifier.fillMaxWidth()
                ) {
                    BasicText(
                        text = "Toggle Switch enable",
                        modifier = Modifier
                            .weight(1F)
                            .focusable(false),
                        style = TextStyle(
                            color = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value(
                                themeMode = FluentTheme.themeMode
                            ),
                            fontWeight = FontWeight.Bold
                        )
                    )
                    ToggleSwitch(
                        onValueChange = {
                            enabled = it
                            Toast.makeText(context, "Switch 1 Toggled", Toast.LENGTH_SHORT).show()
                        }, enabledSwitch = true,
                        modifier = Modifier.testTag(BASIC_CONTROLS_TOGGLE_ENABLE),
                        checkedState = enabled
                    )
                }

                Divider()

                Row(
                    horizontalArrangement = Arrangement.spacedBy(30.dp),
                    verticalAlignment = Alignment.CenterVertically,
                    modifier = Modifier.fillMaxWidth()
                ) {
                    BasicText(
                        text = "Toggle Global/Alias Theme",
                        modifier = Modifier
                            .weight(1F)
                            .focusable(false),
                        style = TextStyle(
                            fontWeight = FontWeight.Bold,
                            color = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value(
                                themeMode = FluentTheme.themeMode
                            )
                        )
                    )
                    ToggleSwitch(
                        enabledSwitch = enabled,
                        checkedState = checked,
                        onValueChange = {
                            checked = it
                            if (checked) {
                                FluentTheme.updateAliasTokens(AliasTokens())
                                FluentTheme.updateControlTokens(ControlTokens())
                                selectedOption.value = themes[0]
                            } else {
                                FluentTheme.updateAliasTokens(OneNoteAliasTokens())
                                FluentTheme.updateControlTokens(MyControlTokens())
                                selectedOption.value = themes[1]
                            }
                            Toast.makeText(context, "Switch 2 Toggled", Toast.LENGTH_SHORT)
                                .show()
                        })
                }

                Row(
                    horizontalArrangement = Arrangement.spacedBy(30.dp),
                    verticalAlignment = Alignment.CenterVertically,
                    modifier = Modifier.fillMaxWidth()
                ) {
                    BasicText(
                        text = "Toggle Global/Alias Theme",
                        modifier = Modifier
                            .weight(1F)
                            .focusable(false),
                        style = TextStyle(
                            fontWeight = FontWeight.Bold,
                            color = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value(
                                themeMode = FluentTheme.themeMode
                            )
                        )
                    )
                    CheckBox(enabled = enabled, checked = !checked,
                        modifier = Modifier.testTag(BASIC_CONTROLS_CHECK_BOX),
                        onCheckedChanged = {
                            checked = !it
                            if (checked) {
                                FluentTheme.updateAliasTokens(AliasTokens())
                                FluentTheme.updateControlTokens(ControlTokens())
                                selectedOption.value = themes[0]
                            } else {
                                FluentTheme.updateAliasTokens(OneNoteAliasTokens())
                                FluentTheme.updateControlTokens(MyControlTokens())
                                selectedOption.value = themes[1]
                            }
                        })
                }

                themes.forEachIndexed { i, theme ->
                    Row(
                        horizontalArrangement = Arrangement.spacedBy(30.dp),
                        verticalAlignment = Alignment.CenterVertically,
                        modifier = Modifier
                            .fillMaxWidth()
                            .selectable(
                                selected = (theme == selectedOption.value),
                                onClick = { },
                                role = Role.RadioButton,
                                interactionSource = remember { MutableInteractionSource() },
                                indication = null
                            )
                    ) {
                        BasicText(
                            text = theme,
                            modifier = Modifier
                                .weight(1F)
                                .focusable(false),
                            style = TextStyle(
                                fontWeight = FontWeight.Bold,
                                color = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value(
                                    themeMode = FluentTheme.themeMode
                                )
                            )
                        )
                        RadioButton(enabled = enabled,
                            selected = (selectedOption.value == theme),
                            modifier = Modifier.testTag(if (i == 0) BASIC_CONTROLS_RADIO_1 else BASIC_CONTROLS_RADIO_2),
                            onClick = {
                                selectedOption.value = theme
                                checked = if (theme == "Theme 1") {
                                    FluentTheme.updateAliasTokens(AliasTokens())
                                    FluentTheme.updateControlTokens(ControlTokens())
                                    true
                                } else {
                                    FluentTheme.updateAliasTokens(OneNoteAliasTokens())
                                    FluentTheme.updateControlTokens(MyControlTokens())
                                    false
                                }
                                Toast.makeText(
                                    context,
                                    "Radio Button: $theme selected",
                                    Toast.LENGTH_SHORT
                                ).show()
                            }
                        )
                    }
                }
            }
        }
    }
}
```

## File: src/main/java/com/microsoft/fluentuidemo/demos/V2BottomDrawerActivity.kt
```kotlin
package com.microsoft.fluentuidemo.demos

import SearchViewModel
import SearchViewModelFactory
import Searchable
import android.content.res.Configuration
import android.os.Bundle
import androidx.compose.animation.core.animateDpAsState
import androidx.compose.foundation.clickable
import androidx.compose.foundation.gestures.Orientation
import androidx.compose.foundation.gestures.draggable
import androidx.compose.foundation.gestures.rememberDraggableState
import androidx.compose.foundation.gestures.scrollBy
import androidx.compose.foundation.interaction.MutableInteractionSource
import androidx.compose.foundation.interaction.collectIsPressedAsState
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.itemsIndexed
import androidx.compose.foundation.lazy.rememberLazyListState
import androidx.compose.foundation.selection.toggleable
import androidx.compose.foundation.text.BasicText
import androidx.compose.material.Slider
import androidx.compose.material.SliderDefaults
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableFloatStateOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.platform.LocalConfiguration
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.semantics.Role
import androidx.compose.ui.semantics.clearAndSetSemantics
import androidx.compose.ui.semantics.contentDescription
import androidx.compose.ui.semantics.role
import androidx.compose.ui.semantics.stateDescription
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import androidx.lifecycle.viewmodel.compose.viewModel
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.FluentAliasTokens
import com.microsoft.fluentui.theme.token.FluentAliasTokens.NeutralBackgroundColorTokens.Background1
import com.microsoft.fluentui.theme.token.FluentAliasTokens.NeutralBackgroundColorTokens.Background1Pressed
import com.microsoft.fluentui.theme.token.FluentAliasTokens.NeutralBackgroundColorTokens.Background1Selected
import com.microsoft.fluentui.theme.token.StateBrush
import com.microsoft.fluentui.theme.token.controlTokens.AvatarStatus
import com.microsoft.fluentui.theme.token.controlTokens.BorderType
import com.microsoft.fluentui.theme.token.controlTokens.ListItemInfo
import com.microsoft.fluentui.theme.token.controlTokens.ListItemTokens
import com.microsoft.fluentui.tokenized.SearchBar
import com.microsoft.fluentui.tokenized.controls.RadioButton
import com.microsoft.fluentui.tokenized.controls.ToggleSwitch
import com.microsoft.fluentui.tokenized.drawer.BottomDrawer
import com.microsoft.fluentui.tokenized.drawer.DrawerValue
import com.microsoft.fluentui.tokenized.drawer.rememberBottomDrawerState
import com.microsoft.fluentui.tokenized.listitem.ListItem
import com.microsoft.fluentui.util.KeyboardVisibilityObserver
import com.microsoft.fluentui.util.getStringResource
import com.microsoft.fluentuidemo.R
import com.microsoft.fluentuidemo.V2DemoActivity
import com.microsoft.fluentuidemo.util.PrimarySurfaceContent
import com.microsoft.fluentuidemo.util.getAndroidViewAsContent
import com.microsoft.fluentuidemo.util.getDrawerAsContent
import com.microsoft.fluentuidemo.util.getDynamicListGeneratorAsContent
import generateUniqueId
import kotlinx.coroutines.launch

class V2BottomDrawerActivity : V2DemoActivity() {
    init {
        setupActivity(this)
    }

    override val paramsUrl = "https://github.com/microsoft/fluentui-android/wiki/Controls#params-9"
    override val controlTokensUrl =
        "https://github.com/microsoft/fluentui-android/wiki/Controls#control-tokens-9"

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setActivityContent {
            CreateActivityUI()
        }
    }
}

@Composable
private fun CreateActivityUI() {
    var scrimVisible by rememberSaveable { mutableStateOf(true) }
    var dynamicSizeContent by rememberSaveable { mutableStateOf(false) }
    var nestedDrawerContent by rememberSaveable { mutableStateOf(false) }
    var listContent by rememberSaveable { mutableStateOf(true) }
    var searchableDrawerContent by rememberSaveable { mutableStateOf(false) }
    var expandable by rememberSaveable { mutableStateOf(true) }
    var skipOpenState by rememberSaveable { mutableStateOf(false) }
    var selectedContent by rememberSaveable { mutableStateOf(ContentType.FULL_SCREEN_SCROLLABLE_CONTENT) }
    var slideOver by rememberSaveable { mutableStateOf(false) }
    var showHandle by rememberSaveable { mutableStateOf(true) }
    var enableSwipeDismiss by rememberSaveable { mutableStateOf(true) }
    var maxLandscapeWidthFraction by rememberSaveable { mutableFloatStateOf(1F) }
    var preventDismissalOnScrimClick by rememberSaveable { mutableStateOf(false) }
    var isLandscapeOrientation: Boolean =
        LocalConfiguration.current.orientation == Configuration.ORIENTATION_LANDSCAPE
    Column(horizontalAlignment = Alignment.CenterHorizontally) {
        if (searchableDrawerContent) {
            CreateSearchableDrawerWithButtonOnPrimarySurfaceToInvokeIt(
                slideOver = slideOver,
                expandable = expandable,
                skipOpenState = skipOpenState,
                scrimVisible = scrimVisible,
                showHandle = showHandle,
                preventDismissalOnScrimClick = preventDismissalOnScrimClick,
                enableSwipeDismiss = enableSwipeDismiss,
                maxLandscapeWidthFraction = maxLandscapeWidthFraction
            )
        } else {
            CreateDrawerWithButtonOnPrimarySurfaceToInvokeIt(
                slideOver = slideOver,
                scrimVisible = scrimVisible,
                skipOpenState = skipOpenState,
                expandable = expandable,
                showHandle = showHandle,
                preventDismissalOnScrimClick = preventDismissalOnScrimClick,
                enableSwipeDismiss = enableSwipeDismiss,
                maxLandscapeWidthFraction = maxLandscapeWidthFraction,
                drawerContent =
                    if (listContent)
                        getAndroidViewAsContent(selectedContent)
                    else if (nestedDrawerContent) {
                        getDrawerAsContent()
                    } else {
                        getDynamicListGeneratorAsContent()
                    }
            )
        }
        //Other content on Primary surface
        LazyColumn(horizontalAlignment = Alignment.CenterHorizontally) {
            item {
                ListItem.Header(title = stringResource(id = R.string.drawer_select_drawer_type))
                ListItem.Item(
                    text = stringResource(id = R.string.drawer_bottom),
                    subText = stringResource(id = R.string.drawer_bottom_description),
                    subTextMaxLines = Int.MAX_VALUE,
                    onClick = { slideOver = false },
                    trailingAccessoryContent = {
                        RadioButton(
                            onClick = {
                                slideOver = false
                            },
                            selected = !slideOver
                        )
                    }
                )
                ListItem.Item(
                    text = stringResource(id = R.string.drawer_bottom_slide_over),
                    subText = stringResource(id = R.string.drawer_bottom_slide_over_description),
                    subTextMaxLines = Int.MAX_VALUE,
                    onClick = { slideOver = true },
                    trailingAccessoryContent = {
                        RadioButton(
                            onClick = {
                                slideOver = true
                            },
                            selected = slideOver
                        )
                    }
                )
            }
            item {
                val scrimVisibleText = stringResource(id = R.string.drawer_scrim_visible)
                ListItem.Header(
                    title = scrimVisibleText, modifier = Modifier
                        .toggleable(
                            value = scrimVisible,
                            role = Role.Switch,
                            onValueChange = { scrimVisible = !scrimVisible }
                        )
                        .clearAndSetSemantics {
                            this.contentDescription = scrimVisibleText
                        }, trailingAccessoryContent = {
                        ToggleSwitch(
                            onValueChange = { scrimVisible = !scrimVisible },
                            checkedState = scrimVisible
                        )
                    }
                )
            }
            item {
                val expandableText = stringResource(id = R.string.drawer_expandable)
                ListItem.Header(
                    title = expandableText,
                    modifier = Modifier
                        .toggleable(
                            value = expandable,
                            role = Role.Switch,
                            onValueChange = {
                                expandable = it
                                if (!it) {
                                    skipOpenState = false
                                }
                            }
                        )
                        .clearAndSetSemantics {
                            this.contentDescription = expandableText
                        },
                    enabled = !skipOpenState,
                    trailingAccessoryContent = {
                        ToggleSwitch(
                            onValueChange = {
                                expandable = it
                                if (!it) {
                                    skipOpenState = false
                                }
                            },
                            checkedState = expandable,
                            enabledSwitch = !skipOpenState
                        )
                    }
                )
            }
            item {
                val skipOpenStateText = stringResource(id = R.string.skip_open_state)
                ListItem.Header(
                    title = skipOpenStateText,
                    modifier = Modifier
                        .toggleable(
                            value = skipOpenState,
                            role = Role.Switch,
                            onValueChange = {
                                skipOpenState = it
                                if (it) {
                                    expandable = true
                                }
                            }
                        )
                        .clearAndSetSemantics {
                            this.contentDescription = skipOpenStateText
                        },
                    enabled = expandable,
                    trailingAccessoryContent = {
                        ToggleSwitch(
                            onValueChange = {
                                skipOpenState = it
                                if (it) {
                                    expandable = true
                                }
                            },
                            checkedState = skipOpenState,
                            enabledSwitch = expandable
                        )
                    }
                )
            }
            item {
                val preventDismissalOnScrimClickText =
                    stringResource(id = R.string.prevent_scrim_click_dismissal)
                ListItem.Header(
                    title = preventDismissalOnScrimClickText,
                    modifier = Modifier
                        .toggleable(
                            value = preventDismissalOnScrimClick,
                            role = Role.Switch,
                            onValueChange = {
                                preventDismissalOnScrimClick = !preventDismissalOnScrimClick
                            }
                        )
                        .clearAndSetSemantics {
                            this.contentDescription = preventDismissalOnScrimClickText
                        },
                    trailingAccessoryContent = {
                        ToggleSwitch(
                            onValueChange = {
                                preventDismissalOnScrimClick = !preventDismissalOnScrimClick
                            },
                            checkedState = preventDismissalOnScrimClick
                        )
                    }
                )
            }
            item {
                val showHandleText = stringResource(id = R.string.drawer_show_handle)
                ListItem.Header(
                    title = showHandleText,
                    modifier = Modifier
                        .toggleable(
                            value = showHandle,
                            role = Role.Switch,
                            onValueChange = { showHandle = !showHandle }
                        )
                        .clearAndSetSemantics {
                            this.contentDescription = showHandleText
                        },
                    trailingAccessoryContent = {
                        ToggleSwitch(
                            onValueChange = { showHandle = it },
                            checkedState = showHandle,
                        )
                    }
                )
            }
            item {
                val showDismissText = stringResource(id = R.string.drawer_enable_swipe_dismiss)
                ListItem.Header(
                    title = showDismissText,
                    modifier = Modifier
                        .toggleable(
                            value = enableSwipeDismiss,
                            role = Role.Switch,
                            onValueChange = { enableSwipeDismiss = !enableSwipeDismiss }
                        )
                        .clearAndSetSemantics {
                            this.contentDescription = showDismissText
                        },
                    trailingAccessoryContent = {
                        ToggleSwitch(
                            onValueChange = { enableSwipeDismiss = it },
                            checkedState = enableSwipeDismiss,
                        )
                    }
                )
            }

            item {
                val maxLandscapeWidthFractionText =
                    stringResource(id = R.string.bottom_drawer_max_width_landscape)
                ListItem.Header(
                    title = maxLandscapeWidthFractionText + if (!isLandscapeOrientation) " (Rotate to landscape Mode to use this)" else "",
                    titleMaxLines = 2,
                    enabled = isLandscapeOrientation,
                    modifier = Modifier
                        .clearAndSetSemantics {
                            this.contentDescription = maxLandscapeWidthFractionText
                        },
                )
                Slider(
                    value = maxLandscapeWidthFraction,
                    onValueChange = { maxLandscapeWidthFraction = it },
                    valueRange = 0F..1F,
                    enabled = isLandscapeOrientation,
                    colors = SliderDefaults.colors(
                        thumbColor = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value(
                            FluentTheme.themeMode
                        ),
                        activeTrackColor = FluentTheme.aliasTokens.brandColor[FluentAliasTokens.BrandColorTokens.Color80],
                        inactiveTrackColor = FluentTheme.aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background3].value(
                            FluentTheme.themeMode
                        ),
                        disabledThumbColor = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundDisable1].value(
                            FluentTheme.themeMode
                        ),
                        disabledActiveTrackColor = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundDisable1].value(
                            FluentTheme.themeMode
                        ),
                        disabledInactiveTrackColor = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundDisable1].value(
                            FluentTheme.themeMode
                        )
                    ),
                    steps = 10
                )
            }
            item {
                ListItem.Header(title = stringResource(id = R.string.drawer_select_drawer_content))
                ListItem.Item(
                    text = stringResource(id = R.string.drawer_full_screen_size_scrollable_content),
                    onClick = {
                        selectedContent = ContentType.FULL_SCREEN_SCROLLABLE_CONTENT
                        listContent = true
                        nestedDrawerContent = false
                        dynamicSizeContent = false
                        searchableDrawerContent = false
                    },
                    trailingAccessoryContent = {
                        RadioButton(
                            onClick = {
                                selectedContent = ContentType.FULL_SCREEN_SCROLLABLE_CONTENT
                                listContent = true
                                nestedDrawerContent = false
                                dynamicSizeContent = false
                                searchableDrawerContent = false
                            },
                            selected = selectedContent == ContentType.FULL_SCREEN_SCROLLABLE_CONTENT && listContent
                        )
                    }
                )
                ListItem.Item(
                    text = stringResource(id = R.string.drawer_more_than_half_screen_content),
                    onClick = {
                        selectedContent = ContentType.EXPANDABLE_SIZE_CONTENT
                        listContent = true
                        nestedDrawerContent = false
                        dynamicSizeContent = false
                        searchableDrawerContent = false
                    },
                    trailingAccessoryContent = {
                        RadioButton(
                            onClick = {
                                selectedContent = ContentType.EXPANDABLE_SIZE_CONTENT
                                listContent = true
                                nestedDrawerContent = false
                                dynamicSizeContent = false
                                searchableDrawerContent = false
                            },
                            selected = selectedContent == ContentType.EXPANDABLE_SIZE_CONTENT && listContent
                        )
                    }
                )
                ListItem.Item(
                    text = stringResource(id = R.string.drawer_less_than_half_screen_content),
                    onClick = {
                        selectedContent = ContentType.WRAPPED_SIZE_CONTENT
                        listContent = true
                        dynamicSizeContent = false
                        nestedDrawerContent = false
                        searchableDrawerContent = false
                    },
                    trailingAccessoryContent = {
                        RadioButton(
                            onClick = {
                                selectedContent = ContentType.WRAPPED_SIZE_CONTENT
                                listContent = true
                                dynamicSizeContent = false
                                nestedDrawerContent = false
                                searchableDrawerContent = false
                            },
                            selected = selectedContent == ContentType.WRAPPED_SIZE_CONTENT && listContent
                        )
                    }
                )
                ListItem.Item(
                    text = stringResource(id = R.string.drawer_dynamic_size_content),
                    onClick = {
                        dynamicSizeContent = true
                        nestedDrawerContent = false
                        listContent = false
                        searchableDrawerContent = false
                    },
                    trailingAccessoryContent = {
                        RadioButton(
                            onClick = {
                                dynamicSizeContent = true
                                nestedDrawerContent = false
                                listContent = false
                                searchableDrawerContent = false
                            },
                            selected = dynamicSizeContent
                        )
                    }
                )
                ListItem.Item(
                    text = stringResource(id = R.string.drawer_nested_drawer_content),
                    onClick = {
                        nestedDrawerContent = true
                        dynamicSizeContent = false
                        listContent = false
                        searchableDrawerContent = false
                    },
                    trailingAccessoryContent = {
                        RadioButton(
                            onClick = {
                                nestedDrawerContent = true
                                dynamicSizeContent = false
                                listContent = false
                                searchableDrawerContent = false
                            },
                            selected = nestedDrawerContent
                        )
                    }
                )
                ListItem.Item(
                    text = stringResource(id = R.string.searchable_drawer_content),
                    onClick = {
                        dynamicSizeContent = false
                        nestedDrawerContent = false
                        listContent = false
                        searchableDrawerContent = true
                    },
                    trailingAccessoryContent = {
                        RadioButton(
                            onClick = {
                                dynamicSizeContent = false
                                nestedDrawerContent = false
                                listContent = false
                                searchableDrawerContent = true
                            },
                            selected = searchableDrawerContent
                        )
                    }
                )
            }
        }
    }
}

data class SearchableItem(
    val title: String,
    val subTitle: String? = null,
    val description: String? = null,
    val footer: String? = null,
    val leftAccessory: @Composable (() -> Unit)? = null,
    val rightAccessory: @Composable (() -> Unit)? = null,
    val status: AvatarStatus? = null,
    val onClick: () -> Unit = {},
    val onLongClick: () -> Unit = {},
    val enabled: Boolean = true,
    val id: Any = generateUniqueId()
) : Searchable {
    override fun getSearchKey(): String = title

    override fun getUniqueId(): Any = id
}

@Composable
private fun CreateSearchableDrawerWithButtonOnPrimarySurfaceToInvokeIt(
    slideOver: Boolean,
    expandable: Boolean,
    skipOpenState: Boolean,
    scrimVisible: Boolean,
    showHandle: Boolean,
    preventDismissalOnScrimClick: Boolean,
    enableSwipeDismiss: Boolean,
    maxLandscapeWidthFraction: Float
) {
    val scope = rememberCoroutineScope()
    val viewModel: SearchViewModel<SearchableItem> = viewModel(
        factory = SearchViewModelFactory(initialItems = List(100) { index ->
            SearchableItem(
                title = "Item $index",
                subTitle = "Subtitle for item $index",
                description = "Description for item $index",
                id = index
            )
        })
    )
    val drawerState = rememberBottomDrawerState(
        initialValue = DrawerValue.Closed,
        expandable = expandable,
        skipOpenState = skipOpenState
    )
    val open: () -> Unit = {
        scope.launch {
            if (drawerState.currentValue == DrawerValue.Closed) {
                viewModel.clearSelection()
            }
            drawerState.open()
        }
    }
    val expand: () -> Unit = {
        scope.launch {
            drawerState.expand()
        }
    }
    val close: () -> Unit = {
        scope.launch {
            drawerState.close()
            viewModel.clearSelection()
        }
    }
    val uiState by viewModel.uiState.collectAsStateWithLifecycle()
    val toggleItemSelection = { item: Searchable ->
        viewModel.toggleSelection(item as SearchableItem)
    }
    Row {
        PrimarySurfaceContent(
            open,
            text = stringResource(id = R.string.drawer_open)
        )
        Spacer(modifier = Modifier.width(10.dp))
        PrimarySurfaceContent(
            expand,
            text = stringResource(id = R.string.drawer_expand)
        )
    }
    BottomDrawer(
        drawerState = drawerState,
        drawerContent = {
            KeyboardVisibilityObserver(
                onKeyboardVisible = {
                    if (drawerState.currentValue == DrawerValue.Open) {
                        expand()
                    }
                },
                onKeyboardHidden = {
                    if (drawerState.currentValue == DrawerValue.Expanded) {
                        open()
                    }
                }
            ) {
                Column(
                    horizontalAlignment = Alignment.CenterHorizontally
                ) {
                    SearchableDrawerHeader(
                        onLeftTextClick = {
                            scope.launch {
                                viewModel.clearSelection()
                            }
                        },
                        onRightTextClick = close,
                        onCenterTextClick = {
                            if (drawerState.currentValue == DrawerValue.Open) {
                                expand()
                            } else {
                                open()
                            }
                        }
                    )

                    if (uiState.selectionSize <= 0) {
                        SearchBar(
                            onValueChange = { query, selectedPerson ->
                                scope.launch {
                                    viewModel.onQueryChanged(query)
                                }
                            }
                        )
                    } else {
                        MultiSelectScreen(uiState.selectionSize)
                    }

                    LazyItemsList(
                        filteredSearchItems = uiState.filteredItems,
                        selectedSearchItems = uiState.selectedItems,
                        inSelectionMode = uiState.selectionSize > 0,
                        toggleItemSelection = toggleItemSelection,
                        border = BorderType.NoBorder,
                        modifier = Modifier,
                    )
                }
            }
        },
        scrimVisible = scrimVisible,
        slideOver = slideOver,
        showHandle = showHandle,
        enableSwipeDismiss = enableSwipeDismiss,
        maxLandscapeWidthFraction = maxLandscapeWidthFraction,
        preventDismissalOnScrimClick = preventDismissalOnScrimClick
    )
}

@Composable
private fun ClickableTextHeader(
    text: String,
    modifier: Modifier = Modifier,
    onClick: () -> Unit = {},
    textStyle: TextStyle = TextStyle.Default
) {
    val interactionSource = remember { MutableInteractionSource() }
    val animatedFontSizeStart by animateDpAsState(
        targetValue = if (interactionSource.collectIsPressedAsState().value) 18.5.dp else 17.dp,
        label = "FontSizeAnimation"
    )
    Box(
        modifier = Modifier
            .fillMaxWidth()
            .then(modifier)
    ) {
        BasicText(
            text = text,
            modifier = Modifier
                .fillMaxWidth()
                .clickable(
                    enabled = true,
                    indication = null,
                    interactionSource = interactionSource
                ) {
                    onClick()
                },
            style = textStyle.merge(fontSize = animatedFontSizeStart.value.sp)
        )
    }
}

@Composable
fun SearchableDrawerHeader(
    onLeftTextClick: () -> Unit = {},
    onCenterTextClick: () -> Unit = {},
    onRightTextClick: () -> Unit = {},
) {
    val textColours = listOf(Color(0xFF616161), Color(0xFF242424), Color(0xFF464FEB))
    val textHeaders = listOf(
        getStringResource(id = R.string.fluentui_back),
        getStringResource(id = R.string.fluentui_title),
        getStringResource(id = R.string.popup_menu_item_share)
    )
    val textOnClicks = listOf(onLeftTextClick, onCenterTextClick, onRightTextClick)
    val textFontStyles = listOf(
        FluentTheme.aliasTokens.typography[FluentAliasTokens.TypographyTokens.Body1],
        FluentTheme.aliasTokens.typography[FluentAliasTokens.TypographyTokens.Title2],
        FluentTheme.aliasTokens.typography[FluentAliasTokens.TypographyTokens.Body1]
    )
    val textAlignments = listOf(TextAlign.Start, TextAlign.Center, TextAlign.End)
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .padding(horizontal = 20.dp, vertical = 10.dp),
        horizontalArrangement = Arrangement.Center,
        verticalAlignment = Alignment.CenterVertically
    ) {
        for (i in 0..2) {
            ClickableTextHeader(
                text = textHeaders[i],
                modifier = Modifier
                    .fillMaxWidth()
                    .weight(1f),
                onClick = textOnClicks.get(i),
                textStyle = textFontStyles.get(i).copy(
                    color = textColours.get(i),
                    textAlign = textAlignments.get(i)
                )
            )
        }
    }
}

@Composable
private fun MultiSelectScreen(numSelected: Int) {
    BasicText(
        "Selected Items: ${numSelected}",
        modifier = Modifier.padding(horizontal = 10.dp, vertical = 20.dp),
        style = TextStyle(
            color = Color(0xFF242424),
            fontSize = 17.sp,
            lineHeight = 22.sp,
            letterSpacing = -0.43.sp,
            textAlign = TextAlign.Start,
            fontWeight = FontWeight(400)
        )
    )
}

@Composable
fun LazyItemsList(
    filteredSearchItems: List<SearchableItem>,
    selectedSearchItems: Set<SearchableItem> = setOf(),
    inSelectionMode: Boolean = false,
    toggleItemSelection: (SearchableItem) -> Unit = {},
    border: BorderType = BorderType.NoBorder,
    modifier: Modifier = Modifier,
) {
    val scope = rememberCoroutineScope()
    var enableStatus by rememberSaveable { mutableStateOf(false) }
    val lazyListState = rememberLazyListState()
    val positionString: String =
        getStringResource(com.microsoft.fluentui.topappbars.R.string.position_string)
    val statusString: String =
        getStringResource(com.microsoft.fluentui.topappbars.R.string.status_string)
    val listItemTokens: ListItemTokens = object : ListItemTokens() {
        @Composable
        override fun backgroundBrush(listItemInfo: ListItemInfo): StateBrush {
            return StateBrush(
                rest = SolidColor(
                    FluentTheme.aliasTokens.neutralBackgroundColor[Background1].value(
                        themeMode = FluentTheme.themeMode
                    )
                ),
                pressed = SolidColor(
                    FluentTheme.aliasTokens.neutralBackgroundColor[Background1Pressed].value(
                        themeMode = FluentTheme.themeMode
                    )
                ),
                selected = SolidColor(
                    FluentTheme.aliasTokens.neutralBackgroundColor[Background1Selected].value(
                        themeMode = FluentTheme.themeMode
                    )
                )
            )
        }
    }
    LazyColumn(
        state = lazyListState, modifier = modifier.draggable(
            orientation = Orientation.Vertical,
            state = rememberDraggableState { delta ->
                scope.launch {
                    lazyListState.scrollBy(-delta)
                }
            },
        )
    ) {
        itemsIndexed(
            items = filteredSearchItems,
            key = { index, item -> item.getUniqueId() }) { index, item ->  // ensures stable render updates, will prevent recomps
            val isSelected = selectedSearchItems.contains(item)
            ListItem.Item(
                text = item.title,
                modifier = Modifier
                    .clearAndSetSemantics {
                        contentDescription =
                            "${item.title}, ${item.subTitle}" + if (enableStatus) statusString.format(
                                item.status
                            ) else ""
                        stateDescription = if (filteredSearchItems.size > 1) positionString.format(
                            index + 1,
                            filteredSearchItems.size
                        ) else ""
                        role = Role.Button
                    },
                subText = item.subTitle,
                secondarySubText = item.footer,
                onClick = {
                    if (inSelectionMode) {
                        toggleItemSelection(item)
                    } else {
                        item.onClick()
                    }
                },
                onLongClick = {
                    item.onLongClick()
                    toggleItemSelection(item)
                },
                border = border,
                listItemTokens = listItemTokens,
                enabled = item.enabled,
                selected = isSelected,
                leadingAccessoryContent = item.leftAccessory,
                trailingAccessoryContent = item.rightAccessory,
            )
        }
    }
}

@Composable
private fun CreateDrawerWithButtonOnPrimarySurfaceToInvokeIt(
    slideOver: Boolean,
    expandable: Boolean,
    skipOpenState: Boolean,
    scrimVisible: Boolean,
    showHandle: Boolean,
    preventDismissalOnScrimClick: Boolean,
    enableSwipeDismiss: Boolean,
    maxLandscapeWidthFraction: Float,
    drawerContent: @Composable ((() -> Unit) -> Unit),
) {
    val scope = rememberCoroutineScope()

    val drawerState = rememberBottomDrawerState(
        initialValue = DrawerValue.Closed,
        expandable = expandable,
        skipOpenState = skipOpenState
    )

    val open: () -> Unit = {
        scope.launch { drawerState.open() }
    }
    val expand: () -> Unit = {
        scope.launch { drawerState.expand() }
    }
    val close: () -> Unit = {
        scope.launch { drawerState.close() }
    }
    Row {
        PrimarySurfaceContent(
            open,
            text = stringResource(id = R.string.drawer_open)
        )
        Spacer(modifier = Modifier.width(10.dp))
        PrimarySurfaceContent(
            expand,
            text = stringResource(id = R.string.drawer_expand)
        )
    }

    BottomDrawer(
        drawerState = drawerState,
        drawerContent = { drawerContent(close) },
        scrimVisible = scrimVisible,
        slideOver = slideOver,
        showHandle = showHandle,
        enableSwipeDismiss = enableSwipeDismiss,
        maxLandscapeWidthFraction = maxLandscapeWidthFraction,
        preventDismissalOnScrimClick = preventDismissalOnScrimClick
    )
}
```

## File: src/main/java/com/microsoft/fluentuidemo/demos/V2BottomSheetActivity.kt
```kotlin
package com.microsoft.fluentuidemo.demos

import android.content.Context
import android.os.Bundle
import android.view.LayoutInflater
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.rememberLazyListState
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.text.BasicText
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.Slider
import androidx.compose.material.SliderDefaults
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.outlined.ArrowBack
import androidx.compose.material.icons.outlined.ArrowForward
import androidx.compose.material.icons.outlined.Delete
import androidx.compose.material.icons.outlined.Email
import androidx.compose.material.icons.outlined.Face
import androidx.compose.material.icons.outlined.Favorite
import androidx.compose.material.icons.outlined.Info
import androidx.compose.material.icons.outlined.List
import androidx.compose.material.icons.outlined.Menu
import androidx.compose.material.icons.outlined.Person
import androidx.compose.material.icons.outlined.Settings
import androidx.compose.material.icons.outlined.Share
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableFloatStateOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.input.nestedscroll.NestedScrollConnection
import androidx.compose.ui.input.nestedscroll.NestedScrollSource
import androidx.compose.ui.input.nestedscroll.nestedScroll
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.viewinterop.AndroidView
import com.microsoft.fluentui.persona.PersonaListView
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.ThemeMode
import com.microsoft.fluentui.theme.token.FluentAliasTokens
import com.microsoft.fluentui.theme.token.controlTokens.BottomSheetInfo
import com.microsoft.fluentui.theme.token.controlTokens.BottomSheetTokens
import com.microsoft.fluentui.theme.token.controlTokens.ButtonSize
import com.microsoft.fluentui.theme.token.controlTokens.ButtonStyle
import com.microsoft.fluentui.tokenized.bottomsheet.BottomSheet
import com.microsoft.fluentui.tokenized.bottomsheet.BottomSheetState
import com.microsoft.fluentui.tokenized.bottomsheet.BottomSheetValue
import com.microsoft.fluentui.tokenized.bottomsheet.rememberBottomSheetState
import com.microsoft.fluentui.tokenized.contentBuilder.ItemData
import com.microsoft.fluentui.tokenized.contentBuilder.ListContentBuilder
import com.microsoft.fluentui.tokenized.controls.Button
import com.microsoft.fluentui.tokenized.controls.RadioButton
import com.microsoft.fluentui.tokenized.controls.ToggleSwitch
import com.microsoft.fluentuidemo.R
import com.microsoft.fluentuidemo.V2DemoActivity
import com.microsoft.fluentuidemo.util.createPersonaList
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch

const val BOTTOM_SHEET_ENABLE_SWIPE_DISMISS_TEST_TAG = "enableSwipeDismiss"

class V2BottomSheetActivity : V2DemoActivity() {
    init {
        setupActivity(this)
    }

    override val paramsUrl = "https://github.com/microsoft/fluentui-android/wiki/Controls#params-10"
    override val controlTokensUrl =
        "https://github.com/microsoft/fluentui-android/wiki/Controls#control-tokens-10"

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        setActivityContent {
            CreateActivityUI()
        }
    }
}

@Composable
private fun CreateActivityUI() {
    var scrimVisible by rememberSaveable { mutableStateOf(false) }

    var enableSwipeDismiss by remember { mutableStateOf(true) }

    var showHandleState by remember { mutableStateOf(true) }

    var expandableState by remember { mutableStateOf(true) }

    var slideOverState by remember { mutableStateOf(true) }

    var peekHeightState by remember { mutableStateOf(110.dp) }

    var preventDismissalOnScrimClick by rememberSaveable { mutableStateOf(false) }

    var stickyThresholdUpwardDrag: Float by remember { mutableStateOf(56f) }
    var stickyThresholdDownwardDrag: Float by remember { mutableStateOf(56f) }

    var hidden by remember { mutableStateOf(true) }

    val bottomSheetState = rememberBottomSheetState(BottomSheetValue.Hidden)

    val scope = rememberCoroutineScope()

    hidden = !bottomSheetState.isVisible

    val context = LocalContext.current
    val contentByListContentBuilder = ListContentBuilder()
        .addHorizontalList(getSingleLineList(context), "Default: Wrapped")
        .addDivider()
        .addHorizontalList(getSingleLineList(context), "Fixed width", fixedWidth = true)
        .addDivider()
        .addVerticalGrid(
            getSingleLineList(context),
            "Vertical Grid",
            3
        )
        .addDivider()
        .addVerticalGrid(
            getSingleLineList(context),
            "Vertical Grid: Equidistant",
            3,
            true
        )
        .addVerticalList(getDoubleLineList(context), "Double Line List")
        .addVerticalList(
            getSingleLineList(context),
            "Single Line List"
        )
        .getContent()
    var sheetContentState by remember { mutableStateOf(contentByListContentBuilder) }
    val content = listOf(0, 1, 2)
    val selectedOption = remember { mutableStateOf(content[0]) }

    val customSheetTokens: BottomSheetTokens = object: BottomSheetTokens(){
        override fun additionalOffset(bottomSheetInfo: BottomSheetInfo): Int {
            return 0
        }
    }

    BottomSheet(
        sheetContent = sheetContentState,
        expandable = expandableState,
        peekHeight = peekHeightState,
        scrimVisible = scrimVisible,
        showHandle = showHandleState,
        sheetState = bottomSheetState,
        slideOver = slideOverState,
        enableSwipeDismiss = enableSwipeDismiss,
        preventDismissalOnScrimClick = preventDismissalOnScrimClick,
        stickyThresholdUpward = stickyThresholdUpwardDrag,
        stickyThresholdDownward = stickyThresholdDownwardDrag,
        bottomSheetTokens = customSheetTokens
    ) {
        Column(
            verticalArrangement = Arrangement.spacedBy(10.dp),
            modifier = Modifier.padding(16.dp)
        ) {
            Row(
                horizontalArrangement = Arrangement.spacedBy(16.dp),
                verticalAlignment = Alignment.CenterVertically,
                modifier = Modifier.fillMaxWidth()
            ) {
                Button(
                    style = ButtonStyle.OutlinedButton,
                    size = ButtonSize.Medium,
                    text = "Show",
                    enabled = hidden,
                    onClick = {
                        hidden = false
                        scope.launch { bottomSheetState.show() }
                    }
                )

                Button(
                    style = ButtonStyle.OutlinedButton,
                    size = ButtonSize.Medium,
                    text = "Jump Show",
                    enabled = hidden,
                    onClick = {
                        hidden = false
                        scope.launch {
                            bottomSheetState.show()
                            for (x in 1..9) {
                                delay(17)
                                peekHeightState += x.dp
                            }

                            for (x in 1..9) {
                                delay(17)
                                peekHeightState -= x.dp
                            }

                        }
                    }
                )

                Button(
                    style = ButtonStyle.OutlinedButton,
                    size = ButtonSize.Medium,
                    text = "Expand",
                    enabled = expandableState,
                    onClick = {
                        scope.launch { bottomSheetState.expand() }
                    }
                )
            }

            Row(
                horizontalArrangement = Arrangement.spacedBy(30.dp),
                verticalAlignment = Alignment.CenterVertically,
                modifier = Modifier.fillMaxWidth()
            ) {
                BasicText(
                    text = "Expandable",
                    modifier = Modifier.weight(1F),
                    style = TextStyle(
                        color = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value(
                            themeMode = ThemeMode.Auto
                        )
                    )
                )
                ToggleSwitch(checkedState = expandableState,
                    onValueChange = { expandableState = it }
                )
            }

            Row(
                horizontalArrangement = Arrangement.spacedBy(30.dp),
                verticalAlignment = Alignment.CenterVertically,
                modifier = Modifier.fillMaxWidth()
            ) {
                BasicText(
                    text = "Show Handle",
                    modifier = Modifier.weight(1F),
                    style = TextStyle(
                        color = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value(
                            themeMode = ThemeMode.Auto
                        )
                    )
                )
                ToggleSwitch(checkedState = showHandleState,
                    onValueChange = { showHandleState = it }
                )
            }

            Row(
                horizontalArrangement = Arrangement.spacedBy(30.dp),
                verticalAlignment = Alignment.CenterVertically,
                modifier = Modifier.fillMaxWidth()
            ) {
                BasicText(
                    text = "Slide Over",
                    modifier = Modifier.weight(1F),
                    style = TextStyle(
                        color = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value(
                            themeMode = ThemeMode.Auto
                        )
                    )
                )
                ToggleSwitch(checkedState = slideOverState,
                    onValueChange = { slideOverState = it }
                )
            }
            Row(
                horizontalArrangement = Arrangement.spacedBy(30.dp),
                verticalAlignment = Alignment.CenterVertically,
                modifier = Modifier.fillMaxWidth()
            ) {
                BasicText(
                    text = stringResource(id = R.string.bottom_sheet_text_enable_swipe_dismiss),
                    modifier = Modifier.weight(1F),
                    style = TextStyle(
                        color = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value(
                            themeMode = ThemeMode.Auto
                        )
                    )
                )
                ToggleSwitch(
                    modifier = Modifier.testTag(BOTTOM_SHEET_ENABLE_SWIPE_DISMISS_TEST_TAG),
                    checkedState = enableSwipeDismiss,
                    onValueChange = { enableSwipeDismiss = it }
                )
            }
            Row(
                horizontalArrangement = Arrangement.spacedBy(30.dp),
                verticalAlignment = Alignment.CenterVertically,
                modifier = Modifier.fillMaxWidth()
            ) {
                BasicText(
                    text = "Scrim Visible",
                    modifier = Modifier.weight(1F),
                    style = TextStyle(
                        color = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value(
                            themeMode = ThemeMode.Auto
                        )
                    )
                )
                ToggleSwitch(checkedState = scrimVisible,
                    onValueChange = { scrimVisible = it }
                )
            }

            Row(
                horizontalArrangement = Arrangement.spacedBy(30.dp),
                verticalAlignment = Alignment.CenterVertically,
                modifier = Modifier.fillMaxWidth()
            ) {
                BasicText(
                    text = "Prevent Dismissal On Scrim Click",
                    modifier = Modifier.weight(1F),
                    style = TextStyle(
                        color = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value(
                            themeMode = ThemeMode.Auto
                        )
                    )
                )
                ToggleSwitch(checkedState = preventDismissalOnScrimClick,
                    onValueChange = { preventDismissalOnScrimClick = it }
                )
            }

            // New Row for Sticky Threshold Downward Drag
            Row(
                horizontalArrangement = Arrangement.spacedBy(30.dp),
                verticalAlignment = Alignment.CenterVertically,
                modifier = Modifier.fillMaxWidth()
            ) {
                BasicText(
                    text = "Sticky Threshold Upward Drag",
                    modifier = Modifier.weight(1F),
                    style = TextStyle(
                        color = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value(
                            themeMode = ThemeMode.Auto
                        )
                    )
                )
                Slider(
                    modifier = Modifier
                        .width(100.dp)
                        .height(50.dp)
                        .padding(0.dp, 0.dp, 0.dp, 0.dp),
                    value = stickyThresholdUpwardDrag,
                    onValueChange = {
                        stickyThresholdUpwardDrag = it
                        peekHeightState += 0.0001.dp
                    },
                    valueRange = 0f..500f,
                    colors = SliderDefaults.colors(
                        thumbColor = FluentTheme.aliasTokens.brandColor[FluentAliasTokens.BrandColorTokens.Color100],
                        activeTrackColor = FluentTheme.aliasTokens.brandColor[FluentAliasTokens.BrandColorTokens.Color10],
                    )
                )
                BasicText(
                    text = "%.1fdp".format(stickyThresholdUpwardDrag),
                    style = TextStyle(
                        color = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value(
                            themeMode = ThemeMode.Auto
                        )
                    )
                )
            }
            // New Row for Sticky Threshold Upward Drag
            Row(
                horizontalArrangement = Arrangement.spacedBy(30.dp),
                verticalAlignment = Alignment.CenterVertically,
                modifier = Modifier.fillMaxWidth()
            ) {
                BasicText(
                    text = "Sticky Threshold Downward Drag",
                    modifier = Modifier.weight(1F),
                    style = TextStyle(
                        color = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value(
                            themeMode = ThemeMode.Auto
                        )
                    )
                )
                Slider(
                    modifier = Modifier
                        .width(100.dp)
                        .height(50.dp)
                        .padding(0.dp, 0.dp, 0.dp, 0.dp),
                    value = stickyThresholdDownwardDrag,
                    onValueChange = {
                        stickyThresholdDownwardDrag = it
                        peekHeightState += 0.0001.dp
                    },
                    valueRange = 0f..500f,
                    colors = SliderDefaults.colors(
                        thumbColor = FluentTheme.aliasTokens.brandColor[FluentAliasTokens.BrandColorTokens.Color100],
                        activeTrackColor = FluentTheme.aliasTokens.brandColor[FluentAliasTokens.BrandColorTokens.Color10],
                    )
                )
                BasicText(
                    text = "%.1fdp".format(stickyThresholdDownwardDrag),
                    style = TextStyle(
                        color = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value(
                            themeMode = ThemeMode.Auto
                        )
                    )
                )
            }
            Row(
                horizontalArrangement = Arrangement.spacedBy(16.dp),
                verticalAlignment = Alignment.CenterVertically,
                modifier = Modifier.fillMaxWidth()
            ) {
                BasicText(
                    text = "Peek Height $peekHeightState",
                    modifier = Modifier.weight(1F),
                    style = TextStyle(
                        color = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value(
                            themeMode = ThemeMode.Auto
                        )
                    )
                )
                Button(
                    style = ButtonStyle.Button,
                    size = ButtonSize.Medium,
                    text = "+ 8 dp",
                    onClick = { peekHeightState += 8.dp })

                Button(
                    style = ButtonStyle.Button,
                    size = ButtonSize.Medium,
                    text = "- 8 dp",
                    enabled = peekHeightState > 0.dp,
                    onClick = { peekHeightState -= 8.dp })
            }

            Row(
                horizontalArrangement = Arrangement.spacedBy(30.dp),
                verticalAlignment = Alignment.CenterVertically,
                modifier = Modifier.fillMaxWidth()
            ) {
                BasicText(
                    text = "Note: When 'Slide Over' is On then Peek Height max limit is restricted to half of screen size. When 'Slide Over' is off then bottomSheet height does not vary with content height. It either open at peek height or expand to fullest or hide at bottom",
                    modifier = Modifier.weight(1F)
                )
            }


            Row {
                BasicText(
                    text = "Select SheetContent",
                    modifier = Modifier.weight(1F),
                    style = TextStyle(
                        fontWeight = FontWeight.Bold,
                        color = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value(
                            themeMode = ThemeMode.Auto
                        )
                    )
                )
            }

            Row {
                BasicText(
                    text = "From ItemListContentBuilder",
                    modifier = Modifier.weight(1F),
                    style = TextStyle(
                        color = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value(
                            themeMode = ThemeMode.Auto
                        )
                    )
                )

                RadioButton(
                    selected = (selectedOption.value == content[0]),
                    onClick = {
                        selectedOption.value = content[0]
                        sheetContentState = contentByListContentBuilder
                    }
                )
            }
            Row {
                BasicText(
                    text = "Using AndroidView",
                    modifier = Modifier.weight(1F),
                    style = TextStyle(
                        color = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value(
                            themeMode = ThemeMode.Auto
                        )
                    )
                )

                RadioButton(
                    selected = (selectedOption.value == content[1]),
                    onClick = {
                        selectedOption.value = content[1]
                        sheetContentState = content1(bottomSheetState)
                    }
                )
            }
            Row {
                BasicText(
                    text = "Compose Content",
                    modifier = Modifier.weight(1F),
                    style = TextStyle(
                        color = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value(
                            themeMode = ThemeMode.Auto
                        )
                    )
                )

                RadioButton(
                    selected = (selectedOption.value == content[2]),
                    onClick = {
                        selectedOption.value = content[2]
                        sheetContentState = content2(bottomSheetState)
                    }
                )
            }

            Button(
                style = ButtonStyle.OutlinedButton,
                size = ButtonSize.Medium,
                enabled = !hidden,
                text = "Jump to indicate more content",
                onClick = {
                    scope.launch {
                        for (x in 1..9) {
                            delay(17)
                            peekHeightState += x.dp
                        }
                        for (x in 1..9) {
                            delay(17)
                            peekHeightState -= x.dp
                        }
                    }
                }
            )

            val nestedScrollConnection = remember {
                object : NestedScrollConnection {
                    override fun onPreScroll(
                        available: Offset,
                        source: NestedScrollSource
                    ): Offset {
                        val delta = available.y
                        hidden = if (delta < 0) {
                            scope.launch { bottomSheetState.hide() }
                            true
                        } else {
                            scope.launch { bottomSheetState.show() }
                            false
                        }
                        return Offset.Zero
                    }
                }
            }

            Box(
                modifier = Modifier
                    .nestedScroll(nestedScrollConnection)
                    .verticalScroll(
                        rememberScrollState()
                    )

            )
            {
                BasicText(
                    text = context.resources.getString(R.string.large_scrollable_text),
                    style = TextStyle(
                        color = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value(
                            themeMode = ThemeMode.Auto
                        )
                    )
                )
            }
        }
    }
}

fun content1(bottomSheetState: BottomSheetState): @Composable () -> Unit = {
    lateinit var context: Context
    val scope = rememberCoroutineScope()
    val state = rememberScrollState()
    AndroidView(
        modifier = Modifier
            .fillMaxWidth()
            .verticalScroll(state),
        factory = {
            context = it
            val view = LayoutInflater.from(context).inflate(
                R.layout.demo_drawer_content,
                null
            ).rootView
            val personaList = createPersonaList(context)
            (view as PersonaListView).personas = personaList
            view
        }
    ) {
        if (bottomSheetState.currentValue == BottomSheetValue.Shown) {
            scope.launch {
                state.animateScrollTo(0)
            }
        }
    }
}

fun content2(bottomSheetState: BottomSheetState): @Composable () -> Unit = {
    val no = remember { mutableStateOf(0) }
    val lazyListState = rememberLazyListState()
    LazyColumn(
        state = lazyListState,
        horizontalAlignment = Alignment.CenterHorizontally, modifier = Modifier
            .fillMaxWidth()
    ) {
        item {
            Button(
                style = ButtonStyle.Button,
                size = ButtonSize.Medium,
                text = "Click to create random size list",
                onClick = { no.value = (40 * Math.random()).toInt() })
        }

        repeat(no.value) {
            item {
                Spacer(Modifier.height(10.dp))
                BasicText("list item $it")
            }
        }
    }

    val scope = rememberCoroutineScope()
    LaunchedEffect(key1 = bottomSheetState.currentValue) {
        if (bottomSheetState.currentValue == BottomSheetValue.Shown) {
            scope.launch {
                lazyListState.animateScrollToItem(0)
            }
        }
    }
}

fun getSingleLineList(context: Context): List<ItemData> {
    return arrayListOf(
        ItemData(icon = Icons.Outlined.Email, title = "Email", onClick = {}),
        ItemData(
            icon = Icons.Outlined.ArrowBack,
            title = context.resources.getString(R.string.bottom_sheet_item_reply_title),
            onClick = {}
        ),
        ItemData(
            icon = Icons.Outlined.ArrowForward,
            title = context.resources.getString(R.string.bottom_sheet_item_forward_title),
            onClick = {},
            enabled = false
        ),
        ItemData(icon = Icons.Outlined.Favorite, title = "Favorite", onClick = {}, enabled = false),
        ItemData(icon = Icons.Outlined.Info, title = "Long Info text", onClick = {}),
        ItemData(icon = Icons.Outlined.Menu, title = "Menu", onClick = {}),
        ItemData(icon = Icons.Outlined.Share, title = "Share", onClick = {}),
        ItemData(
            icon = Icons.Outlined.Delete,
            title = context.resources.getString(R.string.bottom_sheet_item_delete_title),
            onClick = {})
    )
}

fun getDoubleLineList(context: Context): List<ItemData> {
    return arrayListOf(
        ItemData(
            icon = Icons.Outlined.Person,
            title = context.resources.getString(R.string.bottom_sheet_item_camera_title),
            subTitle = context.resources.getString(R.string.bottom_sheet_item_camera_subtitle),
            onClick = {}),
        ItemData(
            icon = Icons.Outlined.List,
            title = context.resources.getString(R.string.bottom_sheet_item_gallery_title),
            subTitle = context.resources.getString(R.string.bottom_sheet_item_gallery_subtitle),
            onClick = {},
            enabled = false
        ),
        ItemData(
            icon = Icons.Outlined.Settings,
            title = context.resources.getString(R.string.bottom_sheet_item_manage_title),
            subTitle = context.resources.getString(R.string.bottom_sheet_item_manage_subtitle),
            onClick = {}),
        ItemData(
            icon = Icons.Outlined.Face,
            title = context.resources.getString(R.string.bottom_sheet_item_videos_title),
            subTitle = context.resources.getString(R.string.bottom_sheet_item_videos_subtitle),
            onClick = {},
            enabled = false
        )
    )
}
```

## File: src/main/java/com/microsoft/fluentuidemo/demos/V2ButtonsActivity.kt
```kotlin
package com.microsoft.fluentuidemo.demos

import android.os.Bundle
import android.widget.Toast
import androidx.compose.foundation.focusable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.text.BasicText
import androidx.compose.material.Divider
import androidx.compose.material.Text
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Email
import androidx.compose.material.icons.outlined.Favorite
import androidx.compose.material.icons.outlined.ThumbUp
import androidx.compose.runtime.Composable
import androidx.compose.runtime.MutableState
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.unit.dp
import com.example.theme.token.MyAppBarToken
import com.example.theme.token.MyButtonTokens
import com.example.theme.token.MyFABToken
import com.example.theme.token.OneNoteAliasTokens
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.FluentTheme.themeMode
import com.microsoft.fluentui.theme.token.AliasTokens
import com.microsoft.fluentui.theme.token.ControlTokens
import com.microsoft.fluentui.theme.token.FluentAliasTokens
import com.microsoft.fluentui.theme.token.controlTokens.ButtonSize
import com.microsoft.fluentui.theme.token.controlTokens.ButtonStyle
import com.microsoft.fluentui.theme.token.controlTokens.ButtonTokens
import com.microsoft.fluentui.theme.token.controlTokens.FABSize
import com.microsoft.fluentui.theme.token.controlTokens.FABState
import com.microsoft.fluentui.tokenized.controls.Button
import com.microsoft.fluentui.tokenized.controls.FloatingActionButton
import com.microsoft.fluentui.tokenized.controls.RadioButton
import com.microsoft.fluentuidemo.V2DemoActivity
import kotlinx.coroutines.selects.select

class V2ButtonsActivity : V2DemoActivity() {
    init {
        setupActivity(this)
    }

    override val paramsUrl = "https://github.com/microsoft/fluentui-android/wiki/Controls#params-11"
    override val controlTokensUrl = "https://github.com/microsoft/fluentui-android/wiki/Controls#control-tokens-11"

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        val context = this

        setActivityContent {
            val controlTokens = ControlTokens()
            var fabState by rememberSaveable { mutableStateOf(FABState.Expanded) }

            Column(
                verticalArrangement = Arrangement.spacedBy(10.dp),
                modifier = Modifier.padding(16.dp)
            ) {
                FluentTheme {
                    Column(horizontalAlignment = Alignment.CenterHorizontally) {
                        BasicText(
                            "Button to update Theme via Global & Alias token",
                            style = TextStyle(
                                color = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value(
                                    themeMode
                                )
                            )
                        )

                        Row(
                            horizontalArrangement = Arrangement.spacedBy(
                                5.dp,
                                Alignment.CenterHorizontally
                            ),
                            modifier = Modifier.fillMaxWidth()
                        ) {
                            Button(
                                style = ButtonStyle.OutlinedButton,
                                size = ButtonSize.Medium,
                                onClick = {
                                    FluentTheme.updateAliasTokens(AliasTokens())
                                    FluentTheme.updateControlTokens(
                                        controlTokens.updateToken(
                                            ControlTokens.ControlType.ButtonControlType,
                                            ButtonTokens()
                                        )
                                    )
                                },
                                text = "Theme 1"
                            )

                            Button(
                                style = ButtonStyle.OutlinedButton,
                                size = ButtonSize.Medium,
                                onClick = {
                                    FluentTheme.updateAliasTokens(OneNoteAliasTokens())
                                    FluentTheme.updateControlTokens(
                                        controlTokens.updateToken(
                                            ControlTokens.ControlType.ButtonControlType,
                                            MyButtonTokens()
                                        )
                                    )
                                },
                                text = "Theme 2"
                            )

                            Button(
                                style = ButtonStyle.OutlinedButton,
                                size = ButtonSize.Medium,
                                onClick = {
                                    FluentTheme.updateControlTokens(
                                        controlTokens.updateToken(
                                            ControlTokens.ControlType.AppBarControlType,
                                            MyAppBarToken()
                                        ).updateToken(
                                            ControlTokens.ControlType.FloatingActionButtonControlType,
                                            MyFABToken()
                                        )
                                    )
                                },
                                text = "Theme 3"
                            )
                        }
                    }
                }

                Divider()

                LazyColumn(verticalArrangement = Arrangement.spacedBy(10.dp)) {
                    item {
                        BasicText(
                            "Activity level customization with Auto theme",
                            style = TextStyle(
                                color = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value(
                                    themeMode
                                )
                            )
                        )

                        // TODO Investigate better ways to save activity Theme state
                        // TODO One possible way is to use State Holders
                        var aliasTokens by rememberSaveable { mutableStateOf(AliasTokens()) }

                        FluentTheme(aliasTokens = aliasTokens, controlTokens = ControlTokens()) {
                            Column(
                                verticalArrangement = Arrangement.spacedBy(
                                    5.dp,
                                    Alignment.CenterVertically
                                )
                            ) {
                                Row(
                                    horizontalArrangement = Arrangement.spacedBy(
                                        5.dp,
                                        Alignment.CenterHorizontally
                                    ),
                                    modifier = Modifier.fillMaxWidth()
                                ) {
                                    Button(
                                        onClick = { aliasTokens = AliasTokens() },
                                        text = "Theme1"
                                    )
                                    Button(
                                        onClick = { aliasTokens = OneNoteAliasTokens() },
                                        text = "Theme2"
                                    )
                                }
                                CreateButtons()
                            }
                        }
                    }
                    item {
                        Divider()
                        FluentTheme {
                            BasicText(
                                "Button with selected theme, auto mode and overridden control token",
                                style = TextStyle(
                                    color = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value(
                                        themeMode
                                    )
                                )
                            )
                            CreateButtons(MyButtonTokens())
                        }
                    }
                    item {
                        Divider()
                        var checkBoxSelectedValues = List(4) { rememberSaveable { mutableStateOf(false) } }
                        FluentTheme {
                            BasicText(
                                "Radio Button Group with selected theme",
                                style = TextStyle(
                                    color = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value(
                                        themeMode
                                    )
                                )
                            )
                            for(i in 0..3) {
                                Row(verticalAlignment = Alignment.CenterVertically, modifier = Modifier.padding(horizontal = 10.dp, vertical = 3.dp)) {
                                    BasicText(
                                        "Text",
                                        style = TextStyle(
                                            color = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value(
                                                themeMode
                                            )
                                        )
                                    )
                                    Spacer(Modifier.width(20.dp))
                                    RadioButton(
                                        onClick = {
                                            selectRadioGroupButton(i, checkBoxSelectedValues)
                                        },
                                        selected = checkBoxSelectedValues[i].value
                                    )
                                }
                            }
                        }
                    }
                }
            }
            FluentTheme {
                Box(
                    contentAlignment = Alignment.BottomEnd,
                    modifier = Modifier
                        .fillMaxSize()
                        .focusable(false)
                ) {
                    val fabText = "FAB Text"
                    FloatingActionButton(
                        size = FABSize.Small,
                        state = fabState,
                        onClick = {
                            val toastText: String
                            if (fabState == FABState.Expanded) {
                                toastText = "FAB Collapsed"
                                fabState = FABState.Collapsed
                            } else {
                                toastText = "FAB Expanded"
                                fabState = FABState.Expanded
                            }
                            Toast.makeText(context, toastText, Toast.LENGTH_SHORT).show()
                        },
                        icon = Icons.Filled.Email,
                        modifier = Modifier
                            .padding(16.dp)
                            .testTag("FAB"),
                        text = fabText,
                    )
                }
            }
        }
    }

    @Composable
    fun icon(enabled: Boolean): ImageVector {
        return if (enabled)
            Icons.Outlined.Favorite
        else
            Icons.Outlined.ThumbUp
    }

    @Composable
    fun CreateButtons(buttonToken: ButtonTokens? = null) {
        var enabled by rememberSaveable { mutableStateOf(true) }
        Column {
            Column(verticalArrangement = Arrangement.spacedBy(10.dp)) {
                Button(
                    modifier = Modifier.testTag("testButton"),
                    style = ButtonStyle.Button,
                    size = ButtonSize.Large,
                    buttonTokens = buttonToken,
                    onClick = { enabled = !enabled },
                    text = if (enabled) "Click to Disable" else "Click to Enable"
                )
            }

            Spacer(Modifier.height(20.dp))

            Column(
                verticalArrangement = Arrangement.spacedBy(10.dp),
                modifier = Modifier.fillMaxSize(1.0F),
                horizontalAlignment = Alignment.CenterHorizontally
            ) {
                var clicks by rememberSaveable { mutableStateOf(0) }
                val onClickLambda: () -> Unit = { clicks++ }
                val text = "Button $clicks"
                val toggleIcon = clicks % 2 == 0

                Button(
                    style = if (clicks < 3) ButtonStyle.Button else ButtonStyle.TextButton,
                    size = if (clicks < 3) ButtonSize.Large else ButtonSize.Small,
                    enabled = enabled,
                    buttonTokens = if (clicks < 3) buttonToken else ButtonTokens(),
                    onClick = onClickLambda,
                    icon = icon(toggleIcon),
                    trailingIcon = icon(enabled = toggleIcon),
                    text = text
                )

                Button(
                    style = ButtonStyle.Button,
                    size = ButtonSize.Medium,
                    enabled = enabled,
                    buttonTokens = buttonToken,
                    onClick = onClickLambda,
                    icon = icon(toggleIcon),
                    trailingIcon = icon(enabled = toggleIcon),
                    text = "Long text displayed on this button. This Is long text."
                )

                Button(
                    style = ButtonStyle.OutlinedButton,
                    size = ButtonSize.Small,
                    enabled = enabled,
                    buttonTokens = buttonToken,
                    onClick = onClickLambda,
                    icon = icon(toggleIcon),
                    trailingIcon = icon(enabled = toggleIcon),
                    text = "Outlined $text"
                )
                Button(
                    style = ButtonStyle.TextButton,
                    size = ButtonSize.Small,
                    enabled = enabled,
                    buttonTokens = buttonToken,
                    onClick = onClickLambda,
                    icon = icon(clicks % 2 == 0),
                    trailingIcon = icon( clicks %2 != 0 ),
                    text = "Text $text"
                )
            }
        }
    }
}

fun selectRadioGroupButton(buttonNumber: Int, saveableCheckbox: List<MutableState<Boolean>>){
    saveableCheckbox.forEachIndexed { index, mutableState ->
        mutableState.value = index == buttonNumber
    }
}
```

## File: src/main/java/com/microsoft/fluentuidemo/demos/V2CardActivity.kt
```kotlin
package com.microsoft.fluentuidemo.demos

import android.content.Context
import android.os.Bundle
import android.widget.Toast
import androidx.compose.foundation.Image
import androidx.compose.foundation.clickable
import androidx.compose.foundation.interaction.MutableInteractionSource
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.wrapContentWidth
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.text.BasicText
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.Icon
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.outlined.AccountBox
import androidx.compose.material.icons.outlined.Add
import androidx.compose.material.icons.outlined.Call
import androidx.compose.material.icons.outlined.Home
import androidx.compose.material.icons.outlined.MoreVert
import androidx.compose.material.icons.outlined.PlayArrow
import androidx.compose.material.icons.outlined.Refresh
import androidx.compose.material.ripple.rememberRipple
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.semantics.Role
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.theme.FluentTheme.aliasTokens
import com.microsoft.fluentui.theme.token.FluentAliasTokens
import com.microsoft.fluentui.theme.token.FluentIcon
import com.microsoft.fluentui.theme.token.controlTokens.BorderType
import com.microsoft.fluentui.theme.token.controlTokens.ButtonSize
import com.microsoft.fluentui.theme.token.controlTokens.ButtonStyle
import com.microsoft.fluentui.tokenized.controls.AnnouncementCard
import com.microsoft.fluentui.tokenized.controls.BasicCard
import com.microsoft.fluentui.tokenized.controls.Button
import com.microsoft.fluentui.tokenized.controls.FileCard
import com.microsoft.fluentui.tokenized.listitem.ListItem
import com.microsoft.fluentuidemo.R
import com.microsoft.fluentuidemo.V2DemoActivity

class V2CardActivity : V2DemoActivity() {
    init {
        setupActivity(this)
    }

    override val paramsUrl = "https://github.com/microsoft/fluentui-android/wiki/Controls#params-14"
    override val controlTokensUrl = "https://github.com/microsoft/fluentui-android/wiki/Controls#control-tokens-14"

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        setActivityContent {
            CreateCardUI(this)
        }
    }


    @Composable
    private fun CreateCardUI(context: Context) {
        var index by remember { mutableStateOf(1) }
        Box(Modifier.verticalScroll(rememberScrollState())) {
            Column(
                modifier = Modifier.padding(16.dp),
                verticalArrangement = Arrangement.spacedBy(16.dp)
            ) {
                ListItem.Header(
                    modifier = Modifier.wrapContentWidth(),
                    title = context.getString(R.string.basic_card)
                )
                Column(
                    modifier = Modifier.padding(start = 16.dp),
                    verticalArrangement = Arrangement.spacedBy(8.dp)
                ) {
                    Button(
                        text = context.getString(R.string.card_randomize),
                        size = ButtonSize.Small,
                        style = ButtonStyle.OutlinedButton,
                        onClick = { index = (1..5).random() })
                    BasicCard(
                        content = { GetContent(index = index, context = context) })
                }
                BasicCard {
                    BasicCardUI(context)
                }
                ListItem.Header(title = context.getString(R.string.file_card))
                Column(verticalArrangement = Arrangement.spacedBy(16.dp)) {
                    LazyRow(horizontalArrangement = Arrangement.spacedBy(16.dp)) {
                        item {
                            FileCard(
                                actionOverflowIcon = FluentIcon(
                                    Icons.Outlined.MoreVert,
                                    onClick = {
                                        Toast.makeText(
                                            context,
                                            "Clicked",
                                            Toast.LENGTH_LONG
                                        ).show()
                                    },
                                    contentDescription = context.getString(R.string.card_options)
                                ),
                                onClick = {},
                                text = context.getString(R.string.persona_name_carlos_slattery),
                                subText = context.getString(R.string.persona_subtitle_designer),
                                textIcon = Icons.Outlined.Call,
                                previewImageDrawable = R.drawable.avatar_carlos_slattery
                            )
                        }
                        item {
                            FileCard(
                                actionOverflowIcon = FluentIcon(Icons.Outlined.MoreVert),
                                onClick = {},
                                text = context.getString(R.string.persona_name_allan_munger),
                                subText = context.getString(R.string.persona_subtitle_manager),
                                textIcon = Icons.Outlined.Call,
                                previewImageDrawable = R.drawable.avatar_allan_munger
                            )
                        }
                        item {
                            FileCard(
                                actionOverflowIcon = FluentIcon(Icons.Outlined.MoreVert),
                                onClick = {},
                                text = context.getString(R.string.persona_name_elvia_atkins),
                                subText = context.getString(R.string.persona_subtitle_engineer),
                                textIcon = Icons.Outlined.Call,
                                previewImageDrawable = R.drawable.avatar_elvia_atkins
                            )
                        }
                        item {
                            FileCard(
                                actionOverflowIcon = FluentIcon(Icons.Outlined.MoreVert),
                                text = context.getString(R.string.persona_name_kat_larsson),
                                subText = context.getString(R.string.persona_subtitle_engineer),
                                textIcon = Icons.Outlined.Call,
                                previewImageDrawable = R.drawable.avatar_kat_larsson
                            )
                        }
                    }
                }
                ListItem.Header(title = context.getString(R.string.announcement_card))
                AnnouncementCard(
                    title = context.getString(R.string.card_title),
                    description = context.getString(R.string.card_description),
                    buttonText = context.getString(R.string.card_button),
                    buttonOnClick = {},
                    previewImageDrawable = R.drawable.card_cover
                )
                Spacer(Modifier.height(32.dp))
            }
        }

    }

    @Composable
    private fun GetContent(index: Int, context: Context) {
        return when (index) {
            1 -> CardContent1(context)
            2 -> CardContent2(context)
            3 -> CardContent3(context)
            4 -> CardContent4()
            5 -> CardContent5(context)
            else -> {}
        }
    }

    @Composable
    private fun CardContent1(context: Context) {
        val textColor =
            aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value()
        Box(
            modifier = Modifier
                .clickable(
                    interactionSource = remember { MutableInteractionSource() },
                    indication = rememberRipple(),
                    enabled = true,
                    onClick = { },
                    role = Role.Button
                )
                .padding(all = 8.dp)
        ) {
            Row(
                verticalAlignment = Alignment.CenterVertically,
                horizontalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                Icon(
                    painter = painterResource(id = R.drawable.ic_fluent_flag_24_regular),
                    contentDescription = "",
                    tint = textColor
                )
                Column {
                    BasicText(
                        text = context.getString(R.string.card_text),
                        style = TextStyle(color = textColor)
                    )
                    BasicText(
                        text = context.getString(R.string.card_subtext),
                        style = TextStyle(color = textColor)
                    )
                }
            }
        }
    }

    @Composable
    private fun CardContent2(context: Context) {
        val textColor =
            aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value()
        Box(modifier = Modifier.padding(all = 8.dp)) {
            Row(
                verticalAlignment = Alignment.CenterVertically,
                horizontalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                Column {
                    BasicText(
                        text = context.getString(R.string.card_text),
                        style = TextStyle(color = textColor)
                    )
                }
            }
        }
    }

    @Composable
    private fun CardContent3(context: Context) {
        val textColor =
            aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value()
        Box(modifier = Modifier.padding(all = 8.dp)) {
            Column {
                Image(
                    painterResource(id = R.drawable.cover), contentDescription = ""
                )
                Row(
                    verticalAlignment = Alignment.CenterVertically,
                    horizontalArrangement = Arrangement.spacedBy(8.dp)
                ) {
                    Icon(
                        painter = painterResource(id = R.drawable.ic_fluent_flag_24_regular),
                        contentDescription = "",
                        tint = textColor
                    )
                    Column {
                        BasicText(
                            text = context.getString(R.string.card_text),
                            style = TextStyle(color = textColor)
                        )
                        BasicText(
                            text = context.getString(R.string.card_subtext),
                            style = TextStyle(color = textColor)
                        )
                    }
                }
            }
        }
    }

    @Composable
    private fun CardContent4() {
        Box {
            Image(
                painterResource(id = R.drawable.image_un), contentDescription = ""
            )
        }
    }

    @Composable
    private fun CardContent5(context: Context) {
        val textColor =
            aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value()
        Box(modifier = Modifier.padding(end = 8.dp)) {
            Row(
                verticalAlignment = Alignment.CenterVertically,
                horizontalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                Image(
                    painterResource(id = R.drawable.avatar_carlos_slattery), contentDescription = ""
                )
                Column {
                    BasicText(
                        text = context.getString(R.string.card_text),
                        style = TextStyle(color = textColor)
                    )
                    BasicText(
                        text = context.getString(R.string.card_subtext),
                        style = TextStyle(color = textColor)
                    )
                }
            }
        }
    }

    @Composable
    private fun BasicCardUI(context: Context) {
        val iconTint =
            aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value()
        Column {
            ListItem.Header(
                border = BorderType.Bottom,
                title = context.getString(R.string.basic_card),
                trailingAccessoryContent = { Icon(Icons.Outlined.Refresh, "", tint = iconTint) })
            ListItem.Item(
                border = BorderType.Bottom,
                text = context.getString(R.string.card_text),
                subText = context.getString(R.string.card_subtext),
                leadingAccessoryContent = { Icon(Icons.Outlined.Home, "", tint = iconTint) },
                trailingAccessoryContent = { Icon(Icons.Outlined.PlayArrow, "", tint = iconTint) })
            ListItem.Item(
                border = BorderType.Bottom,
                text = context.getString(R.string.card_text),
                subText = context.getString(R.string.card_subtext),
                leadingAccessoryContent = { Icon(Icons.Outlined.AccountBox, "", tint = iconTint) },
                trailingAccessoryContent = { Icon(Icons.Outlined.PlayArrow, "", tint = iconTint) })
            ListItem.Item(
                border = BorderType.Bottom,
                text = context.getString(R.string.card_text),
                subText = context.getString(R.string.card_subtext),
                leadingAccessoryContent = { Icon(Icons.Outlined.Call, "", tint = iconTint) },
                trailingAccessoryContent = { Icon(Icons.Outlined.PlayArrow, "", tint = iconTint) })
            ListItem.Item(
                text = context.getString(R.string.card_text),
                subText = context.getString(R.string.card_subtext),
                leadingAccessoryContent = { Icon(Icons.Outlined.Add, "", tint = iconTint) },
                trailingAccessoryContent = { Icon(Icons.Outlined.PlayArrow, "", tint = iconTint) })
        }
    }
}
```

## File: src/main/java/com/microsoft/fluentuidemo/demos/V2CardNudgeActivity.kt
```kotlin
package com.microsoft.fluentuidemo.demos

import android.os.Bundle
import android.widget.Toast
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.text.BasicText
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.outlined.Call
import androidx.compose.material.icons.outlined.LocationOn
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalLayoutDirection
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.LayoutDirection
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.FluentAliasTokens
import com.microsoft.fluentui.theme.token.FluentGlobalTokens
import com.microsoft.fluentui.theme.token.FluentIcon
import com.microsoft.fluentui.tokenized.controls.Label
import com.microsoft.fluentui.tokenized.controls.ToggleSwitch
import com.microsoft.fluentui.tokenized.listitem.ChevronOrientation
import com.microsoft.fluentui.tokenized.listitem.ListItem
import com.microsoft.fluentui.tokenized.notification.CardNudge
import com.microsoft.fluentui.tokenized.notification.CardNudgeMetaData
import com.microsoft.fluentui.tokenized.segmentedcontrols.PillMetaData
import com.microsoft.fluentuidemo.R
import com.microsoft.fluentuidemo.V2DemoActivity
import kotlin.math.abs

// Tags used for testing
const val CARD_NUDGE_MODIFIABLE_PARAMETER_SECTION = "Modifiable Parameters"
const val CARD_NUDGE_ICON_PARAM = "Icon Param"
const val CARD_NUDGE_SUBTITLE_PARAM = "Subtitle Param"
const val CARD_NUDGE_ACCENT_ICON_PARAM = "Accent Icon Param"
const val CARD_NUDGE_ACCENT_TEXT_PARAM = "Accent Text Param"
const val CARD_NUDGE_ACTION_BUTTON_PARAM = "Action Button Param"
const val CARD_NUDGE_DISMISS_BUTTON_PARAM = "Dismiss Button Param"

class V2CardNudgeActivity : V2DemoActivity() {
    init {
        setupActivity(this)
    }

    override val paramsUrl = "https://github.com/microsoft/fluentui-android/wiki/Controls#params-15"
    override val controlTokensUrl =
        "https://github.com/microsoft/fluentui-android/wiki/Controls#control-tokens-15"

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        val context = this

        setActivityContent {
            var swipeLeft: Boolean by rememberSaveable { mutableStateOf(false) }
            var swipeRight: Boolean by rememberSaveable { mutableStateOf(false) }
            var swipeAmount: Float by rememberSaveable { mutableStateOf(0.0F) }

            var icon: Boolean by rememberSaveable { mutableStateOf(true) }
            var actionButton: Boolean by rememberSaveable { mutableStateOf(true) }
            var subtitle: String? by rememberSaveable { mutableStateOf(null) }
            var accentText: String? by rememberSaveable { mutableStateOf(null) }
            var accentImage: Boolean by rememberSaveable { mutableStateOf(false) }
            var outlineEnabled: Boolean by rememberSaveable { mutableStateOf(false) }
            var dismissEnabled by rememberSaveable { mutableStateOf(true) }

            Column(
                Modifier.fillMaxSize(),
                horizontalAlignment = Alignment.CenterHorizontally
            ) {


                ListItem.SectionHeader(
                    title = LocalContext.current.resources.getString(R.string.app_modifiable_parameters),
                    modifier = Modifier.testTag(CARD_NUDGE_MODIFIABLE_PARAMETER_SECTION),
                    enableChevron = true,
                    enableContentOpenCloseTransition = true,
                    chevronOrientation = ChevronOrientation(90f, 0f),
                ) {
                    LazyColumn(Modifier.fillMaxHeight(0.5F)) {
                        item {
                            ListItem.Item(
                                text = LocalContext.current.resources.getString(R.string.fluentui_icon),
                                subText = if (!icon)
                                    LocalContext.current.resources.getString(R.string.fluentui_disabled)
                                else
                                    LocalContext.current.resources.getString(R.string.fluentui_enabled),
                                trailingAccessoryContent = {
                                    ToggleSwitch(
                                        onValueChange = {
                                            icon = it
                                        },
                                        modifier = Modifier.testTag(CARD_NUDGE_ICON_PARAM),
                                        checkedState = icon
                                    )
                                }
                            )
                        }

                        item {
                            val subTitleText =
                                LocalContext.current.resources.getString(R.string.fluentui_subtitle)
                            ListItem.Item(
                                text = subTitleText,
                                subText = if (subtitle.isNullOrBlank())
                                    LocalContext.current.resources.getString(R.string.fluentui_disabled)
                                else
                                    LocalContext.current.resources.getString(R.string.fluentui_enabled),
                                trailingAccessoryContent = {
                                    ToggleSwitch(
                                        onValueChange = {
                                            subtitle = if (subtitle.isNullOrBlank()) {
                                                subTitleText
                                            } else {
                                                null
                                            }
                                        },
                                        modifier = Modifier.testTag(CARD_NUDGE_SUBTITLE_PARAM),
                                        checkedState = !subtitle.isNullOrBlank()
                                    )
                                }
                            )
                        }

                        item {
                            val accent =
                                LocalContext.current.resources.getString(R.string.fluentui_accent)
                            ListItem.Item(
                                text = accent,
                                subText = if (accentText.isNullOrBlank())
                                    LocalContext.current.resources.getString(R.string.fluentui_disabled)
                                else
                                    LocalContext.current.resources.getString(R.string.fluentui_enabled),
                                trailingAccessoryContent = {
                                    ToggleSwitch(
                                        onValueChange = {
                                            accentText = if (accentText.isNullOrBlank()) {
                                                accent
                                            } else {
                                                null
                                            }
                                        },
                                        modifier = Modifier.testTag(CARD_NUDGE_ACCENT_TEXT_PARAM),
                                        checkedState = !accentText.isNullOrBlank()
                                    )
                                }
                            )
                        }

                        item {
                            ListItem.Item(
                                text = LocalContext.current.resources.getString(R.string.fluentui_accent_icon),
                                subText = if (accentImage)
                                    LocalContext.current.resources.getString(R.string.fluentui_disabled)
                                else
                                    LocalContext.current.resources.getString(R.string.fluentui_enabled),
                                trailingAccessoryContent = {
                                    ToggleSwitch(
                                        onValueChange = {
                                            accentImage = it
                                        },
                                        modifier = Modifier.testTag(CARD_NUDGE_ACCENT_ICON_PARAM),
                                        checkedState = accentImage
                                    )
                                }
                            )
                        }

                        item {
                            ListItem.Item(
                                text = LocalContext.current.resources.getString(R.string.fluentui_action_button),
                                subText = if (actionButton)
                                    LocalContext.current.resources.getString(R.string.fluentui_disabled)
                                else
                                    LocalContext.current.resources.getString(R.string.fluentui_enabled),
                                trailingAccessoryContent = {
                                    ToggleSwitch(
                                        onValueChange = {
                                            actionButton = it
                                        },
                                        modifier = Modifier.testTag(CARD_NUDGE_ACTION_BUTTON_PARAM),
                                        checkedState = actionButton
                                    )
                                }
                            )
                        }

                        item {
                            ListItem.Item(
                                text = LocalContext.current.resources.getString(R.string.fluentui_dismiss_button),
                                subText = if (!dismissEnabled)
                                    LocalContext.current.resources.getString(R.string.fluentui_disabled)
                                else
                                    LocalContext.current.resources.getString(R.string.fluentui_enabled),
                                trailingAccessoryContent = {
                                    ToggleSwitch(
                                        onValueChange = {
                                            dismissEnabled = it
                                        },
                                        modifier = Modifier.testTag(CARD_NUDGE_DISMISS_BUTTON_PARAM),
                                        checkedState = dismissEnabled
                                    )
                                }
                            )
                        }

                        item {
                            ListItem.Item(
                                text = LocalContext.current.resources.getString(R.string.fluentui_outline),
                                subText = if (!outlineEnabled)
                                    LocalContext.current.resources.getString(R.string.fluentui_disabled)
                                else
                                    LocalContext.current.resources.getString(R.string.fluentui_enabled),
                                trailingAccessoryContent = {
                                    ToggleSwitch(
                                        onValueChange = {
                                            outlineEnabled = it
                                        },
                                        checkedState = outlineEnabled
                                    )
                                }
                            )
                        }
                    }
                }
            }

            //Behaviour text
            val buttonPressed =
                LocalContext.current.resources.getString(R.string.fluentui_button_pressed)
            val dismissPressed =
                LocalContext.current.resources.getString(R.string.fluentui_dismissed)
            val leftSwiped =
                LocalContext.current.resources.getString(R.string.fluentui_left_swiped)
            val rightSwiped =
                LocalContext.current.resources.getString(R.string.fluentui_right_swiped)
            val isRtl = LocalLayoutDirection.current == LayoutDirection.Rtl
            Column(Modifier.fillMaxHeight(), verticalArrangement = Arrangement.Center) {
                Box(
                    Modifier
                        .wrapContentHeight()
                        .fillMaxWidth()
                        .background(
                            if (abs(swipeAmount) > 0.3)
                                FluentTheme.aliasTokens.errorAndStatusColor[FluentAliasTokens.ErrorAndStatusColorTokens.WarningBackground1].value()
                            else
                                Color.Unspecified
                        ),
                    contentAlignment = Alignment.Center
                ) {
                    BasicText(
                        "Hide",
                        modifier = Modifier
                            .fillMaxWidth()
                            .padding(horizontal = FluentGlobalTokens.SizeTokens.Size160.value),
                        style = FluentTheme.aliasTokens.typography[FluentAliasTokens.TypographyTokens.Body1Strong].merge(
                            TextStyle(
                                textAlign =
                                if (swipeAmount > 0) {
                                    if(!isRtl) TextAlign.Left else TextAlign.Right
                                } else {
                                    if(!isRtl) TextAlign.Right else TextAlign.Left },
                                color = if (abs(swipeAmount) > 0.3)
                                    FluentTheme.aliasTokens.errorAndStatusColor[FluentAliasTokens.ErrorAndStatusColorTokens.WarningForeground1].value()
                                else
                                    Color.Black
                            )
                        )
                    )
                    CardNudge(
                        metadata = CardNudgeMetaData(
                            message = LocalContext.current.resources.getString(R.string.fluentui_title),
                            icon = if (icon) FluentIcon(Icons.Outlined.Call) else null,
                            subTitle = subtitle,
                            accentText = accentText,
                            accentIcon = if (accentImage) FluentIcon(Icons.Outlined.LocationOn) else null,
                            actionMetaData = if (actionButton)
                                PillMetaData(
                                    LocalContext.current.resources.getString(R.string.fluentui_action_button),
                                    onClick = {
                                        Toast.makeText(
                                            context,
                                            buttonPressed,
                                            Toast.LENGTH_SHORT
                                        ).show()
                                    }
                                ) else null,
                            dismissOnClick = if (dismissEnabled) {
                                {
                                    Toast.makeText(
                                        context,
                                        dismissPressed,
                                        Toast.LENGTH_SHORT
                                    ).show()
                                }
                            } else null,
                            leftSwipeGesture = {
                                if(!isRtl){
                                    swipeRight = false
                                    swipeLeft = true
                                }
                                else{
                                    swipeRight = true
                                    swipeLeft = false
                                }
                                swipeAmount = it
                            },
                            rightSwipeGesture = {
                                if(!isRtl) {
                                    swipeRight = true
                                    swipeLeft = false
                                }
                                else{
                                    swipeRight = false
                                    swipeLeft = true
                                }
                                swipeAmount = it
                            }

                        ),
                        outlineMode = outlineEnabled
                    )

                }
                if (swipeLeft)
                    Label(
                        leftSwiped + ": " + abs(swipeAmount).toString(),
                        textStyle = FluentAliasTokens.TypographyTokens.Caption1Strong
                    )
                else if (swipeRight)
                    Label(
                        rightSwiped + ": " + abs(swipeAmount).toString(),
                        textStyle = FluentAliasTokens.TypographyTokens.Caption1Strong
                    )
            }
        }
    }
}
```

## File: src/main/java/com/microsoft/fluentuidemo/demos/V2CitationActivity.kt
```kotlin
package com.microsoft.fluentuidemo.demos

import android.os.Bundle
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.text.BasicText
import androidx.compose.foundation.text.InlineTextContent
import androidx.compose.foundation.text.appendInlineContent
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.AnnotatedString
import androidx.compose.ui.text.Placeholder
import androidx.compose.ui.text.PlaceholderVerticalAlign
import androidx.compose.ui.text.SpanStyle
import androidx.compose.ui.text.buildAnnotatedString
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.FluentAliasTokens
import com.microsoft.fluentui.theme.token.controlTokens.BorderType
import com.microsoft.fluentui.tokenized.bottomsheet.BottomSheet
import com.microsoft.fluentui.tokenized.bottomsheet.BottomSheetValue
import com.microsoft.fluentui.tokenized.bottomsheet.rememberBottomSheetState
import com.microsoft.fluentui.tokenized.listitem.ListItem
import com.microsoft.fluentui.tokenized.notification.Citation
import com.microsoft.fluentuidemo.V2DemoActivity
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch

class V2CitationActivity : V2DemoActivity() {
    init {
        setupActivity(this)
    }

    override val paramsUrl = "https://github.com/microsoft/fluentui-android/wiki/Controls#params-16"
    override val controlTokensUrl = "https://github.com/microsoft/fluentui-android/wiki/Controls#control-tokens-16"

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        setActivityContent {
            CreateCitationUI()
        }
    }

    @Composable
    private fun CreateCitationUI() {
        val text1 =
            "Mona said that Summit Center project is set to start pre-construction planning and site preparation for the new arena in Atlanta April 2023. "
        val text2 =
            " Over the month you’ve had lots of emails and meetings with Mona. You’ve discussed project updates, timelines, and deadlines across 5 emails. "
        val text3 = " You agreed on a number of ways to promote the project."
        val textStyle =
            FluentTheme.aliasTokens.typography[FluentAliasTokens.TypographyTokens.Body1]
        val textColor =
            FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value()
        val textSpanStyle = SpanStyle(
            fontWeight = textStyle.fontWeight,
            fontSize = textStyle.fontSize,
            color = textColor
        )
        var hidden by remember { mutableStateOf(true) }
        var citation1Highlight by remember { mutableStateOf(false) }
        val bottomSheetState = rememberBottomSheetState(BottomSheetValue.Hidden)

        val scope = rememberCoroutineScope()
        val annotatedText = buildAnnotatedString {
            append(
                AnnotatedString(
                    text1, spanStyle = textSpanStyle.plus(
                        if (citation1Highlight) {
                            SpanStyle(background = Color.Yellow)
                        } else {
                            SpanStyle()
                        }
                    )
                )
            )
            appendInlineContent("citation1")
            append(AnnotatedString(text2, spanStyle = textSpanStyle))
            appendInlineContent("citations")
            append(AnnotatedString(text3, spanStyle = textSpanStyle))
            appendInlineContent("citation2")
        }
        val inlineContent = mapOf(
            Pair(
                "citation1",
                InlineTextContent(
                    Placeholder(
                        width = 16.sp,
                        height = 16.sp,
                        placeholderVerticalAlign = PlaceholderVerticalAlign.TextCenter
                    )
                ) {
                    Citation(text = "1", onClick = {
                        hidden = false
                        citation1Highlight = true
                        scope.launch {
                            delay(3000)
                            citation1Highlight = false
                        }
                        scope.launch { bottomSheetState.show() }
                    })
                }),
            Pair(
                "citations",
                InlineTextContent(
                    Placeholder(
                        width = 96.sp,
                        height = 16.sp,
                        placeholderVerticalAlign = PlaceholderVerticalAlign.TextCenter
                    )
                ) {
                    Row(horizontalArrangement = Arrangement.spacedBy(4.dp)) {
                        Citation(text = "2", onClick = {
                            hidden = false
                            scope.launch { bottomSheetState.show() }
                        })
                        Citation(text = "3", onClick = {
                            hidden = false
                            scope.launch { bottomSheetState.show() }
                        })
                        Citation(text = "4", onClick = {
                            hidden = false
                            scope.launch { bottomSheetState.show() }
                        })
                        Citation(text = "5", onClick = {
                            hidden = false
                            scope.launch { bottomSheetState.show() }
                        })
                        Citation(text = "6", onClick = {
                            hidden = false
                            scope.launch { bottomSheetState.show() }
                        })
                    }
                }),
            Pair(
                "citation2",
                InlineTextContent(
                    Placeholder(
                        width = 16.sp,
                        height = 16.sp,
                        placeholderVerticalAlign = PlaceholderVerticalAlign.TextCenter
                    )
                ) {
                    Citation(text = "7", onClick = {
                        hidden = false
                        scope.launch { bottomSheetState.show() }
                    })
                })

        )
        BottomSheet(
            sheetContent = { bottomSheetOnCitation() },
            expandable = true,
            peekHeight = 250.dp,
            showHandle = true,
            sheetState = bottomSheetState,
            slideOver = true
        ) {
            Box(Modifier.padding(all = 24.dp)) {
                BasicText(text = annotatedText, inlineContent = inlineContent)
            }
        }
    }

    @Composable
    private fun bottomSheetOnCitation() {
        Column {
            ListItem.Item(
                leadingAccessoryContent = { Citation(text = "1") },
                text = "Reference",
                border = BorderType.Bottom
            )
            ListItem.Item(
                leadingAccessoryContent = { Citation(text = "2") },
                text = "Reference",
                border = BorderType.Bottom
            )
            ListItem.Item(
                leadingAccessoryContent = { Citation(text = "3") },
                text = "Reference",
                border = BorderType.Bottom
            )
            ListItem.Item(
                leadingAccessoryContent = { Citation(text = "4") },
                text = "Reference",
                border = BorderType.Bottom
            )
            ListItem.Item(
                leadingAccessoryContent = { Citation(text = "5") },
                text = "Reference",
                border = BorderType.Bottom
            )
            ListItem.Item(
                leadingAccessoryContent = { Citation(text = "6") },
                text = "Reference",
                border = BorderType.Bottom
            )
            ListItem.Item(
                leadingAccessoryContent = { Citation(text = "7") },
                text = "Reference",
                border = BorderType.Bottom
            )
        }
    }
}
```

## File: src/main/java/com/microsoft/fluentuidemo/demos/V2ContextualCommandBarActivity.kt
```kotlin
package com.microsoft.fluentuidemo.demos

import android.content.res.Configuration
import android.os.Bundle
import android.view.KeyEvent.KEYCODE_DPAD_DOWN
import android.view.KeyEvent.KEYCODE_DPAD_RIGHT
import android.widget.Toast
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.text.BasicText
import androidx.compose.material.Divider
import androidx.compose.material.TextField
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Add
import androidx.compose.material.icons.filled.Call
import androidx.compose.material.icons.filled.Create
import androidx.compose.material.icons.filled.DateRange
import androidx.compose.material.icons.filled.Delete
import androidx.compose.material.icons.filled.Done
import androidx.compose.material.icons.filled.Edit
import androidx.compose.material.icons.filled.Email
import androidx.compose.material.icons.filled.Favorite
import androidx.compose.material.icons.filled.Info
import androidx.compose.material.icons.filled.KeyboardArrowLeft
import androidx.compose.material.icons.filled.KeyboardArrowRight
import androidx.compose.material.icons.filled.Refresh
import androidx.compose.material.icons.outlined.Build
import androidx.compose.material.icons.outlined.Email
import androidx.compose.material.icons.outlined.Home
import androidx.compose.material.icons.outlined.Menu
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment.Companion.CenterHorizontally
import androidx.compose.ui.Alignment.Companion.CenterVertically
import androidx.compose.ui.Modifier
import androidx.compose.ui.focus.FocusDirection
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.input.key.onKeyEvent
import androidx.compose.ui.platform.LocalConfiguration
import androidx.compose.ui.platform.LocalFocusManager
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.FluentAliasTokens
import com.microsoft.fluentui.theme.token.FluentAliasTokens.NeutralForegroundColorTokens.Foreground2
import com.microsoft.fluentui.theme.token.FluentIcon
import com.microsoft.fluentui.theme.token.controlTokens.ButtonStyle
import com.microsoft.fluentui.tokenized.contextualcommandbar.ActionButtonPosition
import com.microsoft.fluentui.tokenized.contextualcommandbar.CommandGroup
import com.microsoft.fluentui.tokenized.contextualcommandbar.CommandItem
import com.microsoft.fluentui.tokenized.contextualcommandbar.ContextualCommandBar
import com.microsoft.fluentui.tokenized.controls.Button
import com.microsoft.fluentui.tokenized.controls.ToggleSwitch
import com.microsoft.fluentui.tokenized.drawer.BottomDrawer
import com.microsoft.fluentui.tokenized.drawer.rememberBottomDrawerState
import com.microsoft.fluentuidemo.V2DemoActivity
import kotlinx.coroutines.launch

class V2ContextualCommandBarActivity : V2DemoActivity() {
    init {
        setupActivity(this)
    }

    override val paramsUrl = "https://github.com/microsoft/fluentui-android/wiki/Controls#params-17"
    override val controlTokensUrl = "https://github.com/microsoft/fluentui-android/wiki/Controls#control-tokens-17"


    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        val context = this

        setActivityContent {
            val click: (() -> Unit) =
                { Toast.makeText(context, "Click", Toast.LENGTH_SHORT).show() }
            val longClick: (() -> Unit) =
                { Toast.makeText(context, "Long Click", Toast.LENGTH_SHORT).show() }

            var boldSelected by remember { mutableStateOf(false) }
            var boldDisabled by remember { mutableStateOf(false) }

            val commandGroup2 = CommandGroup(
                "Group 1", listOf(
                    CommandItem(
                        "Email",
                        click,
                        icon = FluentIcon(Icons.Outlined.Email),
                        onLongClick = longClick
                    ),
                    CommandItem(
                        "Build",
                        click,
                        icon = FluentIcon(Icons.Outlined.Build),
                        onLongClick = longClick
                    ),
                    CommandItem(
                        "Done",
                        click,
                        icon = FluentIcon(Icons.Filled.Done),
                        onLongClick = longClick
                    ),
                    CommandItem(
                        "Add",
                        click,
                        icon = FluentIcon(Icons.Filled.Add),
                        onLongClick = longClick
                    )
                )
            )
            val commandGroup3 = CommandGroup(
                "Group 1", listOf(
                    CommandItem(
                        "Menu",
                        click,
                        icon = FluentIcon(Icons.Outlined.Menu),
                        onLongClick = longClick
                    ),
                    CommandItem(
                        "Home",
                        click,
                        icon = FluentIcon(Icons.Outlined.Home),
                        onLongClick = longClick
                    ),
                    CommandItem(
                        "Create",
                        click,
                        icon = FluentIcon(Icons.Filled.Create),
                        onLongClick = longClick
                    ),
                    CommandItem(
                        "Call",
                        click,
                        icon = FluentIcon(Icons.Filled.Call),
                        onLongClick = longClick
                    )
                )
            )
            val commandGroup4 = CommandGroup(
                "Group 1", listOf(
                    CommandItem(
                        "KeyboardArrowLeft",
                        click,
                        icon = FluentIcon(Icons.Filled.KeyboardArrowLeft),
                        onLongClick = longClick
                    ),
                    CommandItem(
                        "KeyboardArrowRight",
                        click,
                        icon = FluentIcon(Icons.Filled.KeyboardArrowRight),
                        onLongClick = longClick
                    )
                )
            )
            val commandGroup5 = CommandGroup(
                "Group 1", listOf(
                    CommandItem(
                        "DateRange",
                        click,
                        icon = FluentIcon(Icons.Filled.DateRange),
                        onLongClick = longClick
                    )
                ), weight = 2f
            )
            val commandGroup = listOf(
                CommandGroup(
                    "Group 1", listOf(
                        CommandItem(
                            "Email",
                            { boldSelected = !boldSelected },
                            selected = !boldSelected,
                            icon = FluentIcon(Icons.Filled.Email),
                            onLongClick = longClick
                        ),
                        CommandItem(
                            "Refresh",
                            click,
                            enabled = false,
                            icon = FluentIcon(Icons.Filled.Refresh),
                            onLongClick = longClick
                        ),
                        CommandItem(
                            "Done",
                            click,
                            icon = FluentIcon(Icons.Filled.Done, tint = Color.Green),
                            onLongClick = longClick
                        ),
                        CommandItem(
                            "Add",
                            click,
                            enabled = false,
                            icon = FluentIcon(Icons.Filled.Add),
                            onLongClick = longClick
                        ),
                        CommandItem(
                            "Call",
                            click,
                            icon = FluentIcon(Icons.Filled.Call),
                            onLongClick = longClick
                        )
                    )
                ),
                CommandGroup(
                    "Group 2", listOf(
                        CommandItem("Bold", { boldSelected = !boldSelected },
                            enabled = !boldDisabled,
                            selected = boldSelected,
                            onLongClick = { boldDisabled = !boldDisabled }),
                    )
                ),
                CommandGroup(
                    "Group 3", listOf(
                        CommandItem("Edit", click, icon = FluentIcon(Icons.Filled.Edit)),
                        CommandItem("Delete", click, icon = FluentIcon(Icons.Filled.Delete)),
                        CommandItem("Italics", click),
                        CommandItem("Underline", click),
                    )
                ),
                CommandGroup(
                    "Group 4", listOf(
                        CommandItem("Email", click, onLongClick = longClick),
                        CommandItem("Info", click, icon = FluentIcon(Icons.Filled.Info)),
                        CommandItem("Settings", click, onLongClick = longClick),
                        CommandItem("Favorite", click, icon = FluentIcon(Icons.Filled.Favorite))
                    )
                )
            )
            Column(
                modifier = Modifier.padding(top = 4.dp),
                verticalArrangement = Arrangement.spacedBy(
                    8.dp,
                    CenterVertically
                )
            ) {
                var kdState by remember { mutableStateOf(ActionButtonPosition.Start) }
                var text by remember { mutableStateOf("") }
                var actionButtonEnabled by remember { mutableStateOf(true) }

                val focusManager = LocalFocusManager.current
                val scope = rememberCoroutineScope()
                val drawerState = rememberBottomDrawerState(expandable = false)
                val open: () -> Unit = {
                    scope.launch { drawerState.open() }
                }
                Row(
                    modifier = Modifier.padding(start = 8.dp),
                    horizontalArrangement = Arrangement.spacedBy(
                        10.dp,
                        CenterHorizontally
                    ), verticalAlignment = CenterVertically
                ) {
                    BasicText(
                        text = "Action Button",
                        style = FluentTheme.aliasTokens.typography[FluentAliasTokens.TypographyTokens.Body1].merge(
                            TextStyle(color = FluentTheme.aliasTokens.neutralForegroundColor[Foreground2].value(
                                themeMode = FluentTheme.themeMode
                            ))
                        ),
                    )
                    ToggleSwitch(
                        onValueChange =
                        {
                            actionButtonEnabled = it
                            if (!actionButtonEnabled)
                                kdState = ActionButtonPosition.None
                            else
                                kdState = ActionButtonPosition.Start
                        }, enabledSwitch = true, checkedState = actionButtonEnabled
                    )
                }
                Row(
                    modifier = Modifier.padding(start = 8.dp),
                    horizontalArrangement = Arrangement.spacedBy(
                        10.dp,
                        CenterHorizontally
                    ), verticalAlignment = CenterVertically
                ) {
                    Button(
                        {
                            kdState =
                                if (kdState == ActionButtonPosition.Start) ActionButtonPosition.End else ActionButtonPosition.Start
                        },
                        text = "Toggle action button position",
                        style = ButtonStyle.OutlinedButton,
                        enabled = kdState != ActionButtonPosition.None
                    )
                }
                Row(
                    modifier = Modifier.padding(start = 8.dp),
                    horizontalArrangement = Arrangement.spacedBy(
                        10.dp,
                        CenterHorizontally
                    ), verticalAlignment = CenterVertically
                ) {
                    Button(
                        style = ButtonStyle.OutlinedButton,
                        text = "Multiline CCB on Drawer",
                        onClick = open
                    )
                }

                Divider()
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.Center
                ) {
                    TextField(
                        value = text,
                        onValueChange = { text = it },
                        label = { BasicText("Type your text here") },
                        modifier = Modifier
                            .onKeyEvent { keyEvent ->
                                when (keyEvent.nativeKeyEvent.keyCode) {
                                    KEYCODE_DPAD_DOWN, KEYCODE_DPAD_RIGHT -> {
                                        focusManager.moveFocus(FocusDirection.Down)
                                        true
                                    }

                                    else -> {
                                        false
                                    }
                                }
                            }
                            .padding(start = 8.dp)
                            .background(Color.White),
                    )
                }


                Spacer(modifier = Modifier.weight(1F))

                ContextualCommandBar(
                    commandGroup,
                    actionButtonPosition = kdState
                )
                val configuration = LocalConfiguration.current
                if (configuration.orientation == Configuration.ORIENTATION_PORTRAIT) {
                    BottomDrawer(
                        drawerState = drawerState,
                        drawerContent = {
                            Column(modifier = Modifier.padding(horizontal = 16.dp)) {
                                LazyRow(
                                    modifier = Modifier.padding(horizontal = 4.dp),
                                    horizontalArrangement = Arrangement.spacedBy(2.dp),
                                    verticalAlignment = CenterVertically
                                ) {
                                    item {
                                        BasicText(
                                            modifier = Modifier.padding(
                                                horizontal = 8.dp,
                                                vertical = 4.dp
                                            ),
                                            text = "Heading1",
                                            style = FluentTheme.aliasTokens.typography[FluentAliasTokens.TypographyTokens.Title1]
                                        )
                                    }
                                    item {

                                        BasicText(
                                            modifier = Modifier.padding(
                                                horizontal = 8.dp,
                                                vertical = 4.dp
                                            ),
                                            text = "Heading2",
                                            style = FluentTheme.aliasTokens.typography[FluentAliasTokens.TypographyTokens.Title2]
                                        )
                                    }
                                    item {
                                        BasicText(
                                            modifier = Modifier.padding(
                                                horizontal = 8.dp,
                                                vertical = 4.dp
                                            ),
                                            text = "Heading3",
                                            style = FluentTheme.aliasTokens.typography[FluentAliasTokens.TypographyTokens.Title3]
                                        )
                                    }
                                    item {
                                        BasicText(
                                            modifier = Modifier.padding(
                                                horizontal = 8.dp,
                                                vertical = 4.dp
                                            ),
                                            text = "Paragraph",
                                            style = FluentTheme.aliasTokens.typography[FluentAliasTokens.TypographyTokens.Body1]
                                        )
                                    }
                                }
                                LazyColumn{
                                    item {
                                        ContextualCommandBar(
                                            listOf(commandGroup2),
                                            scrollable = false,
                                            actionButtonPosition = ActionButtonPosition.None
                                        )
                                        ContextualCommandBar(
                                            listOf(commandGroup3),
                                            scrollable = false,
                                            actionButtonPosition = ActionButtonPosition.None
                                        )
                                        ContextualCommandBar(
                                            listOf(commandGroup4, commandGroup5),
                                            scrollable = false,
                                            actionButtonPosition = ActionButtonPosition.None
                                        )
                                    }
                                }
                            }

                        },
                        slideOver = false,
                        scrimVisible = false
                    )
                } else {
                    BottomDrawer(
                        drawerState = drawerState,
                        drawerContent = {
                            Column(horizontalAlignment = CenterHorizontally) {
                                LazyRow(
                                    modifier = Modifier.padding(horizontal = 4.dp),
                                    horizontalArrangement = Arrangement.spacedBy(2.dp),
                                    verticalAlignment = CenterVertically
                                ) {
                                    item {
                                        BasicText(
                                            modifier = Modifier.padding(
                                                horizontal = 8.dp,
                                                vertical = 4.dp
                                            ),
                                            text = "Heading1",
                                            style = FluentTheme.aliasTokens.typography[FluentAliasTokens.TypographyTokens.Title1]
                                        )
                                    }
                                    item {
                                        BasicText(
                                            modifier = Modifier.padding(
                                                horizontal = 8.dp,
                                                vertical = 4.dp
                                            ),
                                            text = "Heading2",
                                            style = FluentTheme.aliasTokens.typography[FluentAliasTokens.TypographyTokens.Title2]
                                        )
                                    }
                                    item {
                                        BasicText(
                                            modifier = Modifier.padding(
                                                horizontal = 8.dp,
                                                vertical = 4.dp
                                            ),
                                            text = "Heading3",
                                            style = FluentTheme.aliasTokens.typography[FluentAliasTokens.TypographyTokens.Title3]
                                        )
                                    }
                                    item {
                                        BasicText(
                                            modifier = Modifier.padding(
                                                horizontal = 8.dp,
                                                vertical = 4.dp
                                            ),
                                            text = "Paragraph",
                                            style = FluentTheme.aliasTokens.typography[FluentAliasTokens.TypographyTokens.Body1]
                                        )
                                    }
                                }
                                Row {
                                    ContextualCommandBar(
                                        listOf(
                                            commandGroup2,
                                            commandGroup3,
                                            commandGroup4,
                                            commandGroup5
                                        ),
                                        scrollable = false,
                                        actionButtonPosition = ActionButtonPosition.None
                                    )

                                }
                            }

                        },
                        slideOver = false,
                        scrimVisible = false
                    )
                }

            }
        }
    }
}
```

## File: src/main/java/com/microsoft/fluentuidemo/demos/V2DialogActivity.kt
```kotlin
package com.microsoft.fluentuidemo.demos

import android.content.Context
import android.os.Bundle
import android.widget.Toast
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.width
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.ExperimentalComposeUiApi
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.unit.dp
import androidx.compose.ui.window.DialogProperties
import com.microsoft.fluentui.theme.token.FluentAliasTokens
import com.microsoft.fluentui.theme.token.controlTokens.ButtonStyle
import com.microsoft.fluentui.tokenized.controls.Button
import com.microsoft.fluentui.tokenized.controls.Label
import com.microsoft.fluentui.tokenized.controls.ToggleSwitch
import com.microsoft.fluentui.tokenized.listitem.ListItem
import com.microsoft.fluentui.tokenized.menu.Dialog
import com.microsoft.fluentuidemo.R
import com.microsoft.fluentuidemo.V2DemoActivity

class V2DialogActivity : V2DemoActivity() {
    init {
        setupActivity(this)
    }

    override val paramsUrl = "https://github.com/microsoft/fluentui-android/wiki/Controls#params-18"
    override val controlTokensUrl = "https://github.com/microsoft/fluentui-android/wiki/Controls#control-tokens-18"

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        setActivityContent {
            CreateDialogActivityUI(this)
        }
    }

    @OptIn(ExperimentalComposeUiApi::class)
    @Composable
    private fun CreateDialogActivityUI(context: Context) {
        var showDialog by remember { mutableStateOf(false) }
        var dismissOnClickOutside by remember { mutableStateOf(false) }
        var dismissOnBackPress by remember { mutableStateOf(false) }
        val resources = LocalContext.current.resources
        Column(
            modifier = Modifier.padding(all = 16.dp),
            verticalArrangement = Arrangement.spacedBy(16.dp)
        ) {
            ListItem.Item(
                text = resources.getString(R.string.dismiss_dialog_outside),
                subText = if (dismissOnClickOutside)
                    resources.getString(R.string.fluentui_enabled)
                else
                    resources.getString(R.string.fluentui_disabled),
                trailingAccessoryContent = {
                    ToggleSwitch(
                        modifier = Modifier.testTag("outside press"),
                        onValueChange = {
                            dismissOnClickOutside = it
                        },
                        checkedState = dismissOnClickOutside
                    )
                }
            )
            ListItem.Item(
                text = resources.getString(R.string.dismiss_dialog_back),
                subText = if (dismissOnBackPress)
                    resources.getString(R.string.fluentui_enabled)
                else
                    resources.getString(R.string.fluentui_disabled),
                trailingAccessoryContent = {
                    ToggleSwitch(
                        modifier = Modifier.testTag("back press"),
                        onValueChange = {
                            dismissOnBackPress = it
                        },
                        checkedState = dismissOnBackPress
                    )
                }
            )
            Box(modifier = Modifier.fillMaxWidth(), contentAlignment = Alignment.Center) {
                Button(
                    style = ButtonStyle.OutlinedButton,
                    text = resources.getString(R.string.show_dialog),
                    onClick = { showDialog = !showDialog }
                )
            }
            var count by remember { mutableStateOf(1) }
            if (showDialog) {
                Dialog(
                    onDismiss = {
                        showDialog = !showDialog
                        Toast.makeText(
                            context,
                            resources.getString(R.string.dismiss_dialog),
                            Toast.LENGTH_SHORT
                        ).show()
                    },
                    dialogProperties = DialogProperties(
                        dismissOnClickOutside = dismissOnClickOutside,
                        dismissOnBackPress = dismissOnBackPress,
                        usePlatformDefaultWidth = false
                    )
                ) {
                    Column(Modifier.padding(all = 16.dp)) {
                        for (i in 0..count) {
                            Label(
                                text = resources.getString(R.string.dialog_description),
                                textStyle = FluentAliasTokens.TypographyTokens.Body1
                            )
                            Spacer(modifier = Modifier.height(16.dp))
                        }
                        Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.End) {
                            Button(
                                style = ButtonStyle.TextButton,
                                text = "Add Item",
                                onClick = {
                                    count++
                                })
                            Spacer(modifier = Modifier.width(8.dp))
                            Button(
                                style = ButtonStyle.TextButton,
                                text = resources.getString(R.string.ok),
                                onClick = {
                                    showDialog = false
                                    Toast.makeText(
                                        context,
                                        resources.getString(R.string.ok),
                                        Toast.LENGTH_SHORT
                                    ).show()
                                })
                        }
                    }
                }
            }
        }

    }
}
```

## File: src/main/java/com/microsoft/fluentuidemo/demos/V2DrawerActivity.kt
```kotlin
package com.microsoft.fluentuidemo.demos

import android.os.Bundle
import androidx.compose.foundation.border
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.selection.toggleable
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.semantics.Role
import androidx.compose.ui.semantics.clearAndSetSemantics
import androidx.compose.ui.semantics.contentDescription
import androidx.compose.ui.unit.IntOffset
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.theme.token.FluentAliasTokens
import com.microsoft.fluentui.theme.token.controlTokens.BehaviorType
import com.microsoft.fluentui.theme.token.controlTokens.ButtonSize
import com.microsoft.fluentui.theme.token.controlTokens.ButtonStyle
import com.microsoft.fluentui.tokenized.controls.Button
import com.microsoft.fluentui.tokenized.controls.Label
import com.microsoft.fluentui.tokenized.controls.RadioButton
import com.microsoft.fluentui.tokenized.controls.ToggleSwitch
import com.microsoft.fluentui.tokenized.drawer.Drawer
import com.microsoft.fluentui.tokenized.drawer.rememberDrawerState
import com.microsoft.fluentui.tokenized.listitem.ListItem
import com.microsoft.fluentuidemo.R
import com.microsoft.fluentuidemo.V2DemoActivity
import com.microsoft.fluentuidemo.util.PrimarySurfaceContent
import com.microsoft.fluentuidemo.util.getAndroidViewAsContent
import com.microsoft.fluentuidemo.util.getDrawerAsContent
import com.microsoft.fluentuidemo.util.getDynamicListGeneratorAsContent
import kotlinx.coroutines.launch


class V2DrawerActivity : V2DemoActivity() {
    init {
        setupActivity(this)
    }

    override val paramsUrl = "https://github.com/microsoft/fluentui-android/wiki/Controls#params-19"
    override val controlTokensUrl =
        "https://github.com/microsoft/fluentui-android/wiki/Controls#control-tokens-19"

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        setActivityContent {
            CreateActivityUI()
        }
    }
}

enum class ContentType {
    FULL_SCREEN_SCROLLABLE_CONTENT,
    EXPANDABLE_SIZE_CONTENT,
    WRAPPED_SIZE_CONTENT
}

@Composable
private fun CreateActivityUI() {
    var scrimVisible by rememberSaveable { mutableStateOf(true) }
    var dynamicSizeContent by rememberSaveable { mutableStateOf(false) }
    var nestedDrawerContent by rememberSaveable { mutableStateOf(false) }
    var listContent by rememberSaveable { mutableStateOf(true) }
    var preventDismissalOnScrimClick by rememberSaveable { mutableStateOf(false) }
    var selectedContent by rememberSaveable { mutableStateOf(ContentType.FULL_SCREEN_SCROLLABLE_CONTENT) }
    var selectedBehaviorType by rememberSaveable { mutableStateOf(BehaviorType.BOTTOM_SLIDE_OVER) }
    var relativeToParentAnchor by rememberSaveable {
        mutableStateOf(
            false
        )
    }
    var offsetX by rememberSaveable { mutableIntStateOf(0) }
    var offsetY by rememberSaveable { mutableIntStateOf(0) }
    Column {
        if (relativeToParentAnchor) {
            Row(
                Modifier
                    .width(500.dp)
                    .height(100.dp)
                    .border(width = 2.dp, color = Color.Red),
                horizontalArrangement = Arrangement.Center,
                verticalAlignment = Alignment.CenterVertically
            ) {
                Label(
                    text = "Random composable. Drawer starts from below",
                    textStyle = FluentAliasTokens.TypographyTokens.Body1Strong
                )
            }
        }
        Column(horizontalAlignment = Alignment.CenterHorizontally) {

            CreateDrawerWithButtonOnPrimarySurfaceToInvokeIt(
                selectedBehaviorType,
                if (listContent)
                    getAndroidViewAsContent(selectedContent)
                else if (nestedDrawerContent) {
                    getDrawerAsContent()
                } else {
                    getDynamicListGeneratorAsContent()
                },
                scrimVisible = scrimVisible,
                IntOffset(offsetX, offsetY),
                preventDismissalOnScrimClick = preventDismissalOnScrimClick
            )
            LazyColumn(horizontalAlignment = Alignment.CenterHorizontally) {
                item {
                    ListItem.Header(title = stringResource(id = R.string.drawer_select_drawer_type))
                    ListItem.Item(text = stringResource(id = R.string.drawer_top),
                        subText = stringResource(id = R.string.drawer_top_description),
                        subTextMaxLines = Int.MAX_VALUE,
                        onClick = { selectedBehaviorType = BehaviorType.TOP },
                        trailingAccessoryContent = {
                            RadioButton(
                                onClick = {
                                    selectedBehaviorType = BehaviorType.TOP
                                },
                                selected = selectedBehaviorType == BehaviorType.TOP
                            )
                        }
                    )
                    ListItem.Item(text = stringResource(id = R.string.drawer_bottom),
                        subText = stringResource(id = R.string.drawer_bottom_description),
                        subTextMaxLines = Int.MAX_VALUE,
                        onClick = { selectedBehaviorType = BehaviorType.BOTTOM },
                        trailingAccessoryContent = {
                            RadioButton(
                                onClick = {
                                    selectedBehaviorType = BehaviorType.BOTTOM
                                },
                                selected = selectedBehaviorType == BehaviorType.BOTTOM
                            )
                        }
                    )
                    ListItem.Item(text = stringResource(id = R.string.drawer_left_slide_over),
                        subText = stringResource(id = R.string.drawer_left_slide_over_description),
                        subTextMaxLines = Int.MAX_VALUE,
                        onClick = { selectedBehaviorType = BehaviorType.LEFT_SLIDE_OVER },
                        trailingAccessoryContent = {
                            RadioButton(
                                onClick = {
                                    selectedBehaviorType = BehaviorType.LEFT_SLIDE_OVER
                                },
                                selected = selectedBehaviorType == BehaviorType.LEFT_SLIDE_OVER
                            )
                        }
                    )
                    ListItem.Item(text = stringResource(id = R.string.drawer_right_slide_over),
                        subText = stringResource(id = R.string.drawer_right_slide_over_description),
                        subTextMaxLines = Int.MAX_VALUE,
                        onClick = { selectedBehaviorType = BehaviorType.RIGHT_SLIDE_OVER },
                        trailingAccessoryContent = {
                            RadioButton(
                                onClick = {
                                    selectedBehaviorType = BehaviorType.RIGHT_SLIDE_OVER
                                },
                                selected = selectedBehaviorType == BehaviorType.RIGHT_SLIDE_OVER
                            )
                        }
                    )
                    ListItem.Item(text = stringResource(id = R.string.drawer_bottom_slide_over),
                        subText = stringResource(id = R.string.drawer_bottom_slide_over_description),
                        subTextMaxLines = Int.MAX_VALUE,
                        onClick = { selectedBehaviorType = BehaviorType.BOTTOM_SLIDE_OVER },
                        trailingAccessoryContent = {
                            RadioButton(
                                onClick = {
                                    selectedBehaviorType = BehaviorType.BOTTOM_SLIDE_OVER
                                },
                                selected = selectedBehaviorType == BehaviorType.BOTTOM_SLIDE_OVER
                            )
                        }
                    )
                }
                item {
                    val preventDismissalOnScrimClickText =
                        stringResource(id = R.string.prevent_scrim_click_dismissal)
                    ListItem.Header(title = preventDismissalOnScrimClickText,
                        modifier = Modifier
                            .toggleable(
                                value = preventDismissalOnScrimClick,
                                role = Role.Switch,
                                onValueChange = {
                                    preventDismissalOnScrimClick = !preventDismissalOnScrimClick
                                }
                            )
                            .clearAndSetSemantics {
                                this.contentDescription = preventDismissalOnScrimClickText
                            },
                        trailingAccessoryContent = {
                            ToggleSwitch(
                                onValueChange = {
                                    preventDismissalOnScrimClick = !preventDismissalOnScrimClick
                                },
                                checkedState = preventDismissalOnScrimClick
                            )
                        }
                    )
                }
                item {
                    val scrimVisibleText = stringResource(id = R.string.drawer_scrim_visible)
                    ListItem.Header(title = scrimVisibleText, modifier = Modifier
                        .toggleable(
                            value = scrimVisible,
                            role = Role.Switch,
                            onValueChange = { scrimVisible = !scrimVisible }
                        )
                        .clearAndSetSemantics {
                            this.contentDescription = scrimVisibleText
                        }, trailingAccessoryContent = {
                        ToggleSwitch(
                            onValueChange = { scrimVisible = !scrimVisible },
                            checkedState = scrimVisible
                        )
                    }
                    )
                }
                item {
                    ListItem.Header(title = "Offset: X $offsetX.dp",
                        modifier = Modifier.fillMaxWidth(),
                        trailingAccessoryContent = {
                            Row {
                                Button(
                                    style = ButtonStyle.Button,
                                    size = ButtonSize.Medium,
                                    text = "+ 10 dp",
                                    enabled = true,
                                    onClick = { offsetX += 10 })
                                Spacer(modifier = Modifier.width(10.dp))
                                Button(
                                    style = ButtonStyle.Button,
                                    size = ButtonSize.Medium,
                                    text = "- 10 dp",
                                    enabled = true,
                                    onClick = { offsetX -= 10 })
                            }
                        }
                    )
                }
                item {
                    ListItem.Header(title = "Offset: Y $offsetY.dp",
                        modifier = Modifier.fillMaxWidth(),
                        trailingAccessoryContent = {
                            Row {
                                Button(
                                    style = ButtonStyle.Button,
                                    size = ButtonSize.Medium,
                                    text = "+ 10 dp",
                                    enabled = true,
                                    onClick = { offsetY += 10 })
                                Spacer(modifier = Modifier.width(10.dp))
                                Button(
                                    style = ButtonStyle.Button,
                                    size = ButtonSize.Medium,
                                    text = "- 10 dp",
                                    enabled = true,
                                    onClick = { offsetY -= 10 })
                            }
                        }
                    )
                }

                item {
                    ListItem.Header(title = stringResource(id = R.string.drawer_select_drawer_content))
                    ListItem.Item(text = stringResource(id = R.string.drawer_full_screen_size_scrollable_content),
                        onClick = {
                            selectedContent = ContentType.FULL_SCREEN_SCROLLABLE_CONTENT
                            listContent = true
                            nestedDrawerContent = false
                            dynamicSizeContent = false
                        },
                        trailingAccessoryContent = {
                            RadioButton(
                                onClick = {
                                    selectedContent = ContentType.FULL_SCREEN_SCROLLABLE_CONTENT
                                    listContent = true
                                    nestedDrawerContent = false
                                    dynamicSizeContent = false
                                },
                                selected = selectedContent == ContentType.FULL_SCREEN_SCROLLABLE_CONTENT && listContent
                            )
                        }
                    )
                    ListItem.Item(text = stringResource(id = R.string.drawer_more_than_half_screen_content),
                        onClick = {
                            selectedContent = ContentType.EXPANDABLE_SIZE_CONTENT
                            listContent = true
                            nestedDrawerContent = false
                            dynamicSizeContent = false
                        },
                        trailingAccessoryContent = {
                            RadioButton(
                                onClick = {
                                    selectedContent = ContentType.EXPANDABLE_SIZE_CONTENT
                                    listContent = true
                                    nestedDrawerContent = false
                                    dynamicSizeContent = false
                                },
                                selected = selectedContent == ContentType.EXPANDABLE_SIZE_CONTENT && listContent
                            )
                        }
                    )
                    ListItem.Item(text = stringResource(id = R.string.drawer_less_than_half_screen_content),
                        onClick = {
                            selectedContent = ContentType.WRAPPED_SIZE_CONTENT
                            listContent = true
                            dynamicSizeContent = false
                            nestedDrawerContent = false
                        },
                        trailingAccessoryContent = {
                            RadioButton(
                                onClick = {
                                    selectedContent = ContentType.WRAPPED_SIZE_CONTENT
                                    listContent = true
                                    dynamicSizeContent = false
                                    nestedDrawerContent = false
                                },
                                selected = selectedContent == ContentType.WRAPPED_SIZE_CONTENT && listContent
                            )
                        }
                    )
                    ListItem.Item(text = stringResource(id = R.string.drawer_dynamic_size_content),
                        onClick = {
                            dynamicSizeContent = true
                            nestedDrawerContent = false
                            listContent = false
                        },
                        trailingAccessoryContent = {
                            RadioButton(
                                onClick = {
                                    dynamicSizeContent = true
                                    nestedDrawerContent = false
                                    listContent = false
                                },
                                selected = dynamicSizeContent
                            )
                        }
                    )
                    ListItem.Item(text = stringResource(id = R.string.drawer_nested_drawer_content),
                        onClick = {
                            nestedDrawerContent = true
                            dynamicSizeContent = false
                            listContent = false
                        },
                        trailingAccessoryContent = {
                            RadioButton(
                                onClick = {
                                    nestedDrawerContent = true
                                    dynamicSizeContent = false
                                    listContent = false
                                },
                                selected = nestedDrawerContent
                            )
                        }
                    )
                }
            }
        }
    }
}

@Composable
private fun CreateDrawerWithButtonOnPrimarySurfaceToInvokeIt(
    behaviorType: BehaviorType,
    drawerContent: @Composable ((() -> Unit) -> Unit),
    scrimVisible: Boolean = true,
    offset: IntOffset = IntOffset.Zero,
    preventDismissalOnScrimClick: Boolean
) {
    val scope = rememberCoroutineScope()
    val drawerState = rememberDrawerState()
    val open: () -> Unit = {
        scope.launch { drawerState.open() }
    }
    val expand: () -> Unit = {
        scope.launch { drawerState.expand() }
    }
    val close: () -> Unit = {
        scope.launch { drawerState.close() }
    }
    Row {
        PrimarySurfaceContent(
            open,
            text = stringResource(id = R.string.drawer_open)
        )
        Spacer(modifier = Modifier.width(10.dp))
        PrimarySurfaceContent(
            expand,
            text = stringResource(id = R.string.drawer_expand)
        )
    }

    Drawer(
        drawerState = drawerState,
        offset = offset,
        drawerContent = { drawerContent(close) },
        behaviorType = behaviorType,
        scrimVisible = scrimVisible,
        preventDismissalOnScrimClick = preventDismissalOnScrimClick
    )
}
```

## File: src/main/java/com/microsoft/fluentuidemo/demos/V2LabelActivity.kt
```kotlin
package com.microsoft.fluentuidemo.demos

import android.os.Bundle
import androidx.compose.foundation.background
import androidx.compose.foundation.horizontalScroll
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.theme.token.FluentAliasTokens.TypographyTokens
import com.microsoft.fluentui.theme.token.controlTokens.ColorStyle
import com.microsoft.fluentui.tokenized.controls.Label
import com.microsoft.fluentui.tokenized.segmentedcontrols.PillMetaData
import com.microsoft.fluentui.tokenized.segmentedcontrols.PillTabs
import com.microsoft.fluentuidemo.V2DemoActivity

class V2LabelActivity : V2DemoActivity() {
    init {
        setupActivity(this)
    }

    override val paramsUrl = "https://github.com/microsoft/fluentui-android/wiki/Controls#params-20"
    override val controlTokensUrl = "https://github.com/microsoft/fluentui-android/wiki/Controls#control-tokens-20"


    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        setActivityContent {
            CreateLabelUI()
        }
    }

    @Composable
    private fun CreateLabelUI() {
        var colorStyle by rememberSaveable { mutableStateOf(ColorStyle.Primary) }
        var selectedTab by rememberSaveable { mutableStateOf(0) }
        var isBackgroundChange by rememberSaveable { mutableStateOf(false) }
        var tabsList: MutableList<PillMetaData> = mutableListOf()
        tabsList.add(
            PillMetaData(
                text = "Primary",
                onClick = {
                    colorStyle = ColorStyle.Primary
                    selectedTab = 0
                    isBackgroundChange = false
                }
            )
        )
        tabsList.add(
            PillMetaData(
                text = "Secondary",
                onClick = {
                    colorStyle = ColorStyle.Secondary
                    selectedTab = 1
                    isBackgroundChange = false
                }
            )
        )
        tabsList.add(
            PillMetaData(
                text = "White",
                onClick = {
                    colorStyle = ColorStyle.White
                    isBackgroundChange = true
                    selectedTab = 2
                }
            )
        )
        tabsList.add(
            PillMetaData(
                text = "Brand",
                onClick = {
                    colorStyle = ColorStyle.Brand
                    selectedTab = 3
                    isBackgroundChange = false
                }
            )
        )
        tabsList.add(
            PillMetaData(
                text = "Error",
                onClick = {
                    colorStyle = ColorStyle.Error
                    selectedTab = 4
                    isBackgroundChange = false
                }
            )
        )
        Column(
            modifier = Modifier
                .then(
                    if (isBackgroundChange) {
                        Modifier.background(Color.Black)
                    } else {
                        Modifier
                    }
                )
                .padding(top = 16.dp)
        ) {
            PillTabs(metadataList = tabsList, scrollable = true, selectedIndex = selectedTab)
            Column(
                modifier = Modifier
                    .padding(all = 16.dp)
                    .horizontalScroll(
                        rememberScrollState()
                    )
                    .verticalScroll(
                        rememberScrollState()
                    ),
                verticalArrangement = Arrangement.spacedBy(16.dp)
            ) {

                Label(
                    text = "Display is Regular 60sp",
                    textStyle = TypographyTokens.Display,
                    colorStyle = colorStyle
                )
                Label(
                    text = "LargeTitle is Regular 34sp",
                    textStyle = TypographyTokens.LargeTitle,
                    colorStyle = colorStyle
                )
                Label(
                    text = "Title1 is Bold 24sp",
                    textStyle = TypographyTokens.Title1,
                    colorStyle = colorStyle
                )
                Label(
                    text = "Title2 is Medium 20sp",
                    textStyle = TypographyTokens.Title2,
                    colorStyle = colorStyle
                )
                Label(
                    text = "Title3 is Medium is 18sp",
                    textStyle = TypographyTokens.Title3,
                    colorStyle = colorStyle
                )
                Label(
                    text = "Body1Strong is SemiBold 16sp",
                    textStyle = TypographyTokens.Body1Strong,
                    colorStyle = colorStyle
                )
                Label(
                    text = "Body1 is Regular 16sp",
                    textStyle = TypographyTokens.Body1,
                    colorStyle = colorStyle
                )
                Label(
                    text = "Body2Strong is Medium 14sp",
                    textStyle = TypographyTokens.Body2Strong,
                    colorStyle = colorStyle
                )
                Label(
                    text = "Body2 is Regular 14sp",
                    textStyle = TypographyTokens.Body2,
                    colorStyle = colorStyle
                )
                Label(
                    text = "Caption1Strong is Medium 13sp",
                    textStyle = TypographyTokens.Caption1Strong,
                    colorStyle = colorStyle
                )
                Label(
                    text = "Caption1 is Regular 13sp",
                    textStyle = TypographyTokens.Caption1,
                    colorStyle = colorStyle
                )
                Label(
                    text = "Caption2 is Regular 12sp",
                    textStyle = TypographyTokens.Caption2,
                    colorStyle = colorStyle
                )
            }
        }
    }
}
```

## File: src/main/java/com/microsoft/fluentuidemo/demos/V2ListItemActivity.kt
```kotlin
package com.microsoft.fluentuidemo.demos

import android.content.Context
import android.os.Bundle
import androidx.compose.foundation.Image
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.wrapContentHeight
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.text.BasicText
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.outlined.KeyboardArrowRight
import androidx.compose.material.icons.outlined.MoreVert
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.text.SpanStyle
import androidx.compose.ui.text.buildAnnotatedString
import androidx.compose.ui.text.withStyle
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.theme.FluentTheme.aliasTokens
import com.microsoft.fluentui.theme.FluentTheme.themeMode
import com.microsoft.fluentui.theme.token.FluentAliasTokens
import com.microsoft.fluentui.theme.token.FluentGlobalTokens
import com.microsoft.fluentui.theme.token.FluentIcon
import com.microsoft.fluentui.theme.token.Icon
import com.microsoft.fluentui.theme.token.controlTokens.AvatarSize
import com.microsoft.fluentui.theme.token.controlTokens.AvatarSize.Size24
import com.microsoft.fluentui.theme.token.controlTokens.AvatarSize.Size40
import com.microsoft.fluentui.theme.token.controlTokens.AvatarSize.Size56
import com.microsoft.fluentui.theme.token.controlTokens.BasicCardInfo
import com.microsoft.fluentui.theme.token.controlTokens.BasicCardTokens
import com.microsoft.fluentui.theme.token.controlTokens.BorderInset.XXLarge
import com.microsoft.fluentui.theme.token.controlTokens.BorderType
import com.microsoft.fluentui.theme.token.controlTokens.ButtonSize
import com.microsoft.fluentui.theme.token.controlTokens.ButtonStyle
import com.microsoft.fluentui.theme.token.controlTokens.ListItemTextAlignment
import com.microsoft.fluentui.theme.token.controlTokens.SectionHeaderStyle.Subtle
import com.microsoft.fluentui.theme.token.controlTokens.TextPlacement.Bottom
import com.microsoft.fluentui.tokenized.controls.BasicCard
import com.microsoft.fluentui.tokenized.controls.Button
import com.microsoft.fluentui.tokenized.controls.CheckBox
import com.microsoft.fluentui.tokenized.controls.RadioButton
import com.microsoft.fluentui.tokenized.controls.ToggleSwitch
import com.microsoft.fluentui.tokenized.listitem.ChevronOrientation
import com.microsoft.fluentui.tokenized.listitem.ListItem
import com.microsoft.fluentui.tokenized.notification.Badge
import com.microsoft.fluentui.tokenized.notification.ToolTipBox
import com.microsoft.fluentui.tokenized.notification.rememberTooltipState
import com.microsoft.fluentui.tokenized.persona.Avatar
import com.microsoft.fluentui.tokenized.persona.AvatarGroup
import com.microsoft.fluentui.tokenized.persona.Group
import com.microsoft.fluentui.tokenized.persona.Person
import com.microsoft.fluentui.tokenized.progress.LinearProgressIndicator
import com.microsoft.fluentuidemo.R.drawable
import com.microsoft.fluentuidemo.V2DemoActivity
import com.microsoft.fluentuidemo.icons.ListItemIcons
import com.microsoft.fluentuidemo.icons.listitemicons.Folder40
import com.microsoft.fluentuidemo.util.invokeToast
import kotlinx.coroutines.launch

class V2ListItemActivity : V2DemoActivity() {
    init {
        setupActivity(this)
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        setActivityContent {
            CreateListActivityUI(this)
        }
    }
}

const val sampleText =
    "Fluent UI for Android is a native library that provides the Office UI experience for the Android platform. It contains information about colors and typography, as well as custom controls and customizations for platform controls, all from the official Fluent design language used in Microsoft 365 products."
const val primaryText = "Title, primary text"
const val secondaryText = "Subtitle, secondary text"
const val tertiaryText = "Footer, tertiary text"
const val unclickableText = " (Unclickable) "


@Composable
private fun CreateListActivityUI(context: Context) {
    Box(
        Modifier
            .fillMaxSize()
    ) {
        Column(Modifier.verticalScroll(rememberScrollState())) {
            ListItem.Header(title = "One-Line list")
            OneLineListAccessoryContentContent(context)
            ListItem.Header(title = "Two-Line list")
            TwoLineListAccessoryContentContent(context)
            ListItem.Header(title = "Three-Line list")
            ThreeLineListAccessoryContentContent(context)
            ListItem.Header(title = "Text Only")
            ListItem.Item(
                text = primaryText,
                onClick = {},
                onLongClick = { invokeToast("ListItem Long", context) },
                border = BorderType.Bottom,
                borderInset = XXLarge,
                primaryTextTrailingContent = { Icon20() }
            )
            ListItem.Item(
                text = primaryText,
                onClick = {},
                onLongClick = { invokeToast("ListItem Long", context) },
                subText = secondaryText,
                border = BorderType.Bottom,
                borderInset = XXLarge,
                secondarySubTextLeadingContent = { Icon16() }
            )
            ListItem.Item(
                text = primaryText,
                onClick = {},
                onLongClick = { invokeToast("ListItem Long", context) },
                subText = secondaryText,
                secondarySubText = tertiaryText,
                border = BorderType.Bottom,
                secondarySubTextTrailingContent = {
                    Row(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                        Icon16()
                        Icon16()
                    }
                }
            )
            ListItem.Header(title = "Wrapped Text list")
            ListItem.Item(
                text = sampleText,
                onClick = {},
                textMaxLines = 4,
                leadingAccessoryContent = { LeftContentFolderIcon40() },
                border = BorderType.Bottom,
                borderInset = XXLarge
            )
            ListItem.Item(
                text = sampleText,
                subText = sampleText,
                onClick = {},
                textMaxLines = 4,
                subTextMaxLines = 4,
                leadingAccessoryContent = { LeftContentFolderIcon40() },
                trailingAccessoryContent = {
                    RightContentButton(
                        ButtonSize.Small,
                        context
                    )
                },
                border = BorderType.Bottom,
                borderInset = XXLarge
            )
            ListItem.Item(
                text = sampleText,
                subText = sampleText,
                secondarySubText = sampleText,
                onClick = {},
                textMaxLines = 4,
                subTextMaxLines = 4,
                secondarySubTextMaxLines = 4,
                leadingAccessoryContent = { LeftContentFolderIcon40() },
                trailingAccessoryContent = { RightContentText(text = "Value") },
                border = BorderType.Bottom
            )
            ListItem.Header(title = "Section description")
            ListItem.SectionDescription(
                description = "Sample description with the description placed at the Top with no Action text and no icon",
                border = BorderType.Bottom,
                borderInset = XXLarge
            )
            ListItem.SectionDescription(
                description = "Sample description with the description placed at the Bottom and no Action text",
                descriptionPlacement = Bottom,
                border = BorderType.Bottom,
                borderInset = XXLarge
            )
            ListItem.SectionDescription(
                description = "Sample description with the description placed at the Top, with Icon accessory and Action text",
                actionText = "Action",
                onActionClick = {},
                leadingAccessoryContent = { Icon16() },
                border = BorderType.Bottom,
                borderInset = XXLarge
            )
            ListItem.SectionDescription(
                description = "Sample description with the description placed at the Bottom and Action text",
                actionText = "More",
                onActionClick = {},
                descriptionPlacement = Bottom,
                border = BorderType.Bottom
            )
            ListItem.Header(title = "Section Headers with/without chevron")
            val toolTipState = rememberTooltipState()
            val scope = rememberCoroutineScope()
            Column {
                ListItem.SectionHeader(
                    title = "One-Line list",
                    enableChevron = true,
                    titleTrailingContent = {
                        ToolTipBox(
                            title = "",
                            text = "This is a tooltip",
                            tooltipState = toolTipState
                        ) {
                            Icon(
                                painter = painterResource(id = drawable.ic_icon__16x16_checkmark),
                                contentDescription = "Flag",
                                tint = aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground3].value(
                                    themeMode
                                ),
                                onClick = { scope.launch { toolTipState.show() } }
                            )
                        }
                    },
                    enableContentOpenCloseTransition = true,
                    chevronOrientation = ChevronOrientation(90f, 0f),
                    accessoryTextTitle = "Action",
                    accessoryTextOnClick = {},
                    trailingAccessoryContent = { RightContentThreeButton() },
                    content = { OneLineSimpleList() },
                    border = BorderType.Bottom
                )
                ListItem.SectionHeader(
                    title = "Two-Line list",
                    style = Subtle,
                    enableChevron = true,
                    enableContentOpenCloseTransition = true,
                    chevronOrientation = ChevronOrientation(90f, 0f),
                    content = { TwoLineSimpleList() },
                    border = BorderType.Bottom
                )
                ListItem.SectionHeader(
                    title = "Three-Line list",
                    enableChevron = false,
                    enableContentOpenCloseTransition = true,
                    trailingAccessoryContent = { RightContentToggle() },
                    content = { ThreeLineSimpleList() },
                    border = BorderType.Bottom
                )
            }
            ListItem.Header(title = "Headers")
            ListItem.Header(
                title = "Standard heading",
                accessoryTextTitle = "Action",
                accessoryTextOnClick = {},
                trailingAccessoryContent = { RightContentThreeButton() },
                border = BorderType.Bottom
            )
            ListItem.Header(
                title = "Subtle heading",
                accessoryTextTitle = "Action",
                accessoryTextOnClick = {},
                style = Subtle
            )
            ListItem.Header(title = "Centered Action Text")
            ListItem.Item(
                text = "Action",
                onClick = {},
                textAlignment = ListItemTextAlignment.Centered,
                border = BorderType.Bottom
            )
            ListItem.Item(
                text = "Disabled",
                onClick = {},
                enabled = false,
                textAlignment = ListItemTextAlignment.Centered,
                border = BorderType.Bottom
            )
            ListItem.SectionDescription(description = "Centered action text only supports primary text and ignores any given trailing or leading accessory Contents")
            GroupedList()
        }
    }
}

@Composable
private fun GroupedList() {
    ListItem.Header("Grouped List")
    ListItem.SectionDescription(description = "Grouped List", modifier = Modifier.height(25.dp))
    Column(modifier = Modifier.padding(horizontal = 10.dp, vertical = 10.dp).clip(
        RoundedCornerShape(10.dp))) {
        for(i in 0..3) {
            ListItem.Item(
                text = "Text",
                onClick = {},
                textAlignment = ListItemTextAlignment.Regular,
                border = BorderType.Bottom,
                trailingAccessoryContent = { Icon(icon = FluentIcon(Icons.Outlined.KeyboardArrowRight))},
            )
        }
    }
    ListItem.SectionDescription(description = "Grouped list containing multiple similar elements", modifier = Modifier.wrapContentHeight().padding(0.dp))
}

@Composable
private fun OneLineSimpleList() {
    return Column {
        ListItem.Item(
            text = primaryText,
            leadingAccessoryContent = { GetAvatar(size = Size24, drawable.avatar_amanda_brady) },
            onClick={},
            border = BorderType.Bottom,
            borderInset = XXLarge
        )
        ListItem.Item(
            text = primaryText,
            leadingAccessoryContent = { GetAvatar(size = Size24, drawable.avatar_allan_munger) },
            onClick={},
            border = BorderType.Bottom,
            borderInset = XXLarge
        )
        ListItem.Item(
            text = primaryText,
            leadingAccessoryContent = { GetAvatar(size = Size24, drawable.avatar_ashley_mccarthy) },
            onClick={},
            border = BorderType.Bottom,
            borderInset = XXLarge
        )
    }
}

@Composable
private fun TwoLineSimpleList() {
    return Column {
        ListItem.Item(
            text = primaryText,
            subText = "Subtitle",
            onClick={},
            leadingAccessoryContent = { GetAvatar(size = Size40, drawable.avatar_daisy_phillips) },
            border = BorderType.Bottom,
            borderInset = XXLarge
        )
        ListItem.Item(
            text = primaryText,
            subText = "Subtitle",
            onClick={},
            leadingAccessoryContent = { GetAvatar(size = Size40, drawable.avatar_elliot_woodward) },
            border = BorderType.Bottom,
            borderInset = XXLarge
        )
        ListItem.Item(
            text = primaryText,
            subText = "Subtitle",
            onClick={},
            leadingAccessoryContent = {
                GetAvatar(
                    size = Size40,
                    drawable.avatar_charlotte_waltson
                )
            },
            border = BorderType.Bottom,
            borderInset = XXLarge
        )
    }
}

@Composable
private fun ThreeLineSimpleList() {
    return Column {
        ListItem.Item(
            text = primaryText,
            subText = "Subtitle",
            secondarySubText = tertiaryText,
            onClick={},
            leadingAccessoryContent = { GetAvatar(size = Size56, drawable.avatar_daisy_phillips) },
            border = BorderType.Bottom,
            borderInset = XXLarge
        )
        ListItem.Item(
            text = primaryText,
            subText = "Subtitle",
            secondarySubText = tertiaryText,
            onClick={},
            leadingAccessoryContent = { GetAvatar(size = Size56, drawable.avatar_elliot_woodward) },
            border = BorderType.Bottom,
            borderInset = XXLarge
        )
        ListItem.Item(
            text = primaryText,
            subText = "Subtitle",
            secondarySubText = tertiaryText,
            onClick={},
            leadingAccessoryContent = {
                GetAvatar(
                    size = Size56,
                    drawable.avatar_charlotte_waltson
                )
            },
            border = BorderType.Bottom,
            borderInset = XXLarge
        )
    }
}

@Composable
private fun OneLineListAccessoryContentContent(context: Context) {
    var checked by remember { mutableStateOf(true) }
    return Column {
        ListItem.Item(
            text = primaryText,
            leadingAccessoryContent = { LeftContentRadioButton() },
            trailingAccessoryContent = {
                CheckBox(enabled = true, checked = !checked, onCheckedChanged = {
                    checked = !it
                })
            },
            border = BorderType.Bottom,
            borderInset = XXLarge,
            onClick = { checked = !checked },
            onLongClick = { invokeToast("ListItem Long", context) }
        )
        ListItem.Item(
            text = primaryText,
            onClick = {},
            onLongClick = { invokeToast("ListItem Long", context) },
            leadingAccessoryContent = {
                RightContentButton(
                    size = ButtonSize.Small,
                    context
                )
            },
            primaryTextLeadingContent = {
                Row(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                    Icon20()
                    Icon20()
                }
            },
            primaryTextTrailingContent = { Icon20() },
            border = BorderType.Bottom,
            borderInset = XXLarge
        )
        ListItem.Item(
            text = primaryText,
            onClick = {},
            onLongClick = { invokeToast("ListItem Long", context) },
            leadingAccessoryContent = { LeftContentAvatar(size = Size24) },
            border = BorderType.Bottom,
            borderInset = XXLarge
        )
        ListItem.Item(
            text = primaryText + unclickableText,
            leadingAccessoryContent = { LeftContentAvatar(size = Size24) },
            border = BorderType.Bottom,
            borderInset = XXLarge
        )
        ListItem.Item(
            text = "",
            onClick = {},
            onLongClick = { invokeToast("ListItem Long", context) },
            leadingAccessoryContent = { LeftContentThreeIcon() },
            border = BorderType.Bottom,
            borderInset = XXLarge
        )
        ListItem.Item(
            text = primaryText,
            onClick = {},
            onLongClick = { invokeToast("ListItem Long", context) },
            leadingAccessoryContent = { LeftContentRadioButton() },
            trailingAccessoryContent = { RightContentAvatarStack(Size24) },
            border = BorderType.Bottom,
            borderInset = XXLarge
        )
        ListItem.Item(
            text = primaryText,
            onClick = {},
            onLongClick = { invokeToast("ListItem Long", context) },
            leadingAccessoryContent = { LeftContentThreeButton() },
            trailingAccessoryContent = { RightContentToggle() },
            border = BorderType.Bottom,
            borderInset = XXLarge
        )
    }
}

@Composable
private fun TwoLineListAccessoryContentContent(context: Context) {
    var unreadDot1 by remember { mutableStateOf(true) }
    var unreadDot2 by remember { mutableStateOf(true) }
    return Column {
        ListItem.Item(
            text = primaryText,
            secondarySubText = tertiaryText,
            onClick = {},
            onLongClick = { invokeToast("ListItem Long", context) },
            leadingAccessoryContent = { LeftContentAvatar(size = Size40) },
            trailingAccessoryContent = { LeftContentAvatar(size = Size40) },
            border = BorderType.Bottom,
            borderInset = XXLarge,
            primaryTextTrailingContent = { Icon20() },
            secondarySubTextTrailingContent = { Icon16() }
        )
        ListItem.Item(
            text = primaryText,
            secondarySubText = tertiaryText,
            leadingAccessoryContent = { LeftContentAvatar(size = Size40) },
            border = BorderType.Bottom,
            borderInset = XXLarge,
            unreadDot = unreadDot1,
            onClick = { unreadDot1 = !unreadDot1 },
            onLongClick = { invokeToast("ListItem Long", context) },
            primaryTextTrailingContent = { Icon20() },
            secondarySubTextTrailingContent = { Icon16() }
        )
        ListItem.Item(
            text = primaryText,
            secondarySubText = tertiaryText,
            leadingAccessoryContent = { LeftContentAvatarCutout(size = Size40) },
            border = BorderType.Bottom,
            borderInset = XXLarge,
            unreadDot = unreadDot2,
            onClick = { unreadDot2 = !unreadDot2 },
            onLongClick = { invokeToast("ListItem Long", context) },
            primaryTextTrailingContent = { Icon20() },
            secondarySubTextTrailingContent = { Icon16() }
        )
        ListItem.Item(
            text = primaryText,
            secondarySubText = tertiaryText,
            onClick = {},
            onLongClick = { invokeToast("ListItem Long", context) },
            leadingAccessoryContent = { LeftContentFolderIcon40() },
            primaryTextLeadingContent = {
                Row(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                    Icon20()
                    Icon20()
                }
            },
            primaryTextTrailingContent = { Icon20() },
            secondarySubTextTrailingContent = {
                Row(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                    Icon16()
                    Icon16()
                }
            },
            border = BorderType.Bottom,
            borderInset = XXLarge
        )
        ListItem.Item(
            text = primaryText,
            subText = secondaryText,
            onClick = {},
            onLongClick = { invokeToast("ListItem Long", context) },
            leadingAccessoryContent = { LeftContentFolderIcon40() },
            trailingAccessoryContent = { RightContentAvatarStack(Size40) },
            border = BorderType.Bottom,
            borderInset = XXLarge
        )
        ListItem.Item(
            text = primaryText,
            secondarySubText = tertiaryText,
            leadingAccessoryContent = { LeftContentFolderIcon40() },
            onClick = {},
            onLongClick = { invokeToast("ListItem Long", context) },
            secondarySubTextLeadingContent = {
                Row(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                    Icon16()
                    Icon16()
                }
            },
            secondarySubTextTrailingContent = {
                Row(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                    Icon16()
                    Icon16()
                }
            },
            trailingAccessoryContent = {
                RightContentButton(
                    ButtonSize.Small,
                    context
                )
            },
            border = BorderType.Bottom,
            borderInset = XXLarge
        )
        ListItem.Item(
            text = primaryText,
            secondarySubText = tertiaryText,
            onClick = {},
            onLongClick = { invokeToast("ListItem Long", context) },
            leadingAccessoryContent = { LeftContentFolderIcon40() },
            secondarySubTextTrailingContent = { Icon16() },
            trailingAccessoryContent = { RightContentToggle() },
            border = BorderType.Bottom,
            borderInset = XXLarge
        )
        ListItem.Item(
            text = primaryText,
            subText = secondaryText,
            onClick = {},
            onLongClick = { invokeToast("ListItem Long", context) },
            leadingAccessoryContent = { LeftContentThreeButton() },
            trailingAccessoryContent = { RightContentText("Value") },
            border = BorderType.Bottom,
            borderInset = XXLarge
        )
    }
}

@Composable
private fun ThreeLineListAccessoryContentContent(
    context: Context
) {
    val separator = " • "
    val footer = buildAnnotatedString {
        withStyle(SpanStyle(color = Color.Blue)) {
            append("3 min ago")
        }
        append(separator)
        append("FluentGuide V1.pptx")
    }
    return Column {
        ListItem.Item(
            text = "Amanda Brady replied to your comment",
            subText = "Wanda can you please update the file with comments",
            secondarySubTextAnnotated = footer,
            onClick = {},
            onLongClick = { invokeToast("ListItem Long", context) },
            leadingAccessoryContent = { LeftContentAvatar(size = Size56) },
            trailingAccessoryContent = { rightContentIconButton() },
            primaryTextTrailingContent = { Badge(text = "2") },
            textMaxLines = 2,
            leadingAccessoryContentAlignment = Alignment.Top,
            trailingAccessoryContentAlignment = Alignment.Top,
            unreadDot = true,
            border = BorderType.Bottom,
            borderInset = XXLarge
        )
        ListItem.Item(
            text = primaryText,
            subText = secondaryText,
            secondarySubText = tertiaryText,
            onClick = {},
            onLongClick = { invokeToast("ListItem Long", context) },
            leadingAccessoryContent = { LeftContentFolderIcon40() },
            primaryTextTrailingContent = { Badge(text = "Suggested") },
            trailingAccessoryContent = {
                RightContentButton(
                    ButtonSize.Small,
                    context
                )
            },
            border = BorderType.Bottom,
            borderInset = XXLarge
        )
        ListItem.Item(
            text = primaryText,
            subText = secondaryText,
            bottomContent = { LinearProgressIndicator() },
            onClick = {},
            onLongClick = { invokeToast("ListItem Long", context) },
            primaryTextLeadingContent = { Icon20() },
            secondarySubTextTrailingContent = {
                Row(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                    Icon16()
                    Icon16()
                }
            },
            leadingAccessoryContent = { LeftContentAvatar(Size56) },
            trailingAccessoryContent = { RightContentText(text = "Value") },
            border = BorderType.Bottom
        )
    }
}

private fun getPersonsList(): List<Person> {
    val person1 = Person(firstName = "Allan", image = drawable.avatar_allan_munger)
    val person2 = Person(firstName = "Amanda", image = drawable.avatar_amanda_brady)
    val person3 = Person(firstName = "Ashley", image = drawable.avatar_ashley_mccarthy)
    return listOf(person1, person2, person3)
}

private fun groupAvatar(): Group {
    return Group(getPersonsList())
}

@Composable
private fun LeftContentRadioButton() {
    var checked by remember { mutableStateOf(false) }
    return RadioButton(enabled = true,
        selected = checked,
        onClick = {
            checked = !checked
        }
    )
}

@Composable
private fun RightContentAvatarStack(size: AvatarSize) {
    return AvatarGroup(group = groupAvatar(), size = size)
}

@Composable
private fun LeftContentThreeIcon() {
    Row(horizontalArrangement = Arrangement.spacedBy(16.dp)) {
        Icon(
            painter = painterResource(id = drawable.ic_fluent_flag_24_regular),
            contentDescription = "Flag",
            tint = aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground3].value(
                themeMode
            )
        )
        Icon(
            painter = painterResource(id = drawable.ic_fluent_reply_24_regular),
            contentDescription = "Reply",
            tint = aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground3].value(
                themeMode
            )
        )
        Icon(
            painter = painterResource(id = drawable.ic_fluent_forward_24_regular),
            contentDescription = "Forward",
            tint = aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground3].value(
                themeMode
            )
        )
    }
}

@Composable
private fun RightContentToggle() {
    var enabled by remember { mutableStateOf(false) }
    return ToggleSwitch(onValueChange = {
        enabled = it
    }, enabledSwitch = true, checkedState = enabled)
}

@Composable
private fun RightContentThreeButton() {
    Row(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
        Button(
            onClick = { /*TODO*/ },
            size = ButtonSize.Small,
            style = ButtonStyle.OutlinedButton,
            text = "Text"
        )
        Button(
            onClick = { /*TODO*/ },
            size = ButtonSize.Small,
            style = ButtonStyle.OutlinedButton,
            text = "Text"
        )
        Button(
            onClick = { /*TODO*/ },
            size = ButtonSize.Small,
            style = ButtonStyle.OutlinedButton,
            text = "Text"
        )
    }
}

@Composable
private fun LeftContentThreeButton() {
    Row(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
        Button(
            onClick = { /*TODO*/ },
            size = ButtonSize.Small,
            style = ButtonStyle.OutlinedButton,
            text = "Text"
        )
        Button(
            onClick = { /*TODO*/ },
            size = ButtonSize.Small,
            style = ButtonStyle.OutlinedButton,
            text = "Text"
        )
        Button(
            onClick = { /*TODO*/ },
            size = ButtonSize.Small,
            style = ButtonStyle.OutlinedButton,
            text = "Text"
        )
    }
}

@Composable
private fun Icon16() {
    return Icon(
        painter = painterResource(id = drawable.ic_icon__16x16_checkmark),
        contentDescription = "Flag",
        tint = aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground3].value(
            themeMode
        )
    )
}

@Composable
private fun Icon20() {
    return Icon(
        painter = painterResource(id = drawable.ic_icon__20x20_checkmark),
        contentDescription = "Flag",
        tint = aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground3].value(
            themeMode
        )
    )
}

@Composable
private fun LeftContentFolderIcon40() {
    return Image(ListItemIcons.Folder40, "Folder")
}

@Composable
private fun rightContentIconButton() {
    class Tokens : BasicCardTokens() {
        @Composable
        override fun cornerRadius(basicCardInfo: BasicCardInfo): Dp {
            return FluentGlobalTokens.CornerRadiusTokens.CornerRadius40.value
        }
    }
    Column(
        verticalArrangement = Arrangement.Center,
        horizontalAlignment = Alignment.CenterHorizontally
    ) {
        BasicCard(Modifier.padding(all = 4.dp), basicCardTokens = Tokens()) {
            Icon(Icons.Outlined.MoreVert, contentDescription = "")
        }
    }
}

@Composable
private fun RightContentButton(
    size: ButtonSize,
    context: Context
) {
    return Button(
        text = "Text",
        onClick = { invokeToast("Button", context) },
        size = size,
        style = ButtonStyle.OutlinedButton
    )
}

@Composable
private fun LeftContentAvatar(size: AvatarSize) {
    val person = Person(firstName = "", lastName = "", image = drawable.avatar_amanda_brady)
    return Avatar(person = person, size = size, enablePresence = false)
}

@Composable
private fun LeftContentAvatarCutout(size: AvatarSize) {
    val person =
        Person(firstName = "", lastName = "", image = drawable.avatar_amanda_brady, isActive = true)
    return Avatar(
        person = person,
        size = size,
        enablePresence = false,
        enableActivityRings = true,
        cutoutIconDrawable = drawable.cutout_heart16x16
    )
}

@Composable
private fun GetAvatar(size: AvatarSize, image: Int) {
    val person = Person(firstName = "", lastName = "", image = image)
    return Avatar(person = person, size = size, enablePresence = false)
}

@Composable
private fun RightContentText(text: String) {
    return BasicText(text = text)
}
```

## File: src/main/java/com/microsoft/fluentuidemo/demos/V2MenuActivity.kt
```kotlin
package com.microsoft.fluentuidemo.demos

import android.content.Context
import android.content.res.Configuration
import android.os.Bundle
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.text.BasicText
import androidx.compose.foundation.text.BasicTextField
import androidx.compose.foundation.text.KeyboardOptions
import androidx.compose.foundation.verticalScroll
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalConfiguration
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.input.KeyboardType
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.DpOffset
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.ThemeMode
import com.microsoft.fluentui.theme.token.FluentAliasTokens
import com.microsoft.fluentui.tokenized.listitem.ListItem
import com.microsoft.fluentui.tokenized.menu.Menu
import com.microsoft.fluentuidemo.R
import com.microsoft.fluentuidemo.V2DemoActivity

val DefaultMenuInputWidthFraction = 0.35f

class V2MenuActivity : V2DemoActivity() {
    init {
        setupActivity(this)
    }

    override val paramsUrl = "https://github.com/microsoft/fluentui-android/wiki/Controls#params-21"
    override val controlTokensUrl = "https://github.com/microsoft/fluentui-android/wiki/Controls#control-tokens-21"

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        val context = this

        setActivityContent {
            CreateMenuActivityUI(context)
        }
    }
}

@Composable
fun CreateMenuActivityUI(context: Context) {
    val xOffsetState = rememberSaveable { mutableStateOf("0") }
    val yOffsetState = rememberSaveable { mutableStateOf("0") }
    val repeatContentTextCountState = rememberSaveable { mutableStateOf("4") }
    val contentTextState =
        rememberSaveable { mutableStateOf(context.getString(R.string.menu_content_text_input)) }
    Column {
        Column {
            ListItem.Header(title = context.getString(R.string.menu_xOffset),
                titleMaxLines = 2,
                trailingAccessoryContent = {
                    BasicTextField(value = xOffsetState.value,
                        keyboardOptions = KeyboardOptions(keyboardType = KeyboardType.Number),
                        onValueChange = { xOffsetState.value = it.trim() },
                        modifier = Modifier.background(Color.White).fillMaxWidth(fraction = DefaultMenuInputWidthFraction))
                }
            )
            ListItem.Header(title = context.getString(R.string.menu_yOffset),
                titleMaxLines = 2,
                trailingAccessoryContent = {
                    BasicTextField(value = yOffsetState.value,
                        keyboardOptions = KeyboardOptions(keyboardType = KeyboardType.Number),
                        onValueChange = { yOffsetState.value = it.trim() },
                        modifier = Modifier.background(Color.White).fillMaxWidth(fraction = DefaultMenuInputWidthFraction))
                })
            ListItem.Header(title = context.getString(R.string.menu_content_text),
                titleMaxLines = 2,
                trailingAccessoryContent = {
                    BasicTextField(
                        value = contentTextState.value,
                        onValueChange = { contentTextState.value = it },
                        modifier = Modifier.background(Color.White).fillMaxWidth(fraction = DefaultMenuInputWidthFraction))
                })
            ListItem.Header(title = context.getString(R.string.menu_repeat_content_text),
                titleMaxLines = 2,
                trailingAccessoryContent = {
                    BasicTextField(value = repeatContentTextCountState.value,
                        keyboardOptions = KeyboardOptions(keyboardType = KeyboardType.Number),
                        onValueChange = { repeatContentTextCountState.value = it.trim() },
                        modifier = Modifier.background(Color.White).fillMaxWidth(fraction = DefaultMenuInputWidthFraction))
                })
            ListItem.SectionDescription(description = context.getString(R.string.menu_description))
        }
        val xOffset =
            if (xOffsetState.value.toFloatOrNull() == null) 0.dp else xOffsetState.value.toFloat().dp
        val yOffset =
            if (yOffsetState.value.toFloatOrNull() == null) 0.dp else yOffsetState.value.toFloat().dp
        val repeat =
            if (repeatContentTextCountState.value == "" || repeatContentTextCountState.value.toIntOrNull() == null) 0 else repeatContentTextCountState.value.toInt()

        Column(verticalArrangement = Arrangement.SpaceBetween, modifier = Modifier.fillMaxSize()) {
            MenuRow(context, xOffset, yOffset, contentTextState.value, repeat)
            if (LocalConfiguration.current.orientation == Configuration.ORIENTATION_PORTRAIT) {
                MenuRow(context, xOffset, yOffset, contentTextState.value, repeat)
                MenuRow(context, xOffset, yOffset, contentTextState.value, repeat)
            }
        }
    }
}

@Composable
fun MenuRow(context: Context, xOffset: Dp, yOffset: Dp, contentText: String, repeat: Int) {
    Row(horizontalArrangement = Arrangement.SpaceBetween, modifier = Modifier.fillMaxWidth()) {
        Menu(context, xOffset, yOffset, contentText, repeat)
        Menu(context, xOffset, yOffset, contentText, repeat)
        Menu(context, xOffset, yOffset, contentText, repeat)
    }
}

@Composable
fun Menu(context: Context, xOffset: Dp, yOffset: Dp, contentText: String, count: Int) {
    var expanded by remember { mutableStateOf(false) }
    Box {
        com.microsoft.fluentui.tokenized.controls.Button(
            onClick = { expanded = true },
            text = context.getString(R.string.menu_open_menu_button)
        )
        Menu(
            opened = expanded,
            offset = DpOffset(xOffset, yOffset),
            onDismissRequest = { expanded = false }
        ) {
            Column(Modifier.verticalScroll(rememberScrollState())) {
                repeat(count) {
                    BasicText(
                        text = "$contentText ${it + 1}",
                        style = TextStyle(
                            color = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value(
                                themeMode = FluentTheme.themeMode
                            )
                        )
                    )
                }
            }
        }
    }
}
```

## File: src/main/java/com/microsoft/fluentuidemo/demos/V2PeoplePickerActivity.kt
```kotlin
package com.microsoft.fluentuidemo.demos

import android.os.Bundle
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.runtime.setValue
import androidx.compose.ui.ExperimentalComposeUiApi
import androidx.compose.ui.Modifier
import androidx.compose.ui.res.pluralStringResource
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.theme.token.FluentAliasTokens
import com.microsoft.fluentui.theme.token.controlTokens.AvatarStatus
import com.microsoft.fluentui.theme.token.controlTokens.PersonaChipStyle
import com.microsoft.fluentui.tokenized.controls.Label
import com.microsoft.fluentui.tokenized.peoplepicker.PeoplePicker
import com.microsoft.fluentui.tokenized.peoplepicker.PeoplePickerItemData
import com.microsoft.fluentui.tokenized.peoplepicker.rememberPeoplePickerItemDataList
import com.microsoft.fluentui.tokenized.persona.AvatarGroup
import com.microsoft.fluentui.tokenized.persona.Group
import com.microsoft.fluentui.tokenized.persona.Person
import com.microsoft.fluentui.tokenized.persona.Persona
import com.microsoft.fluentui.tokenized.persona.PersonaList
import com.microsoft.fluentuidemo.R
import com.microsoft.fluentuidemo.V2DemoActivity
import kotlinx.coroutines.launch

class V2PeoplePickerActivity : V2DemoActivity() {
    init {
        setupActivity(this)
    }

    override val paramsUrl = "https://github.com/microsoft/fluentui-android/wiki/Controls#params-22"

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        setActivityContent {
            CreatePeoplePickerActivity()
        }
    }

    @OptIn(ExperimentalComposeUiApi::class)
    @Composable
    private fun CreatePeoplePickerActivity() {
        val people = mutableListOf(
            Person(
                "Allan", "Munger",
                image = R.drawable.avatar_allan_munger,
                email = "allan.munger@xyz.com",
                isActive = true
            ),
            Person(
                "Amanda", "Brady",
                email = "amanda.brady@xyz.com",
                isActive = false, status = AvatarStatus.Offline
            ),
            Person(
                "Abhay", "Singh",
                email = "abhay.singh@xyz.com",
                isActive = true, status = AvatarStatus.DND, isOOO = true
            ),
            Person(
                "Carlos", "Slathery",
                email = "carlos.slathery@xyz.com",
                isActive = false, status = AvatarStatus.Busy, isOOO = true
            ),
            Person(
                "Celeste", "Burton",
                email = "celeste.burton@xyz.com",
                image = R.drawable.avatar_celeste_burton,
                isActive = true, status = AvatarStatus.Away
            ),
            Person(
                "Ankit", "Gupta",
                email = "ankit.gupta@xyz.com",
                isActive = true, status = AvatarStatus.Unknown
            ),
            Person(
                "Miguel", "Garcia",
                email = "miguel.garcia@xyz.com",
                image = R.drawable.avatar_miguel_garcia,
                isActive = true, status = AvatarStatus.Blocked
            )
        )
        val selectedPeopleList = rememberPeoplePickerItemDataList()
        val scope = rememberCoroutineScope()
        var suggested by rememberSaveable { mutableStateOf(mutableListOf<Person>()) }
        val suggestedPersonaList = mutableListOf<Persona>()
        val selectedPersonList = mutableListOf<Person>()
        val errorPeopleList = mutableListOf<Person>()
        val assistiveText by rememberSaveable { mutableStateOf(true) }
        var errorText by rememberSaveable { mutableStateOf(false) }

        Column {
            Row(modifier = Modifier.padding(8.dp)) {
                PeoplePicker(
                    onValueChange = { query, selectedPerson ->
                        scope.launch {
                            suggested = if (query.isEmpty()) {
                                mutableListOf()
                            } else {
                                people.filter {
                                    it.firstName.lowercase().contains(query.lowercase()) ||
                                            it.lastName.lowercase().contains(query.lowercase())
                                } as MutableList<Person>
                            }
                        }
                    },
                    selectedPeopleList = selectedPeopleList,
                    chipValidation = {
                        if (!it.email.isNullOrBlank()) {
                            if (it.email?.contains("@") == true)
                                PersonaChipStyle.Neutral
                            else {
                                errorText = true
                                errorPeopleList.add(it)
                                PersonaChipStyle.Danger
                            }

                        } else {
                            errorText = true
                            errorPeopleList.add(it)
                            PersonaChipStyle.Danger
                        }
                    },
                    modifier = Modifier.weight(1f),
                    onChipClick = {
                        scope.launch {
                            it.selected.value = !it.selected.value
                        }
                    },
                    onChipCloseClick = {
                        selectedPeopleList.remove(it)
                        run outer@{
                            errorPeopleList.forEach { errorPerson ->
                                if (errorPerson == it.person) {
                                    errorPeopleList.remove(errorPerson)
                                    return@outer
                                }
                            }
                        }
                        if (errorPeopleList.isEmpty())
                            errorText = false
                    },
                    onTextEntered = { queryText ->
                        if (queryText.isNotBlank() && queryText.isNotEmpty()) {
                            selectedPeopleList.add(
                                PeoplePickerItemData(
                                    Person(queryText, ""),
                                    mutableStateOf(false)
                                )
                            )
                        }
                    },
                    onBackPress = { queryText, it ->
                        if (queryText.isEmpty() && it != null) {
                            if (!it.selected.value) {
                                it.selected.value = !it.selected.value
                            } else {
                                selectedPeopleList.remove(it)
                                errorPeopleList.forEach { errorPerson ->
                                    if (errorPerson == it.person) {
                                        errorPeopleList.remove(errorPerson)
                                        return@PeoplePicker
                                    }
                                }
                                if (errorPeopleList.isEmpty())
                                    errorText = false
                            }
                        }
                    },
                    peoplePickerContentDescription = pluralStringResource(R.plurals.people_picker_accessibility_text_view_example, selectedPeopleList.size, selectedPeopleList.size),
                    label = "People Picker",
                    searchHint = "Search People",
                    assistiveText = if (assistiveText) "This is a sample Assistive Text" else null,
                    errorString = if (errorText) "This is a sample Error text" else null,
                )
            }

            suggested.forEach outer@{
                selectedPeopleList.forEach { selectedPerson ->
                    if (selectedPerson.person.email == it.email) {
                        return@outer
                    }
                }
                suggestedPersonaList.add(
                    Persona(
                        it,
                        "${it.firstName} ${it.lastName}",
                        subTitle = it.email,
                        onClick = {
                            selectedPeopleList.add(PeoplePickerItemData(it, mutableStateOf(false)))
                        }
                    )
                )
            }

            selectedPeopleList.forEach {
                selectedPersonList.add(it.person)
            }
            Column {
                PersonaList(personas = suggestedPersonaList, modifier = Modifier.padding(8.dp))
                Spacer(modifier = Modifier.height(8.dp))
                Label(
                    modifier = Modifier.padding(8.dp),
                    text = "Selected People from people picker",
                    textStyle = FluentAliasTokens.TypographyTokens.Body1
                )
                AvatarGroup(group = Group(selectedPersonList), modifier = Modifier.padding(8.dp))
            }
        }
    }
}
```

## File: src/main/java/com/microsoft/fluentuidemo/demos/V2PersonaActivity.kt
```kotlin
package com.microsoft.fluentuidemo.demos

import android.content.Context
import android.os.Bundle
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.text.BasicText
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.theme.token.controlTokens.AvatarStatus
import com.microsoft.fluentui.tokenized.persona.Person
import com.microsoft.fluentui.tokenized.persona.Persona
import com.microsoft.fluentuidemo.R
import com.microsoft.fluentuidemo.V2DemoActivity
import com.microsoft.fluentuidemo.util.invokeToast

class V2PersonaActivity : V2DemoActivity() {
    init {
        setupActivity(this)
    }

    override val paramsUrl = "https://github.com/microsoft/fluentui-android/wiki/Controls#params-23"
    override val controlTokensUrl = "https://github.com/microsoft/fluentui-android/wiki/Controls#control-tokens-22"

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        setActivityContent {
            CreatePersonaActivityUI(this)
        }
    }

    @Composable
    private fun CreatePersonaActivityUI(context: Context) {
        val person1 = Person(
            "Allan", "Munger",
            image = R.drawable.avatar_allan_munger, isActive = true,
            status = AvatarStatus.Available, isOOO = false
        )
        val person2 = Person(
            "Charlotte", "Waltson",
            image = R.drawable.avatar_charlotte_waltson, isActive = false,
            status = AvatarStatus.Blocked, isOOO = false
        )
        val person3 = Person(
            "Carole", "Poland",
            image = R.drawable.avatar_carole_poland, isActive = false,
            status = AvatarStatus.Away, isOOO = true
        )
        Box {
            Column {
                LazyColumn {
                    item {
                        Column {
                            BasicText(
                                modifier = Modifier.padding(start = 8.dp, top = 16.dp),
                                text = "One line Persona view with small Avatar",
                                style = TextStyle(color = Color(0xFF2886DE))
                            )
                            Persona(
                                person = person1,
                                primaryText = person1.firstName + " " + person1.lastName,
                                onClick = {
                                    invokeToast(
                                        person1.firstName,
                                        context
                                    )
                                },
                                enableAvatarActivityRings = true
                            )
                        }
                    }
                    item {
                        Column {
                            BasicText(
                                modifier = Modifier.padding(start = 8.dp, top = 16.dp),
                                text = "Two line Persona view with large Avatar",
                                style = TextStyle(color = Color(0xFF2886DE))
                            )
                            Persona(
                                person = person2,
                                primaryText = person2.firstName + " " + person2.lastName,
                                secondaryText = "Microsoft",
                                onClick = {
                                    invokeToast(
                                        person2.firstName,
                                        context
                                    )
                                },
                            )
                        }
                    }
                    item {
                        Column {
                            BasicText(
                                modifier = Modifier.padding(start = 8.dp, top = 16.dp),
                                text = "Three line Persona View with Xlarge Avatar",
                                style = TextStyle(color = Color(0xFF2886DE))
                            )
                            Persona(
                                person = person3,
                                primaryText = person3.firstName + " " + person3.lastName,
                                secondaryText = "Microsoft",
                                tertiaryText = person3.status.toString(),
                                onClick = {
                                    invokeToast(
                                        person3.firstName,
                                        context
                                    )
                                },
                            )
                        }
                    }
                }
            }

        }

    }
}
```

## File: src/main/java/com/microsoft/fluentuidemo/demos/V2PersonaChipActivity.kt
```kotlin
package com.microsoft.fluentuidemo.demos

import android.os.Bundle
import android.widget.Toast
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.text.BasicText
import androidx.compose.runtime.*
import androidx.compose.runtime.saveable.listSaver
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.semantics.heading
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.FluentAliasTokens
import com.microsoft.fluentui.theme.token.FluentStyle
import com.microsoft.fluentui.theme.token.controlTokens.AvatarStatus.Available
import com.microsoft.fluentui.theme.token.controlTokens.PersonaChipSize
import com.microsoft.fluentui.theme.token.controlTokens.PersonaChipStyle.*
import com.microsoft.fluentui.tokenized.controls.ToggleSwitch
import com.microsoft.fluentui.tokenized.persona.Person
import com.microsoft.fluentui.tokenized.persona.PersonaChip
import com.microsoft.fluentui.tokenized.persona.SearchBarPersonaChip
import com.microsoft.fluentuidemo.R.drawable
import com.microsoft.fluentuidemo.V2DemoActivity

// Tags used for testing
const val PERSONA_CHIP_SMALL_CHIP = "persona chip small"
const val PERSONA_CHIP_MEDIUM_CHIP = "persona chip medium"
const val PERSONA_CHIP_ANONYMOUS = "persona chip ann"
const val PERSONA_CHIP_DISABLED = "persona chip disabled"
const val PERSONA_CHIP_SWITCH = "persona chip switch"

class V2PersonaChipActivity : V2DemoActivity() {
    init {
        setupActivity(this)
    }

    override val paramsUrl = "https://github.com/microsoft/fluentui-android/wiki/Controls#params-24"
    override val controlTokensUrl =
        "https://github.com/microsoft/fluentui-android/wiki/Controls#control-tokens-23"

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        setActivityContent {
            createPersonaChipActivityUI()
        }
    }

    private fun createPersonWithName(): Person {
        return Person(
            "Allan",
            "Munger",
            image = drawable.avatar_allan_munger,
            email = "allan.munger@microsoft.com",
            isActive = true,
            status = Available,
            isOOO = false
        )
    }

    private fun createPersonWithEmail(): Person {
        return Person(
            "",
            "",
            image = drawable.avatar_allan_munger,
            email = "allan.munger@microsoft.com",
            isActive = true,
            status = Available,
            isOOO = false
        )
    }

    private fun createPersonWithNothing(): Person {
        return Person(
            "",
            "",
            image = drawable.avatar_allan_munger,
            email = "",
            isActive = true,
            status = Available,
            isOOO = false
        )
    }

    @Composable
    private fun createPersonaChipActivityUI() {
        val textColor =
            FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value(
                themeMode = FluentTheme.themeMode
            )
        val brandTextColor =
            FluentTheme.aliasTokens.brandForegroundColor[FluentAliasTokens.BrandForegroundColorTokens.BrandForeground1].value(
                themeMode = FluentTheme.themeMode
            )
        var showCloseButton by remember { mutableStateOf(false) }
        var selectedList = rememberSaveable(
            saver = listSaver(
                save = { stateList ->
                    if (stateList.isNotEmpty()) {
                        val first = stateList.first()
                        if (!canBeSaved(first)) {
                            throw IllegalStateException("${first::class} cannot be saved. By default only types which can be stored in the Bundle class can be saved.")
                        }
                    }
                    stateList.toList()
                },
                restore = { it.toMutableStateList() }
            )) {
            mutableStateListOf(
                false,
                false,
                false,
                false,
                false,
                false,
                false,
                false,
                false,
                false,
                false,
                false,
                false,
                false,
                false,
                false,
                false,
            )
        }

        //TODO: Clean Activity using for loops
        Box(Modifier.padding(16.dp)) {
            LazyColumn(verticalArrangement = Arrangement.spacedBy(16.dp)) {
                item {
                    Row(
                        horizontalArrangement = Arrangement.spacedBy(16.dp),
                        verticalAlignment = Alignment.CenterVertically
                    ) {
                        BasicText(
                            text = "Enable/Disable close button on selected state",
                            style = TextStyle(
                                color = brandTextColor,
                                fontSize = 10.sp
                            )
                        )
                        ToggleSwitch(
                            modifier = Modifier.testTag(PERSONA_CHIP_SWITCH),
                            onValueChange = { showCloseButton = !showCloseButton },
                            checkedState = showCloseButton
                        )
                    }
                }
                item {
                    BasicText(
                        text = "Basic Persona chip",
                        style = TextStyle(color = brandTextColor, fontSize = 20.sp),
                        modifier = Modifier.semantics { heading() }
                    )
                }
                item {
                    Column(verticalArrangement = Arrangement.spacedBy(8.dp)) {
                        BasicText(
                            text = "Person Chip Neutral",
                            style = TextStyle(color = textColor)
                        )
                        Row(horizontalArrangement = Arrangement.spacedBy(16.dp)) {
                            PersonaChip(
                                person = createPersonWithName(),
                                size = PersonaChipSize.Small,
                                style = Neutral,
                                selected = selectedList[0],
                                onClick = { selectedList[0] = !selectedList[0] })
                            PersonaChip(
                                person = createPersonWithName(),
                                style = Neutral,
                                selected = selectedList[1],
                                onClick = { selectedList[1] = !selectedList[1] },
                                onCloseClick = if (showCloseButton) {
                                    { onClickToast() }
                                } else null
                            )
                        }
                        BasicText(text = "Person Chip Brand", style = TextStyle(color = textColor))
                        Row(horizontalArrangement = Arrangement.spacedBy(16.dp)) {
                            PersonaChip(
                                modifier = Modifier.testTag(PERSONA_CHIP_SMALL_CHIP),
                                person = createPersonWithName(),
                                size = PersonaChipSize.Small,
                                style = Brand,
                                selected = selectedList[2],
                                onClick = { selectedList[2] = !selectedList[2] })
                            PersonaChip(
                                modifier = Modifier.testTag(PERSONA_CHIP_MEDIUM_CHIP),
                                person = createPersonWithName(),
                                style = Brand,
                                selected = selectedList[3],
                                onClick = { selectedList[3] = !selectedList[3] },
                                onCloseClick = if (showCloseButton) {
                                    { onClickToast() }
                                } else null
                            )
                        }
                        BasicText(text = "Person Chip Danger", style = TextStyle(color = textColor))
                        LazyRow(horizontalArrangement = Arrangement.spacedBy(16.dp)) {
                            item {
                                PersonaChip(
                                    person = createPersonWithEmail(),
                                    size = PersonaChipSize.Small,
                                    style = Danger,
                                    selected = selectedList[4],
                                    onClick = { selectedList[4] = !selectedList[4] })
                            }
                            item {
                                PersonaChip(
                                    person = createPersonWithEmail(),
                                    style = Danger,
                                    selected = selectedList[5],
                                    onClick = { selectedList[5] = !selectedList[5] },
                                    onCloseClick = if (showCloseButton) {
                                        { onClickToast() }
                                    } else null
                                )
                            }
                        }
                        BasicText(
                            text = "Person Chip Severe Warning",
                            style = TextStyle(color = textColor)
                        )
                        LazyRow(horizontalArrangement = Arrangement.spacedBy(16.dp)) {
                            item {
                                PersonaChip(
                                    person = createPersonWithEmail(),
                                    size = PersonaChipSize.Small,
                                    style = SevereWarning,
                                    selected = selectedList[6],
                                    onClick = { selectedList[6] = !selectedList[6] })
                            }
                            item {
                                PersonaChip(
                                    person = createPersonWithEmail(),
                                    style = SevereWarning,
                                    selected = selectedList[7],
                                    onClick = { selectedList[7] = !selectedList[7] },
                                    onCloseClick = if (showCloseButton) {
                                        { onClickToast() }
                                    } else null
                                )
                            }
                        }
                        BasicText(
                            text = "Person Chip Warning",
                            style = TextStyle(color = textColor)
                        )
                        Row(horizontalArrangement = Arrangement.spacedBy(16.dp)) {
                            PersonaChip(
                                modifier = Modifier.testTag(PERSONA_CHIP_ANONYMOUS),
                                person = createPersonWithNothing(),
                                size = PersonaChipSize.Small,
                                style = Warning,
                                selected = selectedList[8],
                                onClick = { selectedList[8] = !selectedList[8] })
                            PersonaChip(
                                person = createPersonWithNothing(),
                                style = Warning,
                                selected = selectedList[9],
                                onClick = { selectedList[9] = !selectedList[9] },
                                onCloseClick = if (showCloseButton) {
                                    { onClickToast() }
                                } else null
                            )
                        }
                        BasicText(
                            text = "Person Chip Success",
                            style = TextStyle(color = textColor)
                        )
                        Row(horizontalArrangement = Arrangement.spacedBy(16.dp)) {
                            PersonaChip(
                                person = createPersonWithName(),
                                size = PersonaChipSize.Small,
                                style = Success,
                                selected = selectedList[10],
                                onClick = { selectedList[10] = !selectedList[10] })
                            PersonaChip(
                                person = createPersonWithName(),
                                style = Success,
                                selected = selectedList[11],
                                onClick = { selectedList[11] = !selectedList[11] },
                                onCloseClick = if (showCloseButton) {
                                    { onClickToast() }
                                } else null
                            )
                        }
                        BasicText(
                            text = "Person Chip Disabled",
                            style = TextStyle(color = textColor)
                        )
                        Row(horizontalArrangement = Arrangement.spacedBy(16.dp)) {
                            PersonaChip(
                                person = createPersonWithName(),
                                size = PersonaChipSize.Small,
                                style = Neutral,
                                enabled = false,
                                selected = selectedList[12],
                                onClick = { selectedList[12] = !selectedList[12] },
                                onCloseClick = if (showCloseButton) {
                                    { onClickToast() }
                                } else null
                            )
                            PersonaChip(
                                modifier = Modifier.testTag(PERSONA_CHIP_DISABLED),
                                person = createPersonWithName(),
                                style = Neutral,
                                enabled = false,
                                selected = selectedList[13],
                                onClick = { selectedList[13] = !selectedList[13] },
                                onCloseClick = if (showCloseButton) {
                                    { onClickToast() }
                                } else null
                            )
                        }
                    }
                }
                item {
                    BasicText(
                        text = "SearchBox Basic Persona chip",
                        style = TextStyle(
                            color = brandTextColor,
                            fontSize = 20.sp
                        ),
                        modifier = Modifier.semantics { heading() }
                    )
                }
                item {
                    Column(verticalArrangement = Arrangement.spacedBy(8.dp)) {
                        BasicText(
                            text = "Persona chip Neutral",
                            style = TextStyle(color = textColor)
                        )
                        SearchBarPersonaChip(
                            person = createPersonWithName(),
                            size = PersonaChipSize.Small,
                            selected = selectedList[14],
                            onClick = { selectedList[14] = !selectedList[14] },
                            onCloseClick = if (showCloseButton) {
                                { onClickToast() }
                            } else null
                        )
                        BasicText(text = "Persona chip Brand", style = TextStyle(color = textColor))
                        SearchBarPersonaChip(
                            person = createPersonWithName(),
                            style = FluentStyle.Brand,
                            selected = selectedList[15],
                            onClick = { selectedList[15] = !selectedList[15] },
                            onCloseClick = if (showCloseButton) {
                                { onClickToast() }
                            } else null
                        )
                    }
                }
            }
        }
    }

    private fun onClickToast() {
        Toast.makeText(
            this,
            "Clicked on close icon",
            Toast.LENGTH_SHORT
        ).show()
    }
}
```

## File: src/main/java/com/microsoft/fluentuidemo/demos/V2PersonaListActivity.kt
```kotlin
package com.microsoft.fluentuidemo.demos

import android.content.Context
import android.graphics.BitmapFactory
import android.os.Bundle
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.vector.rememberVectorPainter
import androidx.compose.ui.platform.testTag
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.FluentAliasTokens
import com.microsoft.fluentui.theme.token.Icon
import com.microsoft.fluentui.theme.token.controlTokens.AvatarStatus.Available
import com.microsoft.fluentui.theme.token.controlTokens.BorderInset
import com.microsoft.fluentui.theme.token.controlTokens.BorderType
import com.microsoft.fluentui.tokenized.persona.Person
import com.microsoft.fluentui.tokenized.persona.Persona
import com.microsoft.fluentui.tokenized.persona.PersonaList
import com.microsoft.fluentuidemo.R
import com.microsoft.fluentuidemo.R.drawable
import com.microsoft.fluentuidemo.V2DemoActivity
import com.microsoft.fluentuidemo.icons.ListItemIcons
import com.microsoft.fluentuidemo.icons.listitemicons.Chevron
import com.microsoft.fluentuidemo.util.invokeToast

// Tags used for testing
const val PERSONA_LIST = "persona_list"

class V2PersonaListActivity : V2DemoActivity() {
    init {
        setupActivity(this)
    }

    override val paramsUrl = "https://github.com/microsoft/fluentui-android/wiki/Controls#params-25"
    override val controlTokensUrl =
        "https://github.com/microsoft/fluentui-android/wiki/Controls#control-tokens-24"

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        setActivityContent {
            CreatePersonaListActivityUI(this)
        }
    }

    @Composable
    private fun trailingIcon() {
        Icon(
            painter = rememberVectorPainter(image = ListItemIcons.Chevron),
            contentDescription = "Flag",
            tint = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground3].value(
                FluentTheme.themeMode
            )
        )
    }

    private fun createPersonasList(context: Context): List<Persona> {
        return arrayListOf(
            Persona(Person(
                "Allan",
                "Munger",
                image = drawable.avatar_allan_munger,
                email = "allan.munger@microsoft.com",
                isActive = true,
                status = Available,
                isOOO = false
            ),
                title = "Allan Munger",
                subTitle = "Manager",
                trailingIcon = { trailingIcon() },
                onClick = { invokeToast("Allan Munger", context) }),
            Persona(Person(
                "Amanda",
                "Brady",
                image = drawable.avatar_amanda_brady,
                email = "allan.munger@microsoft.com",
                isActive = true,
                status = Available,
                isOOO = false
            ),
                title = "Amanda Brady",
                subTitle = "Researcher",
                trailingIcon = { trailingIcon() },
                onClick = { invokeToast("Amanda Brady", context) }),
            Persona(Person(
                "Ashley",
                "McCarthy",
                bitmap = BitmapFactory.decodeResource(context.resources, R.drawable.avatar_ashley_mccarthy),
                email = "allan.munger@microsoft.com",
                isActive = true,
                status = Available,
                isOOO = false
            ),
                title = "Ashley McCarthy",
                subTitle = "Designer",
                trailingIcon = { trailingIcon() },
                onClick = { invokeToast("Ashley McCarthy", context) }),
            Persona(Person(
                "Wanda",
                "Howard",
                image = drawable.avatar_wanda_howard,
                email = "allan.munger@microsoft.com",
                isActive = true,
                status = Available,
                isOOO = false
            ),
                title = "Wanda Howard",
                subTitle = "Manager",
                trailingIcon = { trailingIcon() },
                onClick = { invokeToast("Wanda Howard", context) }),
            Persona(Person(
                "Celeste",
                "Burton",
                image = drawable.avatar_celeste_burton,
                email = "allan.munger@microsoft.com",
                isActive = true,
                status = Available,
                isOOO = false
            ),
                title = "Celeste Burton",
                subTitle = "Engineer",
                trailingIcon = { trailingIcon() },
                onClick = { invokeToast("Celeste Burton", context) }),
            Persona(Person(
                "Cecil",
                "Folk",
                image = drawable.avatar_cecil_folk,
                email = "allan.munger@microsoft.com",
                isActive = true,
                status = Available,
                isOOO = false
            ),
                title = "Cecil Folk",
                subTitle = "Researcher",
                trailingIcon = { trailingIcon() },
                onClick = { invokeToast("Cecil Folk", context) }),
            Persona(Person(
                "Carlos",
                "Slattery",
                image = drawable.avatar_carlos_slattery,
                email = "allan.munger@microsoft.com",
                isActive = true,
                status = Available,
                isOOO = false
            ),
                title = "Carlos Slattery",
                subTitle = "Researcher",
                trailingIcon = { trailingIcon() },
                onClick = { invokeToast("Carlos Slattery", context) }),
            Persona(Person(
                "Carole",
                "Poland",
                image = drawable.avatar_carole_poland,
                email = "allan.munger@microsoft.com",
                isActive = true,
                status = Available,
                isOOO = false
            ),
                title = "Carole Poland",
                subTitle = "Designer",
                trailingIcon = { trailingIcon() },
                onClick = { invokeToast("Carole Poland", context) }),
            Persona(Person(
                "Charlotte",
                "Waltson",
                image = drawable.avatar_charlotte_waltson,
                email = "allan.munger@microsoft.com",
                isActive = true,
                status = Available,
                isOOO = false
            ),
                title = "Charlotte Walston",
                subTitle = "Engineer",
                trailingIcon = { trailingIcon() },
                onClick = { invokeToast("Charlotte Walston", context) }),
            Persona(Person(
                "Colin",
                "Badllinger",
                image = drawable.avatar_colin_ballinger,
                email = "allan.munger@microsoft.com",
                isActive = true,
                status = Available,
                isOOO = false
            ),
                title = "Colin Ballinger",
                subTitle = "Engineer",
                trailingIcon = { trailingIcon() },
                onClick = { invokeToast("Colin Ballinger", context) }),
            Persona(Person(
                "Daisy",
                "Phillips",
                image = drawable.avatar_daisy_phillips,
                email = "allan.munger@microsoft.com",
                isActive = true,
                status = Available,
                isOOO = false
            ),
                title = "Daisy Phillips",
                subTitle = "Researcher",
                trailingIcon = { trailingIcon() },
                onClick = { invokeToast("Daisy Phillips", context) }),
            Persona(Person(
                "elliot",
                "Woodward",
                image = drawable.avatar_elliot_woodward,
                email = "allan.munger@microsoft.com",
                isActive = true,
                status = Available,
                isOOO = false
            ),
                title = "Elliot Woodward",
                subTitle = "Intern",
                trailingIcon = { trailingIcon() },
                onClick = { invokeToast("Elliot Woodward", context) }),
            Persona(Person(
                "Elvia",
                "Atkins",
                image = drawable.avatar_elvia_atkins,
                email = "allan.munger@microsoft.com",
                isActive = true,
                status = Available,
                isOOO = false
            ),
                title = "Elvia Atkins",
                subTitle = "Intern",
                trailingIcon = { trailingIcon() },
                onClick = { invokeToast("Elvia Atkins", context) })
        )
    }

    @Composable
    private fun CreatePersonaListActivityUI(context: Context) {
        PersonaList(
            modifier = Modifier.testTag(PERSONA_LIST),
            personas = createPersonasList(context),
            border = BorderType.Bottom,
            borderInset = BorderInset.XXLarge
        )
    }
}
```

## File: src/main/java/com/microsoft/fluentuidemo/demos/V2ProgressActivity.kt
```kotlin
package com.microsoft.fluentuidemo.demos

import android.content.Context
import android.os.Bundle
import android.widget.Toast
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.outlined.Clear
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.FluentAliasTokens
import com.microsoft.fluentui.theme.token.FluentIcon
import com.microsoft.fluentui.theme.token.FluentStyle
import com.microsoft.fluentui.theme.token.controlTokens.CircularProgressIndicatorSize
import com.microsoft.fluentui.theme.token.controlTokens.ColorStyle
import com.microsoft.fluentui.theme.token.controlTokens.ProgressTextInfo
import com.microsoft.fluentui.theme.token.controlTokens.ProgressTextTokens
import com.microsoft.fluentui.tokenized.controls.Label
import com.microsoft.fluentui.tokenized.progress.CircularProgressIndicator
import com.microsoft.fluentui.tokenized.progress.LinearProgressIndicator
import com.microsoft.fluentui.tokenized.progress.ProgressText
import com.microsoft.fluentuidemo.V2DemoActivity
import kotlinx.coroutines.delay
import kotlin.random.Random

class V2ProgressActivity : V2DemoActivity() {
    init {
        setupActivity(this)
    }

    override val paramsUrl = "https://github.com/microsoft/fluentui-android/wiki/Controls#params-26"
    override val controlTokensUrl = "https://github.com/microsoft/fluentui-android/wiki/Controls#control-tokens-25"

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        setActivityContent {
            CreateProgressActivityUI(this)
        }
    }
}

@Composable
private fun CreateProgressActivityUI(context: Context) {
    var linearProgress by remember { mutableStateOf(0f) }
    var circularProgress by remember { mutableStateOf(0f) }
    var progressString by remember {
        mutableStateOf("Starting...")
    }
    var texts = ArrayList<String>()
    texts.add("Starting...")
    texts.add("Generating...")
    texts.add("Publishing...")
    texts.add("Completed...")
    val textColor =
        FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value(
            themeMode = FluentTheme.themeMode
        )
    val brandTextColor =
        FluentTheme.aliasTokens.brandForegroundColor[FluentAliasTokens.BrandForegroundColorTokens.BrandForeground1].value(
            themeMode = FluentTheme.themeMode
        )
    Column(
        Modifier
            .padding(all = 16.dp)
            .verticalScroll(rememberScrollState())
    ) {
        LinearProgressIndicatorDemo(brandTextColor = brandTextColor, textColor = textColor)
        CircularProgressIndicatorDemo(textColor = textColor)
        DeterminateProgressIndicatorDemo(
            linearProgress,
            circularProgress
        )
        IndeterminateProgressIndicatorDemo()
        ProgressTextDemo(linearProgress, context, progressString)
    }
    LaunchedEffect(key1 = linearProgress) {
        if (linearProgress >= 1.0) {
            linearProgress = 1f
            delay(1000)
            linearProgress = 0f
        } else {
            delay(500)
            linearProgress += Random.nextFloat() / 5
            if (linearProgress < 0.2f) {
                progressString = texts[0]
            } else if (linearProgress > 0.20f && linearProgress < 0.5f) {
                progressString = texts[1]
            } else if (linearProgress > 0.5f && linearProgress < 0.9f) {
                progressString = texts[2]
            } else if (linearProgress > 0.9f) {
                progressString = texts[3]
            }
        }
    }
    LaunchedEffect(key1 = circularProgress) {
        if (circularProgress >= 1.0) {
            circularProgress = 1f
            delay(1000)
            circularProgress = 0f
        } else {
            delay(500)
            circularProgress += Random.nextFloat() / 5
        }
    }
}

@Composable
private fun LinearProgressIndicatorDemo(brandTextColor: Color, textColor: Color) {
    Column(verticalArrangement = Arrangement.spacedBy(16.dp)) {
        Label(
            text = "ProgressIndicators",
            textStyle = FluentAliasTokens.TypographyTokens.Title2,
            colorStyle = ColorStyle.Brand
        )
        Row(
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.spacedBy(32.dp)
        ) {
            Label(
                text = "XXXSmall - 2dp",
                textStyle = FluentAliasTokens.TypographyTokens.Caption1
            )
            LinearProgressIndicator(modifier = Modifier.width(240.dp))
        }
    }
}

@Composable
private fun CircularProgressIndicatorDemo(textColor: Color) {
    Column {
        Row(
            Modifier.height(42.dp),
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.spacedBy(36.dp)
        ) {
            Label(
                modifier = Modifier.width(100.dp),
                text = "XSmall - 12dp",
                textStyle = FluentAliasTokens.TypographyTokens.Caption1
            )
            CircularProgressIndicator(style = FluentStyle.Brand)
            CircularProgressIndicator()
        }
        Row(
            Modifier.height(42.dp),
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.spacedBy(32.dp)
        ) {
            Label(
                modifier = Modifier.width(100.dp),
                text = "Small - 16dp",
                textStyle = FluentAliasTokens.TypographyTokens.Caption1
            )
            CircularProgressIndicator(
                size = CircularProgressIndicatorSize.XSmall,
                style = FluentStyle.Brand
            )
            CircularProgressIndicator(
                CircularProgressIndicatorSize.XSmall
            )
        }
        Row(
            Modifier.height(42.dp),
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.spacedBy(32.dp)
        ) {
            Label(
                modifier = Modifier.width(100.dp),
                text = "Medium - 24dp",
                textStyle = FluentAliasTokens.TypographyTokens.Caption1
            )
            CircularProgressIndicator(
                size = CircularProgressIndicatorSize.Medium,
                style = FluentStyle.Brand
            )
            CircularProgressIndicator(
                CircularProgressIndicatorSize.Medium
            )
        }
        Row(
            Modifier.height(48.dp),
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.spacedBy(32.dp)
        ) {
            Label(
                modifier = Modifier.width(100.dp),
                text = "Large - 32dp",
                textStyle = FluentAliasTokens.TypographyTokens.Caption1
            )
            CircularProgressIndicator(
                size = CircularProgressIndicatorSize.Large,
                style = FluentStyle.Brand
            )
            CircularProgressIndicator(
                CircularProgressIndicatorSize.Large
            )
        }
        Row(
            Modifier.height(64.dp),
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.spacedBy(32.dp)
        ) {
            Label(
                modifier = Modifier.width(100.dp),
                text = "XLarge - 36dp",
                textStyle = FluentAliasTokens.TypographyTokens.Caption1
            )
            CircularProgressIndicator(
                CircularProgressIndicatorSize.XLarge,
                style = FluentStyle.Brand
            )
            CircularProgressIndicator(
                CircularProgressIndicatorSize.XLarge
            )
        }
    }
}

@Composable
private fun DeterminateProgressIndicatorDemo(
    linearProgress: Float,
    circularProgress: Float
) {
    Label(
        modifier = Modifier.padding(top = 16.dp),
        text = "Determinate ProgressIndicator",
        textStyle = FluentAliasTokens.TypographyTokens.Title2,
        colorStyle = ColorStyle.Brand
    )
    Label(
        modifier = Modifier.padding(top = 16.dp, bottom = 8.dp),
        text = "Linear ProgressIndicator",
        textStyle = FluentAliasTokens.TypographyTokens.Caption1
    )
    Row(
        Modifier.height(24.dp),
        verticalAlignment = Alignment.CenterVertically,
        horizontalArrangement = Arrangement.spacedBy(32.dp)
    ) {
        LinearProgressIndicator(linearProgress, modifier = Modifier.width(240.dp))
        Label(
            text = "" + "%.0f".format(linearProgress * 100) + "%",
            textStyle = FluentAliasTokens.TypographyTokens.Caption1
        )
    }
    Label(
        modifier = Modifier.padding(top = 16.dp, bottom = 16.dp),
        text = "Circular ProgressIndicator",
        textStyle = FluentAliasTokens.TypographyTokens.Caption1
    )
    Row(
        Modifier.height(24.dp),
        verticalAlignment = Alignment.CenterVertically,
        horizontalArrangement = Arrangement.spacedBy(32.dp)
    ) {
        CircularProgressIndicator(
            circularProgress,
            size = CircularProgressIndicatorSize.XLarge,
            style = FluentStyle.Brand
        )
        Label(
            text = "" + "%.0f".format(circularProgress * 100) + "%",
            textStyle = FluentAliasTokens.TypographyTokens.Caption1
        )
    }
}

@Composable
private fun IndeterminateProgressIndicatorDemo() {
    Label(
        modifier = Modifier.padding(top = 16.dp),
        text = "InDeterminate ProgressIndicator",
        textStyle = FluentAliasTokens.TypographyTokens.Title2,
        colorStyle = ColorStyle.Brand
    )
    Label(
        modifier = Modifier.padding(top = 16.dp, bottom = 8.dp),
        text = "Linear ProgressIndicator",
        textStyle = FluentAliasTokens.TypographyTokens.Caption1
    )
    Row(
        Modifier.height(24.dp),
        verticalAlignment = Alignment.CenterVertically,
        horizontalArrangement = Arrangement.spacedBy(32.dp)
    ) {
        LinearProgressIndicator(modifier = Modifier.width(240.dp))
    }
    Label(
        modifier = Modifier.padding(top = 16.dp, bottom = 16.dp),
        text = "Circular ProgressIndicator",
        textStyle = FluentAliasTokens.TypographyTokens.Caption1
    )
    Row(
        Modifier.height(24.dp),
        verticalAlignment = Alignment.CenterVertically,
        horizontalArrangement = Arrangement.spacedBy(32.dp)
    ) {
        CircularProgressIndicator(
            size = CircularProgressIndicatorSize.XLarge,
            style = FluentStyle.Brand
        )
    }
}

@Composable
private fun ProgressTextDemo(linearProgress: Float, context: Context, progressString: String) {
    Label(
        modifier = Modifier.padding(top = 16.dp),
        text = "Progress Text",
        textStyle = FluentAliasTokens.TypographyTokens.Title2,
        colorStyle = ColorStyle.Brand
    )
    Spacer(modifier = Modifier.height(12.dp))
    ProgressText(
        text = progressString,
        progress = linearProgress,
        modifier = Modifier.width(300.dp),
    )
    Spacer(modifier = Modifier.height(12.dp))
    ProgressText(
        text = "Ok... I'll summarize what you missed this morning",
        progress = linearProgress,
        leadingIconAccessory = FluentIcon(
            Icons.Outlined.Clear,
            onClick = { Toast.makeText(context, "Canceled", Toast.LENGTH_SHORT).show() }),
        modifier = Modifier.width(325.dp),
        progressTextTokens = GradientProgressTextToken()
    )
}

class GradientProgressTextToken : ProgressTextTokens() {
    @Composable
    override fun progressbarBrush(progressTextInfo: ProgressTextInfo): Brush {
        return gradient
    }
}

private var gradient = Brush.horizontalGradient(
    0.0f to Color(0xFF464FEB),
    0.7f to Color(0xFF47CFFA),
    0.92f to Color(0xFFB47CF8)
)
```

## File: src/main/java/com/microsoft/fluentuidemo/demos/V2ScaffoldActivity.kt
```kotlin
package com.microsoft.fluentuidemo.demos

import android.content.Context
import android.os.Bundle
import androidx.compose.foundation.Image
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Create
import androidx.compose.material.icons.filled.Email
import androidx.compose.material.icons.filled.Home
import androidx.compose.material.icons.filled.Settings
import androidx.compose.material.icons.outlined.Email
import androidx.compose.material.icons.outlined.Home
import androidx.compose.material.icons.outlined.Settings
import androidx.compose.material.icons.outlined.ShoppingCart
import androidx.compose.runtime.*
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.compose.Scaffold
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.FluentIcon
import com.microsoft.fluentui.theme.token.controlTokens.*
import com.microsoft.fluentui.tokenized.AppBar
import com.microsoft.fluentui.tokenized.controls.Button
import com.microsoft.fluentui.tokenized.controls.FloatingActionButton
import com.microsoft.fluentui.tokenized.drawer.Drawer
import com.microsoft.fluentui.tokenized.drawer.rememberDrawerState
import com.microsoft.fluentui.tokenized.listitem.ListItem
import com.microsoft.fluentui.tokenized.navigation.TabBar
import com.microsoft.fluentui.tokenized.navigation.TabData
import com.microsoft.fluentui.tokenized.notification.Badge
import com.microsoft.fluentui.tokenized.notification.NotificationResult
import com.microsoft.fluentui.tokenized.notification.Snackbar
import com.microsoft.fluentui.tokenized.notification.SnackbarState
import com.microsoft.fluentuidemo.R
import com.microsoft.fluentuidemo.V2DemoActivity
import com.microsoft.fluentuidemo.icons.ListItemIcons
import com.microsoft.fluentuidemo.icons.listitemicons.Folder40
import com.microsoft.fluentuidemo.util.invokeToast
import kotlinx.coroutines.launch

//Tag for Test
const val SCAFFOLD_TOP_BAR = "TopBar"
const val SCAFFOLD_BOTTOM_BAR = "BottomBar"
const val SCAFFOLD_SNACKBAR = "SnackBar"
const val SCAFFOLD_DRAWER = "Drawer"
const val SCAFFOLD_FLOATING_ACTION_BUTTON = "FAB"
const val SCAFFOLD_MAIN_CONTENT = "Main Content"
const val SCAFFOLD_DRAWER_BUTTON = "Drawer Button"
const val SCAFFOLD_SNACKBAR_BUTTON = "Snackbar Button"

class V2ScaffoldActivity : V2DemoActivity() {
    init {
        setupActivity(this)
    }

    override val paramsUrl = "https://github.com/microsoft/fluentui-android/wiki/Controls#params-28"

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        val context = this

        setActivityContent {
            var selectedIndex by rememberSaveable { mutableStateOf(0) }
            var showHomeBadge by rememberSaveable { mutableStateOf(true) }
            val tabDataList = arrayListOf(
                TabData(
                    title = resources.getString(R.string.tabBar_home),
                    icon = Icons.Outlined.Home,
                    selectedIcon = Icons.Filled.Home,
                    onClick = {
                        invokeToast(resources.getString(R.string.tabBar_home), context)
                        selectedIndex = 0
                        showHomeBadge = false
                    },
                    badge = { if (selectedIndex == 0 && showHomeBadge) Badge() }
                ),
                TabData(
                    title = resources.getString(R.string.tabBar_mail),
                    icon = Icons.Outlined.Email,
                    selectedIcon = Icons.Filled.Email,
                    onClick = {
                        invokeToast(resources.getString(R.string.tabBar_mail), context)
                        selectedIndex = 1
                    },
                    badge = { Badge(text = "123+", badgeType = BadgeType.Character) }
                ),
                TabData(
                    title = resources.getString(R.string.tabBar_settings),
                    icon = Icons.Outlined.Settings,
                    selectedIcon = Icons.Filled.Settings,
                    onClick = {
                        invokeToast(resources.getString(R.string.tabBar_settings), context)
                        selectedIndex = 2
                    }
                )
            )
            var fabState by rememberSaveable { mutableStateOf(FABState.Expanded) }
            val snackbarState by remember { mutableStateOf(SnackbarState()) }

            FluentTheme {
                Scaffold(
                    topBar = {
                        AppBar(
                            title = resources.getString(R.string.scaffold),
                            appBarSize = AppBarSize.Large,
                            modifier = Modifier.testTag(SCAFFOLD_TOP_BAR)
                        )
                    },
                    bottomBar = {
                        TabBar(
                            tabDataList = tabDataList,
                            selectedIndex = selectedIndex,
                            modifier = Modifier.testTag(SCAFFOLD_BOTTOM_BAR)
                        )
                    },
                    floatingActionButton = {
                        FloatingActionButton(
                            text = resources.getString(R.string.scaffold_fab),
                            icon = Icons.Filled.Create,
                            state = fabState,
                            onClick = {
                                val toastText: String
                                if (fabState == FABState.Expanded) {
                                    toastText = resources.getString(R.string.scaffold_fab_collapsed)
                                    fabState = FABState.Collapsed
                                } else {
                                    toastText = resources.getString(R.string.scaffold_fab_collapsed)
                                    fabState = FABState.Expanded
                                }
                                invokeToast(
                                    toastText,
                                    this
                                )
                            },
                            modifier = Modifier.testTag(SCAFFOLD_FLOATING_ACTION_BUTTON)
                        )
                    },
                    snackbar = {
                        Snackbar(
                            snackbarState = snackbarState,
                            modifier = Modifier.testTag(SCAFFOLD_SNACKBAR)
                        )
                    }
                ) {
                    Box(
                        Modifier
                            .padding(it)
                            .testTag(SCAFFOLD_MAIN_CONTENT)
                    ) {
                        GetContent(context, snackbarState)
                    }
                }
            }
        }
    }

    @OptIn(ExperimentalLayoutApi::class)
    @Composable
    private fun GetContent(context: Context, snackbarState: SnackbarState? = null) {
        val size = remember { mutableStateOf(5) }
        val drawerState = rememberDrawerState()
        val scope = rememberCoroutineScope()
        Column {
            Drawer(
                modifier = Modifier.testTag(SCAFFOLD_DRAWER),
                drawerState = drawerState,
                drawerContent = { CreateList(size = 20, context = context) }
            )
            FlowRow(
                modifier = Modifier.padding(8.dp),
                horizontalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                Button(
                    style = ButtonStyle.OutlinedButton,
                    size = ButtonSize.Medium,
                    text = context.resources.getString(R.string.scaffold_refresh_list),
                    onClick = { size.value = (40 * Math.random()).toInt() })

                Button(
                    modifier = Modifier.testTag(SCAFFOLD_DRAWER_BUTTON),
                    style = ButtonStyle.OutlinedButton,
                    size = ButtonSize.Medium,
                    text = context.resources.getString(R.string.scaffold_open_drawer),
                    onClick = { scope.launch { drawerState.open() } })

                if (snackbarState != null) {
                    val snackBarTitle =
                        LocalContext.current.resources.getString(R.string.fluentui_title)
                    val actionButtonString =
                        LocalContext.current.resources.getString(R.string.fluentui_action_button)
                    val dismissedString =
                        LocalContext.current.resources.getString(R.string.fluentui_dismissed)
                    val pressedString =
                        LocalContext.current.resources.getString(R.string.fluentui_button_pressed)
                    val timeoutString =
                        LocalContext.current.resources.getString(R.string.fluentui_timeout)
                    var displayString: String = ""
                    Button(
                        modifier = Modifier.testTag(SCAFFOLD_SNACKBAR_BUTTON),
                        style = ButtonStyle.OutlinedButton,
                        size = ButtonSize.Medium,
                        text = context.resources.getString(R.string.fluentui_show_snackbar),
                        onClick = {
                            scope.launch {
                                val result: NotificationResult = snackbarState.showSnackbar(
                                    message = snackBarTitle,
                                    style = SnackbarStyle.Contrast,
                                    icon = FluentIcon(Icons.Outlined.ShoppingCart),
                                    actionText = actionButtonString
                                )

                                when (result) {
                                    NotificationResult.TIMEOUT ->
                                        displayString = timeoutString

                                    NotificationResult.CLICKED ->
                                        displayString = pressedString

                                    NotificationResult.DISMISSED ->
                                        displayString = dismissedString
                                }
                                invokeToast(displayString, context)
                            }
                        }
                    )
                }
            }
            CreateList(size.value, context)
        }
    }

    @Composable
    fun CreateList(size: Int, context: Context) {
        LazyColumn()
        {
            repeat(size) {
                item {
                    ListItem.Item(text = context.resources.getString(R.string.common_list, it),
                        onClick = {
                            invokeToast(
                                context.resources.getString(R.string.common_list, it),
                                context
                            )
                        },
                        leadingAccessoryContent = {
                            Image(
                                ListItemIcons.Folder40,
                                context.resources.getString(R.string.common_folder)
                            )
                        }
                    )
                }
            }
        }
    }
}
```

## File: src/main/java/com/microsoft/fluentuidemo/demos/V2SearchBarActivity.kt
```kotlin
package com.microsoft.fluentuidemo.demos

import android.content.Context
import android.os.Bundle
import android.widget.Toast
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.requiredHeight
import androidx.compose.foundation.text.KeyboardActions
import androidx.compose.foundation.text.KeyboardOptions
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalSoftwareKeyboardController
import androidx.compose.ui.text.input.ImeAction
import androidx.compose.ui.text.input.KeyboardType
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.SearchBarIcons
import com.microsoft.fluentui.icons.searchbaricons.Office
import com.microsoft.fluentui.theme.token.FluentIcon
import com.microsoft.fluentui.theme.token.FluentStyle
import com.microsoft.fluentui.theme.token.controlTokens.AvatarStatus
import com.microsoft.fluentui.theme.token.controlTokens.BorderType
import com.microsoft.fluentui.tokenized.SearchBar
import com.microsoft.fluentui.tokenized.controls.ToggleSwitch
import com.microsoft.fluentui.tokenized.listitem.ChevronOrientation
import com.microsoft.fluentui.tokenized.listitem.ListItem
import com.microsoft.fluentui.tokenized.persona.Person
import com.microsoft.fluentui.tokenized.persona.Persona
import com.microsoft.fluentui.tokenized.persona.PersonaList
import com.microsoft.fluentuidemo.CustomizedSearchBarTokens
import com.microsoft.fluentuidemo.R
import com.microsoft.fluentuidemo.V2DemoActivity
import com.microsoft.fluentuidemo.util.DemoAppStrings
import com.microsoft.fluentuidemo.util.getDemoAppString
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch

class V2SearchBarActivity : V2DemoActivity() {
    init {
        setupActivity(this)
    }

    override val paramsUrl = "https://github.com/microsoft/fluentui-android/wiki/Controls#params-29"
    override val controlTokensUrl = "https://github.com/microsoft/fluentui-android/wiki/Controls#control-tokens-27"

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        val context: Context = this
        setActivityContent {
            var autoCorrectEnabled: Boolean by rememberSaveable { mutableStateOf(false) }
            var enableMicrophoneCallback: Boolean by rememberSaveable { mutableStateOf(true) }
            var searchBarStyle: FluentStyle by rememberSaveable { mutableStateOf(FluentStyle.Neutral) }
            var displayRightAccessory: Boolean by rememberSaveable { mutableStateOf(true) }
            var induceDelay: Boolean by rememberSaveable { mutableStateOf(false) }
            var selectedPeople: Person? by rememberSaveable { mutableStateOf(null) }
            var customizedSearchBar: Boolean by rememberSaveable { mutableStateOf(false) }

            val listofPeople = listOf(
                Person(
                    "Allan", "Munger",
                    image = R.drawable.avatar_allan_munger,
                    isActive = true
                ),
                Person(
                    "Amanda", "Brady",
                    isActive = false, status = AvatarStatus.Offline
                ),
                Person(
                    "Abhay", "Singh",
                    isActive = true, status = AvatarStatus.DND, isOOO = true
                ),
                Person(
                    "Carlos", "Slathery",
                    isActive = false, status = AvatarStatus.Busy, isOOO = true
                ),
                Person(
                    "Celeste", "Burton",
                    image = R.drawable.avatar_celeste_burton,
                    isActive = true, status = AvatarStatus.Away
                ),
                Person(
                    "Ankit", "Gupta",
                    isActive = true, status = AvatarStatus.Unknown
                ),
                Person(
                    "Miguel", "Garcia",
                    image = R.drawable.avatar_miguel_garcia,
                    isActive = true, status = AvatarStatus.Blocked
                )
            )
            var filteredPeople by rememberSaveable { mutableStateOf(listofPeople.toMutableList()) }

            Column(
                horizontalAlignment = Alignment.CenterHorizontally
            ) {
                ListItem.SectionHeader(
                    title = getDemoAppString(DemoAppStrings.ModifiableParameters),
                    enableChevron = true,
                    enableContentOpenCloseTransition = true,
                    chevronOrientation = ChevronOrientation(90f, 0f),
                ) {
                    Column {
                        ListItem.Item(
                            text = getDemoAppString(DemoAppStrings.AutoCorrect),
                            subText = if (autoCorrectEnabled)
                                LocalContext.current.resources.getString(R.string.fluentui_enabled)
                            else
                                LocalContext.current.resources.getString(R.string.fluentui_disabled),
                            trailingAccessoryContent = {
                                ToggleSwitch(
                                    onValueChange = {
                                        autoCorrectEnabled = !autoCorrectEnabled
                                    },
                                    checkedState = autoCorrectEnabled
                                )
                            }
                        )
                        ListItem.Item(
                            text = getDemoAppString(DemoAppStrings.MicrophoneCallback),
                            subText = if (enableMicrophoneCallback)
                                LocalContext.current.resources.getString(R.string.fluentui_activated)
                            else
                                LocalContext.current.resources.getString(R.string.fluentui_deactivated),
                            trailingAccessoryContent = {
                                ToggleSwitch(
                                    onValueChange = {
                                        enableMicrophoneCallback = !enableMicrophoneCallback
                                    },
                                    checkedState = enableMicrophoneCallback
                                )
                            }
                        )
                        ListItem.Item(
                            text = getDemoAppString(DemoAppStrings.Style),
                            subText = if (searchBarStyle == FluentStyle.Neutral)
                                LocalContext.current.resources.getString(R.string.fluentui_neutral)
                            else
                                LocalContext.current.resources.getString(R.string.fluentui_brand),
                            trailingAccessoryContent = {
                                ToggleSwitch(
                                    onValueChange = {
                                        searchBarStyle =
                                            if (searchBarStyle == FluentStyle.Neutral)
                                                FluentStyle.Brand
                                            else
                                                FluentStyle.Neutral
                                    },
                                    checkedState = searchBarStyle == FluentStyle.Brand
                                )
                            }
                        )
                        ListItem.Item(
                            text = getDemoAppString(DemoAppStrings.RightAccessoryView),
                            subText = if (displayRightAccessory)
                                LocalContext.current.resources.getString(R.string.fluentui_enabled)
                            else
                                LocalContext.current.resources.getString(R.string.fluentui_disabled),
                            trailingAccessoryContent = {
                                ToggleSwitch(
                                    onValueChange = {
                                        displayRightAccessory = !displayRightAccessory
                                    },
                                    checkedState = displayRightAccessory
                                )
                            }
                        )

                        ListItem.Item(
                            text = "Induce Delay",
                            subText = if (induceDelay)
                                LocalContext.current.resources.getString(R.string.fluentui_enabled)
                            else
                                LocalContext.current.resources.getString(R.string.fluentui_disabled),
                            trailingAccessoryContent = {
                                ToggleSwitch(
                                    onValueChange = {
                                        induceDelay = it
                                    },
                                    checkedState = induceDelay
                                )
                            }
                        )

                        ListItem.Item(
                            text = "Customized Search Bar",
                            subText = if (customizedSearchBar)
                                LocalContext.current.resources.getString(R.string.fluentui_enabled)
                            else
                                LocalContext.current.resources.getString(R.string.fluentui_disabled),
                            trailingAccessoryContent = {
                                ToggleSwitch(
                                    onValueChange = {
                                        customizedSearchBar = it
                                    },
                                    checkedState = customizedSearchBar
                                )
                            }
                        )
                    }
                }

                val microphonePressedString = getDemoAppString(DemoAppStrings.MicrophonePressed)
                val rightViewPressedString = getDemoAppString(DemoAppStrings.RightViewPressed)
                val keyboardSearchPressedString =
                    getDemoAppString(DemoAppStrings.KeyboardSearchPressed)

                val scope = rememberCoroutineScope()
                var loading by rememberSaveable { mutableStateOf(false) }
                val keyboardController = LocalSoftwareKeyboardController.current
                val showCustomizedAppBar = searchBarStyle == FluentStyle.Neutral && customizedSearchBar

                SearchBar(
                    onValueChange = { query, selectedPerson ->
                        scope.launch {
                            loading = true

                            if (induceDelay)
                                delay(2000)

                            filteredPeople = listofPeople.filter {
                                it.firstName.lowercase().contains(query.lowercase()) ||
                                        it.lastName.lowercase().contains(query.lowercase())
                            } as MutableList<Person>
                            selectedPeople = selectedPerson

                            loading = false
                        }
                    },
                    style = searchBarStyle,
                    loading = loading,
                    selectedPerson = selectedPeople,
                    microphoneCallback = if (enableMicrophoneCallback) {
                        {
                            Toast.makeText(context, microphonePressedString, Toast.LENGTH_SHORT)
                                .show()
                        }
                    } else null,
                    keyboardOptions = KeyboardOptions(
                        autoCorrect = autoCorrectEnabled,
                        keyboardType = KeyboardType.Email,
                        imeAction = ImeAction.Search
                    ),
                    keyboardActions = KeyboardActions(
                        onSearch = {
                            Toast.makeText(
                                context,
                                keyboardSearchPressedString,
                                Toast.LENGTH_SHORT
                            )
                                .show()
                            keyboardController?.hide()
                        }
                    ),
                    rightAccessoryIcon = if (displayRightAccessory) {
                        FluentIcon(
                            SearchBarIcons.Office,
                            contentDescription = "Office",
                            onClick = {
                                Toast.makeText(
                                    context,
                                    rightViewPressedString,
                                    Toast.LENGTH_SHORT
                                )
                                    .show()
                            }
                        )
                    } else null,
                    searchBarTokens = if (showCustomizedAppBar) {
                        CustomizedSearchBarTokens
                    } else null,
                    modifier = if (showCustomizedAppBar) Modifier.requiredHeight(60.dp) else Modifier
                )

                val filteredPersona = mutableListOf<Persona>()
                filteredPeople.forEach {
                    filteredPersona.add(
                        Persona(
                            it,
                            "${it.firstName} ${it.lastName}",
                            subTitle = it.email,
                            onClick = { selectedPeople = it }
                        )
                    )
                }
                PersonaList(
                    personas = filteredPersona,
                    border = BorderType.Bottom
                )
            }
        }
    }
}
```

## File: src/main/java/com/microsoft/fluentuidemo/demos/V2SegmentedControlActivity.kt
```kotlin
package com.microsoft.fluentuidemo.demos

import android.os.Bundle
import android.widget.Toast
import androidx.compose.foundation.ExperimentalFoundationApi
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.pager.PageSize
import androidx.compose.foundation.pager.rememberPagerState
import androidx.compose.foundation.text.BasicText
import androidx.compose.runtime.*
import androidx.compose.runtime.saveable.listSaver
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.AvatarIcons
import com.microsoft.fluentui.icons.avataricons.Icon
import com.microsoft.fluentui.icons.avataricons.icon.Anonymous
import com.microsoft.fluentui.icons.avataricons.icon.anonymous.Xxlarge
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.FluentColor
import com.microsoft.fluentui.theme.token.FluentGlobalTokens
import com.microsoft.fluentui.theme.token.FluentStyle
import com.microsoft.fluentui.tokenized.controls.ToggleSwitch
import com.microsoft.fluentui.tokenized.listitem.ChevronOrientation
import com.microsoft.fluentui.tokenized.listitem.ListItem
import com.microsoft.fluentui.tokenized.segmentedcontrols.*
import com.microsoft.fluentuidemo.V2DemoActivity
import kotlinx.coroutines.launch
import com.microsoft.fluentui.tokenized.navigation.ViewPager

// Tags used for testing
const val SEGMENTED_CONTROL_PILL_BUTTON = "Segmented Control Pill Button"
const val SEGMENTED_CONTROL_PILL_BAR = "Segmented Control Pill Bar"
const val SEGMENTED_CONTROL_TABS = "Segmented Control Tabs"
const val SEGMENTED_CONTROL_SWITCH = "Segmented Control Switch"
const val SEGMENTED_CONTROL_VIEW_PAGER = "Segmented Control View Pager"
const val SEGMENTED_CONTROL_PILL_BUTTON_TOGGLE = "Segmented Control Pill Button Toggle"
const val SEGMENTED_CONTROL_PILL_BAR_TOGGLE = "Segmented Control Pill Bar Toggle"
const val SEGMENTED_CONTROL_TABS_TOGGLE = "Segmented Control Tabs Toggle"
const val SEGMENTED_CONTROL_SWITCH_TOGGLE = "Segmented Control Switch Toggle"
const val SEGMENTED_CONTROL_VIEW_PAGER_TOGGLE = "Segmented Control View Pager Toggle"
const val SEGMENTED_CONTROL_PILL_BUTTON_COMPONENT = "Segmented Control Pill Button Component"
const val SEGMENTED_CONTROL_PILL_BAR_COMPONENT = "Segmented Control Pill Bar Component"
const val SEGMENTED_CONTROL_TABS_COMPONENT = "Segmented Control Tabs Component"
const val SEGMENTED_CONTROL_SWITCH_COMPONENT = "Segmented Control Switch Component"
const val SEGMENTED_CONTROL_VIEW_PAGER_COMPONENT = "Segmented Control View pager Component"

class V2SegmentedControlActivity : V2DemoActivity() {

    init {
        setupActivity(this)
    }

    override val paramsUrl = "https://github.com/microsoft/fluentui-android/wiki/Controls#params-30"
    override val controlTokensUrl =
        "https://github.com/microsoft/fluentui-android/wiki/Controls#control-tokens-28"

    @OptIn(ExperimentalFoundationApi::class)
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        val context = this

        setActivityContent {
            LazyColumn(
                Modifier
                    .fillMaxWidth(),
                verticalArrangement = Arrangement.spacedBy(5.dp),
                horizontalAlignment = Alignment.CenterHorizontally
            ) {
                item {
                    var enabled by rememberSaveable { mutableStateOf(true) }
                    var selected by rememberSaveable { mutableStateOf(false) }
                    var unread by rememberSaveable { mutableStateOf(true) }
                    var selectedIcon by rememberSaveable { mutableStateOf(false) }
                    var selectedBrand by rememberSaveable { mutableStateOf(false) }
                    var selectedBrandIcon by rememberSaveable { mutableStateOf(false) }

                    template(
                        "Pill Button",
                        testTag = SEGMENTED_CONTROL_PILL_BUTTON,
                        enableSwitch = {
                            ToggleSwitch(
                                Modifier
                                    .padding(vertical = 3.dp)
                                    .testTag(SEGMENTED_CONTROL_PILL_BUTTON_TOGGLE),
                                onValueChange = { enabled = it },
                                checkedState = enabled
                            )
                        },
                        neutralContent = {
                            PillButton(
                                PillMetaData(
                                    "Ally 1",
                                    {
                                        selected = !selected
                                        unread = false
                                    },
                                    selected = selected,
                                    enabled = enabled,
                                    notificationDot = unread,
                                )
                            )
                            PillButton(
                                modifier = Modifier.testTag(SEGMENTED_CONTROL_PILL_BUTTON_COMPONENT),
                                pillMetaData = PillMetaData(
                                    "Neutral",
                                    { selectedIcon = !selectedIcon },
                                    icon = AvatarIcons.Icon.Anonymous.Xxlarge,
                                    selected = selectedIcon,
                                    enabled = enabled,
                                )
                            )
                            PillButton(
                                pillMetaData = PillMetaData(
                                    onClick = { selectedIcon = !selectedIcon },
                                    icon = AvatarIcons.Icon.Anonymous.Xxlarge,
                                    selected = selectedIcon,
                                    enabled = enabled,
                                    semanticContentName = "anonymous"
                                )
                            )
                        },
                        brandContent = {
                            PillButton(
                                PillMetaData(
                                    "Brand",
                                    { selectedBrand = !selectedBrand },
                                    selected = selectedBrand,
                                    enabled = enabled
                                ),
                                style = FluentStyle.Brand
                            )
                            PillButton(
                                PillMetaData(
                                    "Brand",
                                    { selectedBrandIcon = !selectedBrandIcon },
                                    icon = AvatarIcons.Icon.Anonymous.Xxlarge,
                                    selected = selectedBrandIcon,
                                    enabled = enabled,
                                    notificationDot = true
                                ),
                                style = FluentStyle.Brand,
                            )
                            PillButton(
                                PillMetaData(
                                    onClick = { selectedBrandIcon = !selectedBrandIcon },
                                    icon = AvatarIcons.Icon.Anonymous.Xxlarge,
                                    selected = selectedBrandIcon,
                                    enabled = enabled,
                                    notificationDot = true,
                                    semanticContentName = "anonymous"
                                ),
                                style = FluentStyle.Brand,
                            )
                        }
                    )
                }

                item {
                    var enableBar by rememberSaveable { mutableStateOf(true) }
                    var selectedList = rememberSaveable(
                        saver = listSaver(
                            save = { stateList ->
                                if (stateList.isNotEmpty()) {
                                    val first = stateList.first()
                                    if (!canBeSaved(first)) {
                                        throw IllegalStateException("${first::class} cannot be saved. By default only types which can be stored in the Bundle class can be saved.")
                                    }
                                }
                                stateList.toList()
                            },
                            restore = { it.toMutableStateList() }
                        )) {
                        mutableStateListOf(
                            false,
                            false,
                            false,
                            false,
                            false,
                            false
                        )
                    }

                    var pillList: MutableList<PillMetaData> = mutableListOf()

                    for (idx in 0..5) {
                        val label = "Ally ${idx + 1}"
                        pillList.add(
                            PillMetaData(
                                text = label,
                                icon = if (idx % 2 == 1) AvatarIcons.Icon.Anonymous.Xxlarge else null,
                                onClick = {
                                    Toast.makeText(
                                        context,
                                        "Button " + (idx + 1).toString(),
                                        Toast.LENGTH_SHORT
                                    ).show()
                                    selectedList[idx] = !selectedList[idx]
                                },
                                enabled = enableBar,
                                selected = selectedList[idx],
                                notificationDot = !selectedList[idx]
                            )
                        )
                    }


                    template(
                        "Pill Bar",
                        testTag = SEGMENTED_CONTROL_PILL_BAR,
                        enableSwitch = {
                            ToggleSwitch(
                                Modifier
                                    .padding(vertical = 3.dp)
                                    .testTag(SEGMENTED_CONTROL_PILL_BAR_TOGGLE),
                                onValueChange = { enableBar = it },
                                checkedState = enableBar
                            )
                        },
                        neutralContent = {
                            PillBar(
                                modifier = Modifier.testTag(SEGMENTED_CONTROL_PILL_BAR_COMPONENT),
                                metadataList = pillList
                            )
                        },
                        brandContent = {
                            PillBar(
                                pillList,
                                style = FluentStyle.Brand
                            )
                        }
                    )
                }

                item {
                    var enableTabs by rememberSaveable { mutableStateOf(true) }
                    var selectedTab by rememberSaveable { mutableStateOf(0) }
                    val pagerState = rememberPagerState(pageCount = { 6 })
                    val coroutineScope = rememberCoroutineScope()

                    val tabsList: MutableList<PillMetaData> = mutableListOf()

                    for (idx in 0..5) {
                        val label = "Neutral ${idx + 1}"
                        tabsList.add(
                            PillMetaData(
                                text = label,
                                icon = if (idx % 2 == 1) AvatarIcons.Icon.Anonymous.Xxlarge else null,
                                onClick = {
                                    Toast.makeText(
                                        context,
                                        "Button " + (idx + 1).toString(),
                                        Toast.LENGTH_SHORT
                                    ).show()
                                    selectedTab = idx
                                    coroutineScope.launch {
                                        // Call scroll to on pagerState
                                        pagerState.animateScrollToPage(idx)
                                    }
                                },
                                enabled = enableTabs,
                                notificationDot = selectedTab != idx
                            )
                        )
                    }

                    template(
                        "Tabs",
                        testTag = SEGMENTED_CONTROL_TABS,
                        enableSwitch = {
                            ToggleSwitch(
                                Modifier
                                    .padding(vertical = 3.dp)
                                    .testTag(SEGMENTED_CONTROL_TABS_TOGGLE),
                                onValueChange = { enableTabs = it },
                                checkedState = enableTabs
                            )
                        },
                        neutralContent = {
                            Column(verticalArrangement = Arrangement.spacedBy(5.dp)) {
                                PillTabs(
                                    modifier = Modifier.testTag(SEGMENTED_CONTROL_TABS_COMPONENT),
                                    metadataList = tabsList.subList(0, 4),
                                    selectedIndex = selectedTab,
                                    scrollable = true
                                )
                                PillTabs(
                                    tabsList.subList(0, 4),
                                    style = FluentStyle.Brand,
                                    selectedIndex = selectedTab,
                                    scrollable = false
                                )
                            }
                        },
                        brandContent = {
                            Column(verticalArrangement = Arrangement.spacedBy(5.dp)) {
                                PillTabs(
                                    tabsList,
                                    selectedIndex = selectedTab,
                                    scrollable = true
                                )
                                PillTabs(
                                    tabsList,
                                    style = FluentStyle.Brand,
                                    selectedIndex = selectedTab,
                                    scrollable = false
                                )
                            }
                        }
                    )

                    template(
                        "View Pager",
                        testTag = SEGMENTED_CONTROL_VIEW_PAGER,
                        enableSwitch = {
                            ToggleSwitch(
                                Modifier
                                    .padding(vertical = 3.dp)
                                    .testTag(SEGMENTED_CONTROL_VIEW_PAGER_TOGGLE),
                                onValueChange = { enableTabs = it },
                                checkedState = enableTabs
                            )
                        },
                        neutralContent = {
                            Column(verticalArrangement = Arrangement.spacedBy(5.dp)) {
                                PillTabs(
                                    modifier = Modifier.testTag(SEGMENTED_CONTROL_VIEW_PAGER_COMPONENT),
                                    metadataList = tabsList.subList(0, 4),
                                    selectedIndex = selectedTab,
                                    scrollable = true
                                )
                                PillTabs(
                                    tabsList.subList(0, 4),
                                    style = FluentStyle.Brand,
                                    selectedIndex = selectedTab,
                                    scrollable = false
                                )
                            }
                        },
                        brandContent = {
                            Column(verticalArrangement = Arrangement.spacedBy(5.dp)) {
                                PillTabs(
                                    tabsList,
                                    selectedIndex = selectedTab,
                                    scrollable = true
                                )
                                PillTabs(
                                    tabsList,
                                    style = FluentStyle.Brand,
                                    selectedIndex = selectedTab,
                                    scrollable = false
                                )
                                ViewPager(pagerState, pageContent = {
                                    Box(
                                        Modifier
                                            .fillMaxSize()
                                            .background(
                                                color = if (selectedTab % 2 == 0) Color.Cyan else Color.LightGray
                                            )
                                    ) {
                                        BasicText(
                                            text = "Page $selectedTab",
                                            modifier = Modifier.align(Alignment.Center)
                                        )
                                    }
                                }, modifier = Modifier.height(200.dp), userScrollEnabled = true)
                            }

                        }
                    )
                }

                item {
                    var enableSwitch by rememberSaveable { mutableStateOf(true) }
                    var selectedSwitch by rememberSaveable { mutableStateOf(0) }

                    var switchList: MutableList<PillMetaData> = mutableListOf()

                    for (idx in 0..7) {
                        val label = "Neutral ${idx + 1}"
                        switchList.add(
                            PillMetaData(
                                text = label,
                                icon = if (idx % 2 == 1) AvatarIcons.Icon.Anonymous.Xxlarge else null,
                                onClick = {
                                    Toast.makeText(
                                        context,
                                        "Button " + (idx + 1).toString(),
                                        Toast.LENGTH_SHORT
                                    ).show()
                                    selectedSwitch = idx
                                },
                                enabled = enableSwitch,
                                notificationDot = selectedSwitch != idx
                            )
                        )
                    }

                    template(
                        "Switch",
                        testTag = SEGMENTED_CONTROL_SWITCH,
                        enableSwitch = {
                            ToggleSwitch(
                                Modifier
                                    .padding(vertical = 3.dp)
                                    .testTag(SEGMENTED_CONTROL_SWITCH_TOGGLE),
                                onValueChange = { enableSwitch = it },
                                checkedState = enableSwitch
                            )
                        },
                        neutralContent = {
                            Column(
                                verticalArrangement = Arrangement.spacedBy(5.dp),
                            ) {
                                PillSwitch(
                                    switchList.subList(0, 2),
                                    selectedIndex = selectedSwitch
                                )
                                PillSwitch(
                                    modifier = Modifier.testTag(SEGMENTED_CONTROL_SWITCH_COMPONENT),
                                    metadataList = switchList.subList(0, 2),
                                    style = FluentStyle.Brand,
                                    selectedIndex = selectedSwitch
                                )
                            }
                        },
                        brandContent = {
                            Column(
                                verticalArrangement = Arrangement.spacedBy(5.dp),
                            ) {
                                PillSwitch(
                                    switchList,
                                    selectedIndex = selectedSwitch
                                )
                                PillSwitch(
                                    switchList,
                                    style = FluentStyle.Brand,
                                    selectedIndex = selectedSwitch
                                )
                            }
                        }
                    )
                }

            }
        }
    }
}

@Composable
private fun template(
    label: String,
    enableSwitch: (@Composable () -> Unit),
    neutralContent: (@Composable RowScope.() -> Unit),
    brandContent: (@Composable RowScope.() -> Unit),
    testTag: String = ""
) {
    ListItem.SectionHeader(
        title = label,
        enableChevron = true,
        enableContentOpenCloseTransition = true,
        chevronOrientation = ChevronOrientation(90f, 0f),
        trailingAccessoryContent = enableSwitch,
        modifier = Modifier.testTag(testTag)
    ) {
        Column(
            modifier = Modifier.background(
                FluentColor(
                    light = FluentGlobalTokens.neutralColor(FluentGlobalTokens.NeutralColorTokens.Grey98),
                    dark = FluentGlobalTokens.neutralColor(FluentGlobalTokens.NeutralColorTokens.Grey8)
                ).value(
                    FluentTheme.themeMode
                )
            )
        ) {
            Row(
                Modifier
                    .fillMaxWidth()
                    .padding(5.dp),
                horizontalArrangement = Arrangement.spacedBy(
                    10.dp,
                    Alignment.CenterHorizontally
                ),
                content = neutralContent
            )
            Row(
                Modifier
                    .fillMaxWidth()
                    .padding(5.dp),
                horizontalArrangement = Arrangement.spacedBy(
                    10.dp,
                    Alignment.CenterHorizontally
                ),
                content = brandContent
            )
        }
    }
}
```

## File: src/main/java/com/microsoft/fluentuidemo/demos/V2ShimmerActivity.kt
```kotlin
package com.microsoft.fluentuidemo.demos

import android.os.Bundle
import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.text.BasicText
import androidx.compose.material.ListItem
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.ThemeMode
import com.microsoft.fluentui.theme.token.FluentAliasTokens
import com.microsoft.fluentui.theme.token.FluentStyle
import com.microsoft.fluentui.theme.token.controlTokens.AvatarSize
import com.microsoft.fluentui.theme.token.controlTokens.AvatarStatus
import com.microsoft.fluentui.theme.token.controlTokens.BadgeInfo
import com.microsoft.fluentui.theme.token.controlTokens.BadgeTokens
import com.microsoft.fluentui.theme.token.controlTokens.ButtonStyle
import com.microsoft.fluentui.theme.token.controlTokens.ColorStyle
import com.microsoft.fluentui.theme.token.controlTokens.PersonaChipSize
import com.microsoft.fluentui.theme.token.controlTokens.PersonaChipStyle
import com.microsoft.fluentui.theme.token.controlTokens.ShimmerInfo
import com.microsoft.fluentui.theme.token.controlTokens.ShimmerOrientation
import com.microsoft.fluentui.theme.token.controlTokens.ShimmerTokens
import com.microsoft.fluentui.tokenized.controls.Button
import com.microsoft.fluentui.tokenized.controls.Label
import com.microsoft.fluentui.tokenized.controls.RadioButton
import com.microsoft.fluentui.tokenized.controls.ToggleSwitch
import com.microsoft.fluentui.tokenized.notification.Badge
import com.microsoft.fluentui.tokenized.persona.Avatar
import com.microsoft.fluentui.tokenized.persona.Person
import com.microsoft.fluentui.tokenized.persona.PersonaChip
import com.microsoft.fluentui.tokenized.shimmer.Shimmer
import com.microsoft.fluentuidemo.R
import com.microsoft.fluentuidemo.V2DemoActivity

class V2ShimmerActivity : V2DemoActivity() {
    init {
        setupActivity(this)
    }

    override val paramsUrl = "https://github.com/microsoft/fluentui-android/wiki/Controls#params-34"
    override val controlTokensUrl =
        "https://github.com/microsoft/fluentui-android/wiki/Controls#control-tokens-32"

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setActivityContent {
            CreateShimmerActivityUI()
        }
    }
    private fun getShimmerOrientation(shimmerOrientation: Int): ShimmerOrientation {
        return when (shimmerOrientation) {
            0 -> ShimmerOrientation.LEFT_TO_RIGHT
            1 -> ShimmerOrientation.RIGHT_TO_LEFT
            2 -> ShimmerOrientation.TOPLEFT_TO_BOTTOMRIGHT
            3 -> ShimmerOrientation.BOTTOMRIGHT_TO_TOPLEFT
            else -> ShimmerOrientation.LEFT_TO_RIGHT
        }
    }

    @Composable
    private fun CreateShimmerActivityUI() {
        var shimmerOrientation by rememberSaveable { mutableStateOf(0) }
        var isShimmering by rememberSaveable { mutableStateOf(true) }
        val shimmerTokens = object: ShimmerTokens(){
            @Composable
            override fun delay(shimmerInfo: ShimmerInfo): Int {
                return 1000
            }

            @Composable
            override fun orientation(shimmerInfo: ShimmerInfo): ShimmerOrientation {
                return getShimmerOrientation(shimmerOrientation)
            }
        }
        Column(
            Modifier
                .padding(all = 12.dp)
        ) {
            Label(
                text = "Box Shimmer",
                textStyle = FluentAliasTokens.TypographyTokens.Title2,
                colorStyle = ColorStyle.Brand
            )
            Row(
                modifier = Modifier
                    .padding(top = 8.dp, bottom = 16.dp)
                    .height(80.dp),
                verticalAlignment = Alignment.CenterVertically,
                horizontalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                Shimmer(modifier = Modifier.size(120.dp, 80.dp), shimmerTokens = shimmerTokens, isShimmering = isShimmering, shimmerOrientation = getShimmerOrientation(shimmerOrientation))
                Column(
                    Modifier
                        .height(80.dp)
                        .padding(top = 10.dp, bottom = 10.dp),
                    verticalArrangement = Arrangement.SpaceBetween
                ) {
                    Shimmer(modifier = Modifier.size(140.dp, 12.dp), shimmerTokens = shimmerTokens, isShimmering = isShimmering, shimmerOrientation = getShimmerOrientation(shimmerOrientation))
                    Shimmer(modifier = Modifier.size(180.dp, 12.dp), shimmerTokens = shimmerTokens, isShimmering = isShimmering, shimmerOrientation = getShimmerOrientation(shimmerOrientation))
                    Shimmer(modifier = Modifier.size(200.dp, 12.dp), shimmerTokens = shimmerTokens, isShimmering = isShimmering, shimmerOrientation = getShimmerOrientation(shimmerOrientation))
                }
            }
            Label(
                text = "Circle Shimmer",
                textStyle = FluentAliasTokens.TypographyTokens.Title2,
                colorStyle = ColorStyle.Brand
            )
            Row(
                modifier = Modifier
                    .padding(top = 8.dp, bottom = 16.dp)
                    .height(60.dp),
                verticalAlignment = Alignment.CenterVertically,
                horizontalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                Shimmer(modifier = Modifier.size(60.dp, 60.dp).clip(RoundedCornerShape(50.dp)), shimmerTokens = shimmerTokens, isShimmering = isShimmering, shimmerOrientation = getShimmerOrientation(shimmerOrientation))
                Column(
                    Modifier
                        .height(80.dp)
                        .padding(top = 10.dp, bottom = 10.dp),
                    verticalArrangement = Arrangement.SpaceBetween
                ) {
                    Shimmer(modifier = Modifier.size(180.dp, 12.dp), shimmerTokens = shimmerTokens, isShimmering = isShimmering, shimmerOrientation = getShimmerOrientation(shimmerOrientation))
                    Shimmer(modifier = Modifier.size(180.dp, 12.dp), shimmerTokens = shimmerTokens, isShimmering = isShimmering, shimmerOrientation = getShimmerOrientation(shimmerOrientation))
                }
            }
            Row(
                modifier = Modifier
                    .padding(top = 8.dp, bottom = 16.dp)
                    .height(60.dp),
                verticalAlignment = Alignment.CenterVertically,
                horizontalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                Shimmer(modifier = Modifier.size(60.dp, 60.dp).clip(RoundedCornerShape(50.dp)), shimmerTokens = shimmerTokens, isShimmering = isShimmering, shimmerOrientation = getShimmerOrientation(shimmerOrientation))
                Column(
                    Modifier
                        .height(80.dp)
                        .padding(top = 10.dp, bottom = 10.dp),
                    verticalArrangement = Arrangement.SpaceBetween
                ) {
                    Shimmer(modifier = Modifier.size(140.dp, 12.dp), shimmerTokens = shimmerTokens, isShimmering = isShimmering, shimmerOrientation = getShimmerOrientation(shimmerOrientation))
                    Shimmer(modifier = Modifier.size(180.dp, 12.dp), shimmerTokens = shimmerTokens, isShimmering = isShimmering, shimmerOrientation = getShimmerOrientation(shimmerOrientation))
                }
            }
            Row(
                modifier = Modifier
                    .padding(top = 8.dp, bottom = 16.dp)
                    .height(60.dp),
                verticalAlignment = Alignment.CenterVertically,
                horizontalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                Shimmer(modifier = Modifier.size(60.dp, 60.dp).clip(RoundedCornerShape(50.dp)), shimmerTokens = shimmerTokens, isShimmering = isShimmering, shimmerOrientation = getShimmerOrientation(shimmerOrientation))
                Column(
                    Modifier
                        .height(80.dp)
                        .padding(top = 10.dp, bottom = 10.dp),
                    verticalArrangement = Arrangement.SpaceBetween
                ) {
                    Shimmer(modifier = Modifier.size(140.dp, 12.dp), shimmerTokens = shimmerTokens, isShimmering = isShimmering, shimmerOrientation = getShimmerOrientation(shimmerOrientation))
                    Shimmer(modifier = Modifier.size(180.dp, 12.dp), shimmerTokens = shimmerTokens, isShimmering = isShimmering, shimmerOrientation = getShimmerOrientation(shimmerOrientation))
                }
            }
            class ShimmerGoldEffectToken : ShimmerTokens() {
                @Composable
                override fun knockoutEffectColor(shimmerInfo: ShimmerInfo): Color {
                    return Color(0XFFE1BA27)
                }
            }

            class BadgeColorToken : BadgeTokens() {
                @Composable
                override fun backgroundBrush(badgeInfo: BadgeInfo): Brush {
                    return SolidColor(Color(0xFFD59328))
                }

                @Composable
                override fun borderStroke(badgeInfo: BadgeInfo): BorderStroke {
                    return BorderStroke(
                        width = 0.dp,
                        brush = SolidColor(Color(0xFFD59328))
                    )
                }
            }
            Label(
                text = "Shimmer with Content",
                textStyle = FluentAliasTokens.TypographyTokens.Title2,
                colorStyle = ColorStyle.Brand
            )
            Row(
                modifier = Modifier
                    .padding(top = 8.dp, bottom = 16.dp),
                verticalAlignment = Alignment.CenterVertically,
                horizontalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                Label(text = "Badge", textStyle = FluentAliasTokens.TypographyTokens.Body1)
                Shimmer(content = {
                    Badge(text = "Badge", badgeTokens = BadgeColorToken())
                }, shimmerTokens = ShimmerGoldEffectToken() , cornerRadius = 100.dp, isShimmering = isShimmering, shimmerOrientation = getShimmerOrientation(shimmerOrientation))
            }
            Row(
                modifier = Modifier
                    .padding(top = 8.dp, bottom = 16.dp),
                verticalAlignment = Alignment.CenterVertically,
                horizontalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                Label(text = "PersonaChip", textStyle = FluentAliasTokens.TypographyTokens.Body1)
                Shimmer(cornerRadius = 2.dp, content = {
                    PersonaChip(
                        person = Person("PersonaChip"),
                        selected = true,
                        size = PersonaChipSize.Small,
                        style = PersonaChipStyle.Brand
                    )
                }, shimmerTokens = shimmerTokens, isShimmering = isShimmering, shimmerOrientation = getShimmerOrientation(shimmerOrientation))
            }
            Row(
                modifier = Modifier
                    .padding(top = 8.dp, bottom = 16.dp),
                verticalAlignment = Alignment.CenterVertically,
                horizontalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                Label(text = "Avatar", textStyle = FluentAliasTokens.TypographyTokens.Body1)
                Shimmer(cornerRadius = 50.dp, content = {
                    Avatar(
                        person = Person(
                            "Allan", "Munger",
                            image = R.drawable.avatar_allan_munger,
                            status = AvatarStatus.Available,
                        ), size = AvatarSize.Size72, enableActivityRings = false
                    )
                }, shimmerTokens = shimmerTokens, isShimmering = isShimmering, shimmerOrientation = getShimmerOrientation(shimmerOrientation))
            }
            Label(
                text = "Change Orientation",
                textStyle = FluentAliasTokens.TypographyTokens.Title2,
                colorStyle = ColorStyle.Brand
            )
            Spacer( modifier = Modifier.height(10.dp))
            SelectionRow(
                text = "Left to Right",
                testTag = "Left to Right",
                selected = shimmerOrientation == 0,
                onClick = { shimmerOrientation = 0 }
            )
            SelectionRow(
                text = "Right to Left",
                testTag = "Right to Left",
                selected = shimmerOrientation == 1,
                onClick = { shimmerOrientation = 1 }
            )
            SelectionRow(
                text = "Top Left to Bottom Right",
                testTag = "Top Left to Bottom Right",
                selected = shimmerOrientation == 2,
                onClick = { shimmerOrientation = 2 }
            )
            SelectionRow(
                text = "Bottom Right to Top Left",
                testTag = "Bottom Right to Top Left",
                selected = shimmerOrientation == 3,
                onClick = { shimmerOrientation = 3 }
            )
            Spacer(modifier = Modifier.height(10.dp))
            Label(
                text = "Toggle Animation",
                textStyle = FluentAliasTokens.TypographyTokens.Title2,
                colorStyle = ColorStyle.Brand
            )
            Row(
                horizontalArrangement = Arrangement.spacedBy(16.dp),
                verticalAlignment = Alignment.CenterVertically,
                modifier = Modifier.fillMaxWidth().clickable {
                    isShimmering = !isShimmering
                }
            ) {
                BasicText(
                    text = "Toggle Shimmer Animation",
                    modifier = Modifier.weight(1F),
                    style = TextStyle(
                        color = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground3].value(
                            themeMode = ThemeMode.Auto
                        )
                    )
                )
                ToggleSwitch(
                    onValueChange = { isShimmering = !isShimmering },
                    checkedState = isShimmering
                )
            }
        }

    }
    @Composable
    private fun SelectionRow(
        text: String,
        testTag: String,
        selected: Boolean,
        onClick: () -> Unit
    ) {
        Row(
            horizontalArrangement = Arrangement.spacedBy(16.dp),
            verticalAlignment = Alignment.CenterVertically,
            modifier = Modifier.fillMaxWidth()
        ) {
            BasicText(
                text = text,
                modifier = Modifier.weight(1F),
                style = TextStyle(
                    color = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground3].value(
                        themeMode = ThemeMode.Auto
                    )
                )
            )
            RadioButton(
                modifier = Modifier.testTag(testTag),
                selected = selected,
                onClick = onClick
            )
        }
    }
}
```

## File: src/main/java/com/microsoft/fluentuidemo/demos/V2SideRailActivity.kt
```kotlin
package com.microsoft.fluentuidemo.demos

import android.os.Bundle
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.text.BasicText
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Email
import androidx.compose.material.icons.filled.Home
import androidx.compose.material.icons.filled.MoreVert
import androidx.compose.material.icons.filled.Settings
import androidx.compose.material.icons.outlined.Email
import androidx.compose.material.icons.outlined.Home
import androidx.compose.material.icons.outlined.MoreVert
import androidx.compose.material.icons.outlined.Settings
import androidx.compose.runtime.getValue
import androidx.compose.runtime.livedata.observeAsState
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.unit.dp
import androidx.lifecycle.MutableLiveData
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.ThemeMode
import com.microsoft.fluentui.theme.token.FluentAliasTokens
import com.microsoft.fluentui.theme.token.controlTokens.AvatarStatus
import com.microsoft.fluentui.theme.token.controlTokens.BadgeType
import com.microsoft.fluentui.theme.token.controlTokens.ButtonSize
import com.microsoft.fluentui.theme.token.controlTokens.ButtonStyle
import com.microsoft.fluentui.tokenized.controls.Button
import com.microsoft.fluentui.tokenized.controls.FloatingActionButton
import com.microsoft.fluentui.tokenized.controls.RadioButton
import com.microsoft.fluentui.tokenized.listitem.ListItem
import com.microsoft.fluentui.tokenized.navigation.SideRail
import com.microsoft.fluentui.tokenized.navigation.TabData
import com.microsoft.fluentui.tokenized.notification.Badge
import com.microsoft.fluentui.tokenized.persona.Avatar
import com.microsoft.fluentui.tokenized.persona.Person
import com.microsoft.fluentuidemo.R
import com.microsoft.fluentuidemo.V2DemoActivity
import com.microsoft.fluentuidemo.util.invokeToast

class V2SideRailActivity : V2DemoActivity() {
    init {
        setupActivity(this)
    }

    override val paramsUrl = "https://github.com/microsoft/fluentui-android/wiki/Controls#params-35"
    override val controlTokensUrl =
        "https://github.com/microsoft/fluentui-android/wiki/Controls#control-tokens-33"

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        val context = this

        val _topTabItemsCount: MutableLiveData<Int> = MutableLiveData(4)
        val _bottomTabItemsCount: MutableLiveData<Int> = MutableLiveData(3)
        val _enableText: MutableLiveData<Boolean> = MutableLiveData(true)

        setActivityContent {
            val topTabItemsCount = _topTabItemsCount.observeAsState(initial = 3)
            val bottomTabItemsCount = _bottomTabItemsCount.observeAsState(initial = 2)
            var selected by rememberSaveable { mutableStateOf(true) }

            Column {
                ListItem.Header(title = "SideRail Style")
                Column(
                    modifier = Modifier.padding(16.dp),
                    verticalArrangement = Arrangement.spacedBy(10.dp),
                ) {
                    Row(
                        horizontalArrangement = Arrangement.spacedBy(16.dp),
                        verticalAlignment = Alignment.CenterVertically,
                        modifier = Modifier.fillMaxWidth()
                    ) {
                        BasicText(
                            text = "Icon Only",
                            modifier = Modifier.weight(1F),
                            style = TextStyle(
                                color = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value(
                                    themeMode = ThemeMode.Auto
                                )
                            )
                        )
                        RadioButton(
                            modifier = Modifier.testTag(TAB_BAR_VERTICAL_RADIO),
                            selected = !selected,
                            onClick = {
                                selected = false
                                _enableText.value = false
                            }
                        )
                    }
                    Row(
                        horizontalArrangement = Arrangement.spacedBy(16.dp),
                        verticalAlignment = Alignment.CenterVertically,
                        modifier = Modifier.fillMaxWidth()
                    ) {
                        BasicText(
                            text = "With Text",
                            modifier = Modifier.weight(1F),
                            style = TextStyle(
                                color = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value(
                                    themeMode = ThemeMode.Auto
                                )
                            )
                        )
                        RadioButton(
                            modifier = Modifier.testTag(TAB_BAR_VERTICAL_RADIO),
                            selected = selected,
                            onClick = {
                                selected = true
                                _enableText.value = true
                            }
                        )
                    }

                }
                ListItem.Header(title = "Top Tab Items",
                    trailingAccessoryContent =
                    {
                        Row(
                            horizontalArrangement = Arrangement.spacedBy(16.dp),
                            verticalAlignment = Alignment.CenterVertically
                        ) {
                            Button(
                                modifier = Modifier.testTag(TAB_BAR_ADD_BUTTON),
                                style = ButtonStyle.Button,
                                size = ButtonSize.Medium,
                                text = "+",
                                enabled = topTabItemsCount.value < 4,
                                onClick = { _topTabItemsCount.value = topTabItemsCount.value + 1 })

                            Button(
                                modifier = Modifier.testTag(TAB_BAR_REMOVE_BUTTON),
                                style = ButtonStyle.Button,
                                size = ButtonSize.Medium,
                                text = "-",
                                enabled = topTabItemsCount.value > 1,
                                onClick = { _topTabItemsCount.value = topTabItemsCount.value - 1 }
                            )
                        }
                    }
                )
                ListItem.Header(title = "Bottom Tab Items",
                    trailingAccessoryContent =
                    {
                        Row(
                            horizontalArrangement = Arrangement.spacedBy(16.dp),
                            verticalAlignment = Alignment.CenterVertically
                        ) {
                            Button(
                                modifier = Modifier.testTag(TAB_BAR_ADD_BUTTON),
                                style = ButtonStyle.Button,
                                size = ButtonSize.Medium,
                                text = "+",
                                enabled = bottomTabItemsCount.value < 3,
                                onClick = {
                                    _bottomTabItemsCount.value = bottomTabItemsCount.value + 1
                                })

                            Button(
                                modifier = Modifier.testTag(TAB_BAR_REMOVE_BUTTON),
                                style = ButtonStyle.Button,
                                size = ButtonSize.Medium,
                                text = "-",
                                enabled = bottomTabItemsCount.value > 1,
                                onClick = {
                                    _bottomTabItemsCount.value = bottomTabItemsCount.value - 1
                                }
                            )
                        }
                    }
                )
            }
        }
        setSideBar {
            var topSelectedIndex by rememberSaveable { mutableStateOf(0) }
            var bottomSelectedIndex by rememberSaveable { mutableStateOf(0) }
            var showHomeBadge by rememberSaveable { mutableStateOf(true) }
            val topTabItemsCount = _topTabItemsCount.observeAsState(initial = 3)
            val bottomTabItemsCount = _bottomTabItemsCount.observeAsState(initial = 2)
            val enableText = _enableText.observeAsState(initial = false)
            val topTabDataList = arrayListOf(
                TabData(
                    title = resources.getString(R.string.tabBar_home),
                    icon = Icons.Outlined.Home,
                    selectedIcon = Icons.Filled.Home,
                    onClick = {
                        invokeToast(resources.getString(R.string.tabBar_home), context)
                        topSelectedIndex = 0
                        showHomeBadge = false
                    },
                    badge = { if (topSelectedIndex == 0 && showHomeBadge) Badge() }
                ),
                TabData(
                    title = resources.getString(R.string.tabBar_mail),
                    icon = Icons.Outlined.Email,
                    selectedIcon = Icons.Filled.Email,
                    onClick = {
                        invokeToast(resources.getString(R.string.tabBar_mail), context)
                        topSelectedIndex = 1
                    },
                    badge = { Badge(text = "123+", badgeType = BadgeType.Character) }
                ),
                TabData(
                    title = resources.getString(R.string.tabBar_settings),
                    icon = Icons.Outlined.Settings,
                    selectedIcon = Icons.Filled.Settings,
                    onClick = {
                        invokeToast(resources.getString(R.string.tabBar_settings), context)
                        topSelectedIndex = 2
                    }
                ),
                TabData(
                    title = resources.getString(R.string.tabBar_more),
                    icon = Icons.Outlined.MoreVert,
                    selectedIcon = Icons.Filled.MoreVert,
                    onClick = {
                        invokeToast(resources.getString(R.string.tabBar_more), context)
                        topSelectedIndex = 3
                    },
                    badge = { Badge(text = "10", badgeType = BadgeType.Character) }
                )
            )
            val bottomTabDataList = arrayListOf(
                TabData(
                    title = resources.getString(R.string.tabBar_home),
                    icon = Icons.Outlined.Home,
                    selectedIcon = Icons.Filled.Home,
                    onClick = {
                        invokeToast(resources.getString(R.string.tabBar_home), context)
                        bottomSelectedIndex = 0
                        showHomeBadge = false
                    },
                    badge = { if (topSelectedIndex == 0 && showHomeBadge) Badge() }
                ),
                TabData(
                    title = resources.getString(R.string.tabBar_mail),
                    icon = Icons.Outlined.Email,
                    selectedIcon = Icons.Filled.Email,
                    onClick = {
                        invokeToast(resources.getString(R.string.tabBar_mail), context)
                        bottomSelectedIndex = 1
                    },
                    badge = { Badge(text = "123+", badgeType = BadgeType.Character) }
                ),
                TabData(
                    title = resources.getString(R.string.tabBar_settings),
                    icon = Icons.Outlined.Settings,
                    selectedIcon = Icons.Filled.Settings,
                    onClick = {
                        invokeToast(resources.getString(R.string.tabBar_settings), context)
                        bottomSelectedIndex = 2
                    }
                )
            )

            SideRail(
                modifier = Modifier.testTag(TAB_BAR),
                header = {
                    Avatar(
                        person = Person(
                            "Amanda", "Brady",
                            image = R.drawable.avatar_amanda_brady,
                            status = AvatarStatus.Available
                        )
                    )
                },
                topTabDataList = topTabDataList.take(topTabItemsCount.value),
                bottomTabDataList = bottomTabDataList.take(bottomTabItemsCount.value),
                topTabSelectedIndex = topSelectedIndex,
                bottomTabSelectedIndex = bottomSelectedIndex,
                showIconText = enableText.value,
            )
        }
    }
}
```

## File: src/main/java/com/microsoft/fluentuidemo/demos/V2SnackbarActivity.kt
```kotlin
package com.microsoft.fluentuidemo.demos

import android.os.Build
import android.os.Bundle
import android.widget.Toast
import androidx.annotation.RequiresApi
import androidx.compose.animation.core.Animatable
import androidx.compose.animation.core.FastOutSlowInEasing
import androidx.compose.animation.core.LinearOutSlowInEasing
import androidx.compose.animation.core.tween
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.outlined.ShoppingCart
import androidx.compose.runtime.*
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.theme.FluentTheme.aliasTokens
import com.microsoft.fluentui.theme.token.FluentAliasTokens
import com.microsoft.fluentui.theme.token.FluentIcon
import com.microsoft.fluentui.theme.token.FluentStyle
import com.microsoft.fluentui.theme.token.controlTokens.ButtonSize
import com.microsoft.fluentui.theme.token.controlTokens.ButtonStyle
import com.microsoft.fluentui.theme.token.controlTokens.SnackbarStyle
import com.microsoft.fluentui.tokenized.controls.Button
import com.microsoft.fluentui.tokenized.controls.ToggleSwitch
import com.microsoft.fluentui.tokenized.listitem.ChevronOrientation
import com.microsoft.fluentui.tokenized.listitem.ListItem
import com.microsoft.fluentui.tokenized.notification.AnimationBehavior
import com.microsoft.fluentui.tokenized.notification.AnimationVariables
import com.microsoft.fluentui.tokenized.notification.NotificationDuration
import com.microsoft.fluentui.tokenized.notification.NotificationResult
import com.microsoft.fluentui.tokenized.notification.Snackbar
import com.microsoft.fluentui.tokenized.notification.SnackbarState
import com.microsoft.fluentui.tokenized.segmentedcontrols.PillBar
import com.microsoft.fluentui.tokenized.segmentedcontrols.PillMetaData
import com.microsoft.fluentuidemo.R
import com.microsoft.fluentuidemo.V2DemoActivity
import kotlinx.coroutines.launch

// Tags used for testing
const val SNACK_BAR_MODIFIABLE_PARAMETER_SECTION = "Snack bar Modifiable Parameters"
const val SNACK_BAR_ICON_PARAM = "Snack bar Icon Param"
const val SNACK_BAR_SUBTITLE_PARAM = "Snack bar Subtitle Param"
const val SNACK_BAR_ACTION_BUTTON_PARAM = "Snack bar Action Button Param"
const val SNACK_BAR_DISMISS_BUTTON_PARAM = "Snack bar Dismiss Button Param"
const val SNACK_BAR_SHOW_SNACKBAR = "Snack bar Show Snackbar"
const val SNACK_BAR_DISMISS_SNACKBAR = "Snack bar Dismiss Snackbar"

class V2SnackbarActivity : V2DemoActivity() {
    init {
        setupActivity(this)
    }

    override val paramsUrl = "https://github.com/microsoft/fluentui-android/wiki/Controls#params-36"
    override val controlTokensUrl =
        "https://github.com/microsoft/fluentui-android/wiki/Controls#control-tokens-34"

    @RequiresApi(Build.VERSION_CODES.N)
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        val context = this

        setActivityContent {
            val snackbarState = remember { SnackbarState() }

            val scope = rememberCoroutineScope()
            Column(
                Modifier.fillMaxSize(),
                horizontalAlignment = Alignment.CenterHorizontally
            ) {
                var icon: Boolean by rememberSaveable { mutableStateOf(false) }
                var actionLabel: Boolean by rememberSaveable { mutableStateOf(false) }
                var subtitle: String? by rememberSaveable { mutableStateOf(null) }
                var style: SnackbarStyle by rememberSaveable { mutableStateOf(SnackbarStyle.Neutral) }
                var duration: NotificationDuration by rememberSaveable {
                    mutableStateOf(
                        NotificationDuration.SHORT
                    )
                }
                var dismissEnabled by rememberSaveable { mutableStateOf(false) }

                ListItem.SectionHeader(
                    title = LocalContext.current.resources.getString(R.string.app_modifiable_parameters),
                    enableChevron = true,
                    enableContentOpenCloseTransition = true,
                    chevronOrientation = ChevronOrientation(90f, 0f),
                    modifier = Modifier.testTag(SNACK_BAR_MODIFIABLE_PARAMETER_SECTION)
                ) {
                    LazyColumn(Modifier.fillMaxHeight(0.5F)) {
                        item {
                            PillBar(
                                mutableListOf(
                                    PillMetaData(
                                        text = LocalContext.current.resources.getString(R.string.fluentui_indefinite),
                                        onClick = {
                                            duration = NotificationDuration.INDEFINITE
                                        },
                                        selected = duration == NotificationDuration.INDEFINITE
                                    ),
                                    PillMetaData(
                                        text = LocalContext.current.resources.getString(R.string.fluentui_long),
                                        onClick = {
                                            duration = NotificationDuration.LONG
                                        },
                                        selected = duration == NotificationDuration.LONG
                                    ),
                                    PillMetaData(
                                        text = LocalContext.current.resources.getString(R.string.fluentui_short),
                                        onClick = {
                                            duration = NotificationDuration.SHORT
                                        },
                                        selected = duration == NotificationDuration.SHORT
                                    )
                                ), style = FluentStyle.Neutral,
                                showBackground = true
                            )
                        }

                        item {
                            Spacer(
                                Modifier
                                    .height(8.dp)
                                    .fillMaxWidth()
                                    .background(aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background1].value())
                            )
                        }

                        item {
                            PillBar(
                                mutableListOf(
                                    PillMetaData(
                                        text = LocalContext.current.resources.getString(R.string.fluentui_neutral),
                                        onClick = {
                                            style = SnackbarStyle.Neutral
                                        },
                                        selected = style == SnackbarStyle.Neutral
                                    ),
                                    PillMetaData(
                                        text = LocalContext.current.resources.getString(R.string.fluentui_contrast),
                                        onClick = {
                                            style = SnackbarStyle.Contrast
                                        },
                                        selected = style == SnackbarStyle.Contrast
                                    ),
                                    PillMetaData(
                                        text = LocalContext.current.resources.getString(R.string.fluentui_accent),
                                        onClick = {
                                            style = SnackbarStyle.Accent
                                        },
                                        selected = style == SnackbarStyle.Accent
                                    ),
                                    PillMetaData(
                                        text = LocalContext.current.resources.getString(R.string.fluentui_warning),
                                        onClick = {
                                            style = SnackbarStyle.Warning
                                        },
                                        selected = style == SnackbarStyle.Warning
                                    ),
                                    PillMetaData(
                                        text = LocalContext.current.resources.getString(R.string.fluentui_danger),
                                        onClick = {
                                            style = SnackbarStyle.Danger
                                        },
                                        selected = style == SnackbarStyle.Danger
                                    )
                                ), style = FluentStyle.Neutral,
                                showBackground = true
                            )
                        }

                        item {
                            ListItem.Item(
                                text = LocalContext.current.resources.getString(R.string.fluentui_icon),
                                subText = if (!icon)
                                    LocalContext.current.resources.getString(R.string.fluentui_disabled)
                                else
                                    LocalContext.current.resources.getString(R.string.fluentui_enabled),
                                trailingAccessoryContent = {
                                    ToggleSwitch(
                                        onValueChange = {
                                            icon = it
                                        },
                                        checkedState = icon,
                                        modifier = Modifier.testTag(SNACK_BAR_ICON_PARAM)
                                    )
                                }
                            )
                        }

                        item {
                            val subTitleText =
                                LocalContext.current.resources.getString(R.string.fluentui_subtitle)
                            ListItem.Item(
                                text = subTitleText,
                                subText = if (subtitle.isNullOrBlank())
                                    LocalContext.current.resources.getString(R.string.fluentui_disabled)
                                else
                                    LocalContext.current.resources.getString(R.string.fluentui_enabled),
                                trailingAccessoryContent = {
                                    ToggleSwitch(
                                        onValueChange = {
                                            if (subtitle.isNullOrBlank()) {
                                                subtitle = subTitleText
                                            } else {
                                                subtitle = null
                                            }
                                        },
                                        checkedState = !subtitle.isNullOrBlank(),
                                        modifier = Modifier.testTag(SNACK_BAR_SUBTITLE_PARAM)
                                    )
                                }
                            )
                        }

                        item {
                            ListItem.Item(
                                text = LocalContext.current.resources.getString(R.string.fluentui_action_button),
                                subText = if (actionLabel)
                                    LocalContext.current.resources.getString(R.string.fluentui_disabled)
                                else
                                    LocalContext.current.resources.getString(R.string.fluentui_enabled),
                                trailingAccessoryContent = {
                                    ToggleSwitch(
                                        onValueChange = {
                                            actionLabel = it
                                        },
                                        checkedState = actionLabel,
                                        modifier = Modifier.testTag(SNACK_BAR_ACTION_BUTTON_PARAM)
                                    )
                                }
                            )
                        }

                        item {
                            ListItem.Item(
                                text = LocalContext.current.resources.getString(R.string.fluentui_dismiss_button),
                                subText = if (!dismissEnabled)
                                    LocalContext.current.resources.getString(R.string.fluentui_disabled)
                                else
                                    LocalContext.current.resources.getString(R.string.fluentui_enabled),
                                trailingAccessoryContent = {
                                    ToggleSwitch(
                                        onValueChange = {
                                            dismissEnabled = it
                                        },
                                        checkedState = dismissEnabled,
                                        modifier = Modifier.testTag(SNACK_BAR_DISMISS_BUTTON_PARAM)
                                    )
                                }
                            )
                        }
                    }
                }

                Row(
                    Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.SpaceEvenly,
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    val actionButtonString =
                        LocalContext.current.resources.getString(R.string.fluentui_action_button)
                    val dismissedString =
                        LocalContext.current.resources.getString(R.string.fluentui_dismissed)
                    val pressedString =
                        LocalContext.current.resources.getString(R.string.fluentui_button_pressed)
                    val timeoutString =
                        LocalContext.current.resources.getString(R.string.fluentui_timeout)
                    Button(
                        onClick = {
                            scope.launch {
                                val result: NotificationResult = snackbarState.showSnackbar(
                                    "Hello from Fluent",
                                    style = style,
                                    icon = if (icon) FluentIcon(Icons.Outlined.ShoppingCart) else null,
                                    actionText = if (actionLabel) actionButtonString else null,
                                    subTitle = subtitle,
                                    duration = duration,
                                    enableDismiss = dismissEnabled,
                                    animationBehavior = customizedAnimationBehavior
                                )

                                when (result) {
                                    NotificationResult.TIMEOUT -> Toast.makeText(
                                        context,
                                        timeoutString,
                                        Toast.LENGTH_SHORT
                                    ).show()

                                    NotificationResult.CLICKED -> Toast.makeText(
                                        context,
                                        pressedString,
                                        Toast.LENGTH_SHORT
                                    ).show()

                                    NotificationResult.DISMISSED -> Toast.makeText(
                                        context,
                                        dismissedString,
                                        Toast.LENGTH_SHORT
                                    ).show()
                                }
                            }
                        },
                        text = LocalContext.current.resources.getString(R.string.fluentui_show_snackbar),
                        size = ButtonSize.Small,
                        style = ButtonStyle.OutlinedButton,
                        modifier = Modifier.testTag(SNACK_BAR_SHOW_SNACKBAR)
                    )

                    Button(
                        onClick = {
                            snackbarState.currentSnackbar?.dismiss(scope)
                        },
                        text = LocalContext.current.resources.getString(R.string.fluentui_dismiss_snackbar),
                        size = ButtonSize.Small,
                        style = ButtonStyle.OutlinedButton,
                        modifier = Modifier.testTag(SNACK_BAR_DISMISS_SNACKBAR)
                    )
                }
                Box(Modifier.fillMaxHeight(), contentAlignment = Alignment.Center) {
                    Snackbar(snackbarState, Modifier.padding(bottom = 12.dp), null, true)
                }
            }
        }
    }
}

// Customized animation behavior for Snackbar
val customizedAnimationBehavior: AnimationBehavior = object : AnimationBehavior() {
    override var animationVariables: AnimationVariables = object : AnimationVariables() {
        override var scale = Animatable(1F)
        override var offsetY = Animatable(50F)
    }

    override suspend fun onShowAnimation() {
        // pop from bottom
        animationVariables.alpha.snapTo(1F)
        animationVariables.offsetX.snapTo(0F)
        animationVariables.offsetY.snapTo(50F)
        animationVariables.offsetY.animateTo(
            0F,
            animationSpec = tween(
                easing = LinearOutSlowInEasing,
                durationMillis = 500,
            )
        )
    }

    override suspend fun onDismissAnimation() {
        // slide out from left
        animationVariables.offsetX.animateTo(
            targetValue = -2000f,
            animationSpec = tween(
                durationMillis = 500,
                easing = FastOutSlowInEasing
            )
        )
    }
}
```

## File: src/main/java/com/microsoft/fluentuidemo/demos/V2TabBarActivity.kt
```kotlin
package com.microsoft.fluentuidemo.demos

import android.os.Bundle
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.text.BasicText
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material.icons.outlined.*
import androidx.compose.runtime.getValue
import androidx.compose.runtime.livedata.observeAsState
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.unit.dp
import androidx.lifecycle.MutableLiveData
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.ThemeMode
import com.microsoft.fluentui.theme.token.FluentAliasTokens
import com.microsoft.fluentui.theme.token.controlTokens.BadgeType
import com.microsoft.fluentui.theme.token.controlTokens.ButtonSize
import com.microsoft.fluentui.theme.token.controlTokens.ButtonStyle
import com.microsoft.fluentui.theme.token.controlTokens.TabTextAlignment
import com.microsoft.fluentui.tokenized.controls.Button
import com.microsoft.fluentui.tokenized.controls.RadioButton
import com.microsoft.fluentui.tokenized.controls.ToggleSwitch
import com.microsoft.fluentui.tokenized.listitem.ListItem
import com.microsoft.fluentui.tokenized.navigation.TabBar
import com.microsoft.fluentui.tokenized.navigation.TabData
import com.microsoft.fluentui.tokenized.notification.Badge
import com.microsoft.fluentuidemo.R
import com.microsoft.fluentuidemo.V2DemoActivity
import com.microsoft.fluentuidemo.util.invokeToast

const val TAB_BAR_VERTICAL_RADIO = "tabBarVerticalRadio"
const val TAB_BAR_HORIZONTAL_RADIO = "tabBarHorizontalRadio"
const val TAB_BAR_NO_TEXT_RADIO = "tabBarItemsNoTextRadio"
const val TAB_BAR_ADD_BUTTON = "tabBarAddButton"
const val TAB_BAR_REMOVE_BUTTON = "tabBarRemoveButton"
const val TAB_BAR = "tabBar"

class V2TabBarActivity : V2DemoActivity() {
    init {
        setupActivity(this)
    }

    override val paramsUrl = "https://github.com/microsoft/fluentui-android/wiki/Controls#params-38"
    override val controlTokensUrl =
        "https://github.com/microsoft/fluentui-android/wiki/Controls#control-tokens-36"

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        val context = this

        val _tabTextAlignment: MutableLiveData<TabTextAlignment> =
            MutableLiveData(TabTextAlignment.VERTICAL)
        val _tabShowIndicator: MutableLiveData<Boolean> =
            MutableLiveData(false)
        val _tabItemsCount: MutableLiveData<Int> = MutableLiveData(5)

        setActivityContent {
            val content = listOf(0, 1, 2)
            var selectedOption by rememberSaveable { mutableIntStateOf(content[0]) }
            val tabItemsCount = _tabItemsCount.observeAsState(initial = 5)
            var showIndicator by rememberSaveable {
                mutableStateOf(false)
            }

            Column {
                ListItem.Header(title = resources.getString(R.string.tabBar_text_alignment))
                Column(
                    modifier = Modifier.padding(16.dp),
                    verticalArrangement = Arrangement.spacedBy(10.dp),
                ) {
                    Row(
                        horizontalArrangement = Arrangement.spacedBy(16.dp),
                        verticalAlignment = Alignment.CenterVertically,
                        modifier = Modifier.fillMaxWidth()
                    ) {
                        BasicText(
                            text = resources.getString(R.string.tabBar_vertical),
                            modifier = Modifier.weight(1F),
                            style = TextStyle(
                                color = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground3].value(
                                    themeMode = ThemeMode.Auto
                                )
                            )
                        )
                        RadioButton(
                            modifier = Modifier.testTag(TAB_BAR_VERTICAL_RADIO),
                            selected = (selectedOption == content[0]),
                            onClick = {
                                selectedOption = content[0]
                                _tabTextAlignment.value = TabTextAlignment.VERTICAL
                            }
                        )
                    }
                    Row(
                        horizontalArrangement = Arrangement.spacedBy(16.dp),
                        verticalAlignment = Alignment.CenterVertically,
                        modifier = Modifier.fillMaxWidth()
                    ) {
                        BasicText(
                            text = resources.getString(R.string.tabBar_horizontal),
                            modifier = Modifier.weight(1F),
                            style = TextStyle(
                                color = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground3].value(
                                    themeMode = ThemeMode.Auto
                                )
                            )
                        )
                        RadioButton(
                            modifier = Modifier.testTag(TAB_BAR_HORIZONTAL_RADIO),
                            selected = (selectedOption == content[1]),
                            onClick = {
                                selectedOption = content[1]
                                _tabTextAlignment.value = TabTextAlignment.HORIZONTAL
                            }
                        )
                    }
                    Row(
                        horizontalArrangement = Arrangement.spacedBy(16.dp),
                        verticalAlignment = Alignment.CenterVertically,
                        modifier = Modifier.fillMaxWidth()
                    ) {
                        BasicText(
                            text = resources.getString(R.string.tabBar_no_text),
                            modifier = Modifier.weight(1F),
                            style = TextStyle(
                                color = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground3].value(
                                    themeMode = ThemeMode.Auto
                                )
                            )
                        )
                        RadioButton(
                            modifier = Modifier.testTag(TAB_BAR_NO_TEXT_RADIO),
                            selected = (selectedOption == content[2]),
                            onClick = {
                                selectedOption = content[2]
                                _tabTextAlignment.value = TabTextAlignment.NO_TEXT
                            }
                        )
                    }

                }
                ListItem.Header(title = "Show Indicator",
                    trailingAccessoryContent = {
                        ToggleSwitch(
                            onValueChange = {
                                showIndicator = it
                                _tabShowIndicator.value = showIndicator
                            },
                            modifier = Modifier.testTag(APP_BAR_SUBTITLE_PARAM),
                            checkedState = showIndicator
                        )
                    }
                )
                ListItem.Header(title = resources.getString(R.string.tabBar_tab_items),
                    trailingAccessoryContent =
                    {
                        Row(
                            horizontalArrangement = Arrangement.spacedBy(16.dp),
                            verticalAlignment = Alignment.CenterVertically
                        ) {
                            Button(
                                modifier = Modifier.testTag(TAB_BAR_ADD_BUTTON),
                                style = ButtonStyle.Button,
                                size = ButtonSize.Medium,
                                text = "+",
                                enabled = tabItemsCount.value < 5,
                                onClick = { _tabItemsCount.value = tabItemsCount.value + 1 })

                            Button(
                                modifier = Modifier.testTag(TAB_BAR_REMOVE_BUTTON),
                                style = ButtonStyle.Button,
                                size = ButtonSize.Medium,
                                text = "-",
                                enabled = tabItemsCount.value > 1,
                                onClick = { _tabItemsCount.value = tabItemsCount.value - 1 }
                            )
                        }
                    }
                )
            }
        }

        setBottomBar {
            var selectedIndex by rememberSaveable { mutableStateOf(0) }
            var showHomeBadge by rememberSaveable { mutableStateOf(true) }
            val tabTextAlignment =
                _tabTextAlignment.observeAsState(initial = TabTextAlignment.VERTICAL)
            val tabItemsCount = _tabItemsCount.observeAsState(initial = 5)
            val showIndicator = _tabShowIndicator.observeAsState(initial = false)

            val tabDataList = arrayListOf(
                TabData(
                    title = resources.getString(R.string.tabBar_home),
                    icon = Icons.Outlined.Home,
                    selectedIcon = Icons.Filled.Home,
                    onClick = {
                        invokeToast(resources.getString(R.string.tabBar_home), context)
                        selectedIndex = 0
                        showHomeBadge = false
                    },
                    badge = { if (selectedIndex == 0 && showHomeBadge) Badge() },
                    accessibilityDescription = resources.getString(R.string.tabBar_home) + ": " + if(selectedIndex == 0) {resources.getString(R.string.Active)} else {resources.getString(R.string.Inactive)}
                ),
                TabData(
                    title = resources.getString(R.string.tabBar_mail),
                    icon = Icons.Outlined.Email,
                    selectedIcon = Icons.Filled.Email,
                    onClick = {
                        invokeToast(resources.getString(R.string.tabBar_mail), context)
                        selectedIndex = 1
                    },
                    badge = { Badge(text = "123+", badgeType = BadgeType.Character) },
                    accessibilityDescription = resources.getString(R.string.tabBar_mail) + ": " + if(selectedIndex == 1) {resources.getString(R.string.Active)} else {resources.getString(R.string.Inactive)}
                ),
                TabData(
                    title = resources.getString(R.string.tabBar_settings),
                    icon = Icons.Outlined.Settings,
                    selectedIcon = Icons.Filled.Settings,
                    onClick = {
                        invokeToast(resources.getString(R.string.tabBar_settings), context)
                        selectedIndex = 2
                    },
                    accessibilityDescription = resources.getString(R.string.tabBar_settings) + ": " + if(selectedIndex == 2) {resources.getString(R.string.Active)} else {resources.getString(R.string.Inactive)}
                ),
                TabData(
                    title = resources.getString(R.string.tabBar_notification),
                    icon = Icons.Outlined.Notifications,
                    selectedIcon = Icons.Filled.Notifications,
                    onClick = {
                        invokeToast(resources.getString(R.string.tabBar_notification), context)
                        selectedIndex = 3
                    },
                    badge = { Badge(text = "10", badgeType = BadgeType.Character) },
                    accessibilityDescription = resources.getString(R.string.tabBar_notification) + ": " + if(selectedIndex == 3) {resources.getString(R.string.Active)} else {resources.getString(R.string.Inactive)}
                ),
                TabData(
                    title = resources.getString(R.string.tabBar_more),
                    icon = Icons.Outlined.List,
                    selectedIcon = Icons.Filled.List,
                    onClick = {
                        invokeToast(resources.getString(R.string.tabBar_more), context)
                        selectedIndex = 4
                    },
                    badge = { Badge() },
                    accessibilityDescription = resources.getString(R.string.tabBar_more) + ": " + if(selectedIndex == 4) {resources.getString(R.string.Active)} else {resources.getString(R.string.Inactive)}
                )
            )

            TabBar(
                modifier = Modifier.testTag(TAB_BAR),
                tabDataList = tabDataList.take(tabItemsCount.value),
                selectedIndex = selectedIndex,
                tabTextAlignment = tabTextAlignment.value,
                showIndicator = showIndicator.value
            )
        }
    }
}
```

## File: src/main/java/com/microsoft/fluentuidemo/demos/V2TextFieldActivity.kt
```kotlin
package com.microsoft.fluentuidemo.demos

import android.os.Bundle
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxHeight
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.text.KeyboardActions
import androidx.compose.foundation.text.KeyboardOptions
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Email
import androidx.compose.material.icons.outlined.Email
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalFocusManager
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.text.input.KeyboardType
import androidx.compose.ui.text.input.PasswordVisualTransformation
import androidx.compose.ui.text.input.VisualTransformation
import com.microsoft.fluentui.icons.SearchBarIcons
import com.microsoft.fluentui.icons.searchbaricons.Dismisscircle
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.FluentIcon
import com.microsoft.fluentui.tokenized.controls.TextField
import com.microsoft.fluentui.tokenized.controls.ToggleSwitch
import com.microsoft.fluentui.tokenized.listitem.ChevronOrientation
import com.microsoft.fluentui.tokenized.listitem.ListItem
import com.microsoft.fluentui.tokenized.segmentedcontrols.PillBar
import com.microsoft.fluentui.tokenized.segmentedcontrols.PillMetaData
import com.microsoft.fluentuidemo.R
import com.microsoft.fluentuidemo.V2DemoActivity
import com.microsoft.fluentuidemo.util.DemoAppStrings
import com.microsoft.fluentuidemo.util.getDemoAppString
import java.io.Console

// Tags used for testing
const val TEXT_FIELD_MODIFIABLE_PARAMETER_SECTION = "textFieldModifiableParameterSection"
const val TEXT_FIELD_ICON_PARAM = "textFieldIconParam"
const val TEXT_FIELD_HINT_TEXT_PARAM = "textFieldHintTextParam"
const val TEXT_FIELD_LABEL_PARAM = "textFieldLabelParam"
const val TEXT_FIELD_ASSISTIVE_TEXT_PARAM = "textFieldAssistiveTextParam"
const val TEXT_FIELD_SECONDARY_TEXT_PARAM = "textFieldSecondaryTextParam"
const val TEXT_FIELD_ERROR_PARAM = "textFieldErrorTextParam"
const val TEXT_FIELD_PASSWORD_MODE_PARAM = "textFieldPasswordModeParam"
const val TEXT_FIELD_READONLY_PARAM = "textFieldReadOnlyParam"
const val TEXT_FIELD_ENABLED_PARAM = "textFieldEnabledParam"


class V2TextFieldActivity : V2DemoActivity() {
    init {
        setupActivity(this)
    }

    override val paramsUrl = "https://github.com/microsoft/fluentui-android/wiki/Controls#params-39"
    override val controlTokensUrl =
        "https://github.com/microsoft/fluentui-android/wiki/Controls#control-tokens-37"

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        setActivityContent {
            var value by rememberSaveable { mutableStateOf("") }
            var leftIcon by rememberSaveable { mutableStateOf(true) }
            var hintText by rememberSaveable { mutableStateOf(true) }
            var label by rememberSaveable { mutableStateOf(true) }
            var assistiveText by rememberSaveable { mutableStateOf(true) }
            var secondaryText by rememberSaveable { mutableStateOf(true) }
            var errorText by rememberSaveable { mutableStateOf(false) }
            var passwordMode by rememberSaveable { mutableStateOf(false) }
            var keyboardType by remember { mutableStateOf(KeyboardType.Text) }
            var readOnly by rememberSaveable { mutableStateOf(false) }
            var enabled by rememberSaveable { mutableStateOf(true) }

            val resources = LocalContext.current.resources

            FluentTheme {
                Column {
                    ListItem.SectionHeader(
                        modifier = Modifier.testTag(TEXT_FIELD_MODIFIABLE_PARAMETER_SECTION),
                        title = getDemoAppString(DemoAppStrings.ModifiableParameters),
                        enableChevron = true,
                        enableContentOpenCloseTransition = true,
                        chevronOrientation = ChevronOrientation(90f, 0f)
                    ) {
                        LazyColumn(Modifier.fillMaxHeight(0.5F)) {
                            item {
                                PillBar(
                                    mutableListOf(
                                        PillMetaData(
                                            text = resources.getString(R.string.fluentui_keyboard_text),
                                            onClick = { keyboardType = KeyboardType.Text },
                                            selected = keyboardType == KeyboardType.Text
                                        ),
                                        PillMetaData(
                                            text = resources.getString(R.string.fluentui_keyboard_ascii),
                                            onClick = { keyboardType = KeyboardType.Ascii },
                                            selected = keyboardType == KeyboardType.Ascii
                                        ),
                                        PillMetaData(
                                            text = resources.getString(R.string.fluentui_keyboard_number),
                                            onClick = { keyboardType = KeyboardType.Number },
                                            selected = keyboardType == KeyboardType.Number
                                        ),
                                        PillMetaData(
                                            text = resources.getString(R.string.fluentui_keyboard_phone),
                                            onClick = { keyboardType = KeyboardType.Phone },
                                            selected = keyboardType == KeyboardType.Phone
                                        ),
                                        PillMetaData(
                                            text = resources.getString(R.string.fluentui_keyboard_uri),
                                            onClick = { keyboardType = KeyboardType.Uri },
                                            selected = keyboardType == KeyboardType.Uri
                                        ),
                                        PillMetaData(
                                            text = resources.getString(R.string.fluentui_keyboard_email),
                                            onClick = { keyboardType = KeyboardType.Email },
                                            selected = keyboardType == KeyboardType.Email
                                        ),
                                        PillMetaData(
                                            text = resources.getString(R.string.fluentui_keyboard_password),
                                            onClick = { keyboardType = KeyboardType.Password },
                                            selected = keyboardType == KeyboardType.Password
                                        ),
                                        PillMetaData(
                                            text = resources.getString(R.string.fluentui_keyboard_number_password),
                                            onClick = {
                                                keyboardType = KeyboardType.NumberPassword
                                            },
                                            selected = keyboardType == KeyboardType.NumberPassword
                                        ),
                                        PillMetaData(
                                            text = resources.getString(R.string.fluentui_keyboard_decimal),
                                            onClick = { keyboardType = KeyboardType.Decimal },
                                            selected = keyboardType == KeyboardType.Decimal
                                        )
                                    )
                                )
                            }

                            item {
                                ListItem.Item(
                                    text = resources.getString(R.string.fluentui_icon),
                                    subText = if (leftIcon)
                                        LocalContext.current.resources.getString(R.string.fluentui_enabled)
                                    else
                                        LocalContext.current.resources.getString(R.string.fluentui_disabled),
                                    trailingAccessoryContent = {
                                        ToggleSwitch(
                                            modifier = Modifier.testTag(TEXT_FIELD_ICON_PARAM),
                                            onValueChange = {
                                                leftIcon = it
                                            },
                                            checkedState = leftIcon
                                        )
                                    }
                                )
                            }

                            item {
                                ListItem.Item(
                                    text = resources.getString(R.string.fluentui_hint),
                                    subText = if (hintText)
                                        LocalContext.current.resources.getString(R.string.fluentui_enabled)
                                    else
                                        LocalContext.current.resources.getString(R.string.fluentui_disabled),
                                    trailingAccessoryContent = {
                                        ToggleSwitch(
                                            modifier = Modifier.testTag(TEXT_FIELD_HINT_TEXT_PARAM),
                                            onValueChange = {
                                                hintText = it
                                            },
                                            checkedState = hintText
                                        )
                                    }
                                )
                            }

                            item {
                                ListItem.Item(
                                    text = resources.getString(R.string.fluentui_label),
                                    subText = if (label)
                                        LocalContext.current.resources.getString(R.string.fluentui_enabled)
                                    else
                                        LocalContext.current.resources.getString(R.string.fluentui_disabled),
                                    trailingAccessoryContent = {
                                        ToggleSwitch(
                                            modifier = Modifier.testTag(TEXT_FIELD_LABEL_PARAM),
                                            onValueChange = {
                                                label = it
                                            },
                                            checkedState = label
                                        )
                                    }
                                )
                            }

                            item {
                                ListItem.Item(
                                    text = resources.getString(R.string.fluentui_assistive_text),
                                    subText = if (assistiveText)
                                        LocalContext.current.resources.getString(R.string.fluentui_enabled)
                                    else
                                        LocalContext.current.resources.getString(R.string.fluentui_disabled),
                                    trailingAccessoryContent = {
                                        ToggleSwitch(
                                            modifier = Modifier.testTag(
                                                TEXT_FIELD_ASSISTIVE_TEXT_PARAM
                                            ),
                                            onValueChange = {
                                                assistiveText = it
                                            },
                                            checkedState = assistiveText
                                        )
                                    }
                                )
                            }

                            item {
                                ListItem.Item(
                                    text = resources.getString(R.string.fluentui_secondary),
                                    subText = if (secondaryText)
                                        LocalContext.current.resources.getString(R.string.fluentui_enabled)
                                    else
                                        LocalContext.current.resources.getString(R.string.fluentui_disabled),
                                    trailingAccessoryContent = {
                                        ToggleSwitch(
                                            modifier = Modifier.testTag(
                                                TEXT_FIELD_SECONDARY_TEXT_PARAM
                                            ),
                                            onValueChange = {
                                                secondaryText = it
                                            },
                                            checkedState = secondaryText
                                        )
                                    }
                                )
                            }

                            item {
                                ListItem.Item(
                                    text = resources.getString(R.string.fluentui_password_mode),
                                    subText = if (passwordMode)
                                        LocalContext.current.resources.getString(R.string.fluentui_enabled)
                                    else
                                        LocalContext.current.resources.getString(R.string.fluentui_disabled),
                                    trailingAccessoryContent = {
                                        ToggleSwitch(
                                            modifier = Modifier.testTag(
                                                TEXT_FIELD_PASSWORD_MODE_PARAM
                                            ),
                                            onValueChange = {
                                                passwordMode = it
                                            },
                                            checkedState = passwordMode
                                        )
                                    }
                                )
                            }

                            item {
                                ListItem.Item(
                                    text = resources.getString(R.string.fluentui_error),
                                    subText = if (errorText)
                                        LocalContext.current.resources.getString(R.string.fluentui_enabled)
                                    else
                                        LocalContext.current.resources.getString(R.string.fluentui_disabled),
                                    trailingAccessoryContent = {
                                        ToggleSwitch(
                                            modifier = Modifier.testTag(TEXT_FIELD_ERROR_PARAM),
                                            onValueChange = {
                                                errorText = it
                                            },
                                            checkedState = errorText
                                        )
                                    }
                                )
                            }
                            item {
                                ListItem.Item(
                                    text = "Read Only",
                                    subText = if (readOnly)
                                        "Enabled"
                                    else
                                        "Disabled",
                                    trailingAccessoryContent = {
                                        ToggleSwitch(
                                            modifier = Modifier.testTag(TEXT_FIELD_READONLY_PARAM),
                                            onValueChange = {
                                                readOnly = it
                                            },
                                            checkedState = readOnly
                                        )
                                    }
                                )
                            }
                            item {
                                ListItem.Item(
                                    text = "Enabled",
                                    subText = if (enabled)
                                        "Enabled"
                                    else
                                        "Disabled",
                                    trailingAccessoryContent = {
                                        ToggleSwitch(
                                            modifier = Modifier.testTag(TEXT_FIELD_ENABLED_PARAM),
                                            onValueChange = {
                                                enabled = it
                                            },
                                            checkedState = enabled
                                        )
                                    }
                                )
                            }
                        }
                    }

                    val focusManager = LocalFocusManager.current
                    Box(
                        contentAlignment = Alignment.Center,
                        modifier = Modifier
                            .fillMaxSize()
                            .clickable { focusManager.clearFocus() }) {
                        TextField(
                            value,
                            { value = it },
                            readOnly = readOnly,
                            enabled = enabled,
                            hintText = if (hintText) resources.getString(R.string.fluentui_hint) else null,
                            label = if (label) resources.getString(R.string.fluentui_label) else null,
                            assistiveText = if (assistiveText) resources.getString(R.string.fluentui_assistive_text) else null,
                            leadingRestIcon = if (leftIcon) Icons.Outlined.Email else null,
                            leadingFocusIcon = if (leftIcon) Icons.Filled.Email else null,
                            trailingAccessoryText = if (secondaryText) resources.getString(R.string.fluentui_secondary) else null,
                            errorString = if (errorText) resources.getString(R.string.fluentui_error_string) else null,
                            trailingAccessoryIcon = FluentIcon(
                                SearchBarIcons.Dismisscircle,
                                contentDescription = resources.getString(R.string.fluentui_clear_text)
                            ),
                            keyboardOptions = KeyboardOptions(keyboardType = keyboardType),
                            keyboardActions = KeyboardActions(onAny = { focusManager.clearFocus() }),
                            visualTransformation = if (passwordMode) PasswordVisualTransformation() else VisualTransformation.None
                        )
                    }
                }
            }
        }
    }
}
```

## File: src/main/java/com/microsoft/fluentuidemo/demos/V2ToolTipActivity.kt
```kotlin
package com.microsoft.fluentuidemo.demos

import android.content.Context
import android.os.Bundle
import android.view.LayoutInflater
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.BoxWithConstraints
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.IntrinsicSize
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.layout.widthIn
import androidx.compose.foundation.layout.wrapContentWidth
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.text.BasicTextField
import androidx.compose.foundation.text.KeyboardActions
import androidx.compose.foundation.text.KeyboardOptions
import androidx.compose.foundation.verticalScroll
import androidx.compose.runtime.Composable
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.ui.Alignment
import androidx.compose.ui.ExperimentalComposeUiApi
import androidx.compose.ui.Modifier
import androidx.compose.ui.input.key.Key
import androidx.compose.ui.input.key.key
import androidx.compose.ui.input.key.onKeyEvent
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.semantics.testTagsAsResourceId
import androidx.compose.ui.text.input.KeyboardType
import androidx.compose.ui.unit.DpOffset
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.tokenized.controls.Button
import com.microsoft.fluentui.tokenized.controls.TextField
import com.microsoft.fluentui.tokenized.divider.Divider
import com.microsoft.fluentui.tokenized.listitem.ListItem
import com.microsoft.fluentui.tokenized.notification.ToolTipBox
import com.microsoft.fluentui.tokenized.notification.TooltipState
import com.microsoft.fluentui.tokenized.notification.rememberTooltipState
import com.microsoft.fluentui.util.isAccessibilityEnabled
import com.microsoft.fluentuidemo.DemoActivity
import com.microsoft.fluentuidemo.R
import com.microsoft.fluentuidemo.V2DemoActivity
import com.microsoft.fluentuidemo.databinding.V2ActivityComposeBinding
import com.microsoft.fluentuidemo.util.getAndroidViewAsContent
import com.microsoft.fluentuidemo.util.invokeToast
import kotlinx.coroutines.launch

class V2ToolTipActivity : V2DemoActivity() {

    init {
        setupActivity(this)
    }

    override val paramsUrl = "https://github.com/microsoft/fluentui-android/wiki/Controls#params-40"
    override val controlTokensUrl = "https://github.com/microsoft/fluentui-android/wiki/Controls#control-tokens-38"

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        setActivityContent {
            CreateToolTipActivityUI(this)
        }
    }
}
val TOOLTIP_ACTIVITY_X_OFFSET_TEXTFIELD_TAG = "xOffset"
val TOOLTIP_ACTIVITY_Y_OFFSET_TEXTFIELD_TAG = "yOffset"

@OptIn(ExperimentalComposeUiApi::class)
@Composable
fun CreateToolTipActivityUI(context: Context) {
    val xOffsetState = rememberSaveable { mutableStateOf("0") }
    val yOffsetState = rememberSaveable { mutableStateOf("0") }
    val tipOffsetState = rememberSaveable { mutableStateOf("0") }
    val toolTipTitle =
        rememberSaveable { mutableStateOf(context.getString(R.string.tooltip_title)) }
    val toolTipText =
        rememberSaveable { mutableStateOf(context.getString(R.string.tooltip_text)) }

    val xOffset =
        if (xOffsetState.value.toFloatOrNull() == null) 0.dp else xOffsetState.value.toFloat().dp
    val yOffset =
        if (yOffsetState.value.toFloatOrNull() == null) 0.dp else yOffsetState.value.toFloat().dp
    val tipOffset =
        if (tipOffsetState.value.toFloatOrNull() == null) 0.dp else tipOffsetState.value.toFloat().dp

    val action = stringResource(id = R.string.tooltip_dismiss_message)
    val scope = rememberCoroutineScope()
    var currentTooltipState: TooltipState? = null
    Column(
        verticalArrangement = Arrangement.SpaceBetween,
        horizontalAlignment = Alignment.CenterHorizontally,
        modifier = Modifier
            .fillMaxSize()
            .padding(16.dp)
            .verticalScroll(rememberScrollState())
            .semantics {
                testTagsAsResourceId = true
            }
    ) {
        //Top
        Row(
            horizontalArrangement = Arrangement.SpaceBetween,
            modifier = Modifier.fillMaxWidth()
        ) {
            //Top Left
            val topLeftTooltipState = rememberTooltipState()
            val topStartString = stringResource(id = R.string.tooltip_top_start)
            ToolTipBox(
                title = toolTipTitle.value,
                text = toolTipText.value,
                tooltipState = topLeftTooltipState,
                offset = DpOffset(x = xOffset, y = yOffset),
                tipOffset = tipOffset,
                focusable = context.isAccessibilityEnabled,
                onDismissRequest = { invokeToast(topStartString, context, action) }) {
                Button(
                    onClick = { scope.launch {
                        topLeftTooltipState.show()
                    } },
                    text = stringResource(id = R.string.tooltip_button),
                    modifier = Modifier.testTag(topStartString).onKeyEvent {
                        if (it.key == Key.Escape) {
                            topLeftTooltipState?.let { tooltipState ->
                                tooltipState.dismiss()
                            }
                        }
                        false
                    },
                )
            }

            //Top Right
            val topRightTooltipState = rememberTooltipState()
            val topEndString = stringResource(id = R.string.tooltip_top_end)
            ToolTipBox(
                title = toolTipTitle.value,
                text = toolTipText.value,
                tooltipState = topRightTooltipState,
                offset = DpOffset(x = xOffset, y = yOffset),
                focusable = context.isAccessibilityEnabled,
                onDismissRequest = { invokeToast(topEndString, context, action) }) {
                Button(
                    onClick = { scope.launch { topRightTooltipState.show() } },
                    text = stringResource(id = R.string.tooltip_button),
                    modifier = Modifier.testTag(topEndString).onKeyEvent {
                        if (it.key == Key.Escape) {
                            topRightTooltipState?.let { tooltipState ->
                                tooltipState.dismiss()
                            }
                        }
                        false
                    },
                )
            }
        }
        //Config

        Column {
            ListItem.Header(title = context.getString(R.string.menu_xOffset),
                trailingAccessoryContent = {
                    Box(Modifier.widthIn(100.dp,150.dp)) {
                        TextField(
                            value = xOffsetState.value,
                            onValueChange = { xOffsetState.value = it.trim() },
                            modifier = Modifier.testTag(TOOLTIP_ACTIVITY_X_OFFSET_TEXTFIELD_TAG),
                            keyboardOptions = KeyboardOptions(keyboardType = KeyboardType.Number)
                        )
                    }
                }
            )
            ListItem.Header(title = context.getString(R.string.menu_yOffset),
                trailingAccessoryContent = {
                    Box(Modifier.widthIn(100.dp,150.dp)) {
                        TextField(
                            value = yOffsetState.value,
                            onValueChange = { yOffsetState.value = it.trim() },
                            modifier = Modifier.testTag(TOOLTIP_ACTIVITY_Y_OFFSET_TEXTFIELD_TAG),
                            keyboardOptions = KeyboardOptions(keyboardType = KeyboardType.Number)
                        )
                    }
                })
            ListItem.Header(title = context.getString(R.string.menu_tipOffset),
                trailingAccessoryContent = {
                    Box(Modifier.widthIn(100.dp,150.dp)) {
                        TextField(
                            value = tipOffsetState.value,
                            onValueChange = { tipOffsetState.value = it.trim() },
                            keyboardOptions = KeyboardOptions(keyboardType = KeyboardType.Number)
                        )
                    }
                }
            )
            ListItem.Header(title = context.getString(R.string.tooltip_title),
                trailingAccessoryContent = {
                    Box(Modifier.widthIn(100.dp,150.dp)) {
                        TextField(
                            value = toolTipTitle.value,
                            onValueChange = { toolTipTitle.value = it.trim() },
                            keyboardOptions = KeyboardOptions(keyboardType=KeyboardType.Text)
                        )
                    }
                })
            ListItem.Header(title = context.getString(R.string.tooltip_text),
                trailingAccessoryContent = {
                    Box(Modifier.widthIn(100.dp,150.dp)) {
                        TextField(
                            value = toolTipText.value,
                            onValueChange = { toolTipText.value = it.trim() },
                            keyboardOptions = KeyboardOptions(keyboardType = KeyboardType.Text)
                        )
                    }
                })
            Divider()
        }
        //Center with Customized Content
        val centerCustomizedTooltipState = rememberTooltipState()
        val customCenterString = stringResource(id = R.string.tooltip_custom_center)
        ToolTipBox(
            tooltipContent = {
                getAndroidViewAsContent(ContentType.WRAPPED_SIZE_CONTENT)() {}
            },
            tooltipState = centerCustomizedTooltipState,
            offset = DpOffset(x = xOffset, y = yOffset),
            focusable = context.isAccessibilityEnabled,
            onDismissRequest = {
                invokeToast(
                    customCenterString,
                    context,
                    action
                )
            }) {
            Button(
                onClick = { scope.launch { centerCustomizedTooltipState.show() } },
                text = stringResource(id = R.string.tooltip_custom_content),
                modifier = Modifier.testTag(customCenterString).onKeyEvent {
                    if (it.key == Key.Escape) {
                        centerCustomizedTooltipState?.let { tooltipState ->
                            tooltipState.dismiss()
                        }
                    }
                    false
                },
            )
        }

        val centerTooltipState = rememberTooltipState()
        val centerString = stringResource(id = R.string.tooltip_center)
        ToolTipBox(
            title = toolTipTitle.value,
            text = toolTipText.value,
            tooltipState = centerTooltipState,
            offset = DpOffset(x = xOffset, y = yOffset),
            focusable = context.isAccessibilityEnabled,
            onDismissRequest = { invokeToast(centerString, context, action) }) {
            Button(
                onClick = { scope.launch { centerTooltipState.show() } },
                text = stringResource(id = R.string.tooltip_button),
                modifier = Modifier.testTag(centerString).onKeyEvent {
                    if (it.key == Key.Escape) {
                        centerTooltipState?.let { tooltipState ->
                            tooltipState.dismiss()
                        }
                    }
                    false
                },
            )
        }

        //Bottom
        Row(
            horizontalArrangement = Arrangement.SpaceBetween,
            modifier = Modifier.fillMaxWidth()
        ) {
            //Bottom Left
            val bottomLeftTooltipState = rememberTooltipState()
            val bottomStartString = stringResource(id = R.string.tooltip_bottom_start)
            ToolTipBox(
                title = toolTipTitle.value,
                text = toolTipText.value,
                tooltipState = bottomLeftTooltipState,
                offset = DpOffset(x = xOffset, y = yOffset),
                focusable = context.isAccessibilityEnabled,
                onDismissRequest = { invokeToast(bottomStartString, context, action) }) {
                Button(
                    onClick = { scope.launch { bottomLeftTooltipState.show() } },
                    text = stringResource(id = R.string.tooltip_button),
                    modifier = Modifier.testTag(bottomStartString).onKeyEvent {
                        if (it.key == Key.Escape) {
                            bottomLeftTooltipState?.let { tooltipState ->
                                tooltipState.dismiss()
                            }
                        }
                        false
                    },
                )
            }

            //Bottom Right
            val bottomRightTooltipState = rememberTooltipState()
            val bottomEndString = stringResource(id = R.string.tooltip_bottom_end)
            ToolTipBox(
                title = toolTipTitle.value,
                text = toolTipText.value,
                tooltipState = bottomRightTooltipState,
                offset = DpOffset(x = xOffset, y = yOffset),
                focusable = context.isAccessibilityEnabled,
                onDismissRequest = { invokeToast(bottomEndString, context, action) }) {
                Button(
                    onClick = { scope.launch { bottomRightTooltipState.show() } },
                    text = stringResource(id = R.string.tooltip_button),
                    modifier = Modifier.testTag(bottomEndString).onKeyEvent {
                        if (it.key == Key.Escape) {
                            bottomRightTooltipState?.let { tooltipState ->
                                tooltipState.dismiss()
                            }
                        }
                        false
                    },
                )
            }
        }
    }
}
```

## File: src/main/java/com/microsoft/fluentuidemo/demos/views/Cell.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentuidemo.demos.views

import android.content.Context
import android.util.AttributeSet
import android.view.View
import android.widget.TextView
import androidx.core.view.AccessibilityDelegateCompat
import androidx.core.view.ViewCompat
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat
import com.microsoft.fluentui.view.TemplateView
import com.microsoft.fluentuidemo.R

enum class CellOrientation {
    HORIZONTAL,
    VERTICAL
}

// Example of a TemplateView subclass

class Cell : TemplateView {
    companion object {
        private val DEFAULT_ORIENTATION = CellOrientation.HORIZONTAL
    }

    var title: String = ""
        set(value) {
            if (field == value)
                return
            field = value
            updateTemplate()
        }
    var description: String = ""
        set(value) {
            if (field == value)
                return
            field = value
            updateTemplate()
        }

    var orientation: CellOrientation = DEFAULT_ORIENTATION
        set(value) {
            if (field == value)
                return
            field = value
            invalidateTemplate()
        }

    @JvmOverloads
    constructor(context: Context, attrs: AttributeSet? = null, defStyleAttr: Int = 0) : super(
        context,
        attrs,
        defStyleAttr
    ) {
        if (attrs != null) {
            val styledAttrs = context.obtainStyledAttributes(attrs, R.styleable.Cell)
            title = styledAttrs.getString(R.styleable.Cell_title)!!
            description = styledAttrs.getString(R.styleable.Cell_description)!!
            val orientationOrdinal =
                styledAttrs.getInt(R.styleable.Cell_orientation, DEFAULT_ORIENTATION.ordinal)
            orientation = CellOrientation.values()[orientationOrdinal]
            styledAttrs.recycle()

            ViewCompat.setAccessibilityDelegate(this, object : AccessibilityDelegateCompat() {
                override fun onInitializeAccessibilityNodeInfo(
                    v: View,
                    info: AccessibilityNodeInfoCompat
                ) {
                    super.onInitializeAccessibilityNodeInfo(v, info)
                    info.roleDescription = "Cell"
                }
            }
            )
        }
    }

    // Template

    override val templateId: Int
        get() = when (orientation) {
            CellOrientation.HORIZONTAL -> R.layout.template_cell_horizontal
            CellOrientation.VERTICAL -> R.layout.template_cell_vertical
        }

    private var titleView: TextView? = null
    private var descriptionView: TextView? = null

    override fun onTemplateLoaded() {
        super.onTemplateLoaded()
        titleView = findViewInTemplateById(R.id.cell_title)
        descriptionView = findViewInTemplateById(R.id.cell_description)
        updateTemplate()
    }

    private fun updateTemplate() {
        titleView?.text = title
        descriptionView?.text = description
    }
}
```

## File: src/main/java/com/microsoft/fluentuidemo/icons/__ListItemIcons.kt
```kotlin
package com.microsoft.fluentuidemo.icons

import androidx.compose.ui.graphics.vector.ImageVector
import com.microsoft.fluentuidemo.icons.listitemicons.*
import kotlin.collections.List as ____KtList

object ListItemIcons

private var __AllIcons: ____KtList<ImageVector>? = null

public val ListItemIcons.AllIcons: ____KtList<ImageVector>
  get() {
    if (__AllIcons != null) {
      return __AllIcons!!
    }
    __AllIcons= listOf(Folder40, Chevron)
    return __AllIcons!!
  }
```

## File: src/main/java/com/microsoft/fluentuidemo/icons/listitemicons/Chevron.kt
```kotlin
package com.microsoft.fluentuidemo.icons.listitemicons

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentuidemo.icons.ListItemIcons

public val ListItemIcons.Chevron: ImageVector
    get() {
        if (_chevron != null) {
            return _chevron!!
        }
        _chevron = Builder(name = "Chevron", defaultWidth = 12.0.dp, defaultHeight = 12.0.dp,
                viewportWidth = 12.0f, viewportHeight = 12.0f).apply {
            path(fill = SolidColor(Color(0xFF808080)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(4.6465f, 2.1465f)
                curveTo(4.4512f, 2.3417f, 4.4512f, 2.6583f, 4.6465f, 2.8535f)
                lineTo(7.7929f, 6.0f)
                lineTo(4.6465f, 9.1465f)
                curveTo(4.4512f, 9.3417f, 4.4512f, 9.6583f, 4.6465f, 9.8535f)
                curveTo(4.8417f, 10.0488f, 5.1583f, 10.0488f, 5.3535f, 9.8535f)
                lineTo(8.8535f, 6.3535f)
                curveTo(9.0488f, 6.1583f, 9.0488f, 5.8417f, 8.8535f, 5.6465f)
                lineTo(5.3535f, 2.1465f)
                curveTo(5.1583f, 1.9512f, 4.8417f, 1.9512f, 4.6465f, 2.1465f)
                close()
            }
        }
        .build()
        return _chevron!!
    }

private var _chevron: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentuidemo/icons/listitemicons/Folder40.kt
```kotlin
package com.microsoft.fluentuidemo.icons.listitemicons

import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.graphics.Brush.Companion.linearGradient
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentuidemo.icons.ListItemIcons

public val ListItemIcons.Folder40: ImageVector
    get() {
        if (_folder40 != null) {
            return _folder40!!
        }
        _folder40 = Builder(name = "Folder40", defaultWidth = 40.0.dp, defaultHeight = 40.0.dp,
                viewportWidth = 40.0f, viewportHeight = 40.0f).apply {
            path(fill = SolidColor(Color(0xFFFFB900)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(19.0f, 10.0f)
                lineTo(16.88f, 7.88f)
                curveTo(16.3179f, 7.3172f, 15.5554f, 7.0007f, 14.76f, 7.0f)
                horizontalLineTo(4.0f)
                curveTo(3.4696f, 7.0f, 2.9609f, 7.2107f, 2.5858f, 7.5858f)
                curveTo(2.2107f, 7.9609f, 2.0f, 8.4696f, 2.0f, 9.0f)
                verticalLineTo(31.0f)
                curveTo(2.0f, 32.1046f, 2.8954f, 33.0f, 4.0f, 33.0f)
                horizontalLineTo(36.0f)
                curveTo(37.1046f, 33.0f, 38.0f, 32.1046f, 38.0f, 31.0f)
                verticalLineTo(12.0f)
                curveTo(38.0f, 10.8954f, 37.1046f, 10.0f, 36.0f, 10.0f)
                horizontalLineTo(19.0f)
                close()
            }
            path(fill = SolidColor(Color(0xFFFFD75E)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(19.0f, 10.0f)
                lineTo(16.88f, 12.12f)
                curveTo(16.3179f, 12.6828f, 15.5554f, 12.9993f, 14.76f, 13.0f)
                horizontalLineTo(2.0f)
                verticalLineTo(31.0f)
                curveTo(2.0f, 32.1046f, 2.8954f, 33.0f, 4.0f, 33.0f)
                horizontalLineTo(36.0f)
                curveTo(37.1046f, 33.0f, 38.0f, 32.1046f, 38.0f, 31.0f)
                verticalLineTo(12.0f)
                curveTo(38.0f, 10.8954f, 37.1046f, 10.0f, 36.0f, 10.0f)
                horizontalLineTo(19.0f)
                close()
            }
            path(fill = linearGradient(0.0f to Color(0x02FFFFFF), 1.0f to Color(0x4CFFD75E), start =
                    Offset(2.0f,10.0f), end = Offset(2.0f,33.0f)), stroke = null, strokeLineWidth =
                    0.0f, strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(19.0f, 10.0f)
                lineTo(16.88f, 12.12f)
                curveTo(16.3179f, 12.6828f, 15.5554f, 12.9993f, 14.76f, 13.0f)
                horizontalLineTo(2.0f)
                verticalLineTo(31.0f)
                curveTo(2.0f, 32.1046f, 2.8954f, 33.0f, 4.0f, 33.0f)
                horizontalLineTo(36.0f)
                curveTo(37.1046f, 33.0f, 38.0f, 32.1046f, 38.0f, 31.0f)
                verticalLineTo(12.0f)
                curveTo(38.0f, 10.8954f, 37.1046f, 10.0f, 36.0f, 10.0f)
                horizontalLineTo(19.0f)
                close()
            }
            path(fill = SolidColor(Color(0xFFffffff)), stroke = null, fillAlpha = 0.4f, strokeAlpha
                    = 0.4f, strokeLineWidth = 0.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(16.88f, 12.12f)
                curveTo(16.3179f, 12.6828f, 15.5554f, 12.9993f, 14.76f, 13.0f)
                horizontalLineTo(2.0f)
                verticalLineTo(14.0f)
                horizontalLineTo(15.05f)
                curveTo(15.9764f, 14.008f, 16.8683f, 13.6484f, 17.53f, 13.0f)
                lineTo(20.53f, 10.0f)
                horizontalLineTo(19.0f)
                lineTo(16.88f, 12.12f)
                close()
            }
            path(fill = SolidColor(Color(0xFFE67628)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(4.0f, 33.0f)
                horizontalLineTo(36.0f)
                curveTo(36.8861f, 33.0013f, 37.6675f, 32.4194f, 37.92f, 31.57f)
                curveTo(37.5695f, 31.8466f, 37.1365f, 31.998f, 36.69f, 32.0f)
                horizontalLineTo(3.32f)
                curveTo(2.8701f, 32.0002f, 2.4332f, 31.8487f, 2.08f, 31.57f)
                curveTo(2.3326f, 32.4194f, 3.1139f, 33.0013f, 4.0f, 33.0f)
                close()
            }
        }
        .build()
        return _folder40!!
    }

private var _folder40: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentuidemo/util/AvatarUtils.kt
```kotlin
package com.microsoft.fluentuidemo.util

import android.content.Context
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.graphics.drawable.Drawable
import android.net.Uri
import androidx.core.content.ContextCompat
import com.microsoft.fluentui.persona.IAvatar
import com.microsoft.fluentuidemo.R

fun createAvatarList(context: Context?): ArrayList<IAvatar> {
    val context = context ?: return arrayListOf()
    return arrayListOf(
            createAvatar(
                    context.getString(R.string.persona_name_daisy_phillips),
                    imageDrawable = ContextCompat.getDrawable(context, R.drawable.avatar_daisy_phillips),
                    email = context.getString(R.string.persona_email_daisy_phillips)
            ),
            createAvatar(
                    context.getString(R.string.persona_name_allan_munger) + context.getString(R.string.persona_truncation),
                    email = context.getString(R.string.persona_email_allan_munger)
            ),
            createAvatar(
                    context.getString(R.string.persona_name_kat_larsson),
                    imageBitmap = BitmapFactory.decodeResource(context.resources, R.drawable.avatar_kat_larsson),
                    email = context.getString(R.string.persona_email_kat_larsson)
            ),
            createAvatar(
                    context.getString(R.string.persona_name_ashley_mccarthy)
            ),
            createAvatar(
                    context.getString(R.string.persona_name_miguel_garcia),
                    email = context.getString(R.string.persona_email_miguel_garcia)
            )
    )
}

fun createAvatarNameList(context: Context?): ArrayList<IAvatar> {
    val context = context ?: return arrayListOf()
    return arrayListOf(
            createAvatar(
                    context.getString(R.string.persona_name_amanda_brady),
                    email = context.getString(R.string.persona_email_amanda_brady)
            ),
            createAvatar(
                    context.getString(R.string.persona_subtitle_researcher),
                    email = context.getString(R.string.persona_email_lydia_bauer)
            ),
            createAvatar(
                    context.getString(R.string.persona_name_daisy_phillips),
                    email = context.getString(R.string.persona_email_daisy_phillips)
            ),
            createAvatar(
                    context.getString(R.string.persona_name_allan_munger) + context.getString(R.string.persona_truncation),
                    email = context.getString(R.string.persona_email_allan_munger)
            ),
            createAvatar(
                    context.getString(R.string.persona_name_kat_larsson),
                    email = context.getString(R.string.persona_email_kat_larsson)
            ),
            createAvatar(
                    context.getString(R.string.persona_name_ashley_mccarthy)
            ),
            createAvatar(
                    context.getString(R.string.persona_name_miguel_garcia),
                    email = context.getString(R.string.persona_email_miguel_garcia)
            ),
            createAvatar(
                    context.getString(R.string.persona_name_carole_poland),
                    email = context.getString(R.string.persona_email_carole_poland)
            ),
            createAvatar(
                    context.getString(R.string.persona_name_mona_kane),
                    email = context.getString(R.string.persona_email_mona_kane)
            )
    )
}

fun createSmallAvatarList(context: Context?): ArrayList<IAvatar> {
    val context = context ?: return arrayListOf()
    return arrayListOf(
            createAvatar(
                    context.getString(R.string.persona_name_amanda_brady),
                    imageDrawable = ContextCompat.getDrawable(context, R.drawable.avatar_amanda_brady),
                    email = context.getString(R.string.persona_email_amanda_brady)
            ),
            createAvatar(
                    context.getString(R.string.persona_name_amanda_brady),
                    email = context.getString(R.string.persona_email_amanda_brady)
            ),
            createAvatar(
                    context.getString(R.string.persona_subtitle_researcher),
                    email = context.getString(R.string.persona_email_lydia_bauer)
            )
    )
}

fun createImageAvatarList(context: Context?): ArrayList<IAvatar> {
    val context = context ?: return arrayListOf()
    return arrayListOf(
            createAvatar(
                    context.getString(R.string.persona_name_amanda_brady),
                    imageDrawable = ContextCompat.getDrawable(context, R.drawable.avatar_amanda_brady),
                    email = context.getString(R.string.persona_email_amanda_brady)
            ),
            createAvatar(
                    context.getString(R.string.persona_name_daisy_phillips),
                    imageDrawable = ContextCompat.getDrawable(context, R.drawable.avatar_daisy_phillips),
                    email = context.getString(R.string.persona_email_daisy_phillips)
            ),
            createAvatar(
                    context.getString(R.string.persona_name_elvia_atkins),
                    imageDrawable = ContextCompat.getDrawable(context, R.drawable.avatar_elvia_atkins),
                    email = context.getString(R.string.persona_email_elvia_atkins)
            ),
            createAvatar(
                    context.getString(R.string.persona_name_colin_ballinger),
                    imageDrawable = ContextCompat.getDrawable(context, R.drawable.avatar_colin_ballinger),
                    email = context.getString(R.string.persona_email_colin_ballinger)
            ),
            createAvatar(
                    context.getString(R.string.persona_name_katri_ahokas),
                    imageBitmap = BitmapFactory.decodeResource(context.resources, R.drawable.avatar_katri_ahokas),
                    email = context.getString(R.string.persona_email_katri_ahokas)
            )
    )
}
fun createAvatar(
        name: String,
        imageResource: Int? = null,
        imageDrawable: Drawable? = null,
        imageBitmap: Bitmap? = null,
        imageUri: Uri? = null,
        imageBackgroundColor: Int? = null,
        email: String = ""
): IAvatar {
    val avatar = Avatar(name)
    avatar.email = email
    avatar.avatarImageResourceId = imageResource
    avatar.avatarImageDrawable = imageDrawable
    avatar.avatarImageBitmap = imageBitmap
    avatar.avatarImageUri = imageUri
    avatar.avatarBackgroundColor = imageBackgroundColor
    // We can set any description here
    avatar.avatarContentDescriptionLabel = name
    return avatar
}

data class Avatar(override var name: String) : IAvatar {
    override var email: String = ""
    override var avatarImageBitmap: Bitmap? = null
    override var avatarImageDrawable: Drawable? = null
    override var avatarImageResourceId: Int? = null
    override var avatarImageUri: Uri? = null
    override var avatarBackgroundColor: Int? = null
    override var avatarContentDescriptionLabel: String = ""
}
```

## File: src/main/java/com/microsoft/fluentuidemo/util/Content.kt
```kotlin
package com.microsoft.fluentuidemo.util

import android.app.Activity
import android.view.LayoutInflater
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.semantics.clearAndSetSemantics
import androidx.compose.ui.semantics.contentDescription
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import androidx.compose.ui.viewinterop.AndroidView
import com.microsoft.fluentui.persona.IPersona
import com.microsoft.fluentui.persona.PersonaListView
import com.microsoft.fluentui.theme.token.FluentAliasTokens
import com.microsoft.fluentui.theme.token.controlTokens.BehaviorType
import com.microsoft.fluentui.theme.token.controlTokens.ButtonSize
import com.microsoft.fluentui.theme.token.controlTokens.ButtonStyle
import com.microsoft.fluentui.tokenized.controls.Button
import com.microsoft.fluentui.tokenized.controls.Label
import com.microsoft.fluentui.tokenized.controls.RadioButton
import com.microsoft.fluentui.tokenized.drawer.Drawer
import com.microsoft.fluentui.tokenized.drawer.rememberDrawerState
import com.microsoft.fluentui.util.activity
import com.microsoft.fluentuidemo.R
import com.microsoft.fluentuidemo.demos.ContentType
import kotlinx.coroutines.launch

@Composable
fun PrimarySurfaceContent(
    onClick: () -> Unit,
    text: String,
    height: Dp = 20.dp,
) {
    Column(
        horizontalAlignment = Alignment.CenterHorizontally
    ) {
        Spacer(Modifier.height(height))
        Button(
            style = ButtonStyle.Button,
            size = ButtonSize.Medium,
            text = text,
            onClick = onClick
        )
    }
}

@Composable
fun getDynamicListGeneratorAsContent(): @Composable ((close: () -> Unit) -> Unit) {
    return { _ ->
        val no = remember { mutableStateOf(0) }
        LazyColumn(
            horizontalAlignment = Alignment.CenterHorizontally, modifier = Modifier
                .fillMaxWidth()
        ) {
            item {
                Button(
                    style = ButtonStyle.Button,
                    size = ButtonSize.Medium,
                    text = "Click to create random size list",
                    onClick = { no.value = (40 * Math.random()).toInt() })
            }
            repeat(no.value) {
                item {
                    Spacer(Modifier.height(10.dp))
                    Label(
                        text = "Item $it",
                        textStyle = FluentAliasTokens.TypographyTokens.Caption1
                    )
                }
            }
        }
    }
}

@Composable
fun getAndroidViewAsContent(
    contentType: ContentType = ContentType.FULL_SCREEN_SCROLLABLE_CONTENT
): @Composable ((close: () -> Unit) -> Unit) {
    return { _ ->
        AndroidView(
            modifier = Modifier
                .fillMaxWidth()
                .verticalScroll(rememberScrollState()),
            factory = {
                val view = LayoutInflater.from(it as Activity).inflate(
                    R.layout.demo_drawer_content,
                    null
                ).rootView
                val personaList = createPersonaList(it)
                (view as PersonaListView).personas = when (contentType) {
                    ContentType.FULL_SCREEN_SCROLLABLE_CONTENT -> personaList
                    ContentType.EXPANDABLE_SIZE_CONTENT -> personaList.take(9) as ArrayList<IPersona>
                    ContentType.WRAPPED_SIZE_CONTENT -> personaList.take(2) as ArrayList<IPersona>
                }
                view
            }
        ) {}
    }
}

@Composable
fun getDrawerAsContent(): @Composable ((close: () -> Unit) -> Unit) {
    return { close ->
        Column(
            verticalArrangement = Arrangement.spacedBy(8.dp),
            modifier = Modifier.padding(start = 8.dp)
        ) {
            Button(
                style = ButtonStyle.Button,
                size = ButtonSize.Medium,
                text = stringResource(id = R.string.drawer_close),
                onClick = close
            )

            val scopeB = rememberCoroutineScope()
            val drawerStateB = rememberDrawerState()

            var selectedBehaviorType by remember { mutableStateOf(BehaviorType.BOTTOM_SLIDE_OVER) }
            Label(
                text = stringResource(id = R.string.drawer_select_drawer_type),
                textStyle = FluentAliasTokens.TypographyTokens.Title1
            )
            val topText = stringResource(id = R.string.drawer_top)
            val bottomText = stringResource(id = R.string.drawer_bottom)
            val leftSlideOverText = stringResource(id = R.string.drawer_left_slide_over)
            val rightSlideOverText = stringResource(id = R.string.drawer_right_slide_over)
            val bottomSlideOverText = stringResource(id = R.string.drawer_bottom_slide_over)
            Row(modifier = Modifier
                .clickable { selectedBehaviorType = BehaviorType.TOP }
                .clearAndSetSemantics { contentDescription = topText }
            ) {
                RadioButton(
                    onClick = {
                        selectedBehaviorType = BehaviorType.TOP
                    },
                    selected = selectedBehaviorType == BehaviorType.TOP
                )
                Label(text = topText, textStyle = FluentAliasTokens.TypographyTokens.Caption1)
            }
            Row(modifier = Modifier
                .clickable { selectedBehaviorType = BehaviorType.BOTTOM }
                .clearAndSetSemantics { contentDescription = bottomText }
            ) {
                RadioButton(
                    onClick = {
                        selectedBehaviorType = BehaviorType.BOTTOM
                    },
                    selected = selectedBehaviorType == BehaviorType.BOTTOM
                )
                Label(text = bottomText, textStyle = FluentAliasTokens.TypographyTokens.Caption1)
            }
            Row(modifier = Modifier
                .clickable { selectedBehaviorType = BehaviorType.LEFT_SLIDE_OVER }
                .clearAndSetSemantics { contentDescription = leftSlideOverText }
            ) {
                RadioButton(
                    onClick = {
                        selectedBehaviorType = BehaviorType.LEFT_SLIDE_OVER
                    },
                    selected = selectedBehaviorType == BehaviorType.LEFT_SLIDE_OVER
                )
                Label(
                    text = leftSlideOverText,
                    textStyle = FluentAliasTokens.TypographyTokens.Caption1
                )
            }
            Row(modifier = Modifier
                .clickable { selectedBehaviorType = BehaviorType.RIGHT_SLIDE_OVER }
                .clearAndSetSemantics { contentDescription = rightSlideOverText }
            ) {
                RadioButton(
                    onClick = {
                        selectedBehaviorType = BehaviorType.RIGHT_SLIDE_OVER
                    },
                    selected = selectedBehaviorType == BehaviorType.RIGHT_SLIDE_OVER
                )
                Label(
                    text = rightSlideOverText,
                    textStyle = FluentAliasTokens.TypographyTokens.Caption1
                )
            }
            Row(modifier = Modifier
                .clickable { selectedBehaviorType = BehaviorType.BOTTOM_SLIDE_OVER }
                .clearAndSetSemantics { contentDescription = bottomSlideOverText }
            ) {
                RadioButton(
                    onClick = {
                        selectedBehaviorType = BehaviorType.BOTTOM_SLIDE_OVER
                    },
                    selected = selectedBehaviorType == BehaviorType.BOTTOM_SLIDE_OVER
                )
                Label(
                    text = bottomSlideOverText,
                    textStyle = FluentAliasTokens.TypographyTokens.Caption1
                )
            }

            //Button on Outer Drawer Surface
            PrimarySurfaceContent(
                onClick = {
                    scopeB.launch {
                        drawerStateB.open()
                    }
                },
                text = stringResource(id = R.string.drawer_open)
            )
            Drawer(
                drawerState = drawerStateB,
                behaviorType = selectedBehaviorType,
                drawerContent = {
                    getAndroidViewAsContent()()
                    {
                        scopeB.launch {
                            drawerStateB.close()
                        }
                    }

                }
            )
        }
    }
}
```

## File: src/main/java/com/microsoft/fluentuidemo/util/DemoUtils.kt
```kotlin
package com.microsoft.fluentuidemo.util

import android.content.Context
import android.graphics.Bitmap
import android.graphics.Canvas
import android.view.View
import android.view.ViewGroup
import android.view.WindowManager
import android.widget.Toast
import com.microsoft.fluentuidemo.R

fun createBitmapFromLayout(view: View): Bitmap {
    view.measure(ViewGroup.LayoutParams.WRAP_CONTENT, WindowManager.LayoutParams.WRAP_CONTENT)
    val bitmap =
        Bitmap.createBitmap(view.measuredWidth, view.measuredHeight, Bitmap.Config.ARGB_8888)
    val canvas = Canvas(bitmap)
    view.layout(0, 0, view.measuredWidth, view.measuredHeight)
    view.draw(canvas)
    return bitmap
}

fun invokeToast(string: String, context: Context, action: String? = null) {
    val message = if (action == null) {
        "$string ${context.resources.getString(R.string.common_clicked)}"
    } else {
        "$string $action"
    }
    Toast.makeText(
        context,
        message,
        Toast.LENGTH_SHORT
    ).show()
}
```

## File: src/main/java/com/microsoft/fluentuidemo/util/PersonaUtils.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentuidemo.util

import android.content.ContentResolver
import android.content.Context
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.graphics.drawable.Drawable
import android.net.Uri
import androidx.core.content.ContextCompat
import com.microsoft.fluentui.persona.IPersona
import com.microsoft.fluentui.persona.Persona
import com.microsoft.fluentuidemo.R
import java.io.Serializable

fun createPersonaList(context: Context?): ArrayList<IPersona> {
    val context = context ?: return arrayListOf()
    return arrayListOf(
        createPersona(
            context.getString(R.string.persona_name_amanda_brady),
            context.getString(R.string.persona_subtitle_manager),
            imageDrawable = ContextCompat.getDrawable(context, R.drawable.avatar_amanda_brady),
            email = context.getString(R.string.persona_email_amanda_brady)
        ),
        createPersona(
            context.getString(R.string.persona_name_lydia_bauer),
            context.getString(R.string.persona_subtitle_researcher),
            email = context.getString(R.string.persona_email_lydia_bauer)
        ),
        createPersona(
            context.getString(R.string.persona_name_daisy_phillips),
            context.getString(R.string.persona_subtitle_designer),
            imageDrawable = ContextCompat.getDrawable(context, R.drawable.avatar_daisy_phillips),
            email = context.getString(R.string.persona_email_daisy_phillips)
        ),
        createPersona(
            context.getString(R.string.persona_name_allan_munger) + context.getString(R.string.persona_truncation),
            context.getString(R.string.persona_subtitle_manager),
            email = context.getString(R.string.persona_email_allan_munger)
        ),
        createPersona(
            context.getString(R.string.persona_name_kat_larsson),
            context.getString(R.string.persona_subtitle_designer),
            imageBitmap = BitmapFactory.decodeResource(context.resources, R.drawable.avatar_kat_larsson),
            email = context.getString(R.string.persona_email_kat_larsson)
        ),
        createPersona(
            context.getString(R.string.persona_name_ashley_mccarthy),
            context.getString(R.string.persona_subtitle_engineer)
        ),
        createPersona(
            context.getString(R.string.persona_name_miguel_garcia),
            context.getString(R.string.persona_subtitle_researcher),
            imageUri = getUriFromResource(context, R.drawable.avatar_miguel_garcia),
            email = context.getString(R.string.persona_email_miguel_garcia)
        ),
        createPersona(
            context.getString(R.string.persona_name_carole_poland),
            context.getString(R.string.persona_subtitle_researcher),
            email = context.getString(R.string.persona_email_carole_poland)
        ),
        createPersona(
            context.getString(R.string.persona_name_mona_kane),
            context.getString(R.string.persona_subtitle_designer),
            email = context.getString(R.string.persona_email_mona_kane)
        ),
        createPersona(
            context.getString(R.string.persona_name_carlos_slattery),
            context.getString(R.string.persona_subtitle_engineer),
            email = context.getString(R.string.persona_email_carlos_slattery)
        ),
        createPersona(
            context.getString(R.string.persona_name_wanda_howard),
            context.getString(R.string.persona_subtitle_engineer),
            email = context.getString(R.string.persona_email_wanda_howard)
        ),
        createPersona(
            context.getString(R.string.persona_name_tim_deboer),
            context.getString(R.string.persona_subtitle_researcher),
            email = context.getString(R.string.persona_email_tim_deboer)
        ),
        createPersona(
            context.getString(R.string.persona_name_robin_counts),
            context.getString(R.string.persona_subtitle_designer),
            email = context.getString(R.string.persona_email_robin_counts)
        ),
        createPersona(
            context.getString(R.string.persona_name_elliot_woodward),
            context.getString(R.string.persona_subtitle_designer),
            email = context.getString(R.string.persona_email_elliot_woodward)
        ),
        createPersona(
            context.getString(R.string.persona_name_cecil_folk),
            context.getString(R.string.persona_subtitle_manager),
            email = context.getString(R.string.persona_email_cecil_folk)
        ),
        createPersona(
            context.getString(R.string.persona_name_celeste_burton),
            context.getString(R.string.persona_subtitle_researcher),
            email = context.getString(R.string.persona_email_celeste_burton)
        ),
        createPersona(
            context.getString(R.string.persona_name_elvia_atkins),
            context.getString(R.string.persona_subtitle_designer),
            imageDrawable = ContextCompat.getDrawable(context, R.drawable.avatar_elvia_atkins),
            email = context.getString(R.string.persona_email_elvia_atkins)
        ),
        createPersona(
            context.getString(R.string.persona_name_colin_ballinger),
            context.getString(R.string.persona_subtitle_manager),
            imageDrawable = ContextCompat.getDrawable(context, R.drawable.avatar_colin_ballinger),
            email = context.getString(R.string.persona_email_colin_ballinger)
        ),
        createPersona(
            context.getString(R.string.persona_name_katri_ahokas),
            context.getString(R.string.persona_subtitle_designer),
            imageBitmap = BitmapFactory.decodeResource(context.resources, R.drawable.avatar_katri_ahokas),
            email = context.getString(R.string.persona_email_katri_ahokas)
        ),
        createPersona(
            context.getString(R.string.persona_name_henry_brill),
            context.getString(R.string.persona_subtitle_engineer),
            email = context.getString(R.string.persona_email_henry_brill)
        ),
        createPersona(
            context.getString(R.string.persona_name_johnie_mcconnell),
            context.getString(R.string.persona_subtitle_researcher),
            imageUri = getUriFromResource(context, R.drawable.avatar_johnie_mcconnell),
            email = context.getString(R.string.persona_email_johnie_mcconnell)
        ),
        createPersona(
            context.getString(R.string.persona_name_kevin_sturgis),
            context.getString(R.string.persona_subtitle_researcher),
            email = context.getString(R.string.persona_email_kevin_sturgis)
        ),
        createPersona(
            context.getString(R.string.persona_name_kristen_patterson),
            context.getString(R.string.persona_subtitle_designer),
            email = context.getString(R.string.persona_email_kristen_patterson)
        ),
        createPersona(
            context.getString(R.string.persona_name_charlotte_waltson),
            context.getString(R.string.persona_subtitle_engineer),
            email = context.getString(R.string.persona_email_charlotte_waltson)
        ),
        createPersona(
            context.getString(R.string.persona_name_erik_nason),
            context.getString(R.string.persona_subtitle_engineer),
            email = context.getString(R.string.persona_email_erik_nason)
        ),
        createPersona(
            context.getString(R.string.persona_name_isaac_fielder),
            context.getString(R.string.persona_subtitle_researcher),
            email = context.getString(R.string.persona_email_isaac_fielder)
        ),
        createPersona(
            context.getString(R.string.persona_name_mauricio_august),
            context.getString(R.string.persona_subtitle_designer),
            email = context.getString(R.string.persona_email_mauricio_august)
        ),
        createCustomPersona(context)
    )
}

private fun getUriFromResource(context: Context, avatarDrawable: Int): Uri? {
    return Uri.parse(ContentResolver.SCHEME_ANDROID_RESOURCE +
        "://" + context.resources.getResourcePackageName(avatarDrawable) +
        '/'.toString() + context.resources.getResourceTypeName(avatarDrawable) +
        '/'.toString() + context.resources.getResourceEntryName(avatarDrawable)
    )
}

private fun createPersona(
    name: String,
    subtitle: String,
    imageResource: Int? = null,
    imageDrawable: Drawable? = null,
    imageBitmap: Bitmap? = null,
    imageUri: Uri? = null,
    email: String = ""
): IPersona {
    val persona = Persona(name)
    persona.email = email
    persona.subtitle = subtitle
    persona.avatarImageResourceId = imageResource
    persona.avatarImageDrawable = imageDrawable
    persona.avatarImageBitmap = imageBitmap
    persona.avatarImageUri = imageUri
    return persona
}

fun createCustomPersona(
    context: Context,
    name: String = context.getString(R.string.persona_name_robert_tolbert),
    email: String = ""
): IPersona {
    val customPersona =  CustomPersona(name, email)
    customPersona.avatarImageDrawable = ContextCompat.getDrawable(context, R.drawable.avatar_robert_tolbert)
    customPersona.description = context.getString(R.string.people_picker_custom_persona_description)
    return customPersona
}

data class CustomPersona(override var name: String = "", override var email: String = "") : IPersona, Serializable {
    var description: String = ""
    override var subtitle: String = ""
    override var footer: String = ""
    override var avatarImageBitmap: Bitmap? = null
    override var avatarImageDrawable: Drawable? = null
    override var avatarImageResourceId: Int? = null
    override var avatarImageUri: Uri? = null
    override var avatarBackgroundColor: Int? = null
    override var avatarContentDescriptionLabel: String = ""
}
```

## File: src/main/java/com/microsoft/fluentuidemo/util/Strings.android.kt
```kotlin
package com.microsoft.fluentuidemo.util

import androidx.compose.runtime.Composable
import androidx.compose.ui.platform.LocalConfiguration
import androidx.compose.ui.platform.LocalContext
import com.microsoft.fluentuidemo.R

@Composable
fun getDemoAppString(string: DemoAppStrings): String {
    LocalConfiguration.current
    val resources = LocalContext.current.resources
    //TODO Add Strings resource in core module & update String names.
    return when (string) {
        DemoAppStrings.ModifiableParameters -> resources.getString(R.string.app_modifiable_parameters)
        DemoAppStrings.MicrophoneCallback -> resources.getString(R.string.searchbar_microphone_callback)
        DemoAppStrings.Style -> resources.getString(R.string.app_style)
        DemoAppStrings.AutoCorrect -> resources.getString(R.string.searchbar_autocorrect)
        DemoAppStrings.RightAccessoryView -> resources.getString(R.string.app_right_accessory_view)
        DemoAppStrings.MicrophonePressed -> resources.getString(R.string.searchbar_microphone_pressed)
        DemoAppStrings.RightViewPressed -> resources.getString(R.string.searchbar_right_view_pressed)
        DemoAppStrings.KeyboardSearchPressed -> resources.getString(R.string.searchbar_keyboard_search_pressed)
        else -> ""
    }
}
```

## File: src/main/java/com/microsoft/fluentuidemo/util/Strings.kt
```kotlin
package com.microsoft.fluentuidemo.util

import androidx.compose.runtime.Immutable

@Immutable
@JvmInline
value class DemoAppStrings private constructor(@Suppress("unused") private val value: Int) {
    companion object {
        val ModifiableParameters = DemoAppStrings(0)
        val MicrophoneCallback = DemoAppStrings(1)
        val AutoCorrect = DemoAppStrings(2)
        val Style = DemoAppStrings(3)
        val RightAccessoryView = DemoAppStrings(4)
        val MicrophonePressed = DemoAppStrings(5)
        val RightViewPressed = DemoAppStrings(6)
        val KeyboardSearchPressed = DemoAppStrings(7)
    }
}
```

## File: src/main/java/com/microsoft/fluentuidemo/V2DemoActivity.kt
```kotlin
package com.microsoft.fluentuidemo

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.RowScope
import androidx.compose.foundation.layout.WindowInsets
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.statusBars
import androidx.compose.foundation.layout.widthIn
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalUriHandler
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.compose.Scaffold
import com.microsoft.fluentui.icons.SearchBarIcons
import com.microsoft.fluentui.icons.searchbaricons.Arrowback
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.FluentAliasTokens
import com.microsoft.fluentui.theme.token.FluentGlobalTokens
import com.microsoft.fluentui.theme.token.FluentIcon
import com.microsoft.fluentui.theme.token.FluentStyle
import com.microsoft.fluentui.theme.token.Icon
import com.microsoft.fluentui.theme.token.controlTokens.AppBarSize
import com.microsoft.fluentui.tokenized.AppBar
import com.microsoft.fluentui.tokenized.drawer.BottomDrawer
import com.microsoft.fluentui.tokenized.drawer.rememberDrawerState
import com.microsoft.fluentui.tokenized.listitem.ListItem
import kotlinx.coroutines.launch

open class V2DemoActivity : ComponentActivity() {
    companion object {
        const val DEMO_TITLE = "demo_title"
    }

    private var activityUrl: String = ""
    fun setupActivity(activityClass: ComponentActivity) {
        activityUrl =
            "https://github.com/microsoft/fluentui-android/blob/master/FluentUI.Demo/src/main/java/com/microsoft/fluentuidemo/demos/${activityClass::class.simpleName}.kt"
    }

    private var activityContent: @Composable () -> Unit = {}
    fun setActivityContent(activityContent: @Composable () -> Unit) {
        this@V2DemoActivity.activityContent = activityContent
    }

    private var bottomAppBar: @Composable (RowScope.() -> Unit)? = null
    fun setBottomAppBar(bottomAppBar: @Composable (RowScope.() -> Unit)) {
        this@V2DemoActivity.bottomAppBar = bottomAppBar
    }

    private var bottomBar: @Composable () -> Unit = {}
    fun setBottomBar(bottomBar: @Composable () -> Unit = {}) {
        this@V2DemoActivity.bottomBar = bottomBar
    }

    private var sideBar: @Composable () -> Unit = {}
    private var floatingActionButton: @Composable ()->Unit = {}
    fun setFab(floatingActionButton: @Composable ()->Unit = {}) {
        this@V2DemoActivity.floatingActionButton = floatingActionButton
    }

    fun setSideBar(sideBar: @Composable () -> Unit = {}) {
        this@V2DemoActivity.sideBar = sideBar
    }

    open val paramsUrl: String = ""
    open val controlTokensUrl: String = ""
    open val designTokensUrl: String = ""
    open val globalTokensUrl: String = ""
    open val aliasTokensUrl: String = ""

    @Composable
    fun BottomDrawerContent() {
        val uriHandler = LocalUriHandler.current
        Column(
            Modifier.padding(
                top = FluentGlobalTokens.SizeTokens.Size120.value,
                bottom = FluentGlobalTokens.SizeTokens.Size120.value
            )
        ) {
            ListItem.Item(
                text = "GitHub Page",
                onClick = { uriHandler.openUri(activityUrl) },
                leadingAccessoryContent = {
                    Icon(
                        painter = painterResource(id = R.drawable.ic_fluent_book_number_24_regular),
                        contentDescription = stringResource(id = R.string.github_repo),
                        tint = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground2].value(),
                    )
                },
                listItemTokens = CustomizedTokens.listItemTokens
            )

            if (paramsUrl.isNotEmpty()) {
                ListItem.Item(
                    text = stringResource(id = R.string.parameters),
                    onClick = { uriHandler.openUri(paramsUrl) },
                    leadingAccessoryContent = {
                        Icon(
                            painter = painterResource(id = R.drawable.ic_fluent_code_24_regular),
                            contentDescription = stringResource(id = R.string.parameters),
                            tint = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground2].value(),
                        )
                    },
                    listItemTokens = CustomizedTokens.listItemTokens
                )
            }

            if (designTokensUrl.isNotEmpty()) {
                ListItem.Item(
                    text = stringResource(id = R.string.design_tokens),
                    onClick = { uriHandler.openUri(designTokensUrl) },
                    leadingAccessoryContent = {
                        Icon(
                            painter = painterResource(id = R.drawable.ic_fluent_design_ideas_24_regular),
                            contentDescription = stringResource(id = R.string.design_tokens),
                            tint = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground2].value(),
                        )
                    },
                    listItemTokens = CustomizedTokens.listItemTokens
                )
            }

            if (globalTokensUrl.isNotEmpty()) {
                ListItem.Item(
                    text = stringResource(id = R.string.global_tokens),
                    onClick = { uriHandler.openUri(globalTokensUrl) },
                    leadingAccessoryContent = {
                        Icon(
                            painter = painterResource(id = R.drawable.ic_fluent_book_globe_24_regular),
                            contentDescription = stringResource(id = R.string.global_tokens),
                            tint = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground2].value(),
                        )
                    },
                    listItemTokens = CustomizedTokens.listItemTokens
                )
            }

            if (aliasTokensUrl.isNotEmpty()) {
                ListItem.Item(
                    text = stringResource(id = R.string.alias_tokens),
                    onClick = { uriHandler.openUri(aliasTokensUrl) },
                    leadingAccessoryContent = {
                        Icon(
                            painter = painterResource(id = R.drawable.ic_fluent_paint_brush_24_regular),
                            contentDescription = stringResource(id = R.string.alias_tokens),
                            tint = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground2].value(),
                        )
                    },
                    listItemTokens = CustomizedTokens.listItemTokens
                )
            }

            if (controlTokensUrl.isNotEmpty()) {
                ListItem.Item(
                    text = stringResource(id = R.string.control_tokens),
                    onClick = { uriHandler.openUri(controlTokensUrl) },
                    leadingAccessoryContent = {
                        Icon(
                            painter = painterResource(id = R.drawable.ic_fluent_edit_settings_24_regular),
                            contentDescription = stringResource(id = R.string.control_tokens),
                            tint = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground2].value(),
                        )
                    },
                    listItemTokens = CustomizedTokens.listItemTokens
                )
            }
        }
    }

    open val appBarSize = AppBarSize.Medium

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        val demoTitle = intent.getSerializableExtra(DEMO_TITLE) as String
        setContent {
            FluentTheme {
                SetStatusBarColor()

                val bottomDrawerState = rememberDrawerState()
                val scope = rememberCoroutineScope()

                Scaffold(
                    contentWindowInsets = WindowInsets.statusBars,
                    topBar = {
                        AppBar(
                            title = demoTitle,
                            navigationIcon = FluentIcon(
                                SearchBarIcons.Arrowback,
                                contentDescription = stringResource(id = R.string.app_bar_layout_navigation_icon_clicked),
                                flipOnRtl = true,
                                onClick = { Navigation.backNavigation(this) }
                            ),
                            style = AppThemeViewModel.appThemeStyle.value,
                            appBarSize = appBarSize,
                            bottomBar = bottomAppBar,
                            rightAccessoryView = {
                                if (activityUrl.isNotEmpty()) {
                                    var isHiddenBottomDrawer by remember { mutableStateOf(true) }
                                    Icon(
                                        painter = painterResource(id = R.drawable.ic_fluent_info_24_regular),
                                        contentDescription = stringResource(id = R.string.demo_activity_github_link),
                                        modifier = Modifier.padding(FluentGlobalTokens.SizeTokens.Size100.value),
                                        tint = if (AppThemeViewModel.appThemeStyle.value == FluentStyle.Neutral) {
                                            FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground2].value(
                                                FluentTheme.themeMode
                                            )
                                        } else {
                                            FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundLightStatic].value(
                                                FluentTheme.themeMode
                                            )
                                        },
                                        onClick = {
                                            isHiddenBottomDrawer = if (isHiddenBottomDrawer) {
                                                scope.launch { bottomDrawerState.open() }
                                                !isHiddenBottomDrawer
                                            } else {
                                                scope.launch { bottomDrawerState.close() }
                                                !isHiddenBottomDrawer
                                            }
                                        }
                                    )
                                }

                                Box {
                                    AppBarMenu()
                                }
                            }
                        )
                    },
                    bottomBar = bottomBar,
                    sideBar = sideBar,
                    floatingActionButton = floatingActionButton
                ) {
                    Box(
                        modifier = Modifier
                            .fillMaxSize()
                            .background(FluentTheme.aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background1].value())
                            .padding(it)
                    ) {
                        activityContent()

                        BottomDrawer(
                            drawerContent = {
                                BottomDrawerContent()
                            },
                            drawerState = bottomDrawerState
                        )
                    }
                }
            }
        }
    }
}
```

## File: src/main/java/com/microsoft/fluentuidemo/V2DemoListActivity.kt
```kotlin
package com.microsoft.fluentuidemo

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.animation.core.LinearEasing
import androidx.compose.animation.core.animateFloatAsState
import androidx.compose.animation.core.tween
import androidx.compose.foundation.Image
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.WindowInsets
import androidx.compose.foundation.layout.fillMaxHeight
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.statusBars
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.text.BasicText
import androidx.compose.foundation.verticalScroll
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.draw.drawWithCache
import androidx.compose.ui.graphics.BlendMode
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.graphicsLayer
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.platform.LocalUriHandler
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.window.DialogProperties
import com.microsoft.fluentui.compose.Scaffold
import com.microsoft.fluentui.icons.SearchBarIcons
import com.microsoft.fluentui.icons.searchbaricons.Arrowback
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.FluentAliasTokens
import com.microsoft.fluentui.theme.token.FluentColor
import com.microsoft.fluentui.theme.token.FluentGlobalTokens
import com.microsoft.fluentui.theme.token.FluentIcon
import com.microsoft.fluentui.theme.token.FluentStyle
import com.microsoft.fluentui.theme.token.Icon
import com.microsoft.fluentui.theme.token.controlTokens.AppBarSize
import com.microsoft.fluentui.theme.token.controlTokens.BadgeType
import com.microsoft.fluentui.theme.token.controlTokens.BehaviorType
import com.microsoft.fluentui.theme.token.controlTokens.ColorStyle
import com.microsoft.fluentui.tokenized.AppBar
import com.microsoft.fluentui.tokenized.SearchBar
import com.microsoft.fluentui.tokenized.controls.Label
import com.microsoft.fluentui.tokenized.divider.Divider
import com.microsoft.fluentui.tokenized.drawer.Drawer
import com.microsoft.fluentui.tokenized.drawer.rememberDrawerState
import com.microsoft.fluentui.tokenized.listitem.ListItem
import com.microsoft.fluentui.tokenized.menu.Dialog
import com.microsoft.fluentui.tokenized.notification.Badge
import com.microsoft.fluentui.tokenized.segmentedcontrols.PillBar
import com.microsoft.fluentui.tokenized.segmentedcontrols.PillMetaData
import com.microsoft.fluentui.tokenized.segmentedcontrols.PillTabs
import com.microsoft.fluentui.tokenized.shimmer.Shimmer
import com.microsoft.fluentuidemo.CustomizedTokens.listItemTokens
import kotlinx.coroutines.launch
import java.util.Locale

enum class Components {
    V1,
    V2,
    All
}

class V2DemoListActivity : ComponentActivity() {
    @Composable
    fun GetDialogContent() {
        Column(
            modifier = Modifier
                .background(color = FluentTheme.aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background2].value())
                .padding(all = FluentGlobalTokens.SizeTokens.Size160.value)
                .verticalScroll(rememberScrollState()),
            verticalArrangement = Arrangement.spacedBy(
                FluentGlobalTokens.SizeTokens.Size100.value
            )
        ) {
            Label(
                text = application.assets.open("dogfood-release-notes.txt").bufferedReader()
                    .use { it.readText() },
                textStyle = FluentAliasTokens.TypographyTokens.Body2
            )

            Row {
                Label(
                    text = stringResource(id = R.string.release_notes_updates),
                    textStyle = FluentAliasTokens.TypographyTokens.Body2
                )

                val uriHandler = LocalUriHandler.current
                Label(
                    text = stringResource(id = R.string.click_here),
                    modifier = Modifier.clickable { uriHandler.openUri("https://github.com/microsoft/fluentui-android/releases") },
                    textStyle = FluentAliasTokens.TypographyTokens.Body2,
                    colorStyle = ColorStyle.Brand
                )
            }
        }
    }

    @Composable
    fun GetDrawerContent() {
        Column(
            verticalArrangement = Arrangement.spacedBy(FluentGlobalTokens.SizeTokens.Size320.value),
            modifier = Modifier
                .fillMaxHeight()
                .verticalScroll(rememberScrollState())
                .background(color = FluentTheme.aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background2].value())
        ) {
            Column(
                horizontalAlignment = Alignment.CenterHorizontally,
                verticalArrangement = Arrangement.spacedBy(FluentGlobalTokens.SizeTokens.Size60.value),
                modifier = Modifier
                    .padding(top = FluentGlobalTokens.SizeTokens.Size480.value)
                    .fillMaxWidth()
            ) {
                Image(
                    painter = painterResource(id = R.mipmap.fluent_logo),
                    contentDescription = stringResource(id = R.string.app_name),
                    contentScale = ContentScale.Crop,
                    modifier = Modifier
                        .size(FluentGlobalTokens.SizeTokens.Size560.value)
                        .clip(CircleShape),
                    alignment = Alignment.Center
                )

                Label(
                    text = stringResource(id = R.string.app_name),
                    textStyle = FluentAliasTokens.TypographyTokens.Title3
                )

                Label(
                    text = getString(R.string.sdk_version, BuildConfig.VERSION_NAME),
                    modifier = Modifier
                        .background(color = FluentTheme.aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background5].value()),
                    textStyle = FluentAliasTokens.TypographyTokens.Caption1
                )
            }

            Column(
                verticalArrangement = Arrangement.spacedBy(
                    FluentGlobalTokens.SizeTokens.Size40.value
                ),
                modifier = Modifier.padding(FluentGlobalTokens.SizeTokens.Size100.value)
            ) {
                val gradientColors = listOf(
                    FluentColor(
                        Color(0XFFD3CBE8),
                        Color(0XFF756D88)
                    ).value(),

                    FluentColor(
                        Color(0xffE4CFDF),
                        Color(0XFF877482)
                    ).value()
                )

                Label(
                    text = stringResource(id = R.string.open_source_cross_platform),
                    textStyle = FluentAliasTokens.TypographyTokens.Title1,
                    modifier = Modifier
                        .padding(end = FluentGlobalTokens.SizeTokens.Size480.value)
                        .graphicsLayer(alpha = 0.99f)
                        .drawWithCache {
                            val brush = Brush.linearGradient(gradientColors)
                            onDrawWithContent {
                                drawContent()
                                drawRect(brush, blendMode = BlendMode.SrcAtop)
                            }
                        }
                )

                BasicText(
                    text = stringResource(id = R.string.intuitive_and_powerful),
                    style = FluentTheme.aliasTokens.typography[FluentAliasTokens.TypographyTokens.Title1].copy(
                        color = FluentColor(Color(0XFF2F3441), Color(0XFFA8AEBC)).value()
                    )
                )
            }

            Divider()

            Column(
                verticalArrangement = Arrangement.spacedBy(
                    FluentGlobalTokens.SizeTokens.Size100.value
                )
            ) {
                ListItem.Item(
                    text = stringResource(id = R.string.design_tokens),
                    onClick = {
                        val packageContext = this@V2DemoListActivity
                        Navigation.forwardNavigation(
                            packageContext,
                            V2DesignTokensActivity::class.java,
                            Pair(V2DemoActivity.DEMO_TITLE, "V2 Design Tokens")
                        )
                    },
                    leadingAccessoryContent = {
                        Icon(
                            painter = painterResource(id = R.drawable.ic_fluent_fluent_24_regular),
                            contentDescription = stringResource(id = R.string.design_tokens),
                            tint = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground2].value(),
                        )
                    },
                    listItemTokens = listItemTokens
                )

                var showDialog by rememberSaveable { mutableStateOf(false) }
                if (showDialog) {
                    Dialog(
                        dialogProperties = DialogProperties(
                            dismissOnBackPress = true,
                            dismissOnClickOutside = true
                        ),
                        onDismiss = { showDialog = !showDialog }
                    ) { GetDialogContent() }
                }
                ListItem.Item(
                    text = stringResource(id = R.string.release_notes),
                    leadingAccessoryContent = {
                        Icon(
                            painter = painterResource(id = R.drawable.ic_fluent_document_chevron_double_24_regular),
                            contentDescription = stringResource(id = R.string.release_notes),
                            tint = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground2].value(),
                        )
                    },
                    onClick = { showDialog = !showDialog },
                    listItemTokens = listItemTokens
                )
                val uriHandler = LocalUriHandler.current
                ListItem.Item(
                    text = stringResource(id = R.string.github_repo),
                    leadingAccessoryContent = {
                        Icon(
                            painter = painterResource(id = R.drawable.ic_fluent_book_number_24_regular),
                            contentDescription = stringResource(id = R.string.github_repo),
                            tint = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground2].value(),
                        )
                    },
                    trailingAccessoryContent = {
                        Icon(
                            painter = painterResource(id = R.drawable.ic_fluent_link_24_regular),
                            contentDescription = stringResource(id = R.string.github_repo_link),
                            tint = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground2].value(),
                        )
                    },
                    onClick = { uriHandler.openUri("https://github.com/microsoft/fluentui-android") },
                    listItemTokens = listItemTokens
                )

                ListItem.Item(
                    text = stringResource(id = R.string.report_issue),
                    leadingAccessoryContent = {
                        Icon(
                            painter = painterResource(id = R.drawable.ic_fluent_warning_24_regular),
                            contentDescription = stringResource(id = R.string.github_repo),
                            tint = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground2].value(),
                        )
                    },
                    onClick = { uriHandler.openUri("https://github.com/microsoft/fluentui-android/issues") },
                    listItemTokens = listItemTokens
                )
            }
        }
    }

    private fun searchComponent(
        userInput: String,
        selectedSearchComponents: Components
    ): MutableList<Demo> {
        return if (userInput.isEmpty()) {
            when (selectedSearchComponents) {
                Components.V1 -> V1DEMO.toMutableList()
                Components.V2 -> V2DEMO.toMutableList()
                Components.All -> (V1DEMO + V2DEMO).toMutableList()
            }
        } else {
            when (selectedSearchComponents) {
                Components.V1 -> V1DEMO.filter {
                    it.title.lowercase(Locale.getDefault())
                        .contains(userInput.lowercase(Locale.getDefault()))
                }.toMutableList()

                Components.V2 -> V2DEMO.filter {
                    it.title.lowercase(Locale.getDefault())
                        .contains(userInput.lowercase(Locale.getDefault()))
                }.toMutableList()

                Components.All -> (V1DEMO + V2DEMO).filter {
                    it.title.lowercase(Locale.getDefault())
                        .contains(userInput.lowercase(Locale.getDefault()))
                }.toMutableList()
            }
        }
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            FluentTheme {
                val drawerState = rememberDrawerState()
                val scope = rememberCoroutineScope()

                Drawer(
                    drawerState = drawerState,
                    drawerContent = { GetDrawerContent() },
                    behaviorType = BehaviorType.LEFT_SLIDE_OVER,
                    scrimVisible = true
                )

                var searchModeEnabled by rememberSaveable { mutableStateOf(false) }
                var selectedComponents by rememberSaveable { mutableStateOf(Components.V2) }
                var selectedSearchComponents by rememberSaveable { mutableStateOf(Components.All) }
                var filteredDemoList by remember { mutableStateOf(V2DEMO.toMutableList()) }
                var inputString by rememberSaveable { mutableStateOf("") }

                Scaffold(
                    contentWindowInsets = WindowInsets.statusBars,
                    topBar = {
                        val appTitleDelta: Float by animateFloatAsState(
                            if (searchModeEnabled) 0F else 1F,
                            animationSpec = tween(durationMillis = 150, easing = LinearEasing)
                        )

                        SetStatusBarColor()

                        AppBar(
                            title = stringResource(id = R.string.app_name),
                            navigationIcon = FluentIcon(
                                SearchBarIcons.Arrowback,
                                contentDescription = stringResource(id = R.string.app_bar_layout_navigation_icon_clicked),
                            ),
                            appBarSize = AppBarSize.Large,
                            logo = {
                                Image(painter = painterResource(id = R.mipmap.fluent_logo),
                                    contentDescription = stringResource(id = R.string.fluent_logo),
                                    contentScale = ContentScale.Crop,
                                    modifier = Modifier
                                        .padding(FluentGlobalTokens.SizeTokens.Size100.value)
                                        .clip(CircleShape)
                                        .size(FluentGlobalTokens.SizeTokens.Size320.value)
                                        .clickable { scope.launch { drawerState.open() } }
                                )
                            },
                            searchMode = searchModeEnabled,
                            style = AppThemeViewModel.appThemeStyle.value,
                            rightAccessoryView = {
                                Icon(
                                    painter = painterResource(id = R.drawable.ic_fluent_search_24_regular),
                                    contentDescription = stringResource(id = R.string.app_bar_layout_menu_search),
                                    modifier = Modifier.padding(
                                        FluentGlobalTokens.SizeTokens.Size100.value
                                    ),
                                    onClick = { searchModeEnabled = true },
                                    tint = if (AppThemeViewModel.appThemeStyle.value == FluentStyle.Neutral) {
                                        FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground2].value()
                                    } else {
                                        FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundLightStatic].value()
                                    }
                                )

                                Box {
                                    AppBarMenu()
                                }
                            },
                            searchBar = if (searchModeEnabled) {
                                {
                                    SearchBar(
                                        onValueChange = { userInput, _ ->
                                            scope.launch {
                                                inputString = userInput
                                            }
                                        },
                                        style = AppThemeViewModel.appThemeStyle.value,
                                        navigationIconCallback = {
                                            searchModeEnabled = false
                                            selectedSearchComponents = Components.V2
                                            filteredDemoList = V2DEMO.toMutableList()
                                        },
                                        focusByDefault = true
                                    )
                                    filteredDemoList = searchComponent(
                                        userInput = inputString,
                                        selectedSearchComponents = selectedSearchComponents
                                    )
                                }
                            } else null,
                            bottomBar = {
                                if (!searchModeEnabled) {
                                    val buttonBarList = mutableListOf<PillMetaData>()
                                    buttonBarList.add(
                                        PillMetaData(
                                            text = stringResource(id = R.string.v1_components),
                                            enabled = true,
                                            onClick = {
                                                selectedComponents = Components.V1
                                                filteredDemoList = V1DEMO.toMutableList()
                                            }
                                        )
                                    )
                                    buttonBarList.add(
                                        PillMetaData(
                                            text = stringResource(id = R.string.v2_components),
                                            enabled = true,
                                            onClick = {
                                                selectedComponents = Components.V2
                                                filteredDemoList = V2DEMO.toMutableList()
                                            }
                                        )
                                    )
                                    PillTabs(
                                        style = AppThemeViewModel.appThemeStyle.value,
                                        metadataList = buttonBarList,
                                        selectedIndex = selectedComponents.ordinal
                                    )
                                } else {
                                    val searchList: MutableList<PillMetaData> = mutableListOf()

                                    searchList.add(
                                        PillMetaData(
                                            text = stringResource(id = R.string.all_components),
                                            onClick = {
                                                selectedSearchComponents = Components.All
                                                filteredDemoList = searchComponent(
                                                    userInput = inputString,
                                                    selectedSearchComponents = selectedSearchComponents
                                                )
                                            },
                                            selected = selectedSearchComponents == Components.All,
                                        )
                                    )

                                    searchList.add(
                                        PillMetaData(
                                            text = stringResource(id = R.string.v1_components),
                                            onClick = {
                                                selectedSearchComponents = Components.V1
                                                filteredDemoList = searchComponent(
                                                    userInput = inputString,
                                                    selectedSearchComponents = selectedSearchComponents
                                                )
                                            },
                                            selected = selectedSearchComponents == Components.V1,
                                        )
                                    )

                                    searchList.add(
                                        PillMetaData(
                                            text = stringResource(id = R.string.v2_components),
                                            onClick = {
                                                selectedSearchComponents = Components.V2
                                                filteredDemoList = searchComponent(
                                                    userInput = inputString,
                                                    selectedSearchComponents = selectedSearchComponents
                                                )
                                            },
                                            selected = selectedSearchComponents == Components.V2,
                                        )
                                    )

                                    PillBar(
                                        metadataList = searchList,
                                        style = AppThemeViewModel.appThemeStyle.value
                                    )
                                }
                            },
                            appTitleDelta = appTitleDelta
                        )
                    }
                ) {
                    LazyColumn(
                        Modifier
                            .padding(it)
                            .fillMaxSize()
                    ) {
                        filteredDemoList.forEach {
                            item {
                                ListItem.Item(
                                    text = it.title,
                                    onClick = {
                                        val packageContext = this@V2DemoListActivity
                                        Navigation.forwardNavigation(
                                            packageContext,
                                            it.demoClass.java,
                                            Pair(DemoActivity.DEMO_ID, it.id),
                                            Pair(V2DemoActivity.DEMO_TITLE, it.title)
                                        )
                                    },
                                    trailingAccessoryContent = if (it.badge != Badge.None) {
                                        {
                                            Badge(
                                                text = when (it.badge) {
                                                    Badge.New -> stringResource(id = R.string.new_badge)
                                                    Badge.Modified -> stringResource(id = R.string.modified_badge)
                                                    Badge.APIBreak -> stringResource(id = R.string.api_break_badge)
                                                    else -> ""
                                                },
                                                badgeType = BadgeType.List,
                                            )
                                        }
                                    } else null
                                )
                            }
                        }
                    }
                }
            }
        }
    }
}
```

## File: src/main/java/com/microsoft/fluentuidemo/V2DesignTokensActivity.kt
```kotlin
package com.microsoft.fluentuidemo

import android.os.Bundle
import androidx.compose.foundation.ExperimentalFoundationApi
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.MutableState
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.FluentAliasTokens
import com.microsoft.fluentui.theme.token.FluentColor
import com.microsoft.fluentui.theme.token.FluentGlobalTokens
import com.microsoft.fluentui.theme.token.FluentGlobalTokens.cornerRadius
import com.microsoft.fluentui.theme.token.FluentGlobalTokens.elevation
import com.microsoft.fluentui.theme.token.FluentGlobalTokens.fontSize
import com.microsoft.fluentui.theme.token.FluentGlobalTokens.fontWeight
import com.microsoft.fluentui.theme.token.FluentGlobalTokens.iconSize
import com.microsoft.fluentui.theme.token.FluentGlobalTokens.lineHeight
import com.microsoft.fluentui.theme.token.FluentGlobalTokens.neutralColor
import com.microsoft.fluentui.theme.token.FluentGlobalTokens.strokeWidth
import com.microsoft.fluentui.theme.token.FluentGlobalTokens.size
import com.microsoft.fluentui.theme.token.Icon
import com.microsoft.fluentui.theme.token.TokenSet
import com.microsoft.fluentui.theme.token.controlTokens.BasicCardInfo
import com.microsoft.fluentui.theme.token.controlTokens.BasicCardTokens
import com.microsoft.fluentui.theme.token.controlTokens.CardType
import com.microsoft.fluentui.tokenized.controls.BasicCard
import com.microsoft.fluentui.tokenized.controls.Label
import com.microsoft.fluentui.tokenized.listitem.ChevronOrientation
import com.microsoft.fluentui.tokenized.listitem.ListItem
import com.microsoft.fluentui.tokenized.segmentedcontrols.PillMetaData
import com.microsoft.fluentui.tokenized.segmentedcontrols.PillTabs

enum class Tokens {
    GlobalTokens,
    AliasTokens
}

class V2DesignTokensActivity : V2DemoActivity() {
    init {
        setupActivity(this)
    }

    override val designTokensUrl =
        "https://github.com/microsoft/fluentui-android/wiki/Design-Tokens#overview"
    override val globalTokensUrl =
        "https://github.com/microsoft/fluentui-android/wiki/Design-Tokens#global-tokens"
    override val aliasTokensUrl =
        "https://github.com/microsoft/fluentui-android/wiki/Design-Tokens#alias-token"
    override val controlTokensUrl =
        "https://github.com/microsoft/fluentui-android/wiki/Design-Tokens#control-token"

    private fun previewShadowToken(selectedToken: FluentGlobalTokens.ShadowTokens): BasicCardTokens {
        return object : BasicCardTokens() {
            @Composable
            override fun elevation(basicCardInfo: BasicCardInfo): Dp {
                return when (basicCardInfo.cardType) {
                    CardType.Elevated -> FluentGlobalTokens.ShadowTokens.valueOf(selectedToken.name).value
                    CardType.Outlined -> 0.dp
                }
            }
        }
    }

    private fun previewCornerRadiusToken(selectedToken: FluentGlobalTokens.CornerRadiusTokens): BasicCardTokens {
        return object : BasicCardTokens() {
            @Composable
            override fun cornerRadius(basicCardInfo: BasicCardInfo): Dp {
                return FluentGlobalTokens.CornerRadiusTokens.valueOf(selectedToken.name).value
            }
        }

    }

    private fun previewStrokeWidthToken(selectedToken: FluentGlobalTokens.StrokeWidthTokens): BasicCardTokens {
        return object : BasicCardTokens() {
            @Composable
            override fun borderStrokeWidth(basicCardInfo: BasicCardInfo): Dp {
                return FluentGlobalTokens.StrokeWidthTokens.valueOf(selectedToken.name).value
            }
        }
    }

    @OptIn(ExperimentalFoundationApi::class)
    @Composable
    fun PreviewToken(tokenName: Int, tokensList: Array<out Enum<*>>) {
        val tabsList = mutableListOf<PillMetaData>()
        var selectedTokenIndex by remember { mutableStateOf(0) }
        tokensList.forEach {
            tabsList.add(
                PillMetaData(
                    text = "$it",
                    onClick = { selectedTokenIndex = tokensList.indexOf(it) }
                )
            )
        }

        Column(
            horizontalAlignment = Alignment.CenterHorizontally
        ) {
            BasicCard(
                modifier = Modifier
                    .size(width = 180.dp, height = 130.dp)
                    .padding(bottom = FluentGlobalTokens.SizeTokens.Size160.value),
                basicCardTokens = if (tokenName == R.string.shadow_tokens) previewShadowToken(
                    tokensList[selectedTokenIndex] as FluentGlobalTokens.ShadowTokens
                )
                else if (tokenName == R.string.corner_radius_tokens) previewCornerRadiusToken(
                    tokensList[selectedTokenIndex] as FluentGlobalTokens.CornerRadiusTokens
                )
                else if (tokenName == R.string.stroke_width_tokens) previewStrokeWidthToken(
                    tokensList[selectedTokenIndex] as FluentGlobalTokens.StrokeWidthTokens
                ) else null
            ) {
                Box(contentAlignment = Alignment.Center, modifier = Modifier.fillMaxSize()) {
                    SetPreviewContent(tokenName, tokensList[selectedTokenIndex])
                }
            }

            PillTabs(
                metadataList = tabsList,
                scrollable = true,
                selectedIndex = selectedTokenIndex
            )
        }
    }

    @Composable
    fun SetPreviewContent(tokenName: Int, selectedToken: Any) {
        val textColor: Color = FluentColor(light = Color.Black, dark = Color.White).value()
        when (tokenName) {
            R.string.font_size_tokens ->
                Text(
                    text = stringResource(id = R.string.sample_text),
                    color = textColor,
                    fontSize = FluentGlobalTokens.FontSizeTokens.valueOf((selectedToken as FluentGlobalTokens.FontSizeTokens).name).value
                )

            R.string.line_height_tokens ->
                Column {
                    Text(
                        text = "Text\nText",
                        color = textColor,
                        lineHeight = FluentGlobalTokens.LineHeightTokens.valueOf((selectedToken as FluentGlobalTokens.LineHeightTokens).name).value
                    )
                }

            R.string.font_weight_tokens ->
                Text(
                    text = stringResource(id = R.string.sample_text),
                    color = textColor,
                    fontSize = FluentGlobalTokens.FontSizeTokens.Size600.value,
                    fontWeight = FluentGlobalTokens.FontWeightTokens.valueOf((selectedToken as FluentGlobalTokens.FontWeightTokens).name).value
                )

            R.string.icon_size_tokens ->
                Icon(
                    painter = painterResource(id = R.drawable.ic_fluent_home_24_regular),
                    contentDescription = stringResource(id = R.string.sample_icon),
                    tint = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground2].value(
                        FluentTheme.themeMode
                    ),
                    modifier = Modifier.size(FluentGlobalTokens.IconSizeTokens.valueOf((selectedToken as FluentGlobalTokens.IconSizeTokens).name).value)
                )

            R.string.size_tokens ->
                Row(horizontalArrangement = Arrangement.spacedBy(FluentGlobalTokens.SizeTokens.valueOf((selectedToken as FluentGlobalTokens.SizeTokens).name).value)) {
                    Text(
                        text = stringResource(id = R.string.sample_text),
                        color = textColor,
                        fontSize = FluentGlobalTokens.FontSizeTokens.Size600.value,
                    )

                    Text(
                        text = stringResource(id = R.string.sample_text),
                        color = textColor,
                        fontSize = FluentGlobalTokens.FontSizeTokens.Size600.value,
                    )
                }

            R.string.typography_tokens -> Label(
                text = stringResource(id = R.string.sample_text),
                textStyle = selectedToken as FluentAliasTokens.TypographyTokens
            )
        }
    }

    @OptIn(ExperimentalFoundationApi::class)
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        var buttonBarList: MutableList<PillMetaData>
        lateinit var selectedTokens: MutableState<Tokens>
        lateinit var tokensMap: MutableState<Map<Int, Pair<Array<out Enum<*>>, Any>>>
        setBottomAppBar {
            val globalTokensMap = mapOf(
                R.string.neutral_color_tokens to Pair(
                    FluentGlobalTokens.NeutralColorTokens.values(),
                    ::neutralColor
                ),
                R.string.font_size_tokens to Pair(
                    FluentGlobalTokens.FontSizeTokens.values(),
                    ::fontSize
                ),
                R.string.line_height_tokens to Pair(
                    FluentGlobalTokens.LineHeightTokens.values(),
                    ::lineHeight
                ),
                R.string.font_weight_tokens to Pair(
                    FluentGlobalTokens.FontWeightTokens.values(),
                    ::fontWeight
                ),
                R.string.icon_size_tokens to Pair(
                    FluentGlobalTokens.IconSizeTokens.values(),
                    ::iconSize
                ),
                R.string.size_tokens to Pair(
                    FluentGlobalTokens.SizeTokens.values(),
                    ::size
                ),
                R.string.shadow_tokens to Pair(
                    FluentGlobalTokens.ShadowTokens.values(),
                    ::elevation
                ),
                R.string.corner_radius_tokens to Pair(
                    FluentGlobalTokens.CornerRadiusTokens.values(),
                    ::cornerRadius
                ),
                R.string.stroke_width_tokens to Pair(
                    FluentGlobalTokens.StrokeWidthTokens.values(),
                    ::strokeWidth
                ),
            )

            val aliasTokensMap = mapOf(
                R.string.brand_color_tokens to Pair(
                    FluentAliasTokens.BrandColorTokens.values(),
                    FluentTheme.aliasTokens.brandColor
                ),
                R.string.neutral_background_color_tokens to Pair(
                    FluentAliasTokens.NeutralBackgroundColorTokens.values(),
                    FluentTheme.aliasTokens.neutralBackgroundColor
                ),
                R.string.neutral_foreground_color_tokens to Pair(
                    FluentAliasTokens.NeutralForegroundColorTokens.values(),
                    FluentTheme.aliasTokens.neutralForegroundColor
                ),
                R.string.neutral_stroke_color_tokens to Pair(
                    FluentAliasTokens.NeutralStrokeColorTokens.values(),
                    FluentTheme.aliasTokens.neutralStrokeColor
                ),
                R.string.brand_background_color_tokens to Pair(
                    FluentAliasTokens.BrandBackgroundColorTokens.values(),
                    FluentTheme.aliasTokens.brandBackgroundColor
                ),
                R.string.brand_foreground_color_tokens to Pair(
                    FluentAliasTokens.BrandForegroundColorTokens.values(),
                    FluentTheme.aliasTokens.brandForegroundColor
                ),
                R.string.brand_stroke_color_tokens to Pair(
                    FluentAliasTokens.BrandStrokeColorTokens.values(),
                    FluentTheme.aliasTokens.brandStroke
                ),
                R.string.error_and_status_color_tokens to Pair(
                    FluentAliasTokens.ErrorAndStatusColorTokens.values(),
                    FluentTheme.aliasTokens.errorAndStatusColor
                ),
                R.string.presence_tokens to Pair(
                    FluentAliasTokens.PresenceColorTokens.values(),
                    FluentTheme.aliasTokens.presenceColor
                ),
                R.string.typography_tokens to Pair(
                    FluentAliasTokens.TypographyTokens.values(),
                    FluentTheme.aliasTokens.typography
                )
            )

            selectedTokens = remember { mutableStateOf(Tokens.GlobalTokens) }
            tokensMap = remember { mutableStateOf(globalTokensMap.toMutableMap()) }
            buttonBarList = listOf(
                PillMetaData(
                    text = stringResource(id = R.string.global_tokens),
                    enabled = true,
                    onClick = {
                        selectedTokens.value = Tokens.GlobalTokens
                        tokensMap.value = globalTokensMap.toMutableMap()
                    }
                ),
                PillMetaData(
                    text = stringResource(id = R.string.alias_tokens),
                    enabled = true,
                    onClick = {
                        selectedTokens.value = Tokens.AliasTokens
                        tokensMap.value = aliasTokensMap.toMutableMap()
                    }
                )
            ) as MutableList<PillMetaData>

            PillTabs(
                style = AppThemeViewModel.appThemeStyle.value,
                metadataList = buttonBarList,
                selectedIndex = selectedTokens.value.ordinal,
            )
        }

        setActivityContent {
            Column(modifier = Modifier.verticalScroll(rememberScrollState())) {
                tokensMap.value.forEach { (tokenType, tokenGetter) ->
                    ListItem.SectionHeader(
                        title = stringResource(id = tokenType),
                        enableContentOpenCloseTransition = true,
                        chevronOrientation = ChevronOrientation(90f, 0f),
                    ) {
                        if (stringResource(id = tokenType).contains(stringResource(id = R.string.color))) {
                            Column(
                                modifier = Modifier
                                    .height(256.dp)
                                    .verticalScroll(rememberScrollState())
                            ) {

                                tokenGetter.first.forEach {
                                    ListItem.Item(
                                        text = "$it",
                                        trailingAccessoryContent = {
                                            when (tokenType) {
                                                R.string.neutral_color_tokens ->
                                                    Icon(
                                                        painter = painterResource(id = R.drawable.ic_fluent_square_24_filled),
                                                        contentDescription = stringResource(id = R.string.neutral_color_tokens),
                                                        tint = (tokenGetter.second as (Enum<*>) -> Color).invoke(
                                                            it
                                                        )
                                                    )

                                                R.string.brand_color_tokens ->
                                                    Icon(
                                                        painter = painterResource(id = R.drawable.ic_fluent_square_24_filled),
                                                        contentDescription = stringResource(id = R.string.brand_color_tokens),
                                                        tint = FluentTheme.aliasTokens.brandColor[it as FluentAliasTokens.BrandColorTokens]
                                                    )

                                                R.string.neutral_background_color_tokens, R.string.neutral_foreground_color_tokens, R.string.neutral_stroke_color_tokens, R.string.error_and_status_color_tokens, R.string.presence_tokens ->
                                                    Icon(
                                                        painter = painterResource(id = R.drawable.ic_fluent_square_24_filled),
                                                        contentDescription = "",
                                                        tint = (tokenGetter.second as TokenSet<Enum<*>, FluentColor>)[it].value()
                                                    )

                                                R.string.brand_background_color_tokens ->
                                                    if ((tokenGetter.second as TokenSet<Enum<*>, FluentColor>)[it].value() == Color.Unspecified) {
                                                        Label(
                                                            text = stringResource(id = R.string.unspecified),
                                                            textStyle = FluentAliasTokens.TypographyTokens.Caption1
                                                        )
                                                    } else {
                                                        Icon(
                                                            painter = painterResource(id = R.drawable.ic_fluent_square_24_filled),
                                                            contentDescription = stringResource(id = R.string.brand_background_color_tokens),
                                                            tint = FluentTheme.aliasTokens.brandBackgroundColor[it as FluentAliasTokens.BrandBackgroundColorTokens].value()
                                                        )
                                                    }

                                                R.string.brand_foreground_color_tokens ->
                                                    Icon(
                                                        painter = painterResource(id = R.drawable.ic_fluent_square_24_filled),
                                                        contentDescription = stringResource(id = R.string.brand_foreground_color_tokens),
                                                        tint = FluentTheme.aliasTokens.brandForegroundColor[it as FluentAliasTokens.BrandForegroundColorTokens].value()
                                                    )

                                                R.string.brand_stroke_color_tokens ->
                                                    Icon(
                                                        painter = painterResource(id = R.drawable.ic_fluent_square_24_filled),
                                                        contentDescription = stringResource(id = R.string.brand_stroke_color_tokens),
                                                        tint = FluentTheme.aliasTokens.brandStroke[it as FluentAliasTokens.BrandStrokeColorTokens].value()
                                                    )
                                            }
                                        }
                                    )
                                }
                            }
                        } else PreviewToken(tokenType, tokenGetter.first)
                    }
                }
            }
        }
    }
}
```

## File: src/main/java/com/microsoft/fluentuidemo/V2StackableSnackbarActivity.kt
```kotlin
package com.microsoft.fluentuidemo.demos

import android.os.Build
import android.os.Bundle
import android.widget.Toast
import androidx.annotation.RequiresApi
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.text.BasicText
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Close
import androidx.compose.runtime.*
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.theme.token.FluentIcon
import com.microsoft.fluentui.tokenized.controls.Button
import com.microsoft.fluentui.tokenized.notification.Scrim
import com.microsoft.fluentui.tokenized.notification.SnackBarItemModel
import com.microsoft.fluentui.tokenized.notification.SnackBarStack
import com.microsoft.fluentui.tokenized.notification.SnackBarStackConfig
import com.microsoft.fluentui.tokenized.notification.rememberSnackBarStackState
import com.microsoft.fluentuidemo.V2DemoActivity
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch


class V2StackableSnackbarActivity : V2DemoActivity() {
    init {
        setupActivity(this)
    }

    override val paramsUrl = "https://github.com/microsoft/fluentui-android/wiki/Controls#params-37"
    override val controlTokensUrl =
        "https://github.com/microsoft/fluentui-android/wiki/Controls#control-tokens-35"

    @RequiresApi(Build.VERSION_CODES.N)
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        val context = this
        setActivityContent {
            SnackBarStackDemoLayout(context = context)
        }
    }
}

@Composable
fun BackgroundContent(context: V2StackableSnackbarActivity) {
    val scrollState = rememberScrollState()
    Column(
        modifier = Modifier
            .fillMaxSize()
            .verticalScroll(scrollState)
            .padding(16.dp),
        horizontalAlignment = Alignment.CenterHorizontally
    ) {
        repeat(5) { index ->
            Button(
                onClick = {
                    Toast.makeText(context, "Button #$index pressed", Toast.LENGTH_SHORT).show()
                },
                text = "Button #$index",
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(vertical = 4.dp)
            )
            Spacer(modifier = Modifier.height(10.dp))
        }

        Spacer(modifier = Modifier.height(24.dp))

        repeat(20) { index ->
            BasicText(
                text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(8.dp)
            )
        }
        Spacer(modifier = Modifier.height(50.dp))
    }
}

@Composable
fun SnackBarStackDemoLayout(context: V2StackableSnackbarActivity) {
    Box() {
        val stackState = rememberSnackBarStackState(
            maxExpandedSize = 10,
            maxCollapsedSize = 5
        )
        var counter by rememberSaveable { mutableIntStateOf(0) }
        val scope = rememberCoroutineScope()
        BackgroundContent(context)
        Scrim(
            isActivated = stackState.expanded && stackState.sizeVisible() > 0,
            onDismiss = {}
        )
        Column(
            horizontalAlignment = Alignment.CenterHorizontally,
            modifier = Modifier.fillMaxSize(),
            verticalArrangement = Arrangement.Bottom
        ) {

            SnackBarStack(
                state = stackState,
                snackBarStackConfig = SnackBarStackConfig(
                    snackbarGapWhenExpanded = 10.dp
                )
            )
            Spacer(modifier = Modifier.height(10.dp))
            Row() {
                Button(onClick = {
                    val id = counter++

                    stackState.addSnackbar(
                        SnackBarItemModel(
                            id = id.toString(),
                            message = "Snackbar #$id",
                            actionText = "Expand",
                            trailingIcon = FluentIcon(
                                Icons.Default.Close,
                                Icons.Default.Close,
                                contentDescription = "Close",
                                onClick = {
                                    scope.launch {
                                        stackState.removeSnackbarByIdWithAnimation(
                                            id.toString(),
                                            showLastHiddenSnackbarOnRemove = true
                                        )
                                    }
                                }
                            ),
                            onTitleOverflowChange = { },
                            onActionTextClicked = {
                                stackState.toggleExpandedState()
                            },
                            enableSwipeToDismiss = true
                        )
                    )
                }, text = "Add Snackbar")

                Spacer(modifier = Modifier.width(12.dp))

                Button(onClick = {
                    scope.launch {
                        stackState.clearAllSnackBars(animateRemoval = true)
                    }
                }, text = "Clear All")

                Spacer(modifier = Modifier.width(12.dp))
                Button(onClick = {
                    scope.launch {
                        val id = counter++
                        for (i in 0..15) {
                            stackState.addSnackbar(
                                SnackBarItemModel(
                                    id = "$id-$i",
                                    message = "Snackbar #$id-$i".repeat(i + 4),
                                    actionText = "Expand",
                                    trailingIcon = FluentIcon(
                                        Icons.Default.Close,
                                        Icons.Default.Close,
                                        contentDescription = "Close",
                                        onClick = {
                                            scope.launch {
                                                stackState.removeSnackbarByIdWithAnimation(
                                                    "$id-$i",
                                                    showLastHiddenSnackbarOnRemove = true
                                                )
                                            }
                                        }
                                    ),
                                    onTitleOverflowChange = { },
                                    onActionTextClicked = {
                                        stackState.toggleExpandedState()
                                    },
                                    enableSwipeToDismiss = true
                                )
                            )
                            delay(2000)
                        }
                    }
                }, text = "Keep Adding")
            }
            Spacer(modifier = Modifier.height(10.dp))
        }
    }
}
```

## File: src/main/res/values/colors.xml
```xml
<?xml version="1.0" encoding="utf-8"?>
<!--
  ~ Copyright (c) Microsoft Corporation. All rights reserved.
  ~ Licensed under the MIT License.
  -->

<resources>

    <!--Calendar-->
    <color name="calendar_selected_date_text">@color/fluentui_gray_100</color>
    <color name="calendar_selected_date_background">#333</color>

    <!--Snackbar-->
    <color name="snackbar_circular_progress_drawable">@color/fluentui_white</color>

    <!--TemplateView-->
    <color name="template_view_cell_horizontal_background">@color/fluentui_communication_tint_40</color>
    <color name="template_view_cell_vertical_background">@color/fluentui_gray_50</color>

    <!--ActionBarLayout-->
    <color name="action_bar_radio_labels">@color/fluentui_black</color>
    <!--Botttomsheet tint-->
    <color name="bottomsheet_horizontal_icon_tint">@color/fluentui_gray_500</color>
    <!--Tooltip custom color-->
    <color name="tooltip_custom_color">@color/design_default_color_primary</color>

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
    <dimen name="default_layout_margin">@dimen/fluentui_content_inset</dimen>
    <dimen name="default_wide_menu_margin">300dp</dimen>
    <dimen name="default_view_margin">8dp</dimen>
    <dimen name="cell_horizontal_spacing">8dp</dimen>
    <dimen name="cell_vertical_spacing">2dp</dimen>
    <dimen name="calendar_date_title_text_size">18sp</dimen>
    <dimen name="button_list_item_vertical_padding">8dp</dimen>

    <!--Avatar-->
    <dimen name="avatar_size_text_margin_end">36dp</dimen>

    <!--ContextualCommandBar-->
    <dimen name="contextual_command_bar_space_title_width">100dp</dimen>

    <!--DatePickerDialog-->
    <dimen name="date_picker_range_title_padding_end">4dp</dimen>
    <dimen name="date_picker_range_title_width">50dp</dimen>

    <!--DemoListItem-->
    <dimen name="demo_list_item_padding_horizontal">@dimen/default_layout_margin</dimen>
    <dimen name="demo_list_item_padding_vertical">13.5dp</dimen>

    <!--Drawer-->
    <dimen name="drawer_persona_list_height">400dp</dimen>
    <dimen name="drawer_persona_list_width">300dp</dimen>
    <dimen name="drawer_button_top_margin">180dp</dimen>

    <!--Launch Screen-->
    <dimen name="fluentui_launch_logo_bottom_spacing">53dp</dimen>
    <dimen name="fluentui_launch_microsoft_logo_bottom_spacing">32dp</dimen>

    <!--Persistent BottomSheet-->
    <dimen name="fluentui_persistent_bottom_sheet_peek_height">110dp</dimen>
    <dimen name="fluentui_persistent_horizontal_item_right_margin">35dp</dimen>

    <!--Progress-->
    <dimen name="circular_progress_text_area_min_height">48dp</dimen>
    <dimen name="circular_progress_text_area_spacing">36dp</dimen>
    <dimen name="circular_progress_spacing">16dp</dimen>
    <!--Margin top is used to space the circular progress indicators evenly-->
    <dimen name="circular_progress_margin_top_medium">18dp</dimen>
    <dimen name="circular_progress_margin_top_small">8dp</dimen>
    <!--Linear Progress-->
    <dimen name="linear_progress_margin">20dp</dimen>

    <!--PopupMenu-->
    <dimen name="default_layout_margin_start_duo">@dimen/fluentui_popup_menu_duo_margin_start</dimen>>
    <dimen name="default_layout_margin_top_duo">@dimen/fluentui_popup_menu_duo_margin_top</dimen>>

    <!--Shared-->
    <dimen name="demo_headline_divider_height">@dimen/fluentui_divider_height</dimen>
    <dimen name="demo_headline_padding_bottom">4dp</dimen>

    <!--TabLayout-->
    <dimen name="tab_layout_pager_height">250dp</dimen>

    <!--Tooltip-->
    <dimen name="tooltip_example_offset_x">10dp</dimen>
    <dimen name="tooltip_example_offset_y">10dp</dimen>

    <!--TemplateView-->
    <dimen name="template_view_list_height">500dp</dimen>

    <!--image dimen-->
    <dimen name="image_size">24dp</dimen>
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

    <!-- Example theme with Android parent theme, you will have to override styles and attrs -->
    <style name="Base.AppTheme" parent="Theme.AppCompat.Light.DarkActionBar">
        <item name="colorPrimary">@color/fluentui_communication_blue</item>
        <item name="colorPrimaryDark">@color/fluentui_communication_shade_20</item>
        <item name="colorAccent">@color/fluentui_communication_blue</item>
        <item name="android:textColorPrimary">@color/fluentui_gray_900</item>
        <item name="windowActionBar">false</item>
        <item name="windowNoTitle">true</item>
        <item name="homeAsUpIndicator">@drawable/ms_ic_arrow_left_24_filled_toolbar</item>
        <item name="android:windowBackground">@color/fluentui_white</item>
        <!--Launch Screen: Remove the background that was set in the launch screen theme-->
        <item name="android:background">@null</item>
        <item name="android:statusBarColor">?android:colorPrimary</item>
        <item name="android:windowLightStatusBar" tools:targetApi="23">false</item>


        <!-- If you decide to use any of the attributes defined in Fluent Library in the demo app ,
             then those attrs should be defined in your theme or they should be wrapped in
             FluentUIContextWrapper if using programmatically -->
        <item name="fluentuiBackgroundColor">@color/fluentui_white</item>
        <item name="fluentuiForegroundColor">@color/fluentui_gray_900</item>
        <item name="fluentuiForegroundSecondaryColor">@color/fluentui_gray_500</item>


        <!-- Some of the Styles like Toolbar, Button, BottomNavigation or any other style supported
             by android can be directly set in the Theme. These can be used in 3 ways -

             1) Define your own custom style - Recommended for cases when you are not using the
                    components provided by Fluent library. for example if you want to use your own
                    buttons throughout the app and not FluentUI.Widget.Button.
                    Even then, if you decide to use Fluent UI Components then you can set the style
                    directly in Layout's XML file.
             2) Use Style Defined in Library - Recommended for cases when you use Fluent UI
                     component throughout the app. It will directly pick the attrs defined in the
                     styles and hence you do not need to declare them. But if in case you want some
                     attrs to be overridden you can easily do by re-declaring them. For example
                     <item name="fluentuiToolbarTitleTextColor">#ff0000</item> will change the
                     toolbar title color to red given you have set the style
             3) Use Style Defined in Library but using your own Widget - Not Recommended. But still
                    if you decide to do this.
                    Example - You have set Fluent Library Style
                    <item name="buttonStyle">@style/Widget.FluentUI.Button</item>
                    But in app you are not using FluentUI.Widget.Button and directly consuming
                    Button provided by android. So, you will face inconsistencies in color and
                    other attributes. To not face inconsistencies you will have to declare the
                    attrs defined in Library again.
                    <item name="fluentuiButtonBackgroundDefaultColor">your_color</item>
                    <item name="fluentuiButtonBackgroundDisabledColor">your_color</item>
                    for more attributes you can check themes.xml file and get list of attributes
                    that you need to override
             -->
        <item name="toolbarStyle">@style/Widget.FluentUI.Toolbar</item>
        <item name="actionOverflowButtonStyle">@style/Widget.FluentUI.Toolbar.OverflowButtonStyle</item>
        <item name="buttonStyle">@style/Widget.FluentUI.Button</item>
        <!-- We are declaring some attributes here as commented.
             This is to showcase what might happen if case 3 mentioned above is followed and you have
             not declared these. You can un-comment these to check correct output too.
             To test just use Android Button anywhere in the app and do not apply fluent button
             style to it

             <item name="fluentuiButtonBackgroundDefaultColor">@color/fluentui_communication_blue</item>
             <item name="fluentuiButtonTextDefaultColor">#ffffff</item>
             -->

        <!-- Some of the styles does not exist as components yet for example Radio Button or
             checkboxes but we do provide styles for these and hence the attributes for these
             will not be picked by our theme wrapper if it is not a fluent theme. So, in such
             cases attrs values must be set and they will not pick the default ones for example
             it is kind of mandatory to set fluentuiCompoundButtonTintDefaultColor and
             fluentuiCompoundButtonTintCheckedColor -->
        <item name="checkboxStyle">@style/Widget.FluentUI.CheckBox</item>
        <item name="radioButtonStyle">@style/Widget.FluentUI.RadioButton</item>
        <item name="fluentuiCompoundButtonTintDefaultColor">@color/fluentui_gray_400</item>
        <item name="fluentuiCompoundButtonTintCheckedColor">@color/fluentui_communication_blue</item>

        <!-- We are setting this value becuase it is being used in AppbarlayoutActivity. You can
             skip this, if you wrap the context with Fluent theme where this attr is declared -->
        <item name="fluentuiToolbarIconColor">@color/fluentui_white</item>

    </style>

    <!-- Example theme with Fluent Base theme, you will have to override styles, attrs will be
         directly picked -->
    <style name="Base.AppTheme.FluentCore" parent="Base.Theme.FluentUI">
        <item name="windowActionBar">false</item>
        <item name="windowNoTitle">true</item>
        <item name="homeAsUpIndicator">@drawable/ms_ic_arrow_left_24_filled_toolbar</item>
        <item name="android:windowBackground">@color/fluentui_white</item>
        <!--Launch Screen: Remove the background that was set in the launch screen theme-->
        <item name="android:background">@null</item>
        <item name="android:statusBarColor">?android:colorPrimary</item>
        <item name="android:windowLightStatusBar" tools:targetApi="23">false</item>
        <item name="toolbarStyle">@style/Widget.FluentUI.Toolbar</item>
        <item name="actionOverflowButtonStyle">@style/Widget.FluentUI.Toolbar.OverflowButtonStyle</item>
        <item name="buttonStyle">@style/Widget.FluentUI.Button</item>
        <item name="checkboxStyle">@style/Widget.FluentUI.CheckBox</item>
        <item name="radioButtonStyle">@style/Widget.FluentUI.RadioButton</item>
        <item name="fluentuiCompoundButtonTintDefaultColor">@color/fluentui_gray_400</item>
        <item name="fluentuiCompoundButtonTintCheckedColor">@color/fluentui_communication_blue</item>
    </style>

    <!-- Example theme with Fluent Container Base theme, you will not have to only look for what rest of the
         modules have set. Majorly everything is set for you in Fluent theme-->
    <style name="Base.AppTheme.FluentCommon" parent="Theme.FluentUI">
        <item name="windowActionBar">false</item>
        <item name="windowNoTitle">true</item>
        <item name="android:windowBackground">@color/fluentui_white</item>
        <!--Launch Screen: Remove the background that was set in the launch screen theme-->
        <item name="android:background">@null</item>
        <item name="android:statusBarColor">?android:colorPrimary</item>
        <item name="android:windowLightStatusBar" tools:targetApi="23">false</item>
    </style>

    <style name="AppTheme" parent="Base.AppTheme.FluentCommon" />

    <style name="AppTheme.Orange">
        <item name="colorPrimaryDark">#a52c00</item>
        <item name="colorPrimary">#d83b01</item>
        <item name="colorAccent">#d83b01</item>
    </style>

    <style name="Base.AppTheme.Neutral" parent="ThemeOverlay.FluentUI.NeutralAppBar">
        <item name="windowActionBar">false</item>
        <item name="windowNoTitle">true</item>
        <item name="android:windowBackground">?attr/fluentuiBackgroundColor</item>
        <item name="android:background">@null</item>
        <item name="android:statusBarColor">?attr/fluentuiBackgroundColor</item>
        <item name="android:windowLightStatusBar" tools:targetApi="23">true</item>
    </style>

    <style name="AppTheme.Neutral" parent="Base.AppTheme.Neutral" />

    <style name="Base.AppTheme.Launcher">
        <!--Use background instead of windowBackground to account for differences in bottom nav bar height treatment-->
        <item name="android:background">@drawable/fluentui_launch_screen</item>
        <item name="android:statusBarColor">?attr/fluentuiBackgroundColor</item>
        <item name="android:windowLightStatusBar" tools:targetApi="23">true</item>
    </style>

    <!--Launch Screen: This theme sets the launch screen for the app-->
    <style name="AppTheme.Launcher" parent="Base.AppTheme.Launcher" />

    <!--Demo-->
    <style name="Widget.DemoSubHeader" parent="@android:style/Widget.TextView">
        <item name="android:textAppearance">@style/TextAppearance.DemoSubHeader</item>
        <item name="android:layout_marginTop">16dp</item>
        <item name="android:layout_marginBottom">16dp</item>
    </style>

    <!--Demo font-->
    <!-- We should not be using attrs here, we should use colors directly
         Even then if we decide to use attrs, then those attrs should be defined in the theme
         For example fluentuiForegroundColor and colorPrimary are defined in Base.AppTheme -->

    <style name="TextAppearance.DemoListItem" parent="@style/TextAppearance.FluentUI.SubHeading1">
        <item name="android:textColor">?attr/fluentuiForegroundColor</item>
    </style>
    <style name="TextAppearance.ListItemValue" parent="@style/TextAppearance.FluentUI.SubHeading1">
        <item name="android:textColor">@color/fluentui_gray_500</item>
    </style>
    <style name="TextAppearance.DemoListItemSubtitle" parent="TextAppearance.FluentUI.Body1">
        <item name="android:textColor">@color/fluentui_gray_500</item>
    </style>
    <style name="TextAppearance.DemoSubHeader" parent="@style/TextAppearance.FluentUI.Body2">
        <item name="android:textColor">?attr/colorPrimary</item>
    </style>
    <style name="TextAppearance.DemoDescription" parent="@style/TextAppearance.FluentUI.SubHeading1">
        <item name="android:textColor">?attr/fluentuiForegroundColor</item>
    </style>
    <style name="TextAppearance.DemoDescription.Label" parent="@style/TextAppearance.FluentUI.SubHeading1">
        <item name="android:textColor">@color/fluentui_gray_500</item>
    </style>
    <style name="TextAppearance.DemoTitle" parent="@style/TextAppearance.FluentUI.Title1">
        <item name="android:textColor">?attr/fluentuiForegroundColor</item>
    </style>

    <!-- Tooltip Demo-->
    <style name="Demo.Tooltip.Button" parent="Widget.FluentUI.Button" />

    <!-- TabLayout Demo, for this style to be used you should declare attrs used or directly use
         color values -->
    <style name="FluentUIDemo.TabLayout" parent="">
        <item name="fluentui_containerBackgroundColor">?attr/fluentuiBackgroundPrimaryColor</item>
        <item name="fluentui_tabsBackgroundColor">@color/fluentui_communication_shade_10</item>
        <item name="fluentui_tabSelectedBackgroundColor">?attr/fluentuiBackgroundColor</item>
        <item name="fluentui_tabUnselectedBackgroundColor">@color/fluentui_communication_shade_10</item>
        <item name="fluentui_tabSelectedTextColor">?attr/fluentuiBackgroundPrimaryColor</item>
        <item name="fluentui_tabUnselectedTextColor">?attr/fluentuiBackgroundColor</item>
    </style>
    <!-- ListItem Demo -->
    <style name="FluentUIDemo.ListItemSubHeaderTitle" parent="">
        <item name="android:textColor">?attr/fluentuiForegroundSecondaryColor</item>
    </style>

    <style name="new_discovery_tag">
        <item name="android:layout_height">wrap_content</item>
        <item name="android:layout_width">wrap_content</item>
        <item name="android:layout_gravity">center</item>
        <item name="android:fontFamily">sans-serif</item>
        <item name="android:textColor">@color/fluentui_white</item>
        <item name="android:textSize">12sp</item>
    </style>

</resources>
```
