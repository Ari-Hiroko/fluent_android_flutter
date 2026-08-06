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
src/main/java/com/microsoft/fluentui/icons/__ActionBarIcons.kt
src/main/java/com/microsoft/fluentui/icons/__AvatarIcons.kt
src/main/java/com/microsoft/fluentui/icons/__CCBIcons.kt
src/main/java/com/microsoft/fluentui/icons/__ListItemIcons.kt
src/main/java/com/microsoft/fluentui/icons/__ProgressTextIcons.kt
src/main/java/com/microsoft/fluentui/icons/__SearchBarIcons.kt
src/main/java/com/microsoft/fluentui/icons/__ToolTipIcons.kt
src/main/java/com/microsoft/fluentui/icons/actionbaricons/Arrowright.kt
src/main/java/com/microsoft/fluentui/icons/actionbaricons/Chevron.kt
src/main/java/com/microsoft/fluentui/icons/appbaricons/__AppBarIcons.kt
src/main/java/com/microsoft/fluentui/icons/appbaricons/appbaricons/Arrowback.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/__Icon.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/__Presence.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/icon/__Anonymous.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/icon/__Standard.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/icon/anonymous/Large.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/icon/anonymous/Medium.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/icon/anonymous/Small.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/icon/anonymous/Xlarge.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/icon/anonymous/Xsmall.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/icon/anonymous/Xxlarge.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/icon/standard/Large.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/icon/standard/Medium.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/icon/standard/Small.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/icon/standard/Xlarge.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/icon/standard/Xsmall.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/icon/standard/Xxlarge.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/__Available.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/__Availableoof.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/__Away.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/__Awayoof.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/__Blocked.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/__Busy.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/__Busyoof.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/__Dark.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/__Dnd.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/__Dndoof.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/__Offline.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/__Oof.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/__Unknown.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/available/__Large.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/available/__Medium.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/available/__Small.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/available/large/Dark.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/available/large/Light.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/available/medium/Dark.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/available/medium/Light.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/available/small/Dark.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/available/small/Light.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/availableoof/__Large.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/availableoof/__Medium.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/availableoof/__Small.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/availableoof/large/Dark.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/availableoof/large/Light.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/availableoof/medium/Dark.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/availableoof/medium/Light.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/availableoof/small/Dark.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/availableoof/small/Light.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/away/__Large.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/away/__Medium.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/away/__Small.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/away/large/Dark.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/away/large/Light.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/away/medium/Dark.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/away/medium/Light.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/away/small/Dark.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/away/small/Light.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/awayoof/__Large.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/awayoof/__Medium.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/awayoof/__Small.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/awayoof/large/Dark.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/awayoof/large/Light.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/awayoof/medium/Dark.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/awayoof/medium/Light.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/awayoof/small/Dark.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/awayoof/small/Light.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/blocked/__Large.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/blocked/__Medium.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/blocked/__Small.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/blocked/large/Dark.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/blocked/large/Light.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/blocked/medium/Dark.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/blocked/medium/Light.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/blocked/small/Dark.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/blocked/small/Light.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/busy/__Large.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/busy/__Medium.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/busy/__Small.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/busy/large/Dark.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/busy/large/Light.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/busy/medium/Dark.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/busy/medium/Light.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/busy/small/Dark.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/busy/small/Light.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/busyoof/__Large.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/busyoof/__Medium.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/busyoof/__Small.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/busyoof/large/Dark.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/busyoof/large/Light.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/busyoof/medium/Dark.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/busyoof/medium/Light.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/busyoof/small/Dark.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/busyoof/small/Light.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/dark/__Large.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/dark/__Medium.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/dark/__Small.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/dnd/__Large.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/dnd/__Medium.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/dnd/__Small.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/dnd/large/Dark.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/dnd/large/Light.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/dnd/medium/Dark.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/dnd/medium/Light.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/dnd/small/Dark.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/dnd/small/Light.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/dndoof/__Large.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/dndoof/__Medium.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/dndoof/__Small.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/dndoof/large/Dark.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/dndoof/large/Light.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/dndoof/medium/Dark.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/dndoof/medium/Light.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/dndoof/small/Dark.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/dndoof/small/Light.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/offline/__Large.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/offline/__Medium.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/offline/__Small.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/offline/large/Dark.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/offline/large/Light.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/offline/medium/Dark.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/offline/medium/Light.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/offline/small/Dark.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/offline/small/Light.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/oof/__Large.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/oof/__Medium.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/oof/__Small.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/oof/large/Dark.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/oof/large/Light.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/oof/medium/Dark.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/oof/medium/Light.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/oof/small/Dark.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/oof/small/Light.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/unknown/__Large.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/unknown/__Medium.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/unknown/__Small.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/unknown/large/Dark.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/unknown/large/Light.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/unknown/medium/Dark.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/unknown/medium/Light.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/unknown/small/Dark.kt
src/main/java/com/microsoft/fluentui/icons/avataricons/presence/unknown/small/Light.kt
src/main/java/com/microsoft/fluentui/icons/ccbicons/Keyboarddismiss.kt
src/main/java/com/microsoft/fluentui/icons/listitemicons/Chevron.kt
src/main/java/com/microsoft/fluentui/icons/progresstexticons/DismissCircle.kt
src/main/java/com/microsoft/fluentui/icons/searchbaricons/Arrowback.kt
src/main/java/com/microsoft/fluentui/icons/searchbaricons/Dismisscircle.kt
src/main/java/com/microsoft/fluentui/icons/searchbaricons/Microphone.kt
src/main/java/com/microsoft/fluentui/icons/searchbaricons/Office.kt
src/main/java/com/microsoft/fluentui/icons/searchbaricons/Search.kt
src/main/java/com/microsoft/fluentui/icons/tooltipicons/Tip.kt
```

# Files

## File: src/main/java/com/microsoft/fluentui/icons/__ActionBarIcons.kt
```kotlin
package com.microsoft.fluentui.icons

import androidx.compose.ui.graphics.vector.ImageVector
import com.microsoft.fluentui.icons.actionbaricons.Arrowright
import com.microsoft.fluentui.icons.actionbaricons.Chevron
import kotlin.collections.List as ____KtList

object ActionBarIcons

private var __AllIcons: ____KtList<ImageVector>? = null

val ActionBarIcons.AllIcons: ____KtList<ImageVector>
  get() {
    if (__AllIcons != null) {
      return __AllIcons!!
    }
    __AllIcons= listOf(Arrowright, Chevron)
    return __AllIcons!!
  }
```

## File: src/main/java/com/microsoft/fluentui/icons/__AvatarIcons.kt
```kotlin
package com.microsoft.fluentui.icons

import androidx.compose.ui.graphics.vector.ImageVector
import com.microsoft.fluentui.icons.avataricons.AllIcons
import com.microsoft.fluentui.icons.avataricons.Icon
import com.microsoft.fluentui.icons.avataricons.Presence
import kotlin.collections.List as ____KtList

object AvatarIcons

private var __AllIcons: ____KtList<ImageVector>? = null

val AvatarIcons.AllIcons: ____KtList<ImageVector>
    get() {
        if (__AllIcons != null) {
            return __AllIcons!!
        }
        __AllIcons = Icon.AllIcons + Presence.AllIcons + listOf()
        return __AllIcons!!
    }
```

## File: src/main/java/com/microsoft/fluentui/icons/__CCBIcons.kt
```kotlin
package com.microsoft.fluentui.icons

import androidx.compose.ui.graphics.vector.ImageVector
import com.microsoft.fluentui.icons.ccbicons.Keyboarddismiss
import kotlin.collections.List as ____KtList

public object CCBIcons

private var __AllIcons: ____KtList<ImageVector>? = null

public val CCBIcons.AllIcons: ____KtList<ImageVector>
  get() {
    if (__AllIcons != null) {
      return __AllIcons!!
    }
    __AllIcons= listOf(Keyboarddismiss)
    return __AllIcons!!
  }
```

## File: src/main/java/com/microsoft/fluentui/icons/__ListItemIcons.kt
```kotlin
package com.microsoft.fluentui.icons

import androidx.compose.ui.graphics.vector.ImageVector
import com.microsoft.fluentui.icons.listitemicons.Chevron
import kotlin.collections.List as ____KtList

public object ListItemIcons

private var __AllIcons: ____KtList<ImageVector>? = null

public val ListItemIcons.AllIcons: ____KtList<ImageVector>
  get() {
    if (__AllIcons != null) {
      return __AllIcons!!
    }
    __AllIcons= listOf(Chevron)
    return __AllIcons!!
  }
```

## File: src/main/java/com/microsoft/fluentui/icons/__ProgressTextIcons.kt
```kotlin
package com.microsoft.fluentui.icons

import androidx.compose.ui.graphics.vector.ImageVector
import com.microsoft.fluentui.icons.progresstexticons.DismissCircle
import kotlin.collections.List as ____KtList

public object ProgressTextIcons

private var __AllIcons: ____KtList<ImageVector>? = null

public val ProgressTextIcons.AllIcons: ____KtList<ImageVector>
  get() {
    if (__AllIcons != null) {
      return __AllIcons!!
    }
    __AllIcons= listOf(DismissCircle)
    return __AllIcons!!
  }
```

## File: src/main/java/com/microsoft/fluentui/icons/__SearchBarIcons.kt
```kotlin
package com.microsoft.fluentui.icons

import androidx.compose.ui.graphics.vector.ImageVector
import com.microsoft.fluentui.icons.searchbaricons.*
import kotlin.collections.List as ____KtList

object SearchBarIcons

private var __AllIcons: ____KtList<ImageVector>? = null

val SearchBarIcons.AllIcons: ____KtList<ImageVector>
    get() {
        if (__AllIcons != null) {
            return __AllIcons!!
        }
        __AllIcons = listOf(Arrowback, Dismisscircle, Microphone, Office, Search)
        return __AllIcons!!
    }
```

## File: src/main/java/com/microsoft/fluentui/icons/__ToolTipIcons.kt
```kotlin
package com.microsoft.fluentui.icons

import androidx.compose.ui.graphics.vector.ImageVector
import com.microsoft.fluentui.icons.tooltipicons.Tip
import kotlin.collections.List as ____KtList

public object ToolTipIcons

private var __AllIcons: ____KtList<ImageVector>? = null

public val ToolTipIcons.AllIcons: ____KtList<ImageVector>
  get() {
    if (__AllIcons != null) {
      return __AllIcons!!
    }
    __AllIcons= listOf(Tip)
    return __AllIcons!!
  }
```

## File: src/main/java/com/microsoft/fluentui/icons/actionbaricons/Arrowright.kt
```kotlin
package com.microsoft.fluentui.icons.actionbaricons

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.ActionBarIcons

val ActionBarIcons.Arrowright: ImageVector
    get() {
        if (_arrowright != null) {
            return _arrowright!!
        }
        _arrowright = Builder(name = "Arrowright", defaultWidth = 20.0.dp, defaultHeight = 20.0.dp,
                viewportWidth = 20.0f, viewportHeight = 20.0f).apply {
            path(fill = SolidColor(Color(0xFF212121)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(10.8371f, 3.1307f)
                curveTo(10.6332f, 2.9446f, 10.3169f, 2.959f, 10.1307f, 3.1629f)
                curveTo(9.9446f, 3.3668f, 9.959f, 3.6831f, 10.1629f, 3.8693f)
                lineTo(16.3307f, 9.5f)
                horizontalLineTo(2.5f)
                curveTo(2.2239f, 9.5f, 2.0f, 9.7239f, 2.0f, 10.0f)
                curveTo(2.0f, 10.2761f, 2.2239f, 10.5f, 2.5f, 10.5f)
                horizontalLineTo(16.3279f)
                lineTo(10.1629f, 16.1281f)
                curveTo(9.959f, 16.3143f, 9.9446f, 16.6305f, 10.1307f, 16.8345f)
                curveTo(10.3169f, 17.0384f, 10.6332f, 17.0528f, 10.8371f, 16.8666f)
                lineTo(17.7535f, 10.5526f)
                curveTo(17.8934f, 10.4248f, 17.9732f, 10.2573f, 17.993f, 10.0841f)
                curveTo(17.9976f, 10.0568f, 18.0f, 10.0287f, 18.0f, 10.0f)
                curveTo(18.0f, 9.9731f, 17.9979f, 9.9467f, 17.9938f, 9.921f)
                curveTo(17.9756f, 9.7451f, 17.8955f, 9.5745f, 17.7535f, 9.4448f)
                lineTo(10.8371f, 3.1307f)
                close()
            }
        }
        .build()
        return _arrowright!!
    }

private var _arrowright: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/actionbaricons/Chevron.kt
```kotlin
package com.microsoft.fluentui.icons.actionbaricons

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.ActionBarIcons
import com.microsoft.fluentui.icons.ListItemIcons

val ActionBarIcons.Chevron: ImageVector
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

## File: src/main/java/com/microsoft/fluentui/icons/appbaricons/__AppBarIcons.kt
```kotlin
package com.microsoft.fluentui.icons.appbaricons

import androidx.compose.ui.graphics.vector.ImageVector
import com.microsoft.fluentui.icons.appbaricons.appbaricons.Arrowback
import kotlin.collections.List as ____KtList

public object AppBarIcons

private var __AllIcons: ____KtList<ImageVector>? = null

public val AppBarIcons.AllIcons: ____KtList<ImageVector>
  get() {
    if (__AllIcons != null) {
      return __AllIcons!!
    }
    __AllIcons= listOf(Arrowback)
    return __AllIcons!!
  }
```

## File: src/main/java/com/microsoft/fluentui/icons/appbaricons/appbaricons/Arrowback.kt
```kotlin
package com.microsoft.fluentui.icons.appbaricons.appbaricons

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.appbaricons.AppBarIcons

public val AppBarIcons.Arrowback: ImageVector
    get() {
        if (_arrowback != null) {
            return _arrowback!!
        }
        _arrowback = Builder(name = "Arrowback", defaultWidth = 24.0.dp, defaultHeight = 24.0.dp,
                viewportWidth = 24.0f, viewportHeight = 24.0f).apply {
            path(fill = SolidColor(Color(0xFF242424)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(10.7327f, 19.7905f)
                curveTo(11.0326f, 20.0762f, 11.5074f, 20.0646f, 11.7931f, 19.7647f)
                curveTo(12.0787f, 19.4648f, 12.0672f, 18.99f, 11.7673f, 18.7043f)
                lineTo(5.5159f, 12.7497f)
                lineTo(20.25f, 12.7497f)
                curveTo(20.6642f, 12.7497f, 21.0f, 12.4139f, 21.0f, 11.9997f)
                curveTo(21.0f, 11.5855f, 20.6642f, 11.2497f, 20.25f, 11.2497f)
                lineTo(5.5158f, 11.2497f)
                lineTo(11.7673f, 5.295f)
                curveTo(12.0672f, 5.0093f, 12.0787f, 4.5346f, 11.7931f, 4.2347f)
                curveTo(11.5074f, 3.9348f, 11.0326f, 3.9232f, 10.7327f, 4.2089f)
                lineTo(3.3138f, 11.2756f)
                curveTo(3.1449f, 11.4365f, 3.0449f, 11.6417f, 3.0139f, 11.8551f)
                curveTo(3.0048f, 11.9019f, 3.0f, 11.9503f, 3.0f, 11.9997f)
                curveTo(3.0f, 12.0493f, 3.0048f, 12.0977f, 3.014f, 12.1446f)
                curveTo(3.045f, 12.3579f, 3.145f, 12.563f, 3.3138f, 12.7238f)
                lineTo(10.7327f, 19.7905f)
                close()
            }
        }
        .build()
        return _arrowback!!
    }

private var _arrowback: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/__Icon.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons

import androidx.compose.ui.graphics.vector.ImageVector
import com.microsoft.fluentui.icons.AvatarIcons
import com.microsoft.fluentui.icons.avataricons.icon.AllIcons
import com.microsoft.fluentui.icons.avataricons.icon.Anonymous
import com.microsoft.fluentui.icons.avataricons.icon.Standard
import kotlin.collections.List as ____KtList

object IconGroup

val AvatarIcons.Icon: IconGroup
    get() = IconGroup

private var __AllIcons: ____KtList<ImageVector>? = null

val IconGroup.AllIcons: ____KtList<ImageVector>
    get() {
        if (__AllIcons != null) {
            return __AllIcons!!
        }
        __AllIcons = Anonymous.AllIcons + Standard.AllIcons + listOf()
        return __AllIcons!!
    }
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/__Presence.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons

import androidx.compose.ui.graphics.vector.ImageVector
import com.microsoft.fluentui.icons.AvatarIcons
import com.microsoft.fluentui.icons.avataricons.presence.*
import kotlin.collections.List as ____KtList

object PresenceGroup

val AvatarIcons.Presence: PresenceGroup
    get() = PresenceGroup

private var __AllIcons: ____KtList<ImageVector>? = null

val PresenceGroup.AllIcons: ____KtList<ImageVector>
    get() {
        if (__AllIcons != null) {
            return __AllIcons!!
        }
        __AllIcons = Available.AllIcons + Availableoof.AllIcons + Away.AllIcons + Awayoof.AllIcons +
                Blocked.AllIcons + Busy.AllIcons + Busyoof.AllIcons + Dark.AllIcons + Dnd.AllIcons +
                Dndoof.AllIcons + Offline.AllIcons + Oof.AllIcons + Unknown.AllIcons + listOf()
        return __AllIcons!!
    }
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/icon/__Anonymous.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.icon

import androidx.compose.ui.graphics.vector.ImageVector
import com.microsoft.fluentui.icons.avataricons.IconGroup
import com.microsoft.fluentui.icons.avataricons.icon.anonymous.*
import kotlin.collections.List as ____KtList

object AnonymousGroup

val IconGroup.Anonymous: AnonymousGroup
    get() = AnonymousGroup

private var __AllIcons: ____KtList<ImageVector>? = null

val AnonymousGroup.AllIcons: ____KtList<ImageVector>
    get() {
        if (__AllIcons != null) {
            return __AllIcons!!
        }
        __AllIcons = listOf(Large, Medium, Small, Xlarge, Xsmall, Xxlarge)
        return __AllIcons!!
    }
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/icon/__Standard.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.icon

import androidx.compose.ui.graphics.vector.ImageVector
import com.microsoft.fluentui.icons.avataricons.IconGroup
import com.microsoft.fluentui.icons.avataricons.icon.standard.*
import kotlin.collections.List as ____KtList

object StandardGroup

val IconGroup.Standard: StandardGroup
    get() = StandardGroup

private var __AllIcons: ____KtList<ImageVector>? = null

val StandardGroup.AllIcons: ____KtList<ImageVector>
    get() {
        if (__AllIcons != null) {
            return __AllIcons!!
        }
        __AllIcons = listOf(Large, Medium, Small, Xlarge, Xsmall, Xxlarge)
        return __AllIcons!!
    }
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/icon/anonymous/Large.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.icon.anonymous

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.avataricons.icon.AnonymousGroup

val AnonymousGroup.Large: ImageVector
    get() {
        if (_large != null) {
            return _large!!
        }
        _large = Builder(name = "Large", defaultWidth = 24.0.dp, defaultHeight = 24.0.dp,
                viewportWidth = 24.0f, viewportHeight = 24.0f).apply {
            path(fill = SolidColor(Color(0xFF616161)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(17.7542f, 13.9999f)
                curveTo(18.9962f, 13.9999f, 20.003f, 15.0068f, 20.003f, 16.2488f)
                verticalLineTo(16.8242f)
                curveTo(20.003f, 17.7185f, 19.6835f, 18.5833f, 19.1019f, 19.2627f)
                curveTo(17.5326f, 21.0962f, 15.1454f, 22.0011f, 12.0f, 22.0011f)
                curveTo(8.8541f, 22.0011f, 6.4681f, 21.0959f, 4.9018f, 19.2617f)
                curveTo(4.3221f, 18.5828f, 4.0035f, 17.7193f, 4.0035f, 16.8265f)
                verticalLineTo(16.2488f)
                curveTo(4.0035f, 15.0068f, 5.0104f, 13.9999f, 6.2524f, 13.9999f)
                horizontalLineTo(17.7542f)
                close()
                moveTo(17.7542f, 15.4999f)
                horizontalLineTo(6.2524f)
                curveTo(5.8388f, 15.4999f, 5.5035f, 15.8352f, 5.5035f, 16.2488f)
                verticalLineTo(16.8265f)
                curveTo(5.5035f, 17.3622f, 5.6947f, 17.8802f, 6.0425f, 18.2876f)
                curveTo(7.2958f, 19.7553f, 9.2617f, 20.5011f, 12.0f, 20.5011f)
                curveTo(14.7383f, 20.5011f, 16.7059f, 19.7553f, 17.9624f, 18.2873f)
                curveTo(18.3113f, 17.8797f, 18.503f, 17.3608f, 18.503f, 16.8242f)
                verticalLineTo(16.2488f)
                curveTo(18.503f, 15.8352f, 18.1678f, 15.4999f, 17.7542f, 15.4999f)
                close()
                moveTo(12.0f, 2.0046f)
                curveTo(14.7614f, 2.0046f, 17.0f, 4.2432f, 17.0f, 7.0046f)
                curveTo(17.0f, 9.7661f, 14.7614f, 12.0046f, 12.0f, 12.0046f)
                curveTo(9.2386f, 12.0046f, 7.0f, 9.7661f, 7.0f, 7.0046f)
                curveTo(7.0f, 4.2432f, 9.2386f, 2.0046f, 12.0f, 2.0046f)
                close()
                moveTo(12.0f, 3.5046f)
                curveTo(10.067f, 3.5046f, 8.5f, 5.0716f, 8.5f, 7.0046f)
                curveTo(8.5f, 8.9376f, 10.067f, 10.5046f, 12.0f, 10.5046f)
                curveTo(13.933f, 10.5046f, 15.5f, 8.9376f, 15.5f, 7.0046f)
                curveTo(15.5f, 5.0716f, 13.933f, 3.5046f, 12.0f, 3.5046f)
                close()
            }
        }
                .build()
        return _large!!
    }

private var _large: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/icon/anonymous/Medium.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.icon.anonymous

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.avataricons.icon.AnonymousGroup

val AnonymousGroup.Medium: ImageVector
    get() {
        if (_medium != null) {
            return _medium!!
        }
        _medium = Builder(name = "Medium", defaultWidth = 20.0.dp, defaultHeight = 20.0.dp,
                viewportWidth = 20.0f, viewportHeight = 20.0f).apply {
            path(fill = SolidColor(Color(0xFF616161)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(10.0f, 2.0f)
                curveTo(7.7909f, 2.0f, 6.0f, 3.7909f, 6.0f, 6.0f)
                curveTo(6.0f, 8.2091f, 7.7909f, 10.0f, 10.0f, 10.0f)
                curveTo(12.2091f, 10.0f, 14.0f, 8.2091f, 14.0f, 6.0f)
                curveTo(14.0f, 3.7909f, 12.2091f, 2.0f, 10.0f, 2.0f)
                close()
                moveTo(7.0f, 6.0f)
                curveTo(7.0f, 4.3432f, 8.3432f, 3.0f, 10.0f, 3.0f)
                curveTo(11.6569f, 3.0f, 13.0f, 4.3432f, 13.0f, 6.0f)
                curveTo(13.0f, 7.6568f, 11.6569f, 9.0f, 10.0f, 9.0f)
                curveTo(8.3432f, 9.0f, 7.0f, 7.6568f, 7.0f, 6.0f)
                close()
                moveTo(5.0087f, 11.0f)
                curveTo(3.9032f, 11.0f, 3.0f, 11.8869f, 3.0f, 13.0f)
                curveTo(3.0f, 14.6912f, 3.8328f, 15.9663f, 5.135f, 16.7966f)
                curveTo(6.417f, 17.614f, 8.1453f, 18.0f, 10.0f, 18.0f)
                curveTo(11.8547f, 18.0f, 13.583f, 17.614f, 14.865f, 16.7966f)
                curveTo(16.1672f, 15.9663f, 17.0f, 14.6912f, 17.0f, 13.0f)
                curveTo(17.0f, 11.8956f, 16.1045f, 11.0f, 15.0f, 11.0f)
                lineTo(5.0087f, 11.0f)
                close()
                moveTo(4.0f, 13.0f)
                curveTo(4.0f, 12.4467f, 4.4479f, 12.0f, 5.0087f, 12.0f)
                lineTo(15.0f, 12.0f)
                curveTo(15.5522f, 12.0f, 16.0f, 12.4478f, 16.0f, 13.0f)
                curveTo(16.0f, 14.3088f, 15.3777f, 15.2837f, 14.3274f, 15.9534f)
                curveTo(13.2568f, 16.636f, 11.7351f, 17.0f, 10.0f, 17.0f)
                curveTo(8.2649f, 17.0f, 6.7432f, 16.636f, 5.6726f, 15.9534f)
                curveTo(4.6223f, 15.2837f, 4.0f, 14.3088f, 4.0f, 13.0f)
                close()
            }
        }
                .build()
        return _medium!!
    }

private var _medium: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/icon/anonymous/Small.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.icon.anonymous

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.avataricons.icon.AnonymousGroup

val AnonymousGroup.Small: ImageVector
    get() {
        if (_small != null) {
            return _small!!
        }
        _small = Builder(name = "Small", defaultWidth = 16.0.dp, defaultHeight = 16.0.dp,
                viewportWidth = 16.0f, viewportHeight = 16.0f).apply {
            path(fill = SolidColor(Color(0xFF616161)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(11.5f, 8.0f)
                curveTo(12.3284f, 8.0f, 13.0f, 8.6716f, 13.0f, 9.5f)
                verticalLineTo(10.0f)
                curveTo(13.0f, 11.9714f, 11.1405f, 14.0f, 8.0f, 14.0f)
                curveTo(4.8595f, 14.0f, 3.0f, 11.9714f, 3.0f, 10.0f)
                verticalLineTo(9.5f)
                curveTo(3.0f, 8.6716f, 3.6716f, 8.0f, 4.5f, 8.0f)
                horizontalLineTo(11.5f)
                close()
                moveTo(11.5f, 9.0f)
                horizontalLineTo(4.5f)
                curveTo(4.2239f, 9.0f, 4.0f, 9.2239f, 4.0f, 9.5f)
                verticalLineTo(10.0f)
                curveTo(4.0f, 11.4376f, 5.4322f, 13.0f, 8.0f, 13.0f)
                curveTo(10.5678f, 13.0f, 12.0f, 11.4376f, 12.0f, 10.0f)
                verticalLineTo(9.5f)
                curveTo(12.0f, 9.2239f, 11.7761f, 9.0f, 11.5f, 9.0f)
                close()
                moveTo(8.0f, 1.5f)
                curveTo(9.5188f, 1.5f, 10.75f, 2.7312f, 10.75f, 4.25f)
                curveTo(10.75f, 5.7688f, 9.5188f, 7.0f, 8.0f, 7.0f)
                curveTo(6.4812f, 7.0f, 5.25f, 5.7688f, 5.25f, 4.25f)
                curveTo(5.25f, 2.7312f, 6.4812f, 1.5f, 8.0f, 1.5f)
                close()
                moveTo(8.0f, 2.5f)
                curveTo(7.0335f, 2.5f, 6.25f, 3.2835f, 6.25f, 4.25f)
                curveTo(6.25f, 5.2165f, 7.0335f, 6.0f, 8.0f, 6.0f)
                curveTo(8.9665f, 6.0f, 9.75f, 5.2165f, 9.75f, 4.25f)
                curveTo(9.75f, 3.2835f, 8.9665f, 2.5f, 8.0f, 2.5f)
                close()
            }
        }
                .build()
        return _small!!
    }

private var _small: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/icon/anonymous/Xlarge.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.icon.anonymous

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.avataricons.icon.AnonymousGroup

val AnonymousGroup.Xlarge: ImageVector
    get() {
        if (_xlarge != null) {
            return _xlarge!!
        }
        _xlarge = Builder(name = "Xlarge", defaultWidth = 28.0.dp, defaultHeight = 28.0.dp,
                viewportWidth = 28.0f, viewportHeight = 28.0f).apply {
            path(fill = SolidColor(Color(0xFF616161)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(21.0f, 16.0f)
                curveTo(22.6569f, 16.0f, 24.0f, 17.3431f, 24.0f, 19.0f)
                verticalLineTo(19.7146f)
                curveTo(24.0f, 23.2924f, 19.7895f, 26.0f, 14.0f, 26.0f)
                curveTo(8.2105f, 26.0f, 4.0f, 23.4333f, 4.0f, 19.7146f)
                verticalLineTo(19.0f)
                curveTo(4.0f, 17.3431f, 5.3432f, 16.0f, 7.0f, 16.0f)
                horizontalLineTo(21.0f)
                close()
                moveTo(21.0f, 17.5f)
                horizontalLineTo(7.0f)
                curveTo(6.2203f, 17.5f, 5.5795f, 18.0949f, 5.5069f, 18.8555f)
                lineTo(5.5f, 19.0f)
                verticalLineTo(19.7146f)
                curveTo(5.5f, 22.389f, 8.8888f, 24.5f, 14.0f, 24.5f)
                curveTo(18.926f, 24.5f, 22.3548f, 22.3951f, 22.4955f, 19.876f)
                lineTo(22.5f, 19.7146f)
                verticalLineTo(19.0f)
                curveTo(22.5f, 18.2203f, 21.9051f, 17.5796f, 21.1445f, 17.5069f)
                lineTo(21.0f, 17.5f)
                close()
                moveTo(14.0f, 2.0f)
                curveTo(17.3137f, 2.0f, 20.0f, 4.6863f, 20.0f, 8.0f)
                curveTo(20.0f, 11.3137f, 17.3137f, 14.0f, 14.0f, 14.0f)
                curveTo(10.6863f, 14.0f, 8.0f, 11.3137f, 8.0f, 8.0f)
                curveTo(8.0f, 4.6863f, 10.6863f, 2.0f, 14.0f, 2.0f)
                close()
                moveTo(14.0f, 3.5f)
                curveTo(11.5147f, 3.5f, 9.5f, 5.5147f, 9.5f, 8.0f)
                curveTo(9.5f, 10.4853f, 11.5147f, 12.5f, 14.0f, 12.5f)
                curveTo(16.4853f, 12.5f, 18.5f, 10.4853f, 18.5f, 8.0f)
                curveTo(18.5f, 5.5147f, 16.4853f, 3.5f, 14.0f, 3.5f)
                close()
            }
        }
                .build()
        return _xlarge!!
    }

private var _xlarge: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/icon/anonymous/Xsmall.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.icon.anonymous

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.avataricons.icon.AnonymousGroup

val AnonymousGroup.Xsmall: ImageVector
    get() {
        if (_xsmall != null) {
            return _xsmall!!
        }
        _xsmall = Builder(name = "Xsmall", defaultWidth = 12.0.dp, defaultHeight = 12.0.dp,
                viewportWidth = 12.0f, viewportHeight = 12.0f).apply {
            path(fill = SolidColor(Color(0xFF616161)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(6.0f, 1.0f)
                curveTo(4.8954f, 1.0f, 4.0f, 1.8954f, 4.0f, 3.0f)
                curveTo(4.0f, 4.1046f, 4.8954f, 5.0f, 6.0f, 5.0f)
                curveTo(7.1046f, 5.0f, 8.0f, 4.1046f, 8.0f, 3.0f)
                curveTo(8.0f, 1.8954f, 7.1046f, 1.0f, 6.0f, 1.0f)
                close()
                moveTo(5.0f, 3.0f)
                curveTo(5.0f, 2.4477f, 5.4477f, 2.0f, 6.0f, 2.0f)
                curveTo(6.5523f, 2.0f, 7.0f, 2.4477f, 7.0f, 3.0f)
                curveTo(7.0f, 3.5523f, 6.5523f, 4.0f, 6.0f, 4.0f)
                curveTo(5.4477f, 4.0f, 5.0f, 3.5523f, 5.0f, 3.0f)
                close()
                moveTo(8.5f, 6.0f)
                lineTo(3.5f, 6.0f)
                curveTo(2.6716f, 6.0f, 2.0f, 6.6716f, 2.0f, 7.5f)
                curveTo(2.0f, 8.6161f, 2.459f, 9.5103f, 3.2122f, 10.1148f)
                curveTo(3.9534f, 10.7098f, 4.9469f, 11.0f, 6.0f, 11.0f)
                curveTo(7.0531f, 11.0f, 8.0466f, 10.7098f, 8.7879f, 10.1148f)
                curveTo(9.541f, 9.5103f, 10.0f, 8.6161f, 10.0f, 7.5f)
                curveTo(10.0f, 6.6716f, 9.3284f, 6.0f, 8.5f, 6.0f)
                close()
                moveTo(3.5f, 7.0f)
                lineTo(8.5f, 7.0f)
                curveTo(8.7761f, 7.0f, 9.0f, 7.2239f, 9.0f, 7.5f)
                curveTo(9.0f, 8.3169f, 8.6755f, 8.9227f, 8.1619f, 9.335f)
                curveTo(7.6364f, 9.7567f, 6.8799f, 10.0f, 6.0f, 10.0f)
                curveTo(5.1201f, 10.0f, 4.3636f, 9.7567f, 3.8381f, 9.335f)
                curveTo(3.3245f, 8.9227f, 3.0f, 8.3169f, 3.0f, 7.5f)
                curveTo(3.0f, 7.2239f, 3.2239f, 7.0f, 3.5f, 7.0f)
                close()
            }
        }
                .build()
        return _xsmall!!
    }

private var _xsmall: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/icon/anonymous/Xxlarge.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.icon.anonymous

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.avataricons.icon.AnonymousGroup

val AnonymousGroup.Xxlarge: ImageVector
    get() {
        if (_xxlarge != null) {
            return _xxlarge!!
        }
        _xxlarge = Builder(name = "Xxlarge", defaultWidth = 48.0.dp, defaultHeight = 48.0.dp,
                viewportWidth = 48.0f, viewportHeight = 48.0f).apply {
            path(fill = SolidColor(Color(0xFF616161)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(24.0f, 4.0f)
                curveTo(18.4772f, 4.0f, 14.0f, 8.4771f, 14.0f, 14.0f)
                curveTo(14.0f, 19.5228f, 18.4772f, 24.0f, 24.0f, 24.0f)
                curveTo(29.5228f, 24.0f, 34.0f, 19.5228f, 34.0f, 14.0f)
                curveTo(34.0f, 8.4771f, 29.5228f, 4.0f, 24.0f, 4.0f)
                close()
                moveTo(16.5f, 14.0f)
                curveTo(16.5f, 9.8579f, 19.8579f, 6.5f, 24.0f, 6.5f)
                curveTo(28.1421f, 6.5f, 31.5f, 9.8579f, 31.5f, 14.0f)
                curveTo(31.5f, 18.1421f, 28.1421f, 21.5f, 24.0f, 21.5f)
                curveTo(19.8579f, 21.5f, 16.5f, 18.1421f, 16.5f, 14.0f)
                close()
                moveTo(12.2499f, 28.0f)
                curveTo(9.9033f, 28.0f, 8.0f, 29.9013f, 8.0f, 32.2489f)
                lineTo(8.0f, 33.0f)
                curveTo(8.0f, 36.7555f, 9.9417f, 39.5669f, 12.9202f, 41.3802f)
                curveTo(15.8491f, 43.1633f, 19.7861f, 44.0f, 24.0f, 44.0f)
                curveTo(28.2139f, 44.0f, 32.1509f, 43.1633f, 35.0798f, 41.3802f)
                curveTo(38.0583f, 39.5669f, 40.0f, 36.7555f, 40.0f, 33.0f)
                lineTo(40.0f, 32.2487f)
                curveTo(40.0f, 29.9011f, 38.0967f, 28.0f, 35.7502f, 28.0f)
                horizontalLineTo(12.2499f)
                close()
                moveTo(10.5f, 32.2489f)
                curveTo(10.5f, 31.283f, 11.283f, 30.5f, 12.2499f, 30.5f)
                horizontalLineTo(35.7502f)
                curveTo(36.7171f, 30.5f, 37.5f, 31.2829f, 37.5f, 32.2488f)
                lineTo(37.5f, 33.0f)
                curveTo(37.5f, 35.7444f, 36.1398f, 37.8081f, 33.7798f, 39.2448f)
                curveTo(31.3703f, 40.7117f, 27.9323f, 41.5f, 24.0f, 41.5f)
                curveTo(20.0677f, 41.5f, 16.6297f, 40.7117f, 14.2202f, 39.2448f)
                curveTo(11.8602f, 37.8081f, 10.5f, 35.7444f, 10.5f, 33.0f)
                lineTo(10.5f, 32.2489f)
                close()
            }
        }
                .build()
        return _xxlarge!!
    }

private var _xxlarge: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/icon/standard/Large.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.icon.standard

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.avataricons.icon.StandardGroup

val StandardGroup.Large: ImageVector
    get() {
        if (_large != null) {
            return _large!!
        }
        _large = Builder(name = "Large", defaultWidth = 24.0.dp, defaultHeight = 24.0.dp,
                viewportWidth = 24.0f, viewportHeight = 24.0f).apply {
            path(fill = SolidColor(Color(0xFFffffff)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(17.7542f, 13.9997f)
                curveTo(18.9962f, 13.9997f, 20.003f, 15.0065f, 20.003f, 16.2486f)
                verticalLineTo(17.167f)
                curveTo(20.003f, 17.7404f, 19.8238f, 18.2994f, 19.4905f, 18.7659f)
                curveTo(17.9446f, 20.9292f, 15.4203f, 22.0008f, 12.0f, 22.0008f)
                curveTo(8.579f, 22.0008f, 6.0561f, 20.9287f, 4.5139f, 18.7643f)
                curveTo(4.182f, 18.2984f, 4.0035f, 17.7406f, 4.0035f, 17.1685f)
                verticalLineTo(16.2486f)
                curveTo(4.0035f, 15.0065f, 5.0104f, 13.9997f, 6.2524f, 13.9997f)
                horizontalLineTo(17.7542f)
                close()
                moveTo(12.0f, 2.0044f)
                curveTo(14.7614f, 2.0044f, 17.0f, 4.243f, 17.0f, 7.0044f)
                curveTo(17.0f, 9.7658f, 14.7614f, 12.0044f, 12.0f, 12.0044f)
                curveTo(9.2386f, 12.0044f, 7.0f, 9.7658f, 7.0f, 7.0044f)
                curveTo(7.0f, 4.243f, 9.2386f, 2.0044f, 12.0f, 2.0044f)
                close()
            }
        }
                .build()
        return _large!!
    }

private var _large: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/icon/standard/Medium.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.icon.standard

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.avataricons.icon.StandardGroup

val StandardGroup.Medium: ImageVector
    get() {
        if (_medium != null) {
            return _medium!!
        }
        _medium = Builder(name = "Medium", defaultWidth = 20.0.dp, defaultHeight = 20.0.dp,
                viewportWidth = 20.0f, viewportHeight = 20.0f).apply {
            path(fill = SolidColor(Color(0xFFffffff)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(10.0f, 2.0f)
                curveTo(7.7909f, 2.0f, 6.0f, 3.7909f, 6.0f, 6.0f)
                curveTo(6.0f, 8.2091f, 7.7909f, 10.0f, 10.0f, 10.0f)
                curveTo(12.2091f, 10.0f, 14.0f, 8.2091f, 14.0f, 6.0f)
                curveTo(14.0f, 3.7909f, 12.2091f, 2.0f, 10.0f, 2.0f)
                close()
                moveTo(5.0087f, 11.0f)
                curveTo(3.9032f, 11.0f, 3.0f, 11.8869f, 3.0f, 13.0f)
                curveTo(3.0f, 14.6912f, 3.8328f, 15.9663f, 5.135f, 16.7966f)
                curveTo(6.417f, 17.614f, 8.1453f, 18.0f, 10.0f, 18.0f)
                curveTo(11.8547f, 18.0f, 13.583f, 17.614f, 14.865f, 16.7966f)
                curveTo(16.1672f, 15.9663f, 17.0f, 14.6912f, 17.0f, 13.0f)
                curveTo(17.0f, 11.8956f, 16.1045f, 11.0f, 15.0f, 11.0f)
                lineTo(5.0087f, 11.0f)
                close()
            }
        }
                .build()
        return _medium!!
    }

private var _medium: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/icon/standard/Small.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.icon.standard

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.avataricons.icon.StandardGroup

val StandardGroup.Small: ImageVector
    get() {
        if (_small != null) {
            return _small!!
        }
        _small = Builder(name = "Small", defaultWidth = 16.0.dp, defaultHeight = 16.0.dp,
                viewportWidth = 16.0f, viewportHeight = 16.0f).apply {
            path(fill = SolidColor(Color(0xFFffffff)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(11.5f, 8.0f)
                curveTo(12.3284f, 8.0f, 13.0f, 8.6716f, 13.0f, 9.5f)
                verticalLineTo(10.0f)
                curveTo(13.0f, 11.9714f, 11.1405f, 14.0f, 8.0f, 14.0f)
                curveTo(4.8595f, 14.0f, 3.0f, 11.9714f, 3.0f, 10.0f)
                verticalLineTo(9.5f)
                curveTo(3.0f, 8.6716f, 3.6716f, 8.0f, 4.5f, 8.0f)
                horizontalLineTo(11.5f)
                close()
                moveTo(8.0f, 1.5f)
                curveTo(9.5188f, 1.5f, 10.75f, 2.7312f, 10.75f, 4.25f)
                curveTo(10.75f, 5.7688f, 9.5188f, 7.0f, 8.0f, 7.0f)
                curveTo(6.4812f, 7.0f, 5.25f, 5.7688f, 5.25f, 4.25f)
                curveTo(5.25f, 2.7312f, 6.4812f, 1.5f, 8.0f, 1.5f)
                close()
            }
        }
                .build()
        return _small!!
    }

private var _small: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/icon/standard/Xlarge.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.icon.standard

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.avataricons.icon.StandardGroup

val StandardGroup.Xlarge: ImageVector
    get() {
        if (_xlarge != null) {
            return _xlarge!!
        }
        _xlarge = Builder(name = "Xlarge", defaultWidth = 28.0.dp, defaultHeight = 28.0.dp,
                viewportWidth = 28.0f, viewportHeight = 28.0f).apply {
            path(fill = SolidColor(Color(0xFFffffff)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(21.0f, 16.0f)
                curveTo(22.6569f, 16.0f, 24.0f, 17.3431f, 24.0f, 19.0f)
                verticalLineTo(19.7146f)
                curveTo(24.0f, 23.2924f, 19.7895f, 26.0f, 14.0f, 26.0f)
                curveTo(8.2105f, 26.0f, 4.0f, 23.4333f, 4.0f, 19.7146f)
                verticalLineTo(19.0f)
                curveTo(4.0f, 17.3431f, 5.3432f, 16.0f, 7.0f, 16.0f)
                horizontalLineTo(21.0f)
                close()
                moveTo(14.0f, 2.0f)
                curveTo(17.3137f, 2.0f, 20.0f, 4.6863f, 20.0f, 8.0f)
                curveTo(20.0f, 11.3137f, 17.3137f, 14.0f, 14.0f, 14.0f)
                curveTo(10.6863f, 14.0f, 8.0f, 11.3137f, 8.0f, 8.0f)
                curveTo(8.0f, 4.6863f, 10.6863f, 2.0f, 14.0f, 2.0f)
                close()
            }
        }
                .build()
        return _xlarge!!
    }

private var _xlarge: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/icon/standard/Xsmall.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.icon.standard

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.avataricons.icon.StandardGroup

val StandardGroup.Xsmall: ImageVector
    get() {
        if (_xsmall != null) {
            return _xsmall!!
        }
        _xsmall = Builder(name = "Xsmall", defaultWidth = 12.0.dp, defaultHeight = 12.0.dp,
                viewportWidth = 12.0f, viewportHeight = 12.0f).apply {
            path(fill = SolidColor(Color(0xFFffffff)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(6.0f, 1.0f)
                curveTo(4.8954f, 1.0f, 4.0f, 1.8954f, 4.0f, 3.0f)
                curveTo(4.0f, 4.1046f, 4.8954f, 5.0f, 6.0f, 5.0f)
                curveTo(7.1046f, 5.0f, 8.0f, 4.1046f, 8.0f, 3.0f)
                curveTo(8.0f, 1.8954f, 7.1046f, 1.0f, 6.0f, 1.0f)
                close()
                moveTo(8.5f, 6.0f)
                lineTo(3.5f, 6.0f)
                curveTo(2.6716f, 6.0f, 2.0f, 6.6716f, 2.0f, 7.5f)
                curveTo(2.0f, 8.6161f, 2.459f, 9.5103f, 3.2122f, 10.1148f)
                curveTo(3.9534f, 10.7098f, 4.9469f, 11.0f, 6.0f, 11.0f)
                curveTo(7.0531f, 11.0f, 8.0466f, 10.7098f, 8.7879f, 10.1148f)
                curveTo(9.541f, 9.5103f, 10.0f, 8.6161f, 10.0f, 7.5f)
                curveTo(10.0f, 6.6716f, 9.3284f, 6.0f, 8.5f, 6.0f)
                close()
            }
        }
                .build()
        return _xsmall!!
    }

private var _xsmall: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/icon/standard/Xxlarge.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.icon.standard

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.avataricons.icon.StandardGroup

val StandardGroup.Xxlarge: ImageVector
    get() {
        if (_xxlarge != null) {
            return _xxlarge!!
        }
        _xxlarge = Builder(name = "Xxlarge", defaultWidth = 48.0.dp, defaultHeight = 48.0.dp,
                viewportWidth = 48.0f, viewportHeight = 48.0f).apply {
            path(fill = SolidColor(Color(0xFFffffff)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(24.0f, 4.0f)
                curveTo(18.4772f, 4.0f, 14.0f, 8.4771f, 14.0f, 14.0f)
                curveTo(14.0f, 19.5228f, 18.4772f, 24.0f, 24.0f, 24.0f)
                curveTo(29.5228f, 24.0f, 34.0f, 19.5228f, 34.0f, 14.0f)
                curveTo(34.0f, 8.4771f, 29.5228f, 4.0f, 24.0f, 4.0f)
                close()
                moveTo(12.2499f, 28.0f)
                curveTo(9.9033f, 28.0f, 8.0f, 29.9013f, 8.0f, 32.2489f)
                lineTo(8.0f, 33.0f)
                curveTo(8.0f, 36.7555f, 9.9417f, 39.5669f, 12.9202f, 41.3802f)
                curveTo(15.8491f, 43.1633f, 19.7861f, 44.0f, 24.0f, 44.0f)
                curveTo(28.2139f, 44.0f, 32.1509f, 43.1633f, 35.0798f, 41.3802f)
                curveTo(38.0583f, 39.5669f, 40.0f, 36.7555f, 40.0f, 33.0f)
                lineTo(40.0f, 32.2487f)
                curveTo(40.0f, 29.9011f, 38.0967f, 28.0f, 35.7502f, 28.0f)
                horizontalLineTo(12.2499f)
                close()
            }
        }
                .build()
        return _xxlarge!!
    }

private var _xxlarge: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/__Available.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence

import androidx.compose.ui.graphics.vector.ImageVector
import com.microsoft.fluentui.icons.avataricons.PresenceGroup
import com.microsoft.fluentui.icons.avataricons.presence.available.AllIcons
import com.microsoft.fluentui.icons.avataricons.presence.available.Large
import com.microsoft.fluentui.icons.avataricons.presence.available.Medium
import com.microsoft.fluentui.icons.avataricons.presence.available.Small
import kotlin.collections.List as ____KtList

object AvailableGroup

val PresenceGroup.Available: AvailableGroup
    get() = AvailableGroup

private var __AllIcons: ____KtList<ImageVector>? = null

val AvailableGroup.AllIcons: ____KtList<ImageVector>
    get() {
        if (__AllIcons != null) {
            return __AllIcons!!
        }
        __AllIcons = Large.AllIcons + Medium.AllIcons + Small.AllIcons + listOf()
        return __AllIcons!!
    }
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/__Availableoof.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence

import androidx.compose.ui.graphics.vector.ImageVector
import com.microsoft.fluentui.icons.avataricons.PresenceGroup
import com.microsoft.fluentui.icons.avataricons.presence.availableoof.AllIcons
import com.microsoft.fluentui.icons.avataricons.presence.availableoof.Large
import com.microsoft.fluentui.icons.avataricons.presence.availableoof.Medium
import com.microsoft.fluentui.icons.avataricons.presence.availableoof.Small
import kotlin.collections.List as ____KtList

object AvailableoofGroup

val PresenceGroup.Availableoof: AvailableoofGroup
    get() = AvailableoofGroup

private var __AllIcons: ____KtList<ImageVector>? = null

val AvailableoofGroup.AllIcons: ____KtList<ImageVector>
    get() {
        if (__AllIcons != null) {
            return __AllIcons!!
        }
        __AllIcons = Large.AllIcons + Medium.AllIcons + Small.AllIcons + listOf()
        return __AllIcons!!
    }
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/__Away.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence

import androidx.compose.ui.graphics.vector.ImageVector
import com.microsoft.fluentui.icons.avataricons.PresenceGroup
import com.microsoft.fluentui.icons.avataricons.presence.away.AllIcons
import com.microsoft.fluentui.icons.avataricons.presence.away.Large
import com.microsoft.fluentui.icons.avataricons.presence.away.Medium
import com.microsoft.fluentui.icons.avataricons.presence.away.Small
import kotlin.collections.List as ____KtList

object AwayGroup

val PresenceGroup.Away: AwayGroup
    get() = AwayGroup

private var __AllIcons: ____KtList<ImageVector>? = null

val AwayGroup.AllIcons: ____KtList<ImageVector>
    get() {
        if (__AllIcons != null) {
            return __AllIcons!!
        }
        __AllIcons = Large.AllIcons + Medium.AllIcons + Small.AllIcons + listOf()
        return __AllIcons!!
    }
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/__Awayoof.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence

import androidx.compose.ui.graphics.vector.ImageVector
import com.microsoft.fluentui.icons.avataricons.PresenceGroup
import com.microsoft.fluentui.icons.avataricons.presence.awayoof.AllIcons
import com.microsoft.fluentui.icons.avataricons.presence.awayoof.Large
import com.microsoft.fluentui.icons.avataricons.presence.awayoof.Medium
import com.microsoft.fluentui.icons.avataricons.presence.awayoof.Small
import kotlin.collections.List as ____KtList

object AwayoofGroup

val PresenceGroup.Awayoof: AwayoofGroup
    get() = AwayoofGroup

private var __AllIcons: ____KtList<ImageVector>? = null

val AwayoofGroup.AllIcons: ____KtList<ImageVector>
    get() {
        if (__AllIcons != null) {
            return __AllIcons!!
        }
        __AllIcons = Large.AllIcons + Medium.AllIcons + Small.AllIcons + listOf()
        return __AllIcons!!
    }
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/__Blocked.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence

import androidx.compose.ui.graphics.vector.ImageVector
import com.microsoft.fluentui.icons.avataricons.PresenceGroup
import com.microsoft.fluentui.icons.avataricons.presence.blocked.AllIcons
import com.microsoft.fluentui.icons.avataricons.presence.blocked.Large
import com.microsoft.fluentui.icons.avataricons.presence.blocked.Medium
import com.microsoft.fluentui.icons.avataricons.presence.blocked.Small
import kotlin.collections.List as ____KtList

object BlockedGroup

val PresenceGroup.Blocked: BlockedGroup
    get() = BlockedGroup

private var __AllIcons: ____KtList<ImageVector>? = null

val BlockedGroup.AllIcons: ____KtList<ImageVector>
    get() {
        if (__AllIcons != null) {
            return __AllIcons!!
        }
        __AllIcons = Large.AllIcons + Medium.AllIcons + Small.AllIcons + listOf()
        return __AllIcons!!
    }
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/__Busy.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence

import androidx.compose.ui.graphics.vector.ImageVector
import com.microsoft.fluentui.icons.avataricons.PresenceGroup
import com.microsoft.fluentui.icons.avataricons.presence.busy.AllIcons
import com.microsoft.fluentui.icons.avataricons.presence.busy.Large
import com.microsoft.fluentui.icons.avataricons.presence.busy.Medium
import com.microsoft.fluentui.icons.avataricons.presence.busy.Small
import kotlin.collections.List as ____KtList

object BusyGroup

val PresenceGroup.Busy: BusyGroup
    get() = BusyGroup

private var __AllIcons: ____KtList<ImageVector>? = null

val BusyGroup.AllIcons: ____KtList<ImageVector>
    get() {
        if (__AllIcons != null) {
            return __AllIcons!!
        }
        __AllIcons = Large.AllIcons + Medium.AllIcons + Small.AllIcons + listOf()
        return __AllIcons!!
    }
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/__Busyoof.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence

import androidx.compose.ui.graphics.vector.ImageVector
import com.microsoft.fluentui.icons.avataricons.PresenceGroup
import com.microsoft.fluentui.icons.avataricons.presence.busyoof.AllIcons
import com.microsoft.fluentui.icons.avataricons.presence.busyoof.Large
import com.microsoft.fluentui.icons.avataricons.presence.busyoof.Medium
import com.microsoft.fluentui.icons.avataricons.presence.busyoof.Small
import kotlin.collections.List as ____KtList

object BusyoofGroup

val PresenceGroup.Busyoof: BusyoofGroup
    get() = BusyoofGroup

private var __AllIcons: ____KtList<ImageVector>? = null

val BusyoofGroup.AllIcons: ____KtList<ImageVector>
    get() {
        if (__AllIcons != null) {
            return __AllIcons!!
        }
        __AllIcons = Large.AllIcons + Medium.AllIcons + Small.AllIcons + listOf()
        return __AllIcons!!
    }
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/__Dark.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence

import androidx.compose.ui.graphics.vector.ImageVector
import com.microsoft.fluentui.icons.avataricons.PresenceGroup
import com.microsoft.fluentui.icons.avataricons.presence.dark.AllIcons
import com.microsoft.fluentui.icons.avataricons.presence.dark.Large
import com.microsoft.fluentui.icons.avataricons.presence.dark.Medium
import com.microsoft.fluentui.icons.avataricons.presence.dark.Small
import kotlin.collections.List as ____KtList

object DarkGroup

val PresenceGroup.Dark: DarkGroup
    get() = DarkGroup

private var __AllIcons: ____KtList<ImageVector>? = null

val DarkGroup.AllIcons: ____KtList<ImageVector>
    get() {
        if (__AllIcons != null) {
            return __AllIcons!!
        }
        __AllIcons = Large.AllIcons + Medium.AllIcons + Small.AllIcons + listOf()
        return __AllIcons!!
    }
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/__Dnd.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence

import androidx.compose.ui.graphics.vector.ImageVector
import com.microsoft.fluentui.icons.avataricons.PresenceGroup
import com.microsoft.fluentui.icons.avataricons.presence.dnd.AllIcons
import com.microsoft.fluentui.icons.avataricons.presence.dnd.Large
import com.microsoft.fluentui.icons.avataricons.presence.dnd.Medium
import com.microsoft.fluentui.icons.avataricons.presence.dnd.Small
import kotlin.collections.List as ____KtList

object DndGroup

val PresenceGroup.Dnd: DndGroup
    get() = DndGroup

private var __AllIcons: ____KtList<ImageVector>? = null

val DndGroup.AllIcons: ____KtList<ImageVector>
    get() {
        if (__AllIcons != null) {
            return __AllIcons!!
        }
        __AllIcons = Large.AllIcons + Medium.AllIcons + Small.AllIcons + listOf()
        return __AllIcons!!
    }
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/__Dndoof.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence

import androidx.compose.ui.graphics.vector.ImageVector
import com.microsoft.fluentui.icons.avataricons.PresenceGroup
import com.microsoft.fluentui.icons.avataricons.presence.dndoof.AllIcons
import com.microsoft.fluentui.icons.avataricons.presence.dndoof.Large
import com.microsoft.fluentui.icons.avataricons.presence.dndoof.Medium
import com.microsoft.fluentui.icons.avataricons.presence.dndoof.Small
import kotlin.collections.List as ____KtList

object DndoofGroup

val PresenceGroup.Dndoof: DndoofGroup
    get() = DndoofGroup

private var __AllIcons: ____KtList<ImageVector>? = null

val DndoofGroup.AllIcons: ____KtList<ImageVector>
    get() {
        if (__AllIcons != null) {
            return __AllIcons!!
        }
        __AllIcons = Large.AllIcons + Medium.AllIcons + Small.AllIcons + listOf()
        return __AllIcons!!
    }
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/__Offline.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence

import androidx.compose.ui.graphics.vector.ImageVector
import com.microsoft.fluentui.icons.avataricons.PresenceGroup
import com.microsoft.fluentui.icons.avataricons.presence.offline.AllIcons
import com.microsoft.fluentui.icons.avataricons.presence.offline.Large
import com.microsoft.fluentui.icons.avataricons.presence.offline.Medium
import com.microsoft.fluentui.icons.avataricons.presence.offline.Small
import kotlin.collections.List as ____KtList

object OfflineGroup

val PresenceGroup.Offline: OfflineGroup
    get() = OfflineGroup

private var __AllIcons: ____KtList<ImageVector>? = null

val OfflineGroup.AllIcons: ____KtList<ImageVector>
    get() {
        if (__AllIcons != null) {
            return __AllIcons!!
        }
        __AllIcons = Large.AllIcons + Medium.AllIcons + Small.AllIcons + listOf()
        return __AllIcons!!
    }
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/__Oof.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence

import androidx.compose.ui.graphics.vector.ImageVector
import com.microsoft.fluentui.icons.avataricons.PresenceGroup
import com.microsoft.fluentui.icons.avataricons.presence.oof.AllIcons
import com.microsoft.fluentui.icons.avataricons.presence.oof.Large
import com.microsoft.fluentui.icons.avataricons.presence.oof.Medium
import com.microsoft.fluentui.icons.avataricons.presence.oof.Small
import kotlin.collections.List as ____KtList

object OofGroup

val PresenceGroup.Oof: OofGroup
    get() = OofGroup

private var __AllIcons: ____KtList<ImageVector>? = null

val OofGroup.AllIcons: ____KtList<ImageVector>
    get() {
        if (__AllIcons != null) {
            return __AllIcons!!
        }
        __AllIcons = Large.AllIcons + Medium.AllIcons + Small.AllIcons + listOf()
        return __AllIcons!!
    }
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/__Unknown.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence

import androidx.compose.ui.graphics.vector.ImageVector
import com.microsoft.fluentui.icons.avataricons.PresenceGroup
import com.microsoft.fluentui.icons.avataricons.presence.unknown.AllIcons
import com.microsoft.fluentui.icons.avataricons.presence.unknown.Large
import com.microsoft.fluentui.icons.avataricons.presence.unknown.Medium
import com.microsoft.fluentui.icons.avataricons.presence.unknown.Small
import kotlin.collections.List as ____KtList

object UnknownGroup

val PresenceGroup.Unknown: UnknownGroup
    get() = UnknownGroup

private var __AllIcons: ____KtList<ImageVector>? = null

val UnknownGroup.AllIcons: ____KtList<ImageVector>
    get() {
        if (__AllIcons != null) {
            return __AllIcons!!
        }
        __AllIcons = Large.AllIcons + Medium.AllIcons + Small.AllIcons + listOf()
        return __AllIcons!!
    }
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/available/__Large.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.available

import androidx.compose.ui.graphics.vector.ImageVector
import com.microsoft.fluentui.icons.avataricons.presence.AvailableGroup
import com.microsoft.fluentui.icons.avataricons.presence.available.large.Dark
import com.microsoft.fluentui.icons.avataricons.presence.available.large.Light
import kotlin.collections.List as ____KtList

object LargeGroup

val AvailableGroup.Large: LargeGroup
    get() = LargeGroup

private var __AllIcons: ____KtList<ImageVector>? = null

val LargeGroup.AllIcons: ____KtList<ImageVector>
    get() {
        if (__AllIcons != null) {
            return __AllIcons!!
        }
        __AllIcons = listOf(Dark, Light)
        return __AllIcons!!
    }
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/available/__Medium.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.available

import androidx.compose.ui.graphics.vector.ImageVector
import com.microsoft.fluentui.icons.avataricons.presence.AvailableGroup
import com.microsoft.fluentui.icons.avataricons.presence.available.medium.Dark
import com.microsoft.fluentui.icons.avataricons.presence.available.medium.Light
import kotlin.collections.List as ____KtList

object MediumGroup

val AvailableGroup.Medium: MediumGroup
    get() = MediumGroup

private var __AllIcons: ____KtList<ImageVector>? = null

val MediumGroup.AllIcons: ____KtList<ImageVector>
    get() {
        if (__AllIcons != null) {
            return __AllIcons!!
        }
        __AllIcons = listOf(Dark, Light)
        return __AllIcons!!
    }
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/available/__Small.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.available

import androidx.compose.ui.graphics.vector.ImageVector
import com.microsoft.fluentui.icons.avataricons.presence.AvailableGroup
import com.microsoft.fluentui.icons.avataricons.presence.available.small.Dark
import com.microsoft.fluentui.icons.avataricons.presence.available.small.Light
import kotlin.collections.List as ____KtList

object SmallGroup

val AvailableGroup.Small: SmallGroup
    get() = SmallGroup

private var __AllIcons: ____KtList<ImageVector>? = null

val SmallGroup.AllIcons: ____KtList<ImageVector>
    get() {
        if (__AllIcons != null) {
            return __AllIcons!!
        }
        __AllIcons = listOf(Dark, Light)
        return __AllIcons!!
    }
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/available/large/Dark.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.available.large

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.avataricons.presence.available.LargeGroup

val LargeGroup.Dark: ImageVector
    get() {
        if (_dark != null) {
            return _dark!!
        }
        _dark = Builder(name = "Dark", defaultWidth = 20.0.dp, defaultHeight = 20.0.dp,
                viewportWidth = 20.0f, viewportHeight = 20.0f).apply {
            path(fill = SolidColor(Color(0xFF000000)), stroke = SolidColor(Color(0xFF000000)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(10.0f, 10.0f)
                moveToRelative(-9.0f, 0.0f)
                arcToRelative(9.0f, 9.0f, 0.0f, true, true, 18.0f, 0.0f)
                arcToRelative(9.0f, 9.0f, 0.0f, true, true, -18.0f, 0.0f)
            }
            path(fill = SolidColor(Color(0xFF92C353)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(10.0f, 18.0f)
                curveTo(14.4183f, 18.0f, 18.0f, 14.4183f, 18.0f, 10.0f)
                curveTo(18.0f, 5.5817f, 14.4183f, 2.0f, 10.0f, 2.0f)
                curveTo(5.5817f, 2.0f, 2.0f, 5.5817f, 2.0f, 10.0f)
                curveTo(2.0f, 14.4183f, 5.5817f, 18.0f, 10.0f, 18.0f)
                close()
                moveTo(13.7069f, 8.7074f)
                lineTo(9.7036f, 12.7074f)
                curveTo(9.516f, 12.8949f, 9.2615f, 13.0002f, 8.9962f, 13.0f)
                curveTo(8.7309f, 12.9998f, 8.4766f, 12.8943f, 8.2891f, 12.7065f)
                lineTo(6.2923f, 10.7065f)
                curveTo(5.9021f, 10.3157f, 5.9026f, 9.6825f, 6.2935f, 9.2923f)
                curveTo(6.6843f, 8.9021f, 7.3175f, 8.9026f, 7.7077f, 9.2935f)
                lineTo(8.9977f, 10.5855f)
                lineTo(12.2932f, 7.2926f)
                curveTo(12.6839f, 6.9022f, 13.3171f, 6.9025f, 13.7074f, 7.2932f)
                curveTo(14.0978f, 7.6839f, 14.0975f, 8.317f, 13.7069f, 8.7074f)
                close()
            }
        }
                .build()
        return _dark!!
    }

private var _dark: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/available/large/Light.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.available.large

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.avataricons.presence.available.LargeGroup

val LargeGroup.Light: ImageVector
    get() {
        if (_light != null) {
            return _light!!
        }
        _light = Builder(name = "Light", defaultWidth = 20.0.dp, defaultHeight = 20.0.dp,
                viewportWidth = 20.0f, viewportHeight = 20.0f).apply {
            path(fill = SolidColor(Color(0xFFffffff)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(10.0f, 1.0f)
                lineTo(10.0f, 1.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 19.0f, 10.0f)
                lineTo(19.0f, 10.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 10.0f, 19.0f)
                lineTo(10.0f, 19.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 1.0f, 10.0f)
                lineTo(1.0f, 10.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 10.0f, 1.0f)
                close()
            }
            path(fill = SolidColor(Color(0xFFffffff)), stroke = SolidColor(Color(0xFFffffff)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(10.0f, 10.0f)
                moveToRelative(-9.0f, 0.0f)
                arcToRelative(9.0f, 9.0f, 0.0f, true, true, 18.0f, 0.0f)
                arcToRelative(9.0f, 9.0f, 0.0f, true, true, -18.0f, 0.0f)
            }
            path(fill = SolidColor(Color(0xFF6BB700)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(10.0f, 18.0f)
                curveTo(14.4183f, 18.0f, 18.0f, 14.4183f, 18.0f, 10.0f)
                curveTo(18.0f, 5.5817f, 14.4183f, 2.0f, 10.0f, 2.0f)
                curveTo(5.5817f, 2.0f, 2.0f, 5.5817f, 2.0f, 10.0f)
                curveTo(2.0f, 14.4183f, 5.5817f, 18.0f, 10.0f, 18.0f)
                close()
                moveTo(13.7069f, 8.7074f)
                lineTo(9.7036f, 12.7074f)
                curveTo(9.516f, 12.8949f, 9.2615f, 13.0002f, 8.9962f, 13.0f)
                curveTo(8.7309f, 12.9998f, 8.4766f, 12.8943f, 8.2891f, 12.7065f)
                lineTo(6.2923f, 10.7065f)
                curveTo(5.9021f, 10.3157f, 5.9026f, 9.6825f, 6.2935f, 9.2923f)
                curveTo(6.6843f, 8.9021f, 7.3175f, 8.9026f, 7.7077f, 9.2935f)
                lineTo(8.9977f, 10.5855f)
                lineTo(12.2932f, 7.2926f)
                curveTo(12.6839f, 6.9022f, 13.3171f, 6.9025f, 13.7074f, 7.2932f)
                curveTo(14.0978f, 7.6839f, 14.0975f, 8.317f, 13.7069f, 8.7074f)
                close()
            }
            path(fill = SolidColor(Color(0x00000000)), stroke = SolidColor(Color(0xFFffffff)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(10.0f, 1.0f)
                lineTo(10.0f, 1.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 19.0f, 10.0f)
                lineTo(19.0f, 10.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 10.0f, 19.0f)
                lineTo(10.0f, 19.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 1.0f, 10.0f)
                lineTo(1.0f, 10.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 10.0f, 1.0f)
                close()
            }
        }
                .build()
        return _light!!
    }

private var _light: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/available/medium/Dark.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.available.medium

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.avataricons.presence.available.MediumGroup

val MediumGroup.Dark: ImageVector
    get() {
        if (_dark != null) {
            return _dark!!
        }
        _dark = Builder(name = "Dark", defaultWidth = 16.0.dp, defaultHeight = 16.0.dp,
                viewportWidth = 16.0f, viewportHeight = 16.0f).apply {
            path(fill = SolidColor(Color(0xFF000000)), stroke = SolidColor(Color(0xFF000000)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(8.0f, 8.0f)
                moveToRelative(-7.0f, 0.0f)
                arcToRelative(7.0f, 7.0f, 0.0f, true, true, 14.0f, 0.0f)
                arcToRelative(7.0f, 7.0f, 0.0f, true, true, -14.0f, 0.0f)
            }
            path(fill = SolidColor(Color(0xFF92C353)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(8.0f, 14.0f)
                curveTo(11.3137f, 14.0f, 14.0f, 11.3137f, 14.0f, 8.0f)
                curveTo(14.0f, 4.6863f, 11.3137f, 2.0f, 8.0f, 2.0f)
                curveTo(4.6863f, 2.0f, 2.0f, 4.6863f, 2.0f, 8.0f)
                curveTo(2.0f, 11.3137f, 4.6863f, 14.0f, 8.0f, 14.0f)
                close()
                moveTo(10.5303f, 7.2803f)
                lineTo(7.7803f, 10.0303f)
                curveTo(7.4874f, 10.3232f, 7.0126f, 10.3232f, 6.7197f, 10.0303f)
                lineTo(5.7197f, 9.0303f)
                curveTo(5.4268f, 8.7374f, 5.4268f, 8.2626f, 5.7197f, 7.9697f)
                curveTo(6.0126f, 7.6768f, 6.4874f, 7.6768f, 6.7803f, 7.9697f)
                lineTo(7.25f, 8.4393f)
                lineTo(9.4697f, 6.2197f)
                curveTo(9.7626f, 5.9268f, 10.2374f, 5.9268f, 10.5303f, 6.2197f)
                curveTo(10.8232f, 6.5126f, 10.8232f, 6.9874f, 10.5303f, 7.2803f)
                close()
            }
        }
                .build()
        return _dark!!
    }

private var _dark: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/available/medium/Light.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.available.medium

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.avataricons.presence.available.MediumGroup

val MediumGroup.Light: ImageVector
    get() {
        if (_light != null) {
            return _light!!
        }
        _light = Builder(name = "Light", defaultWidth = 16.0.dp, defaultHeight = 16.0.dp,
                viewportWidth = 16.0f, viewportHeight = 16.0f).apply {
            path(fill = SolidColor(Color(0xFFffffff)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(8.0f, 1.0f)
                lineTo(8.0f, 1.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 15.0f, 8.0f)
                lineTo(15.0f, 8.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 8.0f, 15.0f)
                lineTo(8.0f, 15.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 1.0f, 8.0f)
                lineTo(1.0f, 8.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 8.0f, 1.0f)
                close()
            }
            path(fill = SolidColor(Color(0xFFffffff)), stroke = SolidColor(Color(0xFFffffff)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(8.0f, 8.0f)
                moveToRelative(-7.0f, 0.0f)
                arcToRelative(7.0f, 7.0f, 0.0f, true, true, 14.0f, 0.0f)
                arcToRelative(7.0f, 7.0f, 0.0f, true, true, -14.0f, 0.0f)
            }
            path(fill = SolidColor(Color(0xFF6BB700)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(8.0f, 14.0f)
                curveTo(11.3137f, 14.0f, 14.0f, 11.3137f, 14.0f, 8.0f)
                curveTo(14.0f, 4.6863f, 11.3137f, 2.0f, 8.0f, 2.0f)
                curveTo(4.6863f, 2.0f, 2.0f, 4.6863f, 2.0f, 8.0f)
                curveTo(2.0f, 11.3137f, 4.6863f, 14.0f, 8.0f, 14.0f)
                close()
                moveTo(10.5303f, 7.2803f)
                lineTo(7.7803f, 10.0303f)
                curveTo(7.4874f, 10.3232f, 7.0126f, 10.3232f, 6.7197f, 10.0303f)
                lineTo(5.7197f, 9.0303f)
                curveTo(5.4268f, 8.7374f, 5.4268f, 8.2626f, 5.7197f, 7.9697f)
                curveTo(6.0126f, 7.6768f, 6.4874f, 7.6768f, 6.7803f, 7.9697f)
                lineTo(7.25f, 8.4393f)
                lineTo(9.4697f, 6.2197f)
                curveTo(9.7626f, 5.9268f, 10.2374f, 5.9268f, 10.5303f, 6.2197f)
                curveTo(10.8232f, 6.5126f, 10.8232f, 6.9874f, 10.5303f, 7.2803f)
                close()
            }
            path(fill = SolidColor(Color(0x00000000)), stroke = SolidColor(Color(0xFFffffff)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(8.0f, 1.0f)
                lineTo(8.0f, 1.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 15.0f, 8.0f)
                lineTo(15.0f, 8.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 8.0f, 15.0f)
                lineTo(8.0f, 15.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 1.0f, 8.0f)
                lineTo(1.0f, 8.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 8.0f, 1.0f)
                close()
            }
        }
                .build()
        return _light!!
    }

private var _light: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/available/small/Dark.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.available.small

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.avataricons.presence.available.SmallGroup

val SmallGroup.Dark: ImageVector
    get() {
        if (_dark != null) {
            return _dark!!
        }
        _dark = Builder(name = "Dark", defaultWidth = 14.0.dp, defaultHeight = 14.0.dp,
                viewportWidth = 14.0f, viewportHeight = 14.0f).apply {
            path(fill = SolidColor(Color(0xFF000000)), stroke = SolidColor(Color(0xFF000000)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(7.0f, 7.0f)
                moveToRelative(-6.0f, 0.0f)
                arcToRelative(6.0f, 6.0f, 0.0f, true, true, 12.0f, 0.0f)
                arcToRelative(6.0f, 6.0f, 0.0f, true, true, -12.0f, 0.0f)
            }
            path(fill = SolidColor(Color(0xFF92C353)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(7.0f, 12.0f)
                curveTo(9.7614f, 12.0f, 12.0f, 9.7614f, 12.0f, 7.0f)
                curveTo(12.0f, 4.2386f, 9.7614f, 2.0f, 7.0f, 2.0f)
                curveTo(4.2386f, 2.0f, 2.0f, 4.2386f, 2.0f, 7.0f)
                curveTo(2.0f, 9.7614f, 4.2386f, 12.0f, 7.0f, 12.0f)
                close()
                moveTo(9.1036f, 6.1035f)
                lineTo(6.8536f, 8.3536f)
                curveTo(6.6583f, 8.5488f, 6.3417f, 8.5488f, 6.1465f, 8.3536f)
                lineTo(5.1465f, 7.3536f)
                curveTo(4.9512f, 7.1583f, 4.9512f, 6.8417f, 5.1464f, 6.6465f)
                curveTo(5.3417f, 6.4512f, 5.6583f, 6.4512f, 5.8535f, 6.6465f)
                lineTo(6.5f, 7.2929f)
                lineTo(8.3964f, 5.3965f)
                curveTo(8.5917f, 5.2012f, 8.9083f, 5.2012f, 9.1035f, 5.3964f)
                curveTo(9.2988f, 5.5917f, 9.2988f, 5.9083f, 9.1036f, 6.1035f)
                close()
            }
        }
                .build()
        return _dark!!
    }

private var _dark: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/available/small/Light.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.available.small

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.avataricons.presence.available.SmallGroup

val SmallGroup.Light: ImageVector
    get() {
        if (_light != null) {
            return _light!!
        }
        _light = Builder(name = "Light", defaultWidth = 14.0.dp, defaultHeight = 14.0.dp,
                viewportWidth = 14.0f, viewportHeight = 14.0f).apply {
            path(fill = SolidColor(Color(0xFFffffff)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(7.0f, 1.0f)
                lineTo(7.0f, 1.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 13.0f, 7.0f)
                lineTo(13.0f, 7.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 7.0f, 13.0f)
                lineTo(7.0f, 13.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 1.0f, 7.0f)
                lineTo(1.0f, 7.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 7.0f, 1.0f)
                close()
            }
            path(fill = SolidColor(Color(0xFFffffff)), stroke = SolidColor(Color(0xFFffffff)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(7.0f, 7.0f)
                moveToRelative(-6.0f, 0.0f)
                arcToRelative(6.0f, 6.0f, 0.0f, true, true, 12.0f, 0.0f)
                arcToRelative(6.0f, 6.0f, 0.0f, true, true, -12.0f, 0.0f)
            }
            path(fill = SolidColor(Color(0xFF6BB700)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(7.0f, 12.0f)
                curveTo(9.7614f, 12.0f, 12.0f, 9.7614f, 12.0f, 7.0f)
                curveTo(12.0f, 4.2386f, 9.7614f, 2.0f, 7.0f, 2.0f)
                curveTo(4.2386f, 2.0f, 2.0f, 4.2386f, 2.0f, 7.0f)
                curveTo(2.0f, 9.7614f, 4.2386f, 12.0f, 7.0f, 12.0f)
                close()
                moveTo(9.1036f, 6.1035f)
                lineTo(6.8536f, 8.3536f)
                curveTo(6.6583f, 8.5488f, 6.3417f, 8.5488f, 6.1465f, 8.3536f)
                lineTo(5.1465f, 7.3536f)
                curveTo(4.9512f, 7.1583f, 4.9512f, 6.8417f, 5.1464f, 6.6465f)
                curveTo(5.3417f, 6.4512f, 5.6583f, 6.4512f, 5.8535f, 6.6465f)
                lineTo(6.5f, 7.2929f)
                lineTo(8.3964f, 5.3965f)
                curveTo(8.5917f, 5.2012f, 8.9083f, 5.2012f, 9.1035f, 5.3964f)
                curveTo(9.2988f, 5.5917f, 9.2988f, 5.9083f, 9.1036f, 6.1035f)
                close()
            }
            path(fill = SolidColor(Color(0x00000000)), stroke = SolidColor(Color(0xFFffffff)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(7.0f, 1.0f)
                lineTo(7.0f, 1.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 13.0f, 7.0f)
                lineTo(13.0f, 7.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 7.0f, 13.0f)
                lineTo(7.0f, 13.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 1.0f, 7.0f)
                lineTo(1.0f, 7.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 7.0f, 1.0f)
                close()
            }
        }
                .build()
        return _light!!
    }

private var _light: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/availableoof/__Large.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.availableoof

import androidx.compose.ui.graphics.vector.ImageVector
import com.microsoft.fluentui.icons.avataricons.presence.AvailableoofGroup
import com.microsoft.fluentui.icons.avataricons.presence.availableoof.large.Dark
import com.microsoft.fluentui.icons.avataricons.presence.availableoof.large.Light
import kotlin.collections.List as ____KtList

object LargeGroup

val AvailableoofGroup.Large: LargeGroup
    get() = LargeGroup

private var __AllIcons: ____KtList<ImageVector>? = null

val LargeGroup.AllIcons: ____KtList<ImageVector>
    get() {
        if (__AllIcons != null) {
            return __AllIcons!!
        }
        __AllIcons = listOf(Dark, Light)
        return __AllIcons!!
    }
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/availableoof/__Medium.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.availableoof

import androidx.compose.ui.graphics.vector.ImageVector
import com.microsoft.fluentui.icons.avataricons.presence.AvailableoofGroup
import com.microsoft.fluentui.icons.avataricons.presence.availableoof.medium.Dark
import com.microsoft.fluentui.icons.avataricons.presence.availableoof.medium.Light
import kotlin.collections.List as ____KtList

object MediumGroup

val AvailableoofGroup.Medium: MediumGroup
    get() = MediumGroup

private var __AllIcons: ____KtList<ImageVector>? = null

val MediumGroup.AllIcons: ____KtList<ImageVector>
    get() {
        if (__AllIcons != null) {
            return __AllIcons!!
        }
        __AllIcons = listOf(Dark, Light)
        return __AllIcons!!
    }
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/availableoof/__Small.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.availableoof

import androidx.compose.ui.graphics.vector.ImageVector
import com.microsoft.fluentui.icons.avataricons.presence.AvailableoofGroup
import com.microsoft.fluentui.icons.avataricons.presence.availableoof.small.Dark
import com.microsoft.fluentui.icons.avataricons.presence.availableoof.small.Light
import kotlin.collections.List as ____KtList

object SmallGroup

val AvailableoofGroup.Small: SmallGroup
    get() = SmallGroup

private var __AllIcons: ____KtList<ImageVector>? = null

val SmallGroup.AllIcons: ____KtList<ImageVector>
    get() {
        if (__AllIcons != null) {
            return __AllIcons!!
        }
        __AllIcons = listOf(Dark, Light)
        return __AllIcons!!
    }
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/availableoof/large/Dark.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.availableoof.large

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.avataricons.presence.availableoof.LargeGroup

val LargeGroup.Dark: ImageVector
    get() {
        if (_dark != null) {
            return _dark!!
        }
        _dark = Builder(name = "Dark", defaultWidth = 20.0.dp, defaultHeight = 20.0.dp,
                viewportWidth = 20.0f, viewportHeight = 20.0f).apply {
            path(fill = SolidColor(Color(0xFF000000)), stroke = SolidColor(Color(0xFF000000)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(10.0f, 10.0f)
                moveToRelative(-9.0f, 0.0f)
                arcToRelative(9.0f, 9.0f, 0.0f, true, true, 18.0f, 0.0f)
                arcToRelative(9.0f, 9.0f, 0.0f, true, true, -18.0f, 0.0f)
            }
            path(fill = SolidColor(Color(0xFF92C353)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(13.7071f, 8.7071f)
                curveTo(14.0976f, 8.3166f, 14.0976f, 7.6834f, 13.7071f, 7.2929f)
                curveTo(13.3166f, 6.9024f, 12.6834f, 6.9024f, 12.2929f, 7.2929f)
                lineTo(9.0f, 10.5858f)
                lineTo(7.7071f, 9.2929f)
                curveTo(7.3166f, 8.9024f, 6.6834f, 8.9024f, 6.2929f, 9.2929f)
                curveTo(5.9024f, 9.6834f, 5.9024f, 10.3166f, 6.2929f, 10.7071f)
                lineTo(8.2929f, 12.7071f)
                curveTo(8.6834f, 13.0976f, 9.3166f, 13.0976f, 9.7071f, 12.7071f)
                lineTo(13.7071f, 8.7071f)
                close()
                moveTo(2.0f, 10.0f)
                curveTo(2.0f, 5.5817f, 5.5817f, 2.0f, 10.0f, 2.0f)
                curveTo(14.4183f, 2.0f, 18.0f, 5.5817f, 18.0f, 10.0f)
                curveTo(18.0f, 14.4183f, 14.4183f, 18.0f, 10.0f, 18.0f)
                curveTo(5.5817f, 18.0f, 2.0f, 14.4183f, 2.0f, 10.0f)
                close()
                moveTo(10.0f, 4.0f)
                curveTo(6.6863f, 4.0f, 4.0f, 6.6863f, 4.0f, 10.0f)
                curveTo(4.0f, 13.3137f, 6.6863f, 16.0f, 10.0f, 16.0f)
                curveTo(13.3137f, 16.0f, 16.0f, 13.3137f, 16.0f, 10.0f)
                curveTo(16.0f, 6.6863f, 13.3137f, 4.0f, 10.0f, 4.0f)
                close()
            }
        }
                .build()
        return _dark!!
    }

private var _dark: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/availableoof/large/Light.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.availableoof.large

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.avataricons.presence.availableoof.LargeGroup

val LargeGroup.Light: ImageVector
    get() {
        if (_light != null) {
            return _light!!
        }
        _light = Builder(name = "Light", defaultWidth = 20.0.dp, defaultHeight = 20.0.dp,
                viewportWidth = 20.0f, viewportHeight = 20.0f).apply {
            path(fill = SolidColor(Color(0xFFffffff)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(10.0f, 1.0f)
                lineTo(10.0f, 1.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 19.0f, 10.0f)
                lineTo(19.0f, 10.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 10.0f, 19.0f)
                lineTo(10.0f, 19.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 1.0f, 10.0f)
                lineTo(1.0f, 10.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 10.0f, 1.0f)
                close()
            }
            path(fill = SolidColor(Color(0xFFffffff)), stroke = SolidColor(Color(0xFFffffff)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(10.0f, 10.0f)
                moveToRelative(-9.0f, 0.0f)
                arcToRelative(9.0f, 9.0f, 0.0f, true, true, 18.0f, 0.0f)
                arcToRelative(9.0f, 9.0f, 0.0f, true, true, -18.0f, 0.0f)
            }
            path(fill = SolidColor(Color(0xFF6BB700)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(13.7071f, 8.7071f)
                curveTo(14.0976f, 8.3166f, 14.0976f, 7.6834f, 13.7071f, 7.2929f)
                curveTo(13.3166f, 6.9024f, 12.6834f, 6.9024f, 12.2929f, 7.2929f)
                lineTo(9.0f, 10.5858f)
                lineTo(7.7071f, 9.2929f)
                curveTo(7.3166f, 8.9024f, 6.6834f, 8.9024f, 6.2929f, 9.2929f)
                curveTo(5.9024f, 9.6834f, 5.9024f, 10.3166f, 6.2929f, 10.7071f)
                lineTo(8.2929f, 12.7071f)
                curveTo(8.6834f, 13.0976f, 9.3166f, 13.0976f, 9.7071f, 12.7071f)
                lineTo(13.7071f, 8.7071f)
                close()
                moveTo(2.0f, 10.0f)
                curveTo(2.0f, 5.5817f, 5.5817f, 2.0f, 10.0f, 2.0f)
                curveTo(14.4183f, 2.0f, 18.0f, 5.5817f, 18.0f, 10.0f)
                curveTo(18.0f, 14.4183f, 14.4183f, 18.0f, 10.0f, 18.0f)
                curveTo(5.5817f, 18.0f, 2.0f, 14.4183f, 2.0f, 10.0f)
                close()
                moveTo(10.0f, 4.0f)
                curveTo(6.6863f, 4.0f, 4.0f, 6.6863f, 4.0f, 10.0f)
                curveTo(4.0f, 13.3137f, 6.6863f, 16.0f, 10.0f, 16.0f)
                curveTo(13.3137f, 16.0f, 16.0f, 13.3137f, 16.0f, 10.0f)
                curveTo(16.0f, 6.6863f, 13.3137f, 4.0f, 10.0f, 4.0f)
                close()
            }
            path(fill = SolidColor(Color(0x00000000)), stroke = SolidColor(Color(0xFFffffff)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(10.0f, 1.0f)
                lineTo(10.0f, 1.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 19.0f, 10.0f)
                lineTo(19.0f, 10.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 10.0f, 19.0f)
                lineTo(10.0f, 19.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 1.0f, 10.0f)
                lineTo(1.0f, 10.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 10.0f, 1.0f)
                close()
            }
        }
                .build()
        return _light!!
    }

private var _light: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/availableoof/medium/Dark.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.availableoof.medium

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.avataricons.presence.availableoof.MediumGroup

val MediumGroup.Dark: ImageVector
    get() {
        if (_dark != null) {
            return _dark!!
        }
        _dark = Builder(name = "Dark", defaultWidth = 16.0.dp, defaultHeight = 16.0.dp,
                viewportWidth = 16.0f, viewportHeight = 16.0f).apply {
            path(fill = SolidColor(Color(0xFF000000)), stroke = SolidColor(Color(0xFF000000)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(8.0f, 8.0f)
                moveToRelative(-7.0f, 0.0f)
                arcToRelative(7.0f, 7.0f, 0.0f, true, true, 14.0f, 0.0f)
                arcToRelative(7.0f, 7.0f, 0.0f, true, true, -14.0f, 0.0f)
            }
            path(fill = SolidColor(Color(0xFF92C353)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(8.0f, 2.0f)
                curveTo(4.6863f, 2.0f, 2.0f, 4.6863f, 2.0f, 8.0f)
                curveTo(2.0f, 11.3137f, 4.6863f, 14.0f, 8.0f, 14.0f)
                curveTo(11.3137f, 14.0f, 14.0f, 11.3137f, 14.0f, 8.0f)
                curveTo(14.0f, 4.6863f, 11.3137f, 2.0f, 8.0f, 2.0f)
                close()
                moveTo(3.5f, 8.0f)
                curveTo(3.5f, 5.5147f, 5.5147f, 3.5f, 8.0f, 3.5f)
                curveTo(10.4853f, 3.5f, 12.5f, 5.5147f, 12.5f, 8.0f)
                curveTo(12.5f, 10.4853f, 10.4853f, 12.5f, 8.0f, 12.5f)
                curveTo(5.5147f, 12.5f, 3.5f, 10.4853f, 3.5f, 8.0f)
                close()
                moveTo(10.5303f, 6.2197f)
                curveTo(10.8232f, 6.5126f, 10.8232f, 6.9874f, 10.5303f, 7.2803f)
                lineTo(7.7803f, 10.0303f)
                curveTo(7.4874f, 10.3232f, 7.0126f, 10.3232f, 6.7197f, 10.0303f)
                lineTo(5.7197f, 9.0303f)
                curveTo(5.4268f, 8.7374f, 5.4268f, 8.2626f, 5.7197f, 7.9697f)
                curveTo(6.0126f, 7.6768f, 6.4874f, 7.6768f, 6.7803f, 7.9697f)
                lineTo(7.25f, 8.4393f)
                lineTo(9.4697f, 6.2197f)
                curveTo(9.7626f, 5.9268f, 10.2374f, 5.9268f, 10.5303f, 6.2197f)
                close()
            }
        }
                .build()
        return _dark!!
    }

private var _dark: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/availableoof/medium/Light.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.availableoof.medium

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.avataricons.presence.availableoof.MediumGroup

val MediumGroup.Light: ImageVector
    get() {
        if (_light != null) {
            return _light!!
        }
        _light = Builder(name = "Light", defaultWidth = 16.0.dp, defaultHeight = 16.0.dp,
                viewportWidth = 16.0f, viewportHeight = 16.0f).apply {
            path(fill = SolidColor(Color(0xFFffffff)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(8.0f, 1.0f)
                lineTo(8.0f, 1.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 15.0f, 8.0f)
                lineTo(15.0f, 8.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 8.0f, 15.0f)
                lineTo(8.0f, 15.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 1.0f, 8.0f)
                lineTo(1.0f, 8.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 8.0f, 1.0f)
                close()
            }
            path(fill = SolidColor(Color(0xFFffffff)), stroke = SolidColor(Color(0xFFffffff)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(8.0f, 8.0f)
                moveToRelative(-7.0f, 0.0f)
                arcToRelative(7.0f, 7.0f, 0.0f, true, true, 14.0f, 0.0f)
                arcToRelative(7.0f, 7.0f, 0.0f, true, true, -14.0f, 0.0f)
            }
            path(fill = SolidColor(Color(0xFF6BB700)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(8.0f, 2.0f)
                curveTo(4.6863f, 2.0f, 2.0f, 4.6863f, 2.0f, 8.0f)
                curveTo(2.0f, 11.3137f, 4.6863f, 14.0f, 8.0f, 14.0f)
                curveTo(11.3137f, 14.0f, 14.0f, 11.3137f, 14.0f, 8.0f)
                curveTo(14.0f, 4.6863f, 11.3137f, 2.0f, 8.0f, 2.0f)
                close()
                moveTo(3.5f, 8.0f)
                curveTo(3.5f, 5.5147f, 5.5147f, 3.5f, 8.0f, 3.5f)
                curveTo(10.4853f, 3.5f, 12.5f, 5.5147f, 12.5f, 8.0f)
                curveTo(12.5f, 10.4853f, 10.4853f, 12.5f, 8.0f, 12.5f)
                curveTo(5.5147f, 12.5f, 3.5f, 10.4853f, 3.5f, 8.0f)
                close()
                moveTo(10.5303f, 6.2197f)
                curveTo(10.8232f, 6.5126f, 10.8232f, 6.9874f, 10.5303f, 7.2803f)
                lineTo(7.7803f, 10.0303f)
                curveTo(7.4874f, 10.3232f, 7.0126f, 10.3232f, 6.7197f, 10.0303f)
                lineTo(5.7197f, 9.0303f)
                curveTo(5.4268f, 8.7374f, 5.4268f, 8.2626f, 5.7197f, 7.9697f)
                curveTo(6.0126f, 7.6768f, 6.4874f, 7.6768f, 6.7803f, 7.9697f)
                lineTo(7.25f, 8.4393f)
                lineTo(9.4697f, 6.2197f)
                curveTo(9.7626f, 5.9268f, 10.2374f, 5.9268f, 10.5303f, 6.2197f)
                close()
            }
            path(fill = SolidColor(Color(0x00000000)), stroke = SolidColor(Color(0xFFffffff)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(8.0f, 1.0f)
                lineTo(8.0f, 1.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 15.0f, 8.0f)
                lineTo(15.0f, 8.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 8.0f, 15.0f)
                lineTo(8.0f, 15.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 1.0f, 8.0f)
                lineTo(1.0f, 8.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 8.0f, 1.0f)
                close()
            }
        }
                .build()
        return _light!!
    }

private var _light: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/availableoof/small/Dark.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.availableoof.small

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.avataricons.presence.availableoof.SmallGroup

val SmallGroup.Dark: ImageVector
    get() {
        if (_dark != null) {
            return _dark!!
        }
        _dark = Builder(name = "Dark", defaultWidth = 14.0.dp, defaultHeight = 14.0.dp,
                viewportWidth = 14.0f, viewportHeight = 14.0f).apply {
            path(fill = SolidColor(Color(0xFF000000)), stroke = SolidColor(Color(0xFF000000)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(7.0f, 7.0f)
                moveToRelative(-6.0f, 0.0f)
                arcToRelative(6.0f, 6.0f, 0.0f, true, true, 12.0f, 0.0f)
                arcToRelative(6.0f, 6.0f, 0.0f, true, true, -12.0f, 0.0f)
            }
            path(fill = SolidColor(Color(0xFF92C353)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(6.9977f, 2.0f)
                curveTo(4.2375f, 2.0f, 2.0f, 4.2375f, 2.0f, 6.9977f)
                curveTo(2.0f, 9.7578f, 4.2375f, 11.9954f, 6.9977f, 11.9954f)
                curveTo(9.7578f, 11.9954f, 11.9954f, 9.7578f, 11.9954f, 6.9977f)
                curveTo(11.9954f, 4.2375f, 9.7578f, 2.0f, 6.9977f, 2.0f)
                close()
                moveTo(3.0f, 6.9977f)
                curveTo(3.0f, 4.7898f, 4.7898f, 3.0f, 6.9977f, 3.0f)
                curveTo(9.2056f, 3.0f, 10.9954f, 4.7898f, 10.9954f, 6.9977f)
                curveTo(10.9954f, 9.2056f, 9.2056f, 10.9954f, 6.9977f, 10.9954f)
                curveTo(4.7898f, 10.9954f, 3.0f, 9.2056f, 3.0f, 6.9977f)
                close()
                moveTo(9.1035f, 5.3965f)
                curveTo(9.2988f, 5.5917f, 9.2988f, 5.9083f, 9.1035f, 6.1035f)
                lineTo(6.8535f, 8.3535f)
                curveTo(6.6583f, 8.5488f, 6.3417f, 8.5488f, 6.1465f, 8.3535f)
                lineTo(5.1465f, 7.3535f)
                curveTo(4.9512f, 7.1583f, 4.9512f, 6.8417f, 5.1465f, 6.6465f)
                curveTo(5.3417f, 6.4512f, 5.6583f, 6.4512f, 5.8535f, 6.6465f)
                lineTo(6.5f, 7.2929f)
                lineTo(8.3965f, 5.3965f)
                curveTo(8.5917f, 5.2012f, 8.9083f, 5.2012f, 9.1035f, 5.3965f)
                close()
            }
        }
                .build()
        return _dark!!
    }

private var _dark: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/availableoof/small/Light.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.availableoof.small

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.avataricons.presence.availableoof.SmallGroup

val SmallGroup.Light: ImageVector
    get() {
        if (_light != null) {
            return _light!!
        }
        _light = Builder(name = "Light", defaultWidth = 14.0.dp, defaultHeight = 14.0.dp,
                viewportWidth = 14.0f, viewportHeight = 14.0f).apply {
            path(fill = SolidColor(Color(0xFFffffff)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(7.0f, 1.0f)
                lineTo(7.0f, 1.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 13.0f, 7.0f)
                lineTo(13.0f, 7.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 7.0f, 13.0f)
                lineTo(7.0f, 13.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 1.0f, 7.0f)
                lineTo(1.0f, 7.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 7.0f, 1.0f)
                close()
            }
            path(fill = SolidColor(Color(0xFFffffff)), stroke = SolidColor(Color(0xFFffffff)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(7.0f, 7.0f)
                moveToRelative(-6.0f, 0.0f)
                arcToRelative(6.0f, 6.0f, 0.0f, true, true, 12.0f, 0.0f)
                arcToRelative(6.0f, 6.0f, 0.0f, true, true, -12.0f, 0.0f)
            }
            path(fill = SolidColor(Color(0xFF6BB700)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(6.9977f, 2.0f)
                curveTo(4.2375f, 2.0f, 2.0f, 4.2375f, 2.0f, 6.9977f)
                curveTo(2.0f, 9.7578f, 4.2375f, 11.9954f, 6.9977f, 11.9954f)
                curveTo(9.7578f, 11.9954f, 11.9954f, 9.7578f, 11.9954f, 6.9977f)
                curveTo(11.9954f, 4.2375f, 9.7578f, 2.0f, 6.9977f, 2.0f)
                close()
                moveTo(3.0f, 6.9977f)
                curveTo(3.0f, 4.7898f, 4.7898f, 3.0f, 6.9977f, 3.0f)
                curveTo(9.2056f, 3.0f, 10.9954f, 4.7898f, 10.9954f, 6.9977f)
                curveTo(10.9954f, 9.2056f, 9.2056f, 10.9954f, 6.9977f, 10.9954f)
                curveTo(4.7898f, 10.9954f, 3.0f, 9.2056f, 3.0f, 6.9977f)
                close()
                moveTo(9.1035f, 5.3965f)
                curveTo(9.2988f, 5.5917f, 9.2988f, 5.9083f, 9.1035f, 6.1035f)
                lineTo(6.8535f, 8.3535f)
                curveTo(6.6583f, 8.5488f, 6.3417f, 8.5488f, 6.1465f, 8.3535f)
                lineTo(5.1465f, 7.3535f)
                curveTo(4.9512f, 7.1583f, 4.9512f, 6.8417f, 5.1465f, 6.6465f)
                curveTo(5.3417f, 6.4512f, 5.6583f, 6.4512f, 5.8535f, 6.6465f)
                lineTo(6.5f, 7.2929f)
                lineTo(8.3965f, 5.3965f)
                curveTo(8.5917f, 5.2012f, 8.9083f, 5.2012f, 9.1035f, 5.3965f)
                close()
            }
            path(fill = SolidColor(Color(0x00000000)), stroke = SolidColor(Color(0xFFffffff)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(7.0f, 1.0f)
                lineTo(7.0f, 1.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 13.0f, 7.0f)
                lineTo(13.0f, 7.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 7.0f, 13.0f)
                lineTo(7.0f, 13.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 1.0f, 7.0f)
                lineTo(1.0f, 7.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 7.0f, 1.0f)
                close()
            }
        }
                .build()
        return _light!!
    }

private var _light: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/away/__Large.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.away

import androidx.compose.ui.graphics.vector.ImageVector
import com.microsoft.fluentui.icons.avataricons.presence.AwayGroup
import com.microsoft.fluentui.icons.avataricons.presence.away.large.Dark
import com.microsoft.fluentui.icons.avataricons.presence.away.large.Light
import kotlin.collections.List as ____KtList

object LargeGroup

val AwayGroup.Large: LargeGroup
    get() = LargeGroup

private var __AllIcons: ____KtList<ImageVector>? = null

val LargeGroup.AllIcons: ____KtList<ImageVector>
    get() {
        if (__AllIcons != null) {
            return __AllIcons!!
        }
        __AllIcons = listOf(Dark, Light)
        return __AllIcons!!
    }
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/away/__Medium.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.away

import androidx.compose.ui.graphics.vector.ImageVector
import com.microsoft.fluentui.icons.avataricons.presence.AwayGroup
import com.microsoft.fluentui.icons.avataricons.presence.away.medium.Dark
import com.microsoft.fluentui.icons.avataricons.presence.away.medium.Light
import kotlin.collections.List as ____KtList

object MediumGroup

val AwayGroup.Medium: MediumGroup
    get() = MediumGroup

private var __AllIcons: ____KtList<ImageVector>? = null

val MediumGroup.AllIcons: ____KtList<ImageVector>
    get() {
        if (__AllIcons != null) {
            return __AllIcons!!
        }
        __AllIcons = listOf(Dark, Light)
        return __AllIcons!!
    }
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/away/__Small.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.away

import androidx.compose.ui.graphics.vector.ImageVector
import com.microsoft.fluentui.icons.avataricons.presence.AwayGroup
import com.microsoft.fluentui.icons.avataricons.presence.away.small.Dark
import com.microsoft.fluentui.icons.avataricons.presence.away.small.Light
import kotlin.collections.List as ____KtList

object SmallGroup

val AwayGroup.Small: SmallGroup
    get() = SmallGroup

private var __AllIcons: ____KtList<ImageVector>? = null

val SmallGroup.AllIcons: ____KtList<ImageVector>
    get() {
        if (__AllIcons != null) {
            return __AllIcons!!
        }
        __AllIcons = listOf(Dark, Light)
        return __AllIcons!!
    }
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/away/large/Dark.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.away.large

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.avataricons.presence.away.LargeGroup

val LargeGroup.Dark: ImageVector
    get() {
        if (_dark != null) {
            return _dark!!
        }
        _dark = Builder(name = "Dark", defaultWidth = 20.0.dp, defaultHeight = 20.0.dp,
                viewportWidth = 20.0f, viewportHeight = 20.0f).apply {
            path(fill = SolidColor(Color(0xFF000000)), stroke = SolidColor(Color(0xFF000000)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(10.0f, 10.0f)
                moveToRelative(-9.0f, 0.0f)
                arcToRelative(9.0f, 9.0f, 0.0f, true, true, 18.0f, 0.0f)
                arcToRelative(9.0f, 9.0f, 0.0f, true, true, -18.0f, 0.0f)
            }
            path(fill = SolidColor(Color(0xFFF8D22A)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(10.0f, 18.0f)
                curveTo(14.4183f, 18.0f, 18.0f, 14.4183f, 18.0f, 10.0f)
                curveTo(18.0f, 5.5817f, 14.4183f, 2.0f, 10.0f, 2.0f)
                curveTo(5.5817f, 2.0f, 2.0f, 5.5817f, 2.0f, 10.0f)
                curveTo(2.0f, 14.4183f, 5.5817f, 18.0f, 10.0f, 18.0f)
                close()
                moveTo(10.5f, 6.5f)
                verticalLineTo(9.5194f)
                lineTo(12.6247f, 11.2191f)
                curveTo(13.056f, 11.5641f, 13.1259f, 12.1934f, 12.7809f, 12.6247f)
                curveTo(12.4359f, 13.056f, 11.8066f, 13.1259f, 11.3753f, 12.7809f)
                lineTo(8.8753f, 10.7809f)
                curveTo(8.6381f, 10.5911f, 8.5f, 10.3038f, 8.5f, 10.0f)
                verticalLineTo(6.5f)
                curveTo(8.5f, 5.9477f, 8.9477f, 5.5f, 9.5f, 5.5f)
                curveTo(10.0523f, 5.5f, 10.5f, 5.9477f, 10.5f, 6.5f)
                close()
            }
        }
                .build()
        return _dark!!
    }

private var _dark: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/away/large/Light.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.away.large

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.avataricons.presence.away.LargeGroup

val LargeGroup.Light: ImageVector
    get() {
        if (_light != null) {
            return _light!!
        }
        _light = Builder(name = "Light", defaultWidth = 20.0.dp, defaultHeight = 20.0.dp,
                viewportWidth = 20.0f, viewportHeight = 20.0f).apply {
            path(fill = SolidColor(Color(0xFFffffff)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(10.0f, 1.0f)
                lineTo(10.0f, 1.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 19.0f, 10.0f)
                lineTo(19.0f, 10.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 10.0f, 19.0f)
                lineTo(10.0f, 19.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 1.0f, 10.0f)
                lineTo(1.0f, 10.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 10.0f, 1.0f)
                close()
            }
            path(fill = SolidColor(Color(0xFFffffff)), stroke = SolidColor(Color(0xFFffffff)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(10.0f, 10.0f)
                moveToRelative(-9.0f, 0.0f)
                arcToRelative(9.0f, 9.0f, 0.0f, true, true, 18.0f, 0.0f)
                arcToRelative(9.0f, 9.0f, 0.0f, true, true, -18.0f, 0.0f)
            }
            path(fill = SolidColor(Color(0xFFFFAA44)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(10.0f, 18.0f)
                curveTo(14.4183f, 18.0f, 18.0f, 14.4183f, 18.0f, 10.0f)
                curveTo(18.0f, 5.5817f, 14.4183f, 2.0f, 10.0f, 2.0f)
                curveTo(5.5817f, 2.0f, 2.0f, 5.5817f, 2.0f, 10.0f)
                curveTo(2.0f, 14.4183f, 5.5817f, 18.0f, 10.0f, 18.0f)
                close()
                moveTo(10.5f, 6.5f)
                verticalLineTo(9.5194f)
                lineTo(12.6247f, 11.2191f)
                curveTo(13.056f, 11.5641f, 13.1259f, 12.1934f, 12.7809f, 12.6247f)
                curveTo(12.4359f, 13.056f, 11.8066f, 13.1259f, 11.3753f, 12.7809f)
                lineTo(8.8753f, 10.7809f)
                curveTo(8.6381f, 10.5911f, 8.5f, 10.3038f, 8.5f, 10.0f)
                verticalLineTo(6.5f)
                curveTo(8.5f, 5.9477f, 8.9477f, 5.5f, 9.5f, 5.5f)
                curveTo(10.0523f, 5.5f, 10.5f, 5.9477f, 10.5f, 6.5f)
                close()
            }
            path(fill = SolidColor(Color(0x00000000)), stroke = SolidColor(Color(0xFFffffff)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(10.0f, 1.0f)
                lineTo(10.0f, 1.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 19.0f, 10.0f)
                lineTo(19.0f, 10.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 10.0f, 19.0f)
                lineTo(10.0f, 19.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 1.0f, 10.0f)
                lineTo(1.0f, 10.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 10.0f, 1.0f)
                close()
            }
        }
                .build()
        return _light!!
    }

private var _light: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/away/medium/Dark.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.away.medium

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.avataricons.presence.away.MediumGroup

val MediumGroup.Dark: ImageVector
    get() {
        if (_dark != null) {
            return _dark!!
        }
        _dark = Builder(name = "Dark", defaultWidth = 16.0.dp, defaultHeight = 16.0.dp,
                viewportWidth = 16.0f, viewportHeight = 16.0f).apply {
            path(fill = SolidColor(Color(0xFF000000)), stroke = SolidColor(Color(0xFF000000)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(8.0f, 8.0f)
                moveToRelative(-7.0f, 0.0f)
                arcToRelative(7.0f, 7.0f, 0.0f, true, true, 14.0f, 0.0f)
                arcToRelative(7.0f, 7.0f, 0.0f, true, true, -14.0f, 0.0f)
            }
            path(fill = SolidColor(Color(0xFFF8D22A)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(8.0f, 14.0f)
                curveTo(11.3137f, 14.0f, 14.0f, 11.3137f, 14.0f, 8.0f)
                curveTo(14.0f, 4.6863f, 11.3137f, 2.0f, 8.0f, 2.0f)
                curveTo(4.6863f, 2.0f, 2.0f, 4.6863f, 2.0f, 8.0f)
                curveTo(2.0f, 11.3137f, 4.6863f, 14.0f, 8.0f, 14.0f)
                close()
                moveTo(8.5f, 5.25f)
                verticalLineTo(7.655f)
                lineTo(9.9881f, 8.9306f)
                curveTo(10.3026f, 9.2001f, 10.339f, 9.6736f, 10.0694f, 9.9881f)
                curveTo(9.7999f, 10.3026f, 9.3264f, 10.339f, 9.0119f, 10.0694f)
                lineTo(7.2619f, 8.5694f)
                curveTo(7.0957f, 8.427f, 7.0f, 8.2189f, 7.0f, 8.0f)
                verticalLineTo(5.25f)
                curveTo(7.0f, 4.8358f, 7.3358f, 4.5f, 7.75f, 4.5f)
                curveTo(8.1642f, 4.5f, 8.5f, 4.8358f, 8.5f, 5.25f)
                close()
            }
        }
                .build()
        return _dark!!
    }

private var _dark: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/away/medium/Light.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.away.medium

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.avataricons.presence.away.MediumGroup

val MediumGroup.Light: ImageVector
    get() {
        if (_light != null) {
            return _light!!
        }
        _light = Builder(name = "Light", defaultWidth = 16.0.dp, defaultHeight = 16.0.dp,
                viewportWidth = 16.0f, viewportHeight = 16.0f).apply {
            path(fill = SolidColor(Color(0xFFffffff)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(8.0f, 1.0f)
                lineTo(8.0f, 1.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 15.0f, 8.0f)
                lineTo(15.0f, 8.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 8.0f, 15.0f)
                lineTo(8.0f, 15.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 1.0f, 8.0f)
                lineTo(1.0f, 8.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 8.0f, 1.0f)
                close()
            }
            path(fill = SolidColor(Color(0xFFffffff)), stroke = SolidColor(Color(0xFFffffff)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(8.0f, 8.0f)
                moveToRelative(-7.0f, 0.0f)
                arcToRelative(7.0f, 7.0f, 0.0f, true, true, 14.0f, 0.0f)
                arcToRelative(7.0f, 7.0f, 0.0f, true, true, -14.0f, 0.0f)
            }
            path(fill = SolidColor(Color(0xFFFFAA44)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(8.0f, 14.0f)
                curveTo(11.3137f, 14.0f, 14.0f, 11.3137f, 14.0f, 8.0f)
                curveTo(14.0f, 4.6863f, 11.3137f, 2.0f, 8.0f, 2.0f)
                curveTo(4.6863f, 2.0f, 2.0f, 4.6863f, 2.0f, 8.0f)
                curveTo(2.0f, 11.3137f, 4.6863f, 14.0f, 8.0f, 14.0f)
                close()
                moveTo(8.5f, 5.25f)
                verticalLineTo(7.655f)
                lineTo(9.9881f, 8.9306f)
                curveTo(10.3026f, 9.2001f, 10.339f, 9.6736f, 10.0694f, 9.9881f)
                curveTo(9.7999f, 10.3026f, 9.3264f, 10.339f, 9.0119f, 10.0694f)
                lineTo(7.2619f, 8.5694f)
                curveTo(7.0957f, 8.427f, 7.0f, 8.2189f, 7.0f, 8.0f)
                verticalLineTo(5.25f)
                curveTo(7.0f, 4.8358f, 7.3358f, 4.5f, 7.75f, 4.5f)
                curveTo(8.1642f, 4.5f, 8.5f, 4.8358f, 8.5f, 5.25f)
                close()
            }
            path(fill = SolidColor(Color(0x00000000)), stroke = SolidColor(Color(0xFFffffff)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(8.0f, 1.0f)
                lineTo(8.0f, 1.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 15.0f, 8.0f)
                lineTo(15.0f, 8.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 8.0f, 15.0f)
                lineTo(8.0f, 15.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 1.0f, 8.0f)
                lineTo(1.0f, 8.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 8.0f, 1.0f)
                close()
            }
        }
                .build()
        return _light!!
    }

private var _light: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/away/small/Dark.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.away.small

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.avataricons.presence.away.SmallGroup

val SmallGroup.Dark: ImageVector
    get() {
        if (_dark != null) {
            return _dark!!
        }
        _dark = Builder(name = "Dark", defaultWidth = 14.0.dp, defaultHeight = 14.0.dp,
                viewportWidth = 14.0f, viewportHeight = 14.0f).apply {
            path(fill = SolidColor(Color(0xFF000000)), stroke = SolidColor(Color(0xFF000000)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(7.0f, 7.0f)
                moveToRelative(-6.0f, 0.0f)
                arcToRelative(6.0f, 6.0f, 0.0f, true, true, 12.0f, 0.0f)
                arcToRelative(6.0f, 6.0f, 0.0f, true, true, -12.0f, 0.0f)
            }
            path(fill = SolidColor(Color(0xFFF8D22A)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(7.0f, 12.0f)
                curveTo(9.7614f, 12.0f, 12.0f, 9.7614f, 12.0f, 7.0f)
                curveTo(12.0f, 4.2386f, 9.7614f, 2.0f, 7.0f, 2.0f)
                curveTo(4.2386f, 2.0f, 2.0f, 4.2386f, 2.0f, 7.0f)
                curveTo(2.0f, 9.7614f, 4.2386f, 12.0f, 7.0f, 12.0f)
                close()
                moveTo(7.0f, 5.0041f)
                verticalLineTo(6.7931f)
                lineTo(8.3535f, 8.1467f)
                curveTo(8.5488f, 8.3419f, 8.5488f, 8.6585f, 8.3535f, 8.8538f)
                curveTo(8.1583f, 9.049f, 7.8417f, 9.049f, 7.6465f, 8.8538f)
                lineTo(6.1465f, 7.3538f)
                curveTo(6.0527f, 7.26f, 6.0f, 7.1328f, 6.0f, 7.0002f)
                verticalLineTo(5.0041f)
                curveTo(6.0f, 4.728f, 6.2239f, 4.5041f, 6.5f, 4.5041f)
                curveTo(6.7761f, 4.5041f, 7.0f, 4.728f, 7.0f, 5.0041f)
                close()
            }
        }
                .build()
        return _dark!!
    }

private var _dark: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/away/small/Light.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.away.small

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.avataricons.presence.away.SmallGroup

val SmallGroup.Light: ImageVector
    get() {
        if (_light != null) {
            return _light!!
        }
        _light = Builder(name = "Light", defaultWidth = 14.0.dp, defaultHeight = 14.0.dp,
                viewportWidth = 14.0f, viewportHeight = 14.0f).apply {
            path(fill = SolidColor(Color(0xFFffffff)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(7.0f, 1.0f)
                lineTo(7.0f, 1.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 13.0f, 7.0f)
                lineTo(13.0f, 7.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 7.0f, 13.0f)
                lineTo(7.0f, 13.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 1.0f, 7.0f)
                lineTo(1.0f, 7.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 7.0f, 1.0f)
                close()
            }
            path(fill = SolidColor(Color(0xFFFFAA44)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(7.0f, 12.0f)
                curveTo(9.7614f, 12.0f, 12.0f, 9.7614f, 12.0f, 7.0f)
                curveTo(12.0f, 4.2386f, 9.7614f, 2.0f, 7.0f, 2.0f)
                curveTo(4.2386f, 2.0f, 2.0f, 4.2386f, 2.0f, 7.0f)
                curveTo(2.0f, 9.7614f, 4.2386f, 12.0f, 7.0f, 12.0f)
                close()
                moveTo(7.0f, 5.0041f)
                verticalLineTo(6.7931f)
                lineTo(8.3535f, 8.1467f)
                curveTo(8.5488f, 8.3419f, 8.5488f, 8.6585f, 8.3535f, 8.8538f)
                curveTo(8.1583f, 9.049f, 7.8417f, 9.049f, 7.6465f, 8.8538f)
                lineTo(6.1465f, 7.3538f)
                curveTo(6.0527f, 7.26f, 6.0f, 7.1328f, 6.0f, 7.0002f)
                verticalLineTo(5.0041f)
                curveTo(6.0f, 4.728f, 6.2239f, 4.5041f, 6.5f, 4.5041f)
                curveTo(6.7761f, 4.5041f, 7.0f, 4.728f, 7.0f, 5.0041f)
                close()
            }
            path(fill = SolidColor(Color(0x00000000)), stroke = SolidColor(Color(0xFFffffff)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(7.0f, 1.0f)
                lineTo(7.0f, 1.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 13.0f, 7.0f)
                lineTo(13.0f, 7.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 7.0f, 13.0f)
                lineTo(7.0f, 13.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 1.0f, 7.0f)
                lineTo(1.0f, 7.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 7.0f, 1.0f)
                close()
            }
        }
                .build()
        return _light!!
    }

private var _light: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/awayoof/__Large.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.awayoof

import androidx.compose.ui.graphics.vector.ImageVector
import com.microsoft.fluentui.icons.avataricons.presence.AwayoofGroup
import com.microsoft.fluentui.icons.avataricons.presence.awayoof.large.Dark
import com.microsoft.fluentui.icons.avataricons.presence.awayoof.large.Light
import kotlin.collections.List as ____KtList

object LargeGroup

val AwayoofGroup.Large: LargeGroup
    get() = LargeGroup

private var __AllIcons: ____KtList<ImageVector>? = null

val LargeGroup.AllIcons: ____KtList<ImageVector>
    get() {
        if (__AllIcons != null) {
            return __AllIcons!!
        }
        __AllIcons = listOf(Dark, Light)
        return __AllIcons!!
    }
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/awayoof/__Medium.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.awayoof

import androidx.compose.ui.graphics.vector.ImageVector
import com.microsoft.fluentui.icons.avataricons.presence.AwayoofGroup
import com.microsoft.fluentui.icons.avataricons.presence.awayoof.medium.Dark
import com.microsoft.fluentui.icons.avataricons.presence.awayoof.medium.Light
import kotlin.collections.List as ____KtList

object MediumGroup

val AwayoofGroup.Medium: MediumGroup
    get() = MediumGroup

private var __AllIcons: ____KtList<ImageVector>? = null

val MediumGroup.AllIcons: ____KtList<ImageVector>
    get() {
        if (__AllIcons != null) {
            return __AllIcons!!
        }
        __AllIcons = listOf(Dark, Light)
        return __AllIcons!!
    }
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/awayoof/__Small.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.awayoof

import androidx.compose.ui.graphics.vector.ImageVector
import com.microsoft.fluentui.icons.avataricons.presence.AwayoofGroup
import com.microsoft.fluentui.icons.avataricons.presence.awayoof.small.Dark
import com.microsoft.fluentui.icons.avataricons.presence.awayoof.small.Light
import kotlin.collections.List as ____KtList

object SmallGroup

val AwayoofGroup.Small: SmallGroup
    get() = SmallGroup

private var __AllIcons: ____KtList<ImageVector>? = null

val SmallGroup.AllIcons: ____KtList<ImageVector>
    get() {
        if (__AllIcons != null) {
            return __AllIcons!!
        }
        __AllIcons = listOf(Dark, Light)
        return __AllIcons!!
    }
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/awayoof/large/Dark.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.awayoof.large

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.avataricons.presence.awayoof.LargeGroup

val LargeGroup.Dark: ImageVector
    get() {
        if (_dark != null) {
            return _dark!!
        }
        _dark = Builder(name = "Dark", defaultWidth = 20.0.dp, defaultHeight = 20.0.dp,
                viewportWidth = 20.0f, viewportHeight = 20.0f).apply {
            path(fill = SolidColor(Color(0xFF000000)), stroke = SolidColor(Color(0xFF000000)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(10.0f, 10.0f)
                moveToRelative(-9.0f, 0.0f)
                arcToRelative(9.0f, 9.0f, 0.0f, true, true, 18.0f, 0.0f)
                arcToRelative(9.0f, 9.0f, 0.0f, true, true, -18.0f, 0.0f)
            }
            path(fill = SolidColor(Color(0xFFE959D9)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(10.2071f, 8.2074f)
                curveTo(10.5976f, 7.8168f, 10.5976f, 7.1837f, 10.2071f, 6.7931f)
                curveTo(9.8166f, 6.4026f, 9.1834f, 6.4026f, 8.7929f, 6.7931f)
                lineTo(6.2929f, 9.293f)
                curveTo(6.1054f, 9.4806f, 6.0f, 9.7349f, 6.0f, 10.0002f)
                curveTo(6.0f, 10.2654f, 6.1054f, 10.5197f, 6.2929f, 10.7073f)
                lineTo(8.7929f, 13.2073f)
                curveTo(9.1834f, 13.5978f, 9.8166f, 13.5978f, 10.2071f, 13.2073f)
                curveTo(10.5976f, 12.8167f, 10.5976f, 12.1836f, 10.2071f, 11.7931f)
                lineTo(9.4142f, 11.0002f)
                horizontalLineTo(13.0f)
                curveTo(13.5523f, 11.0002f, 14.0f, 10.5524f, 14.0f, 10.0002f)
                curveTo(14.0f, 9.4479f, 13.5523f, 9.0002f, 13.0f, 9.0002f)
                horizontalLineTo(9.4143f)
                lineTo(10.2071f, 8.2074f)
                close()
                moveTo(10.0f, 2.0f)
                curveTo(5.5817f, 2.0f, 2.0f, 5.5817f, 2.0f, 10.0f)
                curveTo(2.0f, 14.4183f, 5.5817f, 18.0f, 10.0f, 18.0f)
                curveTo(14.4183f, 18.0f, 18.0f, 14.4183f, 18.0f, 10.0f)
                curveTo(18.0f, 5.5817f, 14.4183f, 2.0f, 10.0f, 2.0f)
                close()
                moveTo(4.0f, 10.0f)
                curveTo(4.0f, 6.6863f, 6.6863f, 4.0f, 10.0f, 4.0f)
                curveTo(13.3137f, 4.0f, 16.0f, 6.6863f, 16.0f, 10.0f)
                curveTo(16.0f, 13.3137f, 13.3137f, 16.0f, 10.0f, 16.0f)
                curveTo(6.6863f, 16.0f, 4.0f, 13.3137f, 4.0f, 10.0f)
                close()
            }
        }
                .build()
        return _dark!!
    }

private var _dark: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/awayoof/large/Light.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.awayoof.large

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.avataricons.presence.awayoof.LargeGroup

val LargeGroup.Light: ImageVector
    get() {
        if (_light != null) {
            return _light!!
        }
        _light = Builder(name = "Light", defaultWidth = 20.0.dp, defaultHeight = 20.0.dp,
                viewportWidth = 20.0f, viewportHeight = 20.0f).apply {
            path(fill = SolidColor(Color(0xFFffffff)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(10.0f, 1.0f)
                lineTo(10.0f, 1.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 19.0f, 10.0f)
                lineTo(19.0f, 10.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 10.0f, 19.0f)
                lineTo(10.0f, 19.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 1.0f, 10.0f)
                lineTo(1.0f, 10.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 10.0f, 1.0f)
                close()
            }
            path(fill = SolidColor(Color(0xFFffffff)), stroke = SolidColor(Color(0xFFffffff)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(10.0f, 10.0f)
                moveToRelative(-9.0f, 0.0f)
                arcToRelative(9.0f, 9.0f, 0.0f, true, true, 18.0f, 0.0f)
                arcToRelative(9.0f, 9.0f, 0.0f, true, true, -18.0f, 0.0f)
            }
            path(fill = SolidColor(Color(0xFFB4009E)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(10.2071f, 8.2074f)
                curveTo(10.5976f, 7.8168f, 10.5976f, 7.1837f, 10.2071f, 6.7931f)
                curveTo(9.8166f, 6.4026f, 9.1834f, 6.4026f, 8.7929f, 6.7931f)
                lineTo(6.2929f, 9.293f)
                curveTo(6.1054f, 9.4806f, 6.0f, 9.7349f, 6.0f, 10.0002f)
                curveTo(6.0f, 10.2654f, 6.1054f, 10.5197f, 6.2929f, 10.7073f)
                lineTo(8.7929f, 13.2073f)
                curveTo(9.1834f, 13.5978f, 9.8166f, 13.5978f, 10.2071f, 13.2073f)
                curveTo(10.5976f, 12.8167f, 10.5976f, 12.1836f, 10.2071f, 11.7931f)
                lineTo(9.4142f, 11.0002f)
                horizontalLineTo(13.0f)
                curveTo(13.5523f, 11.0002f, 14.0f, 10.5524f, 14.0f, 10.0002f)
                curveTo(14.0f, 9.4479f, 13.5523f, 9.0002f, 13.0f, 9.0002f)
                horizontalLineTo(9.4143f)
                lineTo(10.2071f, 8.2074f)
                close()
                moveTo(10.0f, 2.0f)
                curveTo(5.5817f, 2.0f, 2.0f, 5.5817f, 2.0f, 10.0f)
                curveTo(2.0f, 14.4183f, 5.5817f, 18.0f, 10.0f, 18.0f)
                curveTo(14.4183f, 18.0f, 18.0f, 14.4183f, 18.0f, 10.0f)
                curveTo(18.0f, 5.5817f, 14.4183f, 2.0f, 10.0f, 2.0f)
                close()
                moveTo(4.0f, 10.0f)
                curveTo(4.0f, 6.6863f, 6.6863f, 4.0f, 10.0f, 4.0f)
                curveTo(13.3137f, 4.0f, 16.0f, 6.6863f, 16.0f, 10.0f)
                curveTo(16.0f, 13.3137f, 13.3137f, 16.0f, 10.0f, 16.0f)
                curveTo(6.6863f, 16.0f, 4.0f, 13.3137f, 4.0f, 10.0f)
                close()
            }
            path(fill = SolidColor(Color(0x00000000)), stroke = SolidColor(Color(0xFFffffff)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(10.0f, 1.0f)
                lineTo(10.0f, 1.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 19.0f, 10.0f)
                lineTo(19.0f, 10.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 10.0f, 19.0f)
                lineTo(10.0f, 19.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 1.0f, 10.0f)
                lineTo(1.0f, 10.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 10.0f, 1.0f)
                close()
            }
        }
                .build()
        return _light!!
    }

private var _light: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/awayoof/medium/Dark.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.awayoof.medium

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.avataricons.presence.awayoof.MediumGroup

val MediumGroup.Dark: ImageVector
    get() {
        if (_dark != null) {
            return _dark!!
        }
        _dark = Builder(name = "Dark", defaultWidth = 16.0.dp, defaultHeight = 16.0.dp,
                viewportWidth = 16.0f, viewportHeight = 16.0f).apply {
            path(fill = SolidColor(Color(0xFF000000)), stroke = SolidColor(Color(0xFF000000)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(8.0f, 8.0f)
                moveToRelative(-7.0f, 0.0f)
                arcToRelative(7.0f, 7.0f, 0.0f, true, true, 14.0f, 0.0f)
                arcToRelative(7.0f, 7.0f, 0.0f, true, true, -14.0f, 0.0f)
            }
            path(fill = SolidColor(Color(0xFFE959D9)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(8.2812f, 6.5284f)
                curveTo(8.5741f, 6.2355f, 8.5741f, 5.7606f, 8.2812f, 5.4677f)
                curveTo(7.9883f, 5.1748f, 7.5134f, 5.1748f, 7.2205f, 5.4677f)
                lineTo(5.2185f, 7.4698f)
                curveTo(4.9256f, 7.7627f, 4.9256f, 8.2376f, 5.2185f, 8.5304f)
                lineTo(7.2205f, 10.5325f)
                curveTo(7.5134f, 10.8254f, 7.9883f, 10.8254f, 8.2812f, 10.5325f)
                curveTo(8.5741f, 10.2396f, 8.5741f, 9.7647f, 8.2812f, 9.4719f)
                lineTo(7.5594f, 8.7501f)
                horizontalLineTo(10.2499f)
                curveTo(10.6641f, 8.7501f, 10.9999f, 8.4143f, 10.9999f, 8.0001f)
                curveTo(10.9999f, 7.5859f, 10.6641f, 7.2501f, 10.2499f, 7.2501f)
                horizontalLineTo(7.5594f)
                lineTo(8.2812f, 6.5284f)
                close()
                moveTo(8.0f, 2.0f)
                curveTo(4.6863f, 2.0f, 2.0f, 4.6863f, 2.0f, 8.0f)
                curveTo(2.0f, 11.3137f, 4.6863f, 14.0f, 8.0f, 14.0f)
                curveTo(11.3137f, 14.0f, 14.0f, 11.3137f, 14.0f, 8.0f)
                curveTo(14.0f, 4.6863f, 11.3137f, 2.0f, 8.0f, 2.0f)
                close()
                moveTo(3.5f, 8.0f)
                curveTo(3.5f, 5.5147f, 5.5147f, 3.5f, 8.0f, 3.5f)
                curveTo(10.4853f, 3.5f, 12.5f, 5.5147f, 12.5f, 8.0f)
                curveTo(12.5f, 10.4853f, 10.4853f, 12.5f, 8.0f, 12.5f)
                curveTo(5.5147f, 12.5f, 3.5f, 10.4853f, 3.5f, 8.0f)
                close()
            }
        }
                .build()
        return _dark!!
    }

private var _dark: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/awayoof/medium/Light.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.awayoof.medium

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.avataricons.presence.awayoof.MediumGroup

val MediumGroup.Light: ImageVector
    get() {
        if (_light != null) {
            return _light!!
        }
        _light = Builder(name = "Light", defaultWidth = 16.0.dp, defaultHeight = 16.0.dp,
                viewportWidth = 16.0f, viewportHeight = 16.0f).apply {
            path(fill = SolidColor(Color(0xFFffffff)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(8.0f, 1.0f)
                lineTo(8.0f, 1.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 15.0f, 8.0f)
                lineTo(15.0f, 8.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 8.0f, 15.0f)
                lineTo(8.0f, 15.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 1.0f, 8.0f)
                lineTo(1.0f, 8.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 8.0f, 1.0f)
                close()
            }
            path(fill = SolidColor(Color(0xFFffffff)), stroke = SolidColor(Color(0xFFffffff)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(8.0f, 8.0f)
                moveToRelative(-7.0f, 0.0f)
                arcToRelative(7.0f, 7.0f, 0.0f, true, true, 14.0f, 0.0f)
                arcToRelative(7.0f, 7.0f, 0.0f, true, true, -14.0f, 0.0f)
            }
            path(fill = SolidColor(Color(0xFFB4009E)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(8.2812f, 6.5284f)
                curveTo(8.5741f, 6.2355f, 8.5741f, 5.7606f, 8.2812f, 5.4677f)
                curveTo(7.9883f, 5.1748f, 7.5134f, 5.1748f, 7.2205f, 5.4677f)
                lineTo(5.2185f, 7.4698f)
                curveTo(4.9256f, 7.7627f, 4.9256f, 8.2376f, 5.2185f, 8.5304f)
                lineTo(7.2205f, 10.5325f)
                curveTo(7.5134f, 10.8254f, 7.9883f, 10.8254f, 8.2812f, 10.5325f)
                curveTo(8.5741f, 10.2396f, 8.5741f, 9.7647f, 8.2812f, 9.4719f)
                lineTo(7.5594f, 8.7501f)
                horizontalLineTo(10.2499f)
                curveTo(10.6641f, 8.7501f, 10.9999f, 8.4143f, 10.9999f, 8.0001f)
                curveTo(10.9999f, 7.5859f, 10.6641f, 7.2501f, 10.2499f, 7.2501f)
                horizontalLineTo(7.5594f)
                lineTo(8.2812f, 6.5284f)
                close()
                moveTo(8.0f, 2.0f)
                curveTo(4.6863f, 2.0f, 2.0f, 4.6863f, 2.0f, 8.0f)
                curveTo(2.0f, 11.3137f, 4.6863f, 14.0f, 8.0f, 14.0f)
                curveTo(11.3137f, 14.0f, 14.0f, 11.3137f, 14.0f, 8.0f)
                curveTo(14.0f, 4.6863f, 11.3137f, 2.0f, 8.0f, 2.0f)
                close()
                moveTo(3.5f, 8.0f)
                curveTo(3.5f, 5.5147f, 5.5147f, 3.5f, 8.0f, 3.5f)
                curveTo(10.4853f, 3.5f, 12.5f, 5.5147f, 12.5f, 8.0f)
                curveTo(12.5f, 10.4853f, 10.4853f, 12.5f, 8.0f, 12.5f)
                curveTo(5.5147f, 12.5f, 3.5f, 10.4853f, 3.5f, 8.0f)
                close()
            }
            path(fill = SolidColor(Color(0x00000000)), stroke = SolidColor(Color(0xFFffffff)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(8.0f, 1.0f)
                lineTo(8.0f, 1.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 15.0f, 8.0f)
                lineTo(15.0f, 8.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 8.0f, 15.0f)
                lineTo(8.0f, 15.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 1.0f, 8.0f)
                lineTo(1.0f, 8.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 8.0f, 1.0f)
                close()
            }
        }
                .build()
        return _light!!
    }

private var _light: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/awayoof/small/Dark.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.awayoof.small

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.avataricons.presence.awayoof.SmallGroup

val SmallGroup.Dark: ImageVector
    get() {
        if (_dark != null) {
            return _dark!!
        }
        _dark = Builder(name = "Dark", defaultWidth = 14.0.dp, defaultHeight = 14.0.dp,
                viewportWidth = 14.0f, viewportHeight = 14.0f).apply {
            path(fill = SolidColor(Color(0xFF000000)), stroke = SolidColor(Color(0xFF000000)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(7.0f, 7.0f)
                moveToRelative(-6.0f, 0.0f)
                arcToRelative(6.0f, 6.0f, 0.0f, true, true, 12.0f, 0.0f)
                arcToRelative(6.0f, 6.0f, 0.0f, true, true, -12.0f, 0.0f)
            }
            path(fill = SolidColor(Color(0xFFE959D9)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(7.3488f, 5.8508f)
                curveTo(7.5439f, 5.6554f, 7.5436f, 5.3388f, 7.3482f, 5.1437f)
                curveTo(7.1527f, 4.9486f, 6.8362f, 4.9489f, 6.641f, 5.1443f)
                lineTo(5.1436f, 6.6443f)
                curveTo(4.9487f, 6.8395f, 4.9487f, 7.1556f, 5.1436f, 7.3508f)
                lineTo(6.6411f, 8.8508f)
                curveTo(6.8362f, 9.0462f, 7.1527f, 9.0465f, 7.3482f, 8.8514f)
                curveTo(7.5436f, 8.6563f, 7.5439f, 8.3397f, 7.3488f, 8.1443f)
                lineTo(6.7031f, 7.4976f)
                horizontalLineTo(8.5027f)
                curveTo(8.7788f, 7.4976f, 9.0027f, 7.2737f, 9.0027f, 6.9976f)
                curveTo(9.0027f, 6.7214f, 8.7788f, 6.4976f, 8.5027f, 6.4976f)
                horizontalLineTo(6.7031f)
                lineTo(7.3488f, 5.8508f)
                close()
                moveTo(6.9977f, 2.0f)
                curveTo(4.2375f, 2.0f, 2.0f, 4.2375f, 2.0f, 6.9977f)
                curveTo(2.0f, 9.7578f, 4.2375f, 11.9954f, 6.9977f, 11.9954f)
                curveTo(9.7578f, 11.9954f, 11.9954f, 9.7578f, 11.9954f, 6.9977f)
                curveTo(11.9954f, 4.2375f, 9.7578f, 2.0f, 6.9977f, 2.0f)
                close()
                moveTo(3.0f, 6.9977f)
                curveTo(3.0f, 4.7898f, 4.7898f, 3.0f, 6.9977f, 3.0f)
                curveTo(9.2056f, 3.0f, 10.9954f, 4.7898f, 10.9954f, 6.9977f)
                curveTo(10.9954f, 9.2056f, 9.2056f, 10.9954f, 6.9977f, 10.9954f)
                curveTo(4.7898f, 10.9954f, 3.0f, 9.2056f, 3.0f, 6.9977f)
                close()
            }
        }
                .build()
        return _dark!!
    }

private var _dark: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/awayoof/small/Light.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.awayoof.small

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.avataricons.presence.awayoof.SmallGroup

val SmallGroup.Light: ImageVector
    get() {
        if (_light != null) {
            return _light!!
        }
        _light = Builder(name = "Light", defaultWidth = 14.0.dp, defaultHeight = 14.0.dp,
                viewportWidth = 14.0f, viewportHeight = 14.0f).apply {
            path(fill = SolidColor(Color(0xFFffffff)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(7.0f, 1.0f)
                lineTo(7.0f, 1.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 13.0f, 7.0f)
                lineTo(13.0f, 7.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 7.0f, 13.0f)
                lineTo(7.0f, 13.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 1.0f, 7.0f)
                lineTo(1.0f, 7.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 7.0f, 1.0f)
                close()
            }
            path(fill = SolidColor(Color(0xFFffffff)), stroke = SolidColor(Color(0xFFffffff)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(7.0f, 7.0f)
                moveToRelative(-6.0f, 0.0f)
                arcToRelative(6.0f, 6.0f, 0.0f, true, true, 12.0f, 0.0f)
                arcToRelative(6.0f, 6.0f, 0.0f, true, true, -12.0f, 0.0f)
            }
            path(fill = SolidColor(Color(0xFFB4009E)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(7.3488f, 5.8508f)
                curveTo(7.5439f, 5.6554f, 7.5436f, 5.3388f, 7.3482f, 5.1437f)
                curveTo(7.1527f, 4.9486f, 6.8362f, 4.9489f, 6.641f, 5.1443f)
                lineTo(5.1436f, 6.6443f)
                curveTo(4.9487f, 6.8395f, 4.9487f, 7.1556f, 5.1436f, 7.3508f)
                lineTo(6.6411f, 8.8508f)
                curveTo(6.8362f, 9.0462f, 7.1527f, 9.0465f, 7.3482f, 8.8514f)
                curveTo(7.5436f, 8.6563f, 7.5439f, 8.3397f, 7.3488f, 8.1443f)
                lineTo(6.7031f, 7.4976f)
                horizontalLineTo(8.5027f)
                curveTo(8.7788f, 7.4976f, 9.0027f, 7.2737f, 9.0027f, 6.9976f)
                curveTo(9.0027f, 6.7214f, 8.7788f, 6.4976f, 8.5027f, 6.4976f)
                horizontalLineTo(6.7031f)
                lineTo(7.3488f, 5.8508f)
                close()
                moveTo(6.9977f, 2.0f)
                curveTo(4.2375f, 2.0f, 2.0f, 4.2375f, 2.0f, 6.9977f)
                curveTo(2.0f, 9.7578f, 4.2375f, 11.9954f, 6.9977f, 11.9954f)
                curveTo(9.7578f, 11.9954f, 11.9954f, 9.7578f, 11.9954f, 6.9977f)
                curveTo(11.9954f, 4.2375f, 9.7578f, 2.0f, 6.9977f, 2.0f)
                close()
                moveTo(3.0f, 6.9977f)
                curveTo(3.0f, 4.7898f, 4.7898f, 3.0f, 6.9977f, 3.0f)
                curveTo(9.2056f, 3.0f, 10.9954f, 4.7898f, 10.9954f, 6.9977f)
                curveTo(10.9954f, 9.2056f, 9.2056f, 10.9954f, 6.9977f, 10.9954f)
                curveTo(4.7898f, 10.9954f, 3.0f, 9.2056f, 3.0f, 6.9977f)
                close()
            }
            path(fill = SolidColor(Color(0x00000000)), stroke = SolidColor(Color(0xFFffffff)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(7.0f, 1.0f)
                lineTo(7.0f, 1.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 13.0f, 7.0f)
                lineTo(13.0f, 7.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 7.0f, 13.0f)
                lineTo(7.0f, 13.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 1.0f, 7.0f)
                lineTo(1.0f, 7.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 7.0f, 1.0f)
                close()
            }
        }
                .build()
        return _light!!
    }

private var _light: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/blocked/__Large.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.blocked

import androidx.compose.ui.graphics.vector.ImageVector
import com.microsoft.fluentui.icons.avataricons.presence.BlockedGroup
import com.microsoft.fluentui.icons.avataricons.presence.blocked.large.Dark
import com.microsoft.fluentui.icons.avataricons.presence.blocked.large.Light
import kotlin.collections.List as ____KtList

object LargeGroup

val BlockedGroup.Large: LargeGroup
    get() = LargeGroup

private var __AllIcons: ____KtList<ImageVector>? = null

val LargeGroup.AllIcons: ____KtList<ImageVector>
    get() {
        if (__AllIcons != null) {
            return __AllIcons!!
        }
        __AllIcons = listOf(Dark, Light)
        return __AllIcons!!
    }
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/blocked/__Medium.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.blocked

import androidx.compose.ui.graphics.vector.ImageVector
import com.microsoft.fluentui.icons.avataricons.presence.BlockedGroup
import com.microsoft.fluentui.icons.avataricons.presence.blocked.medium.Dark
import com.microsoft.fluentui.icons.avataricons.presence.blocked.medium.Light
import kotlin.collections.List as ____KtList

object MediumGroup

val BlockedGroup.Medium: MediumGroup
    get() = MediumGroup

private var __AllIcons: ____KtList<ImageVector>? = null

val MediumGroup.AllIcons: ____KtList<ImageVector>
    get() {
        if (__AllIcons != null) {
            return __AllIcons!!
        }
        __AllIcons = listOf(Dark, Light)
        return __AllIcons!!
    }
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/blocked/__Small.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.blocked

import androidx.compose.ui.graphics.vector.ImageVector
import com.microsoft.fluentui.icons.avataricons.presence.BlockedGroup
import com.microsoft.fluentui.icons.avataricons.presence.blocked.small.Dark
import com.microsoft.fluentui.icons.avataricons.presence.blocked.small.Light
import kotlin.collections.List as ____KtList

object SmallGroup

val BlockedGroup.Small: SmallGroup
    get() = SmallGroup

private var __AllIcons: ____KtList<ImageVector>? = null

val SmallGroup.AllIcons: ____KtList<ImageVector>
    get() {
        if (__AllIcons != null) {
            return __AllIcons!!
        }
        __AllIcons = listOf(Dark, Light)
        return __AllIcons!!
    }
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/blocked/large/Dark.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.blocked.large

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.avataricons.presence.blocked.LargeGroup

val LargeGroup.Dark: ImageVector
    get() {
        if (_dark != null) {
            return _dark!!
        }
        _dark = Builder(name = "Dark", defaultWidth = 20.0.dp, defaultHeight = 20.0.dp,
                viewportWidth = 20.0f, viewportHeight = 20.0f).apply {
            path(fill = SolidColor(Color(0xFF000000)), stroke = SolidColor(Color(0xFF000000)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(10.0f, 10.0f)
                moveToRelative(-9.0f, 0.0f)
                arcToRelative(9.0f, 9.0f, 0.0f, true, true, 18.0f, 0.0f)
                arcToRelative(9.0f, 9.0f, 0.0f, true, true, -18.0f, 0.0f)
            }
            path(fill = SolidColor(Color(0xFFD74553)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(18.0f, 10.0f)
                curveTo(18.0f, 14.4183f, 14.4183f, 18.0f, 10.0f, 18.0f)
                curveTo(5.5817f, 18.0f, 2.0f, 14.4183f, 2.0f, 10.0f)
                curveTo(2.0f, 5.5817f, 5.5817f, 2.0f, 10.0f, 2.0f)
                curveTo(14.4183f, 2.0f, 18.0f, 5.5817f, 18.0f, 10.0f)
                close()
                moveTo(16.0f, 10.0f)
                curveTo(16.0f, 8.7042f, 15.5892f, 7.5042f, 14.8907f, 6.5234f)
                lineTo(6.5234f, 14.8907f)
                curveTo(7.5042f, 15.5892f, 8.7042f, 16.0f, 10.0f, 16.0f)
                curveTo(13.3137f, 16.0f, 16.0f, 13.3137f, 16.0f, 10.0f)
                close()
                moveTo(13.4765f, 5.1092f)
                curveTo(12.4957f, 4.4108f, 11.2958f, 4.0f, 10.0f, 4.0f)
                curveTo(6.6863f, 4.0f, 4.0f, 6.6863f, 4.0f, 10.0f)
                curveTo(4.0f, 11.2958f, 4.4108f, 12.4957f, 5.1092f, 13.4765f)
                lineTo(13.4765f, 5.1092f)
                close()
            }
        }
                .build()
        return _dark!!
    }

private var _dark: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/blocked/large/Light.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.blocked.large

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.avataricons.presence.blocked.LargeGroup

val LargeGroup.Light: ImageVector
    get() {
        if (_light != null) {
            return _light!!
        }
        _light = Builder(name = "Light", defaultWidth = 20.0.dp, defaultHeight = 20.0.dp,
                viewportWidth = 20.0f, viewportHeight = 20.0f).apply {
            path(fill = SolidColor(Color(0xFFffffff)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(10.0f, 1.0f)
                lineTo(10.0f, 1.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 19.0f, 10.0f)
                lineTo(19.0f, 10.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 10.0f, 19.0f)
                lineTo(10.0f, 19.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 1.0f, 10.0f)
                lineTo(1.0f, 10.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 10.0f, 1.0f)
                close()
            }
            path(fill = SolidColor(Color(0xFFffffff)), stroke = SolidColor(Color(0xFFffffff)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(10.0f, 10.0f)
                moveToRelative(-9.0f, 0.0f)
                arcToRelative(9.0f, 9.0f, 0.0f, true, true, 18.0f, 0.0f)
                arcToRelative(9.0f, 9.0f, 0.0f, true, true, -18.0f, 0.0f)
            }
            path(fill = SolidColor(Color(0xFFC50F1F)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(18.0f, 10.0f)
                curveTo(18.0f, 14.4183f, 14.4183f, 18.0f, 10.0f, 18.0f)
                curveTo(5.5817f, 18.0f, 2.0f, 14.4183f, 2.0f, 10.0f)
                curveTo(2.0f, 5.5817f, 5.5817f, 2.0f, 10.0f, 2.0f)
                curveTo(14.4183f, 2.0f, 18.0f, 5.5817f, 18.0f, 10.0f)
                close()
                moveTo(16.0f, 10.0f)
                curveTo(16.0f, 8.7042f, 15.5892f, 7.5042f, 14.8907f, 6.5234f)
                lineTo(6.5234f, 14.8907f)
                curveTo(7.5042f, 15.5892f, 8.7042f, 16.0f, 10.0f, 16.0f)
                curveTo(13.3137f, 16.0f, 16.0f, 13.3137f, 16.0f, 10.0f)
                close()
                moveTo(13.4765f, 5.1092f)
                curveTo(12.4957f, 4.4108f, 11.2958f, 4.0f, 10.0f, 4.0f)
                curveTo(6.6863f, 4.0f, 4.0f, 6.6863f, 4.0f, 10.0f)
                curveTo(4.0f, 11.2958f, 4.4108f, 12.4957f, 5.1092f, 13.4765f)
                lineTo(13.4765f, 5.1092f)
                close()
            }
            path(fill = SolidColor(Color(0x00000000)), stroke = SolidColor(Color(0xFFffffff)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(10.0f, 1.0f)
                lineTo(10.0f, 1.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 19.0f, 10.0f)
                lineTo(19.0f, 10.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 10.0f, 19.0f)
                lineTo(10.0f, 19.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 1.0f, 10.0f)
                lineTo(1.0f, 10.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 10.0f, 1.0f)
                close()
            }
        }
                .build()
        return _light!!
    }

private var _light: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/blocked/medium/Dark.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.blocked.medium

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.avataricons.presence.blocked.MediumGroup

val MediumGroup.Dark: ImageVector
    get() {
        if (_dark != null) {
            return _dark!!
        }
        _dark = Builder(name = "Dark", defaultWidth = 16.0.dp, defaultHeight = 16.0.dp,
                viewportWidth = 16.0f, viewportHeight = 16.0f).apply {
            path(fill = SolidColor(Color(0xFF000000)), stroke = SolidColor(Color(0xFF000000)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(8.0f, 8.0f)
                moveToRelative(-7.0f, 0.0f)
                arcToRelative(7.0f, 7.0f, 0.0f, true, true, 14.0f, 0.0f)
                arcToRelative(7.0f, 7.0f, 0.0f, true, true, -14.0f, 0.0f)
            }
            path(fill = SolidColor(Color(0xFFD74553)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(14.0f, 8.0f)
                curveTo(14.0f, 11.3137f, 11.3137f, 14.0f, 8.0f, 14.0f)
                curveTo(4.6863f, 14.0f, 2.0f, 11.3137f, 2.0f, 8.0f)
                curveTo(2.0f, 4.6863f, 4.6863f, 2.0f, 8.0f, 2.0f)
                curveTo(11.3137f, 2.0f, 14.0f, 4.6863f, 14.0f, 8.0f)
                close()
                moveTo(12.5f, 8.0f)
                curveTo(12.5f, 7.0281f, 12.1919f, 6.1282f, 11.668f, 5.3926f)
                lineTo(5.3926f, 11.668f)
                curveTo(6.1282f, 12.1919f, 7.0281f, 12.5f, 8.0f, 12.5f)
                curveTo(10.4853f, 12.5f, 12.5f, 10.4853f, 12.5f, 8.0f)
                close()
                moveTo(10.6074f, 4.3319f)
                curveTo(9.8718f, 3.8081f, 8.9719f, 3.5f, 8.0f, 3.5f)
                curveTo(5.5147f, 3.5f, 3.5f, 5.5147f, 3.5f, 8.0f)
                curveTo(3.5f, 8.9719f, 3.8081f, 9.8718f, 4.3319f, 10.6074f)
                lineTo(10.6074f, 4.3319f)
                close()
            }
        }
                .build()
        return _dark!!
    }

private var _dark: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/blocked/medium/Light.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.blocked.medium

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.avataricons.presence.blocked.MediumGroup

val MediumGroup.Light: ImageVector
    get() {
        if (_light != null) {
            return _light!!
        }
        _light = Builder(name = "Light", defaultWidth = 16.0.dp, defaultHeight = 16.0.dp,
                viewportWidth = 16.0f, viewportHeight = 16.0f).apply {
            path(fill = SolidColor(Color(0xFFffffff)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(8.0f, 1.0f)
                lineTo(8.0f, 1.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 15.0f, 8.0f)
                lineTo(15.0f, 8.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 8.0f, 15.0f)
                lineTo(8.0f, 15.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 1.0f, 8.0f)
                lineTo(1.0f, 8.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 8.0f, 1.0f)
                close()
            }
            path(fill = SolidColor(Color(0xFFffffff)), stroke = SolidColor(Color(0xFFffffff)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(8.0f, 8.0f)
                moveToRelative(-7.0f, 0.0f)
                arcToRelative(7.0f, 7.0f, 0.0f, true, true, 14.0f, 0.0f)
                arcToRelative(7.0f, 7.0f, 0.0f, true, true, -14.0f, 0.0f)
            }
            path(fill = SolidColor(Color(0xFFC50F1F)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(14.0f, 8.0f)
                curveTo(14.0f, 11.3137f, 11.3137f, 14.0f, 8.0f, 14.0f)
                curveTo(4.6863f, 14.0f, 2.0f, 11.3137f, 2.0f, 8.0f)
                curveTo(2.0f, 4.6863f, 4.6863f, 2.0f, 8.0f, 2.0f)
                curveTo(11.3137f, 2.0f, 14.0f, 4.6863f, 14.0f, 8.0f)
                close()
                moveTo(12.5f, 8.0f)
                curveTo(12.5f, 7.0281f, 12.1919f, 6.1282f, 11.668f, 5.3926f)
                lineTo(5.3926f, 11.668f)
                curveTo(6.1282f, 12.1919f, 7.0281f, 12.5f, 8.0f, 12.5f)
                curveTo(10.4853f, 12.5f, 12.5f, 10.4853f, 12.5f, 8.0f)
                close()
                moveTo(10.6074f, 4.3319f)
                curveTo(9.8718f, 3.8081f, 8.9719f, 3.5f, 8.0f, 3.5f)
                curveTo(5.5147f, 3.5f, 3.5f, 5.5147f, 3.5f, 8.0f)
                curveTo(3.5f, 8.9719f, 3.8081f, 9.8718f, 4.3319f, 10.6074f)
                lineTo(10.6074f, 4.3319f)
                close()
            }
            path(fill = SolidColor(Color(0x00000000)), stroke = SolidColor(Color(0xFFffffff)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(8.0f, 1.0f)
                lineTo(8.0f, 1.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 15.0f, 8.0f)
                lineTo(15.0f, 8.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 8.0f, 15.0f)
                lineTo(8.0f, 15.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 1.0f, 8.0f)
                lineTo(1.0f, 8.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 8.0f, 1.0f)
                close()
            }
        }
                .build()
        return _light!!
    }

private var _light: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/blocked/small/Dark.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.blocked.small

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.avataricons.presence.blocked.SmallGroup

val SmallGroup.Dark: ImageVector
    get() {
        if (_dark != null) {
            return _dark!!
        }
        _dark = Builder(name = "Dark", defaultWidth = 14.0.dp, defaultHeight = 14.0.dp,
                viewportWidth = 14.0f, viewportHeight = 14.0f).apply {
            path(fill = SolidColor(Color(0xFF000000)), stroke = SolidColor(Color(0xFF000000)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(7.0f, 7.0f)
                moveToRelative(-6.0f, 0.0f)
                arcToRelative(6.0f, 6.0f, 0.0f, true, true, 12.0f, 0.0f)
                arcToRelative(6.0f, 6.0f, 0.0f, true, true, -12.0f, 0.0f)
            }
            path(fill = SolidColor(Color(0xFFD74553)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(12.0f, 7.0f)
                curveTo(12.0f, 4.2386f, 9.7614f, 2.0f, 7.0f, 2.0f)
                curveTo(4.2386f, 2.0f, 2.0f, 4.2386f, 2.0f, 7.0f)
                curveTo(2.0f, 9.7614f, 4.2386f, 12.0f, 7.0f, 12.0f)
                curveTo(9.7614f, 12.0f, 12.0f, 9.7614f, 12.0f, 7.0f)
                close()
                moveTo(11.0f, 7.0f)
                curveTo(11.0f, 9.2091f, 9.2091f, 11.0f, 7.0f, 11.0f)
                curveTo(6.0756f, 11.0f, 5.2245f, 10.6865f, 4.5472f, 10.1599f)
                lineTo(10.1599f, 4.5472f)
                curveTo(10.6865f, 5.2245f, 11.0f, 6.0756f, 11.0f, 7.0f)
                close()
                moveTo(9.4528f, 3.84f)
                lineTo(3.84f, 9.4528f)
                curveTo(3.3135f, 8.7755f, 3.0f, 7.9243f, 3.0f, 7.0f)
                curveTo(3.0f, 4.7909f, 4.7909f, 3.0f, 7.0f, 3.0f)
                curveTo(7.9243f, 3.0f, 8.7755f, 3.3135f, 9.4528f, 3.84f)
                close()
            }
        }
                .build()
        return _dark!!
    }

private var _dark: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/blocked/small/Light.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.blocked.small

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.avataricons.presence.blocked.SmallGroup

val SmallGroup.Light: ImageVector
    get() {
        if (_light != null) {
            return _light!!
        }
        _light = Builder(name = "Light", defaultWidth = 14.0.dp, defaultHeight = 14.0.dp,
                viewportWidth = 14.0f, viewportHeight = 14.0f).apply {
            path(fill = SolidColor(Color(0xFFffffff)), stroke = SolidColor(Color(0xFFffffff)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(7.0f, 7.0f)
                moveToRelative(-6.0f, 0.0f)
                arcToRelative(6.0f, 6.0f, 0.0f, true, true, 12.0f, 0.0f)
                arcToRelative(6.0f, 6.0f, 0.0f, true, true, -12.0f, 0.0f)
            }
            path(fill = SolidColor(Color(0xFFC50F1F)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(12.0f, 7.0f)
                curveTo(12.0f, 4.2386f, 9.7614f, 2.0f, 7.0f, 2.0f)
                curveTo(4.2386f, 2.0f, 2.0f, 4.2386f, 2.0f, 7.0f)
                curveTo(2.0f, 9.7614f, 4.2386f, 12.0f, 7.0f, 12.0f)
                curveTo(9.7614f, 12.0f, 12.0f, 9.7614f, 12.0f, 7.0f)
                close()
                moveTo(11.0f, 7.0f)
                curveTo(11.0f, 9.2091f, 9.2091f, 11.0f, 7.0f, 11.0f)
                curveTo(6.0756f, 11.0f, 5.2245f, 10.6865f, 4.5472f, 10.1599f)
                lineTo(10.1599f, 4.5472f)
                curveTo(10.6865f, 5.2245f, 11.0f, 6.0756f, 11.0f, 7.0f)
                close()
                moveTo(9.4528f, 3.84f)
                lineTo(3.84f, 9.4528f)
                curveTo(3.3135f, 8.7755f, 3.0f, 7.9243f, 3.0f, 7.0f)
                curveTo(3.0f, 4.7909f, 4.7909f, 3.0f, 7.0f, 3.0f)
                curveTo(7.9243f, 3.0f, 8.7755f, 3.3135f, 9.4528f, 3.84f)
                close()
            }
            path(fill = SolidColor(Color(0x00000000)), stroke = SolidColor(Color(0xFFffffff)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(7.0f, 1.0f)
                lineTo(7.0f, 1.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 13.0f, 7.0f)
                lineTo(13.0f, 7.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 7.0f, 13.0f)
                lineTo(7.0f, 13.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 1.0f, 7.0f)
                lineTo(1.0f, 7.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 7.0f, 1.0f)
                close()
            }
        }
                .build()
        return _light!!
    }

private var _light: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/busy/__Large.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.busy

import androidx.compose.ui.graphics.vector.ImageVector
import com.microsoft.fluentui.icons.avataricons.presence.BusyGroup
import com.microsoft.fluentui.icons.avataricons.presence.busy.large.Dark
import com.microsoft.fluentui.icons.avataricons.presence.busy.large.Light
import kotlin.collections.List as ____KtList

object LargeGroup

val BusyGroup.Large: LargeGroup
    get() = LargeGroup

private var __AllIcons: ____KtList<ImageVector>? = null

val LargeGroup.AllIcons: ____KtList<ImageVector>
    get() {
        if (__AllIcons != null) {
            return __AllIcons!!
        }
        __AllIcons = listOf(Dark, Light)
        return __AllIcons!!
    }
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/busy/__Medium.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.busy

import androidx.compose.ui.graphics.vector.ImageVector
import com.microsoft.fluentui.icons.avataricons.presence.BusyGroup
import com.microsoft.fluentui.icons.avataricons.presence.busy.medium.Dark
import com.microsoft.fluentui.icons.avataricons.presence.busy.medium.Light
import kotlin.collections.List as ____KtList

object MediumGroup

val BusyGroup.Medium: MediumGroup
    get() = MediumGroup

private var __AllIcons: ____KtList<ImageVector>? = null

val MediumGroup.AllIcons: ____KtList<ImageVector>
    get() {
        if (__AllIcons != null) {
            return __AllIcons!!
        }
        __AllIcons = listOf(Dark, Light)
        return __AllIcons!!
    }
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/busy/__Small.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.busy

import androidx.compose.ui.graphics.vector.ImageVector
import com.microsoft.fluentui.icons.avataricons.presence.BusyGroup
import com.microsoft.fluentui.icons.avataricons.presence.busy.small.Dark
import com.microsoft.fluentui.icons.avataricons.presence.busy.small.Light
import kotlin.collections.List as ____KtList

object SmallGroup

val BusyGroup.Small: SmallGroup
    get() = SmallGroup

private var __AllIcons: ____KtList<ImageVector>? = null

val SmallGroup.AllIcons: ____KtList<ImageVector>
    get() {
        if (__AllIcons != null) {
            return __AllIcons!!
        }
        __AllIcons = listOf(Dark, Light)
        return __AllIcons!!
    }
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/busy/large/Dark.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.busy.large

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.avataricons.presence.busy.LargeGroup

val LargeGroup.Dark: ImageVector
    get() {
        if (_dark != null) {
            return _dark!!
        }
        _dark = Builder(name = "Dark", defaultWidth = 20.0.dp, defaultHeight = 20.0.dp,
                viewportWidth = 20.0f, viewportHeight = 20.0f).apply {
            path(fill = SolidColor(Color(0xFF000000)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(10.0f, 1.0f)
                lineTo(10.0f, 1.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 19.0f, 10.0f)
                lineTo(19.0f, 10.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 10.0f, 19.0f)
                lineTo(10.0f, 19.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 1.0f, 10.0f)
                lineTo(1.0f, 10.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 10.0f, 1.0f)
                close()
            }
            path(fill = SolidColor(Color(0xFF000000)), stroke = SolidColor(Color(0xFF000000)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(10.0f, 10.0f)
                moveToRelative(-9.0f, 0.0f)
                arcToRelative(9.0f, 9.0f, 0.0f, true, true, 18.0f, 0.0f)
                arcToRelative(9.0f, 9.0f, 0.0f, true, true, -18.0f, 0.0f)
            }
            path(fill = SolidColor(Color(0xFFD74553)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(18.0f, 10.0f)
                curveTo(18.0f, 14.4183f, 14.4183f, 18.0f, 10.0f, 18.0f)
                curveTo(5.5817f, 18.0f, 2.0f, 14.4183f, 2.0f, 10.0f)
                curveTo(2.0f, 5.5817f, 5.5817f, 2.0f, 10.0f, 2.0f)
                curveTo(14.4183f, 2.0f, 18.0f, 5.5817f, 18.0f, 10.0f)
                close()
            }
            path(fill = SolidColor(Color(0x00000000)), stroke = SolidColor(Color(0xFF000000)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(10.0f, 1.0f)
                lineTo(10.0f, 1.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 19.0f, 10.0f)
                lineTo(19.0f, 10.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 10.0f, 19.0f)
                lineTo(10.0f, 19.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 1.0f, 10.0f)
                lineTo(1.0f, 10.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 10.0f, 1.0f)
                close()
            }
        }
                .build()
        return _dark!!
    }

private var _dark: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/busy/large/Light.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.busy.large

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.avataricons.presence.busy.LargeGroup

val LargeGroup.Light: ImageVector
    get() {
        if (_light != null) {
            return _light!!
        }
        _light = Builder(name = "Light", defaultWidth = 20.0.dp, defaultHeight = 20.0.dp,
                viewportWidth = 20.0f, viewportHeight = 20.0f).apply {
            path(fill = SolidColor(Color(0xFFffffff)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(10.0f, 1.0f)
                lineTo(10.0f, 1.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 19.0f, 10.0f)
                lineTo(19.0f, 10.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 10.0f, 19.0f)
                lineTo(10.0f, 19.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 1.0f, 10.0f)
                lineTo(1.0f, 10.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 10.0f, 1.0f)
                close()
            }
            path(fill = SolidColor(Color(0xFFffffff)), stroke = SolidColor(Color(0xFFffffff)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(10.0f, 10.0f)
                moveToRelative(-9.0f, 0.0f)
                arcToRelative(9.0f, 9.0f, 0.0f, true, true, 18.0f, 0.0f)
                arcToRelative(9.0f, 9.0f, 0.0f, true, true, -18.0f, 0.0f)
            }
            path(fill = SolidColor(Color(0xFFC50F1F)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(18.0f, 10.0f)
                curveTo(18.0f, 14.4183f, 14.4183f, 18.0f, 10.0f, 18.0f)
                curveTo(5.5817f, 18.0f, 2.0f, 14.4183f, 2.0f, 10.0f)
                curveTo(2.0f, 5.5817f, 5.5817f, 2.0f, 10.0f, 2.0f)
                curveTo(14.4183f, 2.0f, 18.0f, 5.5817f, 18.0f, 10.0f)
                close()
            }
            path(fill = SolidColor(Color(0x00000000)), stroke = SolidColor(Color(0xFFffffff)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(10.0f, 1.0f)
                lineTo(10.0f, 1.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 19.0f, 10.0f)
                lineTo(19.0f, 10.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 10.0f, 19.0f)
                lineTo(10.0f, 19.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 1.0f, 10.0f)
                lineTo(1.0f, 10.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 10.0f, 1.0f)
                close()
            }
        }
                .build()
        return _light!!
    }

private var _light: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/busy/medium/Dark.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.busy.medium

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.avataricons.presence.busy.MediumGroup

val MediumGroup.Dark: ImageVector
    get() {
        if (_dark != null) {
            return _dark!!
        }
        _dark = Builder(name = "Dark", defaultWidth = 16.0.dp, defaultHeight = 16.0.dp,
                viewportWidth = 16.0f, viewportHeight = 16.0f).apply {
            path(fill = SolidColor(Color(0xFF000000)), stroke = SolidColor(Color(0xFF000000)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(8.0f, 8.0f)
                moveToRelative(-7.0f, 0.0f)
                arcToRelative(7.0f, 7.0f, 0.0f, true, true, 14.0f, 0.0f)
                arcToRelative(7.0f, 7.0f, 0.0f, true, true, -14.0f, 0.0f)
            }
            path(fill = SolidColor(Color(0xFFD74553)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(14.0f, 8.0f)
                curveTo(14.0f, 11.3137f, 11.3137f, 14.0f, 8.0f, 14.0f)
                curveTo(4.6863f, 14.0f, 2.0f, 11.3137f, 2.0f, 8.0f)
                curveTo(2.0f, 4.6863f, 4.6863f, 2.0f, 8.0f, 2.0f)
                curveTo(11.3137f, 2.0f, 14.0f, 4.6863f, 14.0f, 8.0f)
                close()
            }
        }
                .build()
        return _dark!!
    }

private var _dark: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/busy/medium/Light.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.busy.medium

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.avataricons.presence.busy.MediumGroup

val MediumGroup.Light: ImageVector
    get() {
        if (_light != null) {
            return _light!!
        }
        _light = Builder(name = "Light", defaultWidth = 16.0.dp, defaultHeight = 16.0.dp,
                viewportWidth = 16.0f, viewportHeight = 16.0f).apply {
            path(fill = SolidColor(Color(0xFFffffff)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(8.0f, 1.0f)
                lineTo(8.0f, 1.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 15.0f, 8.0f)
                lineTo(15.0f, 8.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 8.0f, 15.0f)
                lineTo(8.0f, 15.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 1.0f, 8.0f)
                lineTo(1.0f, 8.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 8.0f, 1.0f)
                close()
            }
            path(fill = SolidColor(Color(0xFFffffff)), stroke = SolidColor(Color(0xFFffffff)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(8.0f, 8.0f)
                moveToRelative(-7.0f, 0.0f)
                arcToRelative(7.0f, 7.0f, 0.0f, true, true, 14.0f, 0.0f)
                arcToRelative(7.0f, 7.0f, 0.0f, true, true, -14.0f, 0.0f)
            }
            path(fill = SolidColor(Color(0xFFC50F1F)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(14.0f, 8.0f)
                curveTo(14.0f, 11.3137f, 11.3137f, 14.0f, 8.0f, 14.0f)
                curveTo(4.6863f, 14.0f, 2.0f, 11.3137f, 2.0f, 8.0f)
                curveTo(2.0f, 4.6863f, 4.6863f, 2.0f, 8.0f, 2.0f)
                curveTo(11.3137f, 2.0f, 14.0f, 4.6863f, 14.0f, 8.0f)
                close()
            }
            path(fill = SolidColor(Color(0x00000000)), stroke = SolidColor(Color(0xFFffffff)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(8.0f, 1.0f)
                lineTo(8.0f, 1.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 15.0f, 8.0f)
                lineTo(15.0f, 8.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 8.0f, 15.0f)
                lineTo(8.0f, 15.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 1.0f, 8.0f)
                lineTo(1.0f, 8.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 8.0f, 1.0f)
                close()
            }
        }
                .build()
        return _light!!
    }

private var _light: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/busy/small/Dark.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.busy.small

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.avataricons.presence.busy.SmallGroup

val SmallGroup.Dark: ImageVector
    get() {
        if (_dark != null) {
            return _dark!!
        }
        _dark = Builder(name = "Dark", defaultWidth = 14.0.dp, defaultHeight = 14.0.dp,
                viewportWidth = 14.0f, viewportHeight = 14.0f).apply {
            path(fill = SolidColor(Color(0xFF000000)), stroke = SolidColor(Color(0xFF000000)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(7.0f, 7.0f)
                moveToRelative(-6.0f, 0.0f)
                arcToRelative(6.0f, 6.0f, 0.0f, true, true, 12.0f, 0.0f)
                arcToRelative(6.0f, 6.0f, 0.0f, true, true, -12.0f, 0.0f)
            }
            path(fill = SolidColor(Color(0xFFD74553)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(12.0f, 7.0f)
                curveTo(12.0f, 9.7614f, 9.7614f, 12.0f, 7.0f, 12.0f)
                curveTo(4.2386f, 12.0f, 2.0f, 9.7614f, 2.0f, 7.0f)
                curveTo(2.0f, 4.2386f, 4.2386f, 2.0f, 7.0f, 2.0f)
                curveTo(9.7614f, 2.0f, 12.0f, 4.2386f, 12.0f, 7.0f)
                close()
            }
        }
                .build()
        return _dark!!
    }

private var _dark: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/busy/small/Light.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.busy.small

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.avataricons.presence.busy.SmallGroup

val SmallGroup.Light: ImageVector
    get() {
        if (_light != null) {
            return _light!!
        }
        _light = Builder(name = "Light", defaultWidth = 14.0.dp, defaultHeight = 14.0.dp,
                viewportWidth = 14.0f, viewportHeight = 14.0f).apply {
            path(fill = SolidColor(Color(0xFFffffff)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(7.0f, 1.0f)
                lineTo(7.0f, 1.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 13.0f, 7.0f)
                lineTo(13.0f, 7.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 7.0f, 13.0f)
                lineTo(7.0f, 13.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 1.0f, 7.0f)
                lineTo(1.0f, 7.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 7.0f, 1.0f)
                close()
            }
            path(fill = SolidColor(Color(0xFFffffff)), stroke = SolidColor(Color(0xFFffffff)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(7.0f, 7.0f)
                moveToRelative(-6.0f, 0.0f)
                arcToRelative(6.0f, 6.0f, 0.0f, true, true, 12.0f, 0.0f)
                arcToRelative(6.0f, 6.0f, 0.0f, true, true, -12.0f, 0.0f)
            }
            path(fill = SolidColor(Color(0xFFC50F1F)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(12.0f, 7.0f)
                curveTo(12.0f, 9.7614f, 9.7614f, 12.0f, 7.0f, 12.0f)
                curveTo(4.2386f, 12.0f, 2.0f, 9.7614f, 2.0f, 7.0f)
                curveTo(2.0f, 4.2386f, 4.2386f, 2.0f, 7.0f, 2.0f)
                curveTo(9.7614f, 2.0f, 12.0f, 4.2386f, 12.0f, 7.0f)
                close()
            }
            path(fill = SolidColor(Color(0x00000000)), stroke = SolidColor(Color(0xFFffffff)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(7.0f, 1.0f)
                lineTo(7.0f, 1.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 13.0f, 7.0f)
                lineTo(13.0f, 7.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 7.0f, 13.0f)
                lineTo(7.0f, 13.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 1.0f, 7.0f)
                lineTo(1.0f, 7.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 7.0f, 1.0f)
                close()
            }
        }
                .build()
        return _light!!
    }

private var _light: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/busyoof/__Large.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.busyoof

import androidx.compose.ui.graphics.vector.ImageVector
import com.microsoft.fluentui.icons.avataricons.presence.BusyoofGroup
import com.microsoft.fluentui.icons.avataricons.presence.busyoof.large.Dark
import com.microsoft.fluentui.icons.avataricons.presence.busyoof.large.Light
import kotlin.collections.List as ____KtList

object LargeGroup

val BusyoofGroup.Large: LargeGroup
    get() = LargeGroup

private var __AllIcons: ____KtList<ImageVector>? = null

val LargeGroup.AllIcons: ____KtList<ImageVector>
    get() {
        if (__AllIcons != null) {
            return __AllIcons!!
        }
        __AllIcons = listOf(Dark, Light)
        return __AllIcons!!
    }
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/busyoof/__Medium.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.busyoof

import androidx.compose.ui.graphics.vector.ImageVector
import com.microsoft.fluentui.icons.avataricons.presence.BusyoofGroup
import com.microsoft.fluentui.icons.avataricons.presence.busyoof.medium.Dark
import com.microsoft.fluentui.icons.avataricons.presence.busyoof.medium.Light
import kotlin.collections.List as ____KtList

object MediumGroup

val BusyoofGroup.Medium: MediumGroup
    get() = MediumGroup

private var __AllIcons: ____KtList<ImageVector>? = null

val MediumGroup.AllIcons: ____KtList<ImageVector>
    get() {
        if (__AllIcons != null) {
            return __AllIcons!!
        }
        __AllIcons = listOf(Dark, Light)
        return __AllIcons!!
    }
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/busyoof/__Small.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.busyoof

import androidx.compose.ui.graphics.vector.ImageVector
import com.microsoft.fluentui.icons.avataricons.presence.BusyoofGroup
import com.microsoft.fluentui.icons.avataricons.presence.busyoof.small.Dark
import com.microsoft.fluentui.icons.avataricons.presence.busyoof.small.Light
import kotlin.collections.List as ____KtList

object SmallGroup

val BusyoofGroup.Small: SmallGroup
    get() = SmallGroup

private var __AllIcons: ____KtList<ImageVector>? = null

val SmallGroup.AllIcons: ____KtList<ImageVector>
    get() {
        if (__AllIcons != null) {
            return __AllIcons!!
        }
        __AllIcons = listOf(Dark, Light)
        return __AllIcons!!
    }
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/busyoof/large/Dark.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.busyoof.large

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.avataricons.presence.busyoof.LargeGroup

val LargeGroup.Dark: ImageVector
    get() {
        if (_dark != null) {
            return _dark!!
        }
        _dark = Builder(name = "Dark", defaultWidth = 20.0.dp, defaultHeight = 20.0.dp,
                viewportWidth = 20.0f, viewportHeight = 20.0f).apply {
            path(fill = SolidColor(Color(0xFF000000)), stroke = SolidColor(Color(0xFF000000)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(10.0f, 10.0f)
                moveToRelative(-9.0f, 0.0f)
                arcToRelative(9.0f, 9.0f, 0.0f, true, true, 18.0f, 0.0f)
                arcToRelative(9.0f, 9.0f, 0.0f, true, true, -18.0f, 0.0f)
            }
            path(fill = SolidColor(Color(0xFFD74553)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(10.0f, 4.0f)
                curveTo(6.6863f, 4.0f, 4.0f, 6.6863f, 4.0f, 10.0f)
                curveTo(4.0f, 13.3137f, 6.6863f, 16.0f, 10.0f, 16.0f)
                curveTo(13.3137f, 16.0f, 16.0f, 13.3137f, 16.0f, 10.0f)
                curveTo(16.0f, 6.6863f, 13.3137f, 4.0f, 10.0f, 4.0f)
                close()
                moveTo(2.0f, 10.0f)
                curveTo(2.0f, 5.5817f, 5.5817f, 2.0f, 10.0f, 2.0f)
                curveTo(14.4183f, 2.0f, 18.0f, 5.5817f, 18.0f, 10.0f)
                curveTo(18.0f, 14.4183f, 14.4183f, 18.0f, 10.0f, 18.0f)
                curveTo(5.5817f, 18.0f, 2.0f, 14.4183f, 2.0f, 10.0f)
                close()
            }
        }
                .build()
        return _dark!!
    }

private var _dark: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/busyoof/large/Light.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.busyoof.large

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.avataricons.presence.busyoof.LargeGroup

val LargeGroup.Light: ImageVector
    get() {
        if (_light != null) {
            return _light!!
        }
        _light = Builder(name = "Light", defaultWidth = 20.0.dp, defaultHeight = 20.0.dp,
                viewportWidth = 20.0f, viewportHeight = 20.0f).apply {
            path(fill = SolidColor(Color(0xFFffffff)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(10.0f, 1.0f)
                lineTo(10.0f, 1.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 19.0f, 10.0f)
                lineTo(19.0f, 10.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 10.0f, 19.0f)
                lineTo(10.0f, 19.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 1.0f, 10.0f)
                lineTo(1.0f, 10.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 10.0f, 1.0f)
                close()
            }
            path(fill = SolidColor(Color(0xFFffffff)), stroke = SolidColor(Color(0xFFffffff)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(10.0f, 10.0f)
                moveToRelative(-9.0f, 0.0f)
                arcToRelative(9.0f, 9.0f, 0.0f, true, true, 18.0f, 0.0f)
                arcToRelative(9.0f, 9.0f, 0.0f, true, true, -18.0f, 0.0f)
            }
            path(fill = SolidColor(Color(0xFFC50F1F)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(10.0f, 4.0f)
                curveTo(6.6863f, 4.0f, 4.0f, 6.6863f, 4.0f, 10.0f)
                curveTo(4.0f, 13.3137f, 6.6863f, 16.0f, 10.0f, 16.0f)
                curveTo(13.3137f, 16.0f, 16.0f, 13.3137f, 16.0f, 10.0f)
                curveTo(16.0f, 6.6863f, 13.3137f, 4.0f, 10.0f, 4.0f)
                close()
                moveTo(2.0f, 10.0f)
                curveTo(2.0f, 5.5817f, 5.5817f, 2.0f, 10.0f, 2.0f)
                curveTo(14.4183f, 2.0f, 18.0f, 5.5817f, 18.0f, 10.0f)
                curveTo(18.0f, 14.4183f, 14.4183f, 18.0f, 10.0f, 18.0f)
                curveTo(5.5817f, 18.0f, 2.0f, 14.4183f, 2.0f, 10.0f)
                close()
            }
            path(fill = SolidColor(Color(0x00000000)), stroke = SolidColor(Color(0xFFffffff)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(10.0f, 1.0f)
                lineTo(10.0f, 1.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 19.0f, 10.0f)
                lineTo(19.0f, 10.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 10.0f, 19.0f)
                lineTo(10.0f, 19.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 1.0f, 10.0f)
                lineTo(1.0f, 10.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 10.0f, 1.0f)
                close()
            }
        }
                .build()
        return _light!!
    }

private var _light: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/busyoof/medium/Dark.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.busyoof.medium

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.avataricons.presence.busyoof.MediumGroup

val MediumGroup.Dark: ImageVector
    get() {
        if (_dark != null) {
            return _dark!!
        }
        _dark = Builder(name = "Dark", defaultWidth = 16.0.dp, defaultHeight = 16.0.dp,
                viewportWidth = 16.0f, viewportHeight = 16.0f).apply {
            path(fill = SolidColor(Color(0xFF000000)), stroke = SolidColor(Color(0xFF000000)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(8.0f, 8.0f)
                moveToRelative(-7.0f, 0.0f)
                arcToRelative(7.0f, 7.0f, 0.0f, true, true, 14.0f, 0.0f)
                arcToRelative(7.0f, 7.0f, 0.0f, true, true, -14.0f, 0.0f)
            }
            path(fill = SolidColor(Color(0xFFD74553)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(8.0f, 3.5f)
                curveTo(5.5147f, 3.5f, 3.5f, 5.5147f, 3.5f, 8.0f)
                curveTo(3.5f, 10.4853f, 5.5147f, 12.5f, 8.0f, 12.5f)
                curveTo(10.4853f, 12.5f, 12.5f, 10.4853f, 12.5f, 8.0f)
                curveTo(12.5f, 5.5147f, 10.4853f, 3.5f, 8.0f, 3.5f)
                close()
                moveTo(2.0f, 8.0f)
                curveTo(2.0f, 4.6863f, 4.6863f, 2.0f, 8.0f, 2.0f)
                curveTo(11.3137f, 2.0f, 14.0f, 4.6863f, 14.0f, 8.0f)
                curveTo(14.0f, 11.3137f, 11.3137f, 14.0f, 8.0f, 14.0f)
                curveTo(4.6863f, 14.0f, 2.0f, 11.3137f, 2.0f, 8.0f)
                close()
            }
        }
                .build()
        return _dark!!
    }

private var _dark: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/busyoof/medium/Light.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.busyoof.medium

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.avataricons.presence.busyoof.MediumGroup

val MediumGroup.Light: ImageVector
    get() {
        if (_light != null) {
            return _light!!
        }
        _light = Builder(name = "Light", defaultWidth = 16.0.dp, defaultHeight = 16.0.dp,
                viewportWidth = 16.0f, viewportHeight = 16.0f).apply {
            path(fill = SolidColor(Color(0xFFffffff)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(8.0f, 1.0f)
                lineTo(8.0f, 1.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 15.0f, 8.0f)
                lineTo(15.0f, 8.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 8.0f, 15.0f)
                lineTo(8.0f, 15.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 1.0f, 8.0f)
                lineTo(1.0f, 8.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 8.0f, 1.0f)
                close()
            }
            path(fill = SolidColor(Color(0xFFffffff)), stroke = SolidColor(Color(0xFFffffff)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(8.0f, 8.0f)
                moveToRelative(-7.0f, 0.0f)
                arcToRelative(7.0f, 7.0f, 0.0f, true, true, 14.0f, 0.0f)
                arcToRelative(7.0f, 7.0f, 0.0f, true, true, -14.0f, 0.0f)
            }
            path(fill = SolidColor(Color(0xFFC50F1F)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(8.0f, 3.5f)
                curveTo(5.5147f, 3.5f, 3.5f, 5.5147f, 3.5f, 8.0f)
                curveTo(3.5f, 10.4853f, 5.5147f, 12.5f, 8.0f, 12.5f)
                curveTo(10.4853f, 12.5f, 12.5f, 10.4853f, 12.5f, 8.0f)
                curveTo(12.5f, 5.5147f, 10.4853f, 3.5f, 8.0f, 3.5f)
                close()
                moveTo(2.0f, 8.0f)
                curveTo(2.0f, 4.6863f, 4.6863f, 2.0f, 8.0f, 2.0f)
                curveTo(11.3137f, 2.0f, 14.0f, 4.6863f, 14.0f, 8.0f)
                curveTo(14.0f, 11.3137f, 11.3137f, 14.0f, 8.0f, 14.0f)
                curveTo(4.6863f, 14.0f, 2.0f, 11.3137f, 2.0f, 8.0f)
                close()
            }
            path(fill = SolidColor(Color(0x00000000)), stroke = SolidColor(Color(0xFFffffff)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(8.0f, 1.0f)
                lineTo(8.0f, 1.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 15.0f, 8.0f)
                lineTo(15.0f, 8.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 8.0f, 15.0f)
                lineTo(8.0f, 15.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 1.0f, 8.0f)
                lineTo(1.0f, 8.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 8.0f, 1.0f)
                close()
            }
        }
                .build()
        return _light!!
    }

private var _light: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/busyoof/small/Dark.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.busyoof.small

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.avataricons.presence.busyoof.SmallGroup

val SmallGroup.Dark: ImageVector
    get() {
        if (_dark != null) {
            return _dark!!
        }
        _dark = Builder(name = "Dark", defaultWidth = 14.0.dp, defaultHeight = 14.0.dp,
                viewportWidth = 14.0f, viewportHeight = 14.0f).apply {
            path(fill = SolidColor(Color(0xFF000000)), stroke = SolidColor(Color(0xFF000000)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(7.0f, 7.0f)
                moveToRelative(-6.0f, 0.0f)
                arcToRelative(6.0f, 6.0f, 0.0f, true, true, 12.0f, 0.0f)
                arcToRelative(6.0f, 6.0f, 0.0f, true, true, -12.0f, 0.0f)
            }
            path(fill = SolidColor(Color(0xFFD74553)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(6.9987f, 3.0f)
                curveTo(4.7903f, 3.0f, 3.0f, 4.7903f, 3.0f, 6.9987f)
                curveTo(3.0f, 9.2071f, 4.7903f, 10.9974f, 6.9987f, 10.9974f)
                curveTo(9.2071f, 10.9974f, 10.9974f, 9.2071f, 10.9974f, 6.9987f)
                curveTo(10.9974f, 4.7903f, 9.2071f, 3.0f, 6.9987f, 3.0f)
                close()
                moveTo(2.0f, 6.9987f)
                curveTo(2.0f, 4.238f, 4.238f, 2.0f, 6.9987f, 2.0f)
                curveTo(9.7594f, 2.0f, 11.9974f, 4.238f, 11.9974f, 6.9987f)
                curveTo(11.9974f, 9.7594f, 9.7594f, 11.9974f, 6.9987f, 11.9974f)
                curveTo(4.238f, 11.9974f, 2.0f, 9.7594f, 2.0f, 6.9987f)
                close()
            }
        }
                .build()
        return _dark!!
    }

private var _dark: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/busyoof/small/Light.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.busyoof.small

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.avataricons.presence.busyoof.SmallGroup

val SmallGroup.Light: ImageVector
    get() {
        if (_light != null) {
            return _light!!
        }
        _light = Builder(name = "Light", defaultWidth = 14.0.dp, defaultHeight = 14.0.dp,
                viewportWidth = 14.0f, viewportHeight = 14.0f).apply {
            path(fill = SolidColor(Color(0xFFffffff)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(7.0f, 1.0f)
                lineTo(7.0f, 1.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 13.0f, 7.0f)
                lineTo(13.0f, 7.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 7.0f, 13.0f)
                lineTo(7.0f, 13.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 1.0f, 7.0f)
                lineTo(1.0f, 7.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 7.0f, 1.0f)
                close()
            }
            path(fill = SolidColor(Color(0xFFffffff)), stroke = SolidColor(Color(0xFFffffff)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(7.0f, 7.0f)
                moveToRelative(-6.0f, 0.0f)
                arcToRelative(6.0f, 6.0f, 0.0f, true, true, 12.0f, 0.0f)
                arcToRelative(6.0f, 6.0f, 0.0f, true, true, -12.0f, 0.0f)
            }
            path(fill = SolidColor(Color(0xFFC50F1F)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(6.9987f, 3.0f)
                curveTo(4.7903f, 3.0f, 3.0f, 4.7903f, 3.0f, 6.9987f)
                curveTo(3.0f, 9.2071f, 4.7903f, 10.9974f, 6.9987f, 10.9974f)
                curveTo(9.2071f, 10.9974f, 10.9974f, 9.2071f, 10.9974f, 6.9987f)
                curveTo(10.9974f, 4.7903f, 9.2071f, 3.0f, 6.9987f, 3.0f)
                close()
                moveTo(2.0f, 6.9987f)
                curveTo(2.0f, 4.238f, 4.238f, 2.0f, 6.9987f, 2.0f)
                curveTo(9.7594f, 2.0f, 11.9974f, 4.238f, 11.9974f, 6.9987f)
                curveTo(11.9974f, 9.7594f, 9.7594f, 11.9974f, 6.9987f, 11.9974f)
                curveTo(4.238f, 11.9974f, 2.0f, 9.7594f, 2.0f, 6.9987f)
                close()
            }
            path(fill = SolidColor(Color(0x00000000)), stroke = SolidColor(Color(0xFFffffff)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(7.0f, 1.0f)
                lineTo(7.0f, 1.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 13.0f, 7.0f)
                lineTo(13.0f, 7.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 7.0f, 13.0f)
                lineTo(7.0f, 13.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 1.0f, 7.0f)
                lineTo(1.0f, 7.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 7.0f, 1.0f)
                close()
            }
        }
                .build()
        return _light!!
    }

private var _light: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/dark/__Large.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.dark

import androidx.compose.ui.graphics.vector.ImageVector
import com.microsoft.fluentui.icons.avataricons.presence.DarkGroup
import kotlin.collections.List as ____KtList

object LargeGroup

val DarkGroup.Large: LargeGroup
    get() = LargeGroup

private var __AllIcons: ____KtList<ImageVector>? = null

val LargeGroup.AllIcons: ____KtList<ImageVector>
    get() {
        if (__AllIcons != null) {
            return __AllIcons!!
        }
        __AllIcons = listOf()
        return __AllIcons!!
    }
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/dark/__Medium.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.dark

import androidx.compose.ui.graphics.vector.ImageVector
import com.microsoft.fluentui.icons.avataricons.presence.DarkGroup
import kotlin.collections.List as ____KtList

object MediumGroup

val DarkGroup.Medium: MediumGroup
    get() = MediumGroup

private var __AllIcons: ____KtList<ImageVector>? = null

val MediumGroup.AllIcons: ____KtList<ImageVector>
    get() {
        if (__AllIcons != null) {
            return __AllIcons!!
        }
        __AllIcons = listOf()
        return __AllIcons!!
    }
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/dark/__Small.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.dark

import androidx.compose.ui.graphics.vector.ImageVector
import com.microsoft.fluentui.icons.avataricons.presence.DarkGroup
import kotlin.collections.List as ____KtList

object SmallGroup

val DarkGroup.Small: SmallGroup
    get() = SmallGroup

private var __AllIcons: ____KtList<ImageVector>? = null

val SmallGroup.AllIcons: ____KtList<ImageVector>
    get() {
        if (__AllIcons != null) {
            return __AllIcons!!
        }
        __AllIcons = listOf()
        return __AllIcons!!
    }
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/dnd/__Large.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.dnd

import androidx.compose.ui.graphics.vector.ImageVector
import com.microsoft.fluentui.icons.avataricons.presence.DndGroup
import com.microsoft.fluentui.icons.avataricons.presence.dnd.large.Dark
import com.microsoft.fluentui.icons.avataricons.presence.dnd.large.Light
import kotlin.collections.List as ____KtList

object LargeGroup

val DndGroup.Large: LargeGroup
    get() = LargeGroup

private var __AllIcons: ____KtList<ImageVector>? = null

val LargeGroup.AllIcons: ____KtList<ImageVector>
    get() {
        if (__AllIcons != null) {
            return __AllIcons!!
        }
        __AllIcons = listOf(Dark, Light)
        return __AllIcons!!
    }
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/dnd/__Medium.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.dnd

import androidx.compose.ui.graphics.vector.ImageVector
import com.microsoft.fluentui.icons.avataricons.presence.DndGroup
import com.microsoft.fluentui.icons.avataricons.presence.dnd.medium.Dark
import com.microsoft.fluentui.icons.avataricons.presence.dnd.medium.Light
import kotlin.collections.List as ____KtList

object MediumGroup

val DndGroup.Medium: MediumGroup
    get() = MediumGroup

private var __AllIcons: ____KtList<ImageVector>? = null

val MediumGroup.AllIcons: ____KtList<ImageVector>
    get() {
        if (__AllIcons != null) {
            return __AllIcons!!
        }
        __AllIcons = listOf(Dark, Light)
        return __AllIcons!!
    }
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/dnd/__Small.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.dnd

import androidx.compose.ui.graphics.vector.ImageVector
import com.microsoft.fluentui.icons.avataricons.presence.DndGroup
import com.microsoft.fluentui.icons.avataricons.presence.dnd.small.Dark
import com.microsoft.fluentui.icons.avataricons.presence.dnd.small.Light
import kotlin.collections.List as ____KtList

object SmallGroup

val DndGroup.Small: SmallGroup
    get() = SmallGroup

private var __AllIcons: ____KtList<ImageVector>? = null

val SmallGroup.AllIcons: ____KtList<ImageVector>
    get() {
        if (__AllIcons != null) {
            return __AllIcons!!
        }
        __AllIcons = listOf(Dark, Light)
        return __AllIcons!!
    }
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/dnd/large/Dark.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.dnd.large

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.avataricons.presence.dnd.LargeGroup

val LargeGroup.Dark: ImageVector
    get() {
        if (_dark != null) {
            return _dark!!
        }
        _dark = Builder(name = "Dark", defaultWidth = 20.0.dp, defaultHeight = 20.0.dp,
                viewportWidth = 20.0f, viewportHeight = 20.0f).apply {
            path(fill = SolidColor(Color(0xFF000000)), stroke = SolidColor(Color(0xFF000000)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(10.0f, 10.0f)
                moveToRelative(-9.0f, 0.0f)
                arcToRelative(9.0f, 9.0f, 0.0f, true, true, 18.0f, 0.0f)
                arcToRelative(9.0f, 9.0f, 0.0f, true, true, -18.0f, 0.0f)
            }
            path(fill = SolidColor(Color(0xFFD74553)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(10.0f, 18.0f)
                curveTo(14.4183f, 18.0f, 18.0f, 14.4183f, 18.0f, 10.0f)
                curveTo(18.0f, 5.5817f, 14.4183f, 2.0f, 10.0f, 2.0f)
                curveTo(5.5817f, 2.0f, 2.0f, 5.5817f, 2.0f, 10.0f)
                curveTo(2.0f, 14.4183f, 5.5817f, 18.0f, 10.0f, 18.0f)
                close()
                moveTo(7.249f, 9.0f)
                horizontalLineTo(12.7499f)
                curveTo(13.3022f, 9.0f, 13.7499f, 9.4477f, 13.7499f, 10.0f)
                curveTo(13.7499f, 10.5523f, 13.3022f, 11.0f, 12.7499f, 11.0f)
                horizontalLineTo(7.249f)
                curveTo(6.6967f, 11.0f, 6.249f, 10.5523f, 6.249f, 10.0f)
                curveTo(6.249f, 9.4477f, 6.6967f, 9.0f, 7.249f, 9.0f)
                close()
            }
        }
                .build()
        return _dark!!
    }

private var _dark: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/dnd/large/Light.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.dnd.large

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.avataricons.presence.dnd.LargeGroup

val LargeGroup.Light: ImageVector
    get() {
        if (_light != null) {
            return _light!!
        }
        _light = Builder(name = "Light", defaultWidth = 20.0.dp, defaultHeight = 20.0.dp,
                viewportWidth = 20.0f, viewportHeight = 20.0f).apply {
            path(fill = SolidColor(Color(0xFFffffff)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(10.0f, 1.0f)
                lineTo(10.0f, 1.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 19.0f, 10.0f)
                lineTo(19.0f, 10.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 10.0f, 19.0f)
                lineTo(10.0f, 19.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 1.0f, 10.0f)
                lineTo(1.0f, 10.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 10.0f, 1.0f)
                close()
            }
            path(fill = SolidColor(Color(0xFFffffff)), stroke = SolidColor(Color(0xFFffffff)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(10.0f, 10.0f)
                moveToRelative(-9.0f, 0.0f)
                arcToRelative(9.0f, 9.0f, 0.0f, true, true, 18.0f, 0.0f)
                arcToRelative(9.0f, 9.0f, 0.0f, true, true, -18.0f, 0.0f)
            }
            path(fill = SolidColor(Color(0xFFC50F1F)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(10.0f, 18.0f)
                curveTo(14.4183f, 18.0f, 18.0f, 14.4183f, 18.0f, 10.0f)
                curveTo(18.0f, 5.5817f, 14.4183f, 2.0f, 10.0f, 2.0f)
                curveTo(5.5817f, 2.0f, 2.0f, 5.5817f, 2.0f, 10.0f)
                curveTo(2.0f, 14.4183f, 5.5817f, 18.0f, 10.0f, 18.0f)
                close()
                moveTo(7.249f, 9.0f)
                horizontalLineTo(12.7499f)
                curveTo(13.3022f, 9.0f, 13.7499f, 9.4477f, 13.7499f, 10.0f)
                curveTo(13.7499f, 10.5523f, 13.3022f, 11.0f, 12.7499f, 11.0f)
                horizontalLineTo(7.249f)
                curveTo(6.6967f, 11.0f, 6.249f, 10.5523f, 6.249f, 10.0f)
                curveTo(6.249f, 9.4477f, 6.6967f, 9.0f, 7.249f, 9.0f)
                close()
            }
            path(fill = SolidColor(Color(0x00000000)), stroke = SolidColor(Color(0xFFffffff)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(10.0f, 1.0f)
                lineTo(10.0f, 1.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 19.0f, 10.0f)
                lineTo(19.0f, 10.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 10.0f, 19.0f)
                lineTo(10.0f, 19.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 1.0f, 10.0f)
                lineTo(1.0f, 10.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 10.0f, 1.0f)
                close()
            }
        }
                .build()
        return _light!!
    }

private var _light: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/dnd/medium/Dark.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.dnd.medium

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.avataricons.presence.dnd.MediumGroup

val MediumGroup.Dark: ImageVector
    get() {
        if (_dark != null) {
            return _dark!!
        }
        _dark = Builder(name = "Dark", defaultWidth = 16.0.dp, defaultHeight = 16.0.dp,
                viewportWidth = 16.0f, viewportHeight = 16.0f).apply {
            path(fill = SolidColor(Color(0xFF000000)), stroke = SolidColor(Color(0xFF000000)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(8.0f, 8.0f)
                moveToRelative(-7.0f, 0.0f)
                arcToRelative(7.0f, 7.0f, 0.0f, true, true, 14.0f, 0.0f)
                arcToRelative(7.0f, 7.0f, 0.0f, true, true, -14.0f, 0.0f)
            }
            path(fill = SolidColor(Color(0xFFD74553)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(8.0f, 14.0f)
                curveTo(11.3137f, 14.0f, 14.0f, 11.3137f, 14.0f, 8.0f)
                curveTo(14.0f, 4.6863f, 11.3137f, 2.0f, 8.0f, 2.0f)
                curveTo(4.6863f, 2.0f, 2.0f, 4.6863f, 2.0f, 8.0f)
                curveTo(2.0f, 11.3137f, 4.6863f, 14.0f, 8.0f, 14.0f)
                close()
                moveTo(5.75f, 7.25f)
                horizontalLineTo(10.25f)
                curveTo(10.6642f, 7.25f, 11.0f, 7.5858f, 11.0f, 8.0f)
                curveTo(11.0f, 8.4142f, 10.6642f, 8.75f, 10.25f, 8.75f)
                horizontalLineTo(5.75f)
                curveTo(5.3358f, 8.75f, 5.0f, 8.4142f, 5.0f, 8.0f)
                curveTo(5.0f, 7.5858f, 5.3358f, 7.25f, 5.75f, 7.25f)
                close()
            }
        }
                .build()
        return _dark!!
    }

private var _dark: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/dnd/medium/Light.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.dnd.medium

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.avataricons.presence.dnd.MediumGroup

val MediumGroup.Light: ImageVector
    get() {
        if (_light != null) {
            return _light!!
        }
        _light = Builder(name = "Light", defaultWidth = 16.0.dp, defaultHeight = 16.0.dp,
                viewportWidth = 16.0f, viewportHeight = 16.0f).apply {
            path(fill = SolidColor(Color(0xFFffffff)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(8.0f, 1.0f)
                lineTo(8.0f, 1.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 15.0f, 8.0f)
                lineTo(15.0f, 8.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 8.0f, 15.0f)
                lineTo(8.0f, 15.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 1.0f, 8.0f)
                lineTo(1.0f, 8.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 8.0f, 1.0f)
                close()
            }
            path(fill = SolidColor(Color(0xFFffffff)), stroke = SolidColor(Color(0xFFffffff)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(8.0f, 8.0f)
                moveToRelative(-7.0f, 0.0f)
                arcToRelative(7.0f, 7.0f, 0.0f, true, true, 14.0f, 0.0f)
                arcToRelative(7.0f, 7.0f, 0.0f, true, true, -14.0f, 0.0f)
            }
            path(fill = SolidColor(Color(0xFFC50F1F)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(8.0f, 14.0f)
                curveTo(11.3137f, 14.0f, 14.0f, 11.3137f, 14.0f, 8.0f)
                curveTo(14.0f, 4.6863f, 11.3137f, 2.0f, 8.0f, 2.0f)
                curveTo(4.6863f, 2.0f, 2.0f, 4.6863f, 2.0f, 8.0f)
                curveTo(2.0f, 11.3137f, 4.6863f, 14.0f, 8.0f, 14.0f)
                close()
                moveTo(5.75f, 7.25f)
                horizontalLineTo(10.25f)
                curveTo(10.6642f, 7.25f, 11.0f, 7.5858f, 11.0f, 8.0f)
                curveTo(11.0f, 8.4142f, 10.6642f, 8.75f, 10.25f, 8.75f)
                horizontalLineTo(5.75f)
                curveTo(5.3358f, 8.75f, 5.0f, 8.4142f, 5.0f, 8.0f)
                curveTo(5.0f, 7.5858f, 5.3358f, 7.25f, 5.75f, 7.25f)
                close()
            }
            path(fill = SolidColor(Color(0x00000000)), stroke = SolidColor(Color(0xFFffffff)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(8.0f, 1.0f)
                lineTo(8.0f, 1.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 15.0f, 8.0f)
                lineTo(15.0f, 8.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 8.0f, 15.0f)
                lineTo(8.0f, 15.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 1.0f, 8.0f)
                lineTo(1.0f, 8.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 8.0f, 1.0f)
                close()
            }
        }
                .build()
        return _light!!
    }

private var _light: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/dnd/small/Dark.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.dnd.small

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.avataricons.presence.dnd.SmallGroup

val SmallGroup.Dark: ImageVector
    get() {
        if (_dark != null) {
            return _dark!!
        }
        _dark = Builder(name = "Dark", defaultWidth = 14.0.dp, defaultHeight = 14.0.dp,
                viewportWidth = 14.0f, viewportHeight = 14.0f).apply {
            path(fill = SolidColor(Color(0xFF000000)), stroke = SolidColor(Color(0xFF000000)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(7.0f, 7.0f)
                moveToRelative(-6.0f, 0.0f)
                arcToRelative(6.0f, 6.0f, 0.0f, true, true, 12.0f, 0.0f)
                arcToRelative(6.0f, 6.0f, 0.0f, true, true, -12.0f, 0.0f)
            }
            path(fill = SolidColor(Color(0xFFD74553)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(7.0f, 12.0f)
                curveTo(9.7614f, 12.0f, 12.0f, 9.7614f, 12.0f, 7.0f)
                curveTo(12.0f, 4.2386f, 9.7614f, 2.0f, 7.0f, 2.0f)
                curveTo(4.2386f, 2.0f, 2.0f, 4.2386f, 2.0f, 7.0f)
                curveTo(2.0f, 9.7614f, 4.2386f, 12.0f, 7.0f, 12.0f)
                close()
                moveTo(5.5f, 6.5f)
                horizontalLineTo(8.5f)
                curveTo(8.7761f, 6.5f, 9.0f, 6.7239f, 9.0f, 7.0f)
                curveTo(9.0f, 7.2761f, 8.7761f, 7.5f, 8.5f, 7.5f)
                horizontalLineTo(5.5f)
                curveTo(5.2239f, 7.5f, 5.0f, 7.2761f, 5.0f, 7.0f)
                curveTo(5.0f, 6.7239f, 5.2239f, 6.5f, 5.5f, 6.5f)
                close()
            }
        }
                .build()
        return _dark!!
    }

private var _dark: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/dnd/small/Light.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.dnd.small

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.avataricons.presence.dnd.SmallGroup

val SmallGroup.Light: ImageVector
    get() {
        if (_light != null) {
            return _light!!
        }
        _light = Builder(name = "Light", defaultWidth = 14.0.dp, defaultHeight = 14.0.dp,
                viewportWidth = 14.0f, viewportHeight = 14.0f).apply {
            path(fill = SolidColor(Color(0xFFffffff)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(7.0f, 1.0f)
                lineTo(7.0f, 1.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 13.0f, 7.0f)
                lineTo(13.0f, 7.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 7.0f, 13.0f)
                lineTo(7.0f, 13.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 1.0f, 7.0f)
                lineTo(1.0f, 7.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 7.0f, 1.0f)
                close()
            }
            path(fill = SolidColor(Color(0xFFffffff)), stroke = SolidColor(Color(0xFFffffff)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(7.0f, 7.0f)
                moveToRelative(-6.0f, 0.0f)
                arcToRelative(6.0f, 6.0f, 0.0f, true, true, 12.0f, 0.0f)
                arcToRelative(6.0f, 6.0f, 0.0f, true, true, -12.0f, 0.0f)
            }
            path(fill = SolidColor(Color(0xFFC50F1F)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(7.0f, 12.0f)
                curveTo(9.7614f, 12.0f, 12.0f, 9.7614f, 12.0f, 7.0f)
                curveTo(12.0f, 4.2386f, 9.7614f, 2.0f, 7.0f, 2.0f)
                curveTo(4.2386f, 2.0f, 2.0f, 4.2386f, 2.0f, 7.0f)
                curveTo(2.0f, 9.7614f, 4.2386f, 12.0f, 7.0f, 12.0f)
                close()
                moveTo(5.5f, 6.5f)
                horizontalLineTo(8.5f)
                curveTo(8.7761f, 6.5f, 9.0f, 6.7239f, 9.0f, 7.0f)
                curveTo(9.0f, 7.2761f, 8.7761f, 7.5f, 8.5f, 7.5f)
                horizontalLineTo(5.5f)
                curveTo(5.2239f, 7.5f, 5.0f, 7.2761f, 5.0f, 7.0f)
                curveTo(5.0f, 6.7239f, 5.2239f, 6.5f, 5.5f, 6.5f)
                close()
            }
            path(fill = SolidColor(Color(0x00000000)), stroke = SolidColor(Color(0xFFffffff)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(7.0f, 1.0f)
                lineTo(7.0f, 1.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 13.0f, 7.0f)
                lineTo(13.0f, 7.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 7.0f, 13.0f)
                lineTo(7.0f, 13.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 1.0f, 7.0f)
                lineTo(1.0f, 7.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 7.0f, 1.0f)
                close()
            }
        }
                .build()
        return _light!!
    }

private var _light: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/dndoof/__Large.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.dndoof

import androidx.compose.ui.graphics.vector.ImageVector
import com.microsoft.fluentui.icons.avataricons.presence.DndoofGroup
import com.microsoft.fluentui.icons.avataricons.presence.dndoof.large.Dark
import com.microsoft.fluentui.icons.avataricons.presence.dndoof.large.Light
import kotlin.collections.List as ____KtList

object LargeGroup

val DndoofGroup.Large: LargeGroup
    get() = LargeGroup

private var __AllIcons: ____KtList<ImageVector>? = null

val LargeGroup.AllIcons: ____KtList<ImageVector>
    get() {
        if (__AllIcons != null) {
            return __AllIcons!!
        }
        __AllIcons = listOf(Dark, Light)
        return __AllIcons!!
    }
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/dndoof/__Medium.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.dndoof

import androidx.compose.ui.graphics.vector.ImageVector
import com.microsoft.fluentui.icons.avataricons.presence.DndoofGroup
import com.microsoft.fluentui.icons.avataricons.presence.dndoof.medium.Dark
import com.microsoft.fluentui.icons.avataricons.presence.dndoof.medium.Light
import kotlin.collections.List as ____KtList

object MediumGroup

val DndoofGroup.Medium: MediumGroup
    get() = MediumGroup

private var __AllIcons: ____KtList<ImageVector>? = null

val MediumGroup.AllIcons: ____KtList<ImageVector>
    get() {
        if (__AllIcons != null) {
            return __AllIcons!!
        }
        __AllIcons = listOf(Dark, Light)
        return __AllIcons!!
    }
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/dndoof/__Small.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.dndoof

import androidx.compose.ui.graphics.vector.ImageVector
import com.microsoft.fluentui.icons.avataricons.presence.DndoofGroup
import com.microsoft.fluentui.icons.avataricons.presence.dndoof.small.Dark
import com.microsoft.fluentui.icons.avataricons.presence.dndoof.small.Light
import kotlin.collections.List as ____KtList

object SmallGroup

val DndoofGroup.Small: SmallGroup
    get() = SmallGroup

private var __AllIcons: ____KtList<ImageVector>? = null

val SmallGroup.AllIcons: ____KtList<ImageVector>
    get() {
        if (__AllIcons != null) {
            return __AllIcons!!
        }
        __AllIcons = listOf(Dark, Light)
        return __AllIcons!!
    }
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/dndoof/large/Dark.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.dndoof.large

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.avataricons.presence.dndoof.LargeGroup

val LargeGroup.Dark: ImageVector
    get() {
        if (_dark != null) {
            return _dark!!
        }
        _dark = Builder(name = "Dark", defaultWidth = 20.0.dp, defaultHeight = 20.0.dp,
                viewportWidth = 20.0f, viewportHeight = 20.0f).apply {
            path(fill = SolidColor(Color(0xFF000000)), stroke = SolidColor(Color(0xFF000000)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(10.0f, 10.0f)
                moveToRelative(-9.0f, 0.0f)
                arcToRelative(9.0f, 9.0f, 0.0f, true, true, 18.0f, 0.0f)
                arcToRelative(9.0f, 9.0f, 0.0f, true, true, -18.0f, 0.0f)
            }
            path(fill = SolidColor(Color(0xFFD74553)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(7.25f, 9.0f)
                curveTo(6.6977f, 9.0f, 6.25f, 9.4477f, 6.25f, 10.0f)
                curveTo(6.25f, 10.5523f, 6.6977f, 11.0f, 7.25f, 11.0f)
                horizontalLineTo(12.75f)
                curveTo(13.3023f, 11.0f, 13.75f, 10.5523f, 13.75f, 10.0f)
                curveTo(13.75f, 9.4477f, 13.3023f, 9.0f, 12.75f, 9.0f)
                horizontalLineTo(7.25f)
                close()
                moveTo(2.0f, 10.0f)
                curveTo(2.0f, 5.5817f, 5.5817f, 2.0f, 10.0f, 2.0f)
                curveTo(14.4183f, 2.0f, 18.0f, 5.5817f, 18.0f, 10.0f)
                curveTo(18.0f, 14.4183f, 14.4183f, 18.0f, 10.0f, 18.0f)
                curveTo(5.5817f, 18.0f, 2.0f, 14.4183f, 2.0f, 10.0f)
                close()
                moveTo(10.0f, 4.0f)
                curveTo(6.6863f, 4.0f, 4.0f, 6.6863f, 4.0f, 10.0f)
                curveTo(4.0f, 13.3137f, 6.6863f, 16.0f, 10.0f, 16.0f)
                curveTo(13.3137f, 16.0f, 16.0f, 13.3137f, 16.0f, 10.0f)
                curveTo(16.0f, 6.6863f, 13.3137f, 4.0f, 10.0f, 4.0f)
                close()
            }
        }
                .build()
        return _dark!!
    }

private var _dark: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/dndoof/large/Light.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.dndoof.large

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.avataricons.presence.dndoof.LargeGroup

val LargeGroup.Light: ImageVector
    get() {
        if (_light != null) {
            return _light!!
        }
        _light = Builder(name = "Light", defaultWidth = 20.0.dp, defaultHeight = 20.0.dp,
                viewportWidth = 20.0f, viewportHeight = 20.0f).apply {
            path(fill = SolidColor(Color(0xFFffffff)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(10.0f, 1.0f)
                lineTo(10.0f, 1.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 19.0f, 10.0f)
                lineTo(19.0f, 10.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 10.0f, 19.0f)
                lineTo(10.0f, 19.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 1.0f, 10.0f)
                lineTo(1.0f, 10.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 10.0f, 1.0f)
                close()
            }
            path(fill = SolidColor(Color(0xFFffffff)), stroke = SolidColor(Color(0xFFffffff)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(10.0f, 10.0f)
                moveToRelative(-9.0f, 0.0f)
                arcToRelative(9.0f, 9.0f, 0.0f, true, true, 18.0f, 0.0f)
                arcToRelative(9.0f, 9.0f, 0.0f, true, true, -18.0f, 0.0f)
            }
            path(fill = SolidColor(Color(0xFFC50F1F)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(7.25f, 9.0f)
                curveTo(6.6977f, 9.0f, 6.25f, 9.4477f, 6.25f, 10.0f)
                curveTo(6.25f, 10.5523f, 6.6977f, 11.0f, 7.25f, 11.0f)
                horizontalLineTo(12.75f)
                curveTo(13.3023f, 11.0f, 13.75f, 10.5523f, 13.75f, 10.0f)
                curveTo(13.75f, 9.4477f, 13.3023f, 9.0f, 12.75f, 9.0f)
                horizontalLineTo(7.25f)
                close()
                moveTo(2.0f, 10.0f)
                curveTo(2.0f, 5.5817f, 5.5817f, 2.0f, 10.0f, 2.0f)
                curveTo(14.4183f, 2.0f, 18.0f, 5.5817f, 18.0f, 10.0f)
                curveTo(18.0f, 14.4183f, 14.4183f, 18.0f, 10.0f, 18.0f)
                curveTo(5.5817f, 18.0f, 2.0f, 14.4183f, 2.0f, 10.0f)
                close()
                moveTo(10.0f, 4.0f)
                curveTo(6.6863f, 4.0f, 4.0f, 6.6863f, 4.0f, 10.0f)
                curveTo(4.0f, 13.3137f, 6.6863f, 16.0f, 10.0f, 16.0f)
                curveTo(13.3137f, 16.0f, 16.0f, 13.3137f, 16.0f, 10.0f)
                curveTo(16.0f, 6.6863f, 13.3137f, 4.0f, 10.0f, 4.0f)
                close()
            }
            path(fill = SolidColor(Color(0x00000000)), stroke = SolidColor(Color(0xFFffffff)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(10.0f, 1.0f)
                lineTo(10.0f, 1.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 19.0f, 10.0f)
                lineTo(19.0f, 10.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 10.0f, 19.0f)
                lineTo(10.0f, 19.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 1.0f, 10.0f)
                lineTo(1.0f, 10.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 10.0f, 1.0f)
                close()
            }
        }
                .build()
        return _light!!
    }

private var _light: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/dndoof/medium/Dark.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.dndoof.medium

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.avataricons.presence.dndoof.MediumGroup

val MediumGroup.Dark: ImageVector
    get() {
        if (_dark != null) {
            return _dark!!
        }
        _dark = Builder(name = "Dark", defaultWidth = 16.0.dp, defaultHeight = 16.0.dp,
                viewportWidth = 16.0f, viewportHeight = 16.0f).apply {
            path(fill = SolidColor(Color(0xFF000000)), stroke = SolidColor(Color(0xFF000000)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(8.0f, 8.0f)
                moveToRelative(-7.0f, 0.0f)
                arcToRelative(7.0f, 7.0f, 0.0f, true, true, 14.0f, 0.0f)
                arcToRelative(7.0f, 7.0f, 0.0f, true, true, -14.0f, 0.0f)
            }
            path(fill = SolidColor(Color(0xFFD74553)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(8.0f, 2.0f)
                curveTo(4.6863f, 2.0f, 2.0f, 4.6863f, 2.0f, 8.0f)
                curveTo(2.0f, 11.3137f, 4.6863f, 14.0f, 8.0f, 14.0f)
                curveTo(11.3137f, 14.0f, 14.0f, 11.3137f, 14.0f, 8.0f)
                curveTo(14.0f, 4.6863f, 11.3137f, 2.0f, 8.0f, 2.0f)
                close()
                moveTo(3.5f, 8.0f)
                curveTo(3.5f, 5.5147f, 5.5147f, 3.5f, 8.0f, 3.5f)
                curveTo(10.4853f, 3.5f, 12.5f, 5.5147f, 12.5f, 8.0f)
                curveTo(12.5f, 10.4853f, 10.4853f, 12.5f, 8.0f, 12.5f)
                curveTo(5.5147f, 12.5f, 3.5f, 10.4853f, 3.5f, 8.0f)
                close()
                moveTo(5.0f, 8.0f)
                curveTo(5.0f, 7.5858f, 5.3358f, 7.25f, 5.75f, 7.25f)
                horizontalLineTo(10.25f)
                curveTo(10.6642f, 7.25f, 11.0f, 7.5858f, 11.0f, 8.0f)
                curveTo(11.0f, 8.4142f, 10.6642f, 8.75f, 10.25f, 8.75f)
                horizontalLineTo(5.75f)
                curveTo(5.3358f, 8.75f, 5.0f, 8.4142f, 5.0f, 8.0f)
                close()
            }
        }
                .build()
        return _dark!!
    }

private var _dark: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/dndoof/medium/Light.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.dndoof.medium

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.avataricons.presence.dndoof.MediumGroup

val MediumGroup.Light: ImageVector
    get() {
        if (_light != null) {
            return _light!!
        }
        _light = Builder(name = "Light", defaultWidth = 16.0.dp, defaultHeight = 16.0.dp,
                viewportWidth = 16.0f, viewportHeight = 16.0f).apply {
            path(fill = SolidColor(Color(0xFFffffff)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(8.0f, 1.0f)
                lineTo(8.0f, 1.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 15.0f, 8.0f)
                lineTo(15.0f, 8.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 8.0f, 15.0f)
                lineTo(8.0f, 15.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 1.0f, 8.0f)
                lineTo(1.0f, 8.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 8.0f, 1.0f)
                close()
            }
            path(fill = SolidColor(Color(0xFFffffff)), stroke = SolidColor(Color(0xFFffffff)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(8.0f, 8.0f)
                moveToRelative(-7.0f, 0.0f)
                arcToRelative(7.0f, 7.0f, 0.0f, true, true, 14.0f, 0.0f)
                arcToRelative(7.0f, 7.0f, 0.0f, true, true, -14.0f, 0.0f)
            }
            path(fill = SolidColor(Color(0xFFC50F1F)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(8.0f, 2.0f)
                curveTo(4.6863f, 2.0f, 2.0f, 4.6863f, 2.0f, 8.0f)
                curveTo(2.0f, 11.3137f, 4.6863f, 14.0f, 8.0f, 14.0f)
                curveTo(11.3137f, 14.0f, 14.0f, 11.3137f, 14.0f, 8.0f)
                curveTo(14.0f, 4.6863f, 11.3137f, 2.0f, 8.0f, 2.0f)
                close()
                moveTo(3.5f, 8.0f)
                curveTo(3.5f, 5.5147f, 5.5147f, 3.5f, 8.0f, 3.5f)
                curveTo(10.4853f, 3.5f, 12.5f, 5.5147f, 12.5f, 8.0f)
                curveTo(12.5f, 10.4853f, 10.4853f, 12.5f, 8.0f, 12.5f)
                curveTo(5.5147f, 12.5f, 3.5f, 10.4853f, 3.5f, 8.0f)
                close()
                moveTo(5.0f, 8.0f)
                curveTo(5.0f, 7.5858f, 5.3358f, 7.25f, 5.75f, 7.25f)
                horizontalLineTo(10.25f)
                curveTo(10.6642f, 7.25f, 11.0f, 7.5858f, 11.0f, 8.0f)
                curveTo(11.0f, 8.4142f, 10.6642f, 8.75f, 10.25f, 8.75f)
                horizontalLineTo(5.75f)
                curveTo(5.3358f, 8.75f, 5.0f, 8.4142f, 5.0f, 8.0f)
                close()
            }
            path(fill = SolidColor(Color(0x00000000)), stroke = SolidColor(Color(0xFFffffff)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(8.0f, 1.0f)
                lineTo(8.0f, 1.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 15.0f, 8.0f)
                lineTo(15.0f, 8.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 8.0f, 15.0f)
                lineTo(8.0f, 15.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 1.0f, 8.0f)
                lineTo(1.0f, 8.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 8.0f, 1.0f)
                close()
            }
        }
                .build()
        return _light!!
    }

private var _light: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/dndoof/small/Dark.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.dndoof.small

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.avataricons.presence.dndoof.SmallGroup

val SmallGroup.Dark: ImageVector
    get() {
        if (_dark != null) {
            return _dark!!
        }
        _dark = Builder(name = "Dark", defaultWidth = 14.0.dp, defaultHeight = 14.0.dp,
                viewportWidth = 14.0f, viewportHeight = 14.0f).apply {
            path(fill = SolidColor(Color(0xFF000000)), stroke = SolidColor(Color(0xFF000000)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(7.0f, 7.0f)
                moveToRelative(-6.0f, 0.0f)
                arcToRelative(6.0f, 6.0f, 0.0f, true, true, 12.0f, 0.0f)
                arcToRelative(6.0f, 6.0f, 0.0f, true, true, -12.0f, 0.0f)
            }
            path(fill = SolidColor(Color(0xFFD74553)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(6.9977f, 2.0f)
                curveTo(4.2375f, 2.0f, 2.0f, 4.2375f, 2.0f, 6.9977f)
                curveTo(2.0f, 9.7578f, 4.2375f, 11.9954f, 6.9977f, 11.9954f)
                curveTo(9.7578f, 11.9954f, 11.9954f, 9.7578f, 11.9954f, 6.9977f)
                curveTo(11.9954f, 4.2375f, 9.7578f, 2.0f, 6.9977f, 2.0f)
                close()
                moveTo(3.0f, 6.9977f)
                curveTo(3.0f, 4.7898f, 4.7898f, 3.0f, 6.9977f, 3.0f)
                curveTo(9.2056f, 3.0f, 10.9954f, 4.7898f, 10.9954f, 6.9977f)
                curveTo(10.9954f, 9.2056f, 9.2056f, 10.9954f, 6.9977f, 10.9954f)
                curveTo(4.7898f, 10.9954f, 3.0f, 9.2056f, 3.0f, 6.9977f)
                close()
                moveTo(5.0f, 7.0f)
                curveTo(5.0f, 6.7239f, 5.2239f, 6.5f, 5.5f, 6.5f)
                horizontalLineTo(8.5f)
                curveTo(8.7761f, 6.5f, 9.0f, 6.7239f, 9.0f, 7.0f)
                curveTo(9.0f, 7.2761f, 8.7761f, 7.5f, 8.5f, 7.5f)
                horizontalLineTo(5.5f)
                curveTo(5.2239f, 7.5f, 5.0f, 7.2761f, 5.0f, 7.0f)
                close()
            }
        }
                .build()
        return _dark!!
    }

private var _dark: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/dndoof/small/Light.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.dndoof.small

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.avataricons.presence.dndoof.SmallGroup

val SmallGroup.Light: ImageVector
    get() {
        if (_light != null) {
            return _light!!
        }
        _light = Builder(name = "Light", defaultWidth = 14.0.dp, defaultHeight = 14.0.dp,
                viewportWidth = 14.0f, viewportHeight = 14.0f).apply {
            path(fill = SolidColor(Color(0xFFffffff)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(7.0f, 1.0f)
                lineTo(7.0f, 1.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 13.0f, 7.0f)
                lineTo(13.0f, 7.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 7.0f, 13.0f)
                lineTo(7.0f, 13.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 1.0f, 7.0f)
                lineTo(1.0f, 7.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 7.0f, 1.0f)
                close()
            }
            path(fill = SolidColor(Color(0xFFffffff)), stroke = SolidColor(Color(0xFFffffff)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(7.0f, 7.0f)
                moveToRelative(-6.0f, 0.0f)
                arcToRelative(6.0f, 6.0f, 0.0f, true, true, 12.0f, 0.0f)
                arcToRelative(6.0f, 6.0f, 0.0f, true, true, -12.0f, 0.0f)
            }
            path(fill = SolidColor(Color(0xFFC50F1F)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(6.9977f, 2.0f)
                curveTo(4.2375f, 2.0f, 2.0f, 4.2375f, 2.0f, 6.9977f)
                curveTo(2.0f, 9.7578f, 4.2375f, 11.9954f, 6.9977f, 11.9954f)
                curveTo(9.7578f, 11.9954f, 11.9954f, 9.7578f, 11.9954f, 6.9977f)
                curveTo(11.9954f, 4.2375f, 9.7578f, 2.0f, 6.9977f, 2.0f)
                close()
                moveTo(3.0f, 6.9977f)
                curveTo(3.0f, 4.7898f, 4.7898f, 3.0f, 6.9977f, 3.0f)
                curveTo(9.2056f, 3.0f, 10.9954f, 4.7898f, 10.9954f, 6.9977f)
                curveTo(10.9954f, 9.2056f, 9.2056f, 10.9954f, 6.9977f, 10.9954f)
                curveTo(4.7898f, 10.9954f, 3.0f, 9.2056f, 3.0f, 6.9977f)
                close()
                moveTo(5.0f, 7.0f)
                curveTo(5.0f, 6.7239f, 5.2239f, 6.5f, 5.5f, 6.5f)
                horizontalLineTo(8.5f)
                curveTo(8.7761f, 6.5f, 9.0f, 6.7239f, 9.0f, 7.0f)
                curveTo(9.0f, 7.2761f, 8.7761f, 7.5f, 8.5f, 7.5f)
                horizontalLineTo(5.5f)
                curveTo(5.2239f, 7.5f, 5.0f, 7.2761f, 5.0f, 7.0f)
                close()
            }
            path(fill = SolidColor(Color(0x00000000)), stroke = SolidColor(Color(0xFFffffff)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(7.0f, 1.0f)
                lineTo(7.0f, 1.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 13.0f, 7.0f)
                lineTo(13.0f, 7.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 7.0f, 13.0f)
                lineTo(7.0f, 13.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 1.0f, 7.0f)
                lineTo(1.0f, 7.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 7.0f, 1.0f)
                close()
            }
        }
                .build()
        return _light!!
    }

private var _light: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/offline/__Large.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.offline

import androidx.compose.ui.graphics.vector.ImageVector
import com.microsoft.fluentui.icons.avataricons.presence.OfflineGroup
import com.microsoft.fluentui.icons.avataricons.presence.offline.large.Dark
import com.microsoft.fluentui.icons.avataricons.presence.offline.large.Light
import kotlin.collections.List as ____KtList

object LargeGroup

val OfflineGroup.Large: LargeGroup
    get() = LargeGroup

private var __AllIcons: ____KtList<ImageVector>? = null

val LargeGroup.AllIcons: ____KtList<ImageVector>
    get() {
        if (__AllIcons != null) {
            return __AllIcons!!
        }
        __AllIcons = listOf(Dark, Light)
        return __AllIcons!!
    }
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/offline/__Medium.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.offline

import androidx.compose.ui.graphics.vector.ImageVector
import com.microsoft.fluentui.icons.avataricons.presence.OfflineGroup
import com.microsoft.fluentui.icons.avataricons.presence.offline.medium.Dark
import com.microsoft.fluentui.icons.avataricons.presence.offline.medium.Light
import kotlin.collections.List as ____KtList

object MediumGroup

val OfflineGroup.Medium: MediumGroup
    get() = MediumGroup

private var __AllIcons: ____KtList<ImageVector>? = null

val MediumGroup.AllIcons: ____KtList<ImageVector>
    get() {
        if (__AllIcons != null) {
            return __AllIcons!!
        }
        __AllIcons = listOf(Dark, Light)
        return __AllIcons!!
    }
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/offline/__Small.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.offline

import androidx.compose.ui.graphics.vector.ImageVector
import com.microsoft.fluentui.icons.avataricons.presence.OfflineGroup
import com.microsoft.fluentui.icons.avataricons.presence.offline.small.Dark
import com.microsoft.fluentui.icons.avataricons.presence.offline.small.Light
import kotlin.collections.List as ____KtList

object SmallGroup

val OfflineGroup.Small: SmallGroup
    get() = SmallGroup

private var __AllIcons: ____KtList<ImageVector>? = null

val SmallGroup.AllIcons: ____KtList<ImageVector>
    get() {
        if (__AllIcons != null) {
            return __AllIcons!!
        }
        __AllIcons = listOf(Dark, Light)
        return __AllIcons!!
    }
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/offline/large/Dark.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.offline.large

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.avataricons.presence.offline.LargeGroup

val LargeGroup.Dark: ImageVector
    get() {
        if (_dark != null) {
            return _dark!!
        }
        _dark = Builder(name = "Dark", defaultWidth = 20.0.dp, defaultHeight = 20.0.dp,
                viewportWidth = 20.0f, viewportHeight = 20.0f).apply {
            path(fill = SolidColor(Color(0xFF000000)), stroke = SolidColor(Color(0xFF000000)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(10.0f, 10.0f)
                moveToRelative(-9.0f, 0.0f)
                arcToRelative(9.0f, 9.0f, 0.0f, true, true, 18.0f, 0.0f)
                arcToRelative(9.0f, 9.0f, 0.0f, true, true, -18.0f, 0.0f)
            }
            path(fill = SolidColor(Color(0xFF979593)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(12.7071f, 7.2929f)
                curveTo(13.0976f, 7.6834f, 13.0976f, 8.3166f, 12.7071f, 8.7071f)
                lineTo(11.4142f, 10.0f)
                lineTo(12.7071f, 11.2929f)
                curveTo(13.0976f, 11.6834f, 13.0976f, 12.3166f, 12.7071f, 12.7071f)
                curveTo(12.3166f, 13.0976f, 11.6834f, 13.0976f, 11.2929f, 12.7071f)
                lineTo(10.0f, 11.4142f)
                lineTo(8.7071f, 12.7071f)
                curveTo(8.3166f, 13.0976f, 7.6834f, 13.0976f, 7.2929f, 12.7071f)
                curveTo(6.9024f, 12.3166f, 6.9024f, 11.6834f, 7.2929f, 11.2929f)
                lineTo(8.5858f, 10.0f)
                lineTo(7.2929f, 8.7071f)
                curveTo(6.9024f, 8.3166f, 6.9024f, 7.6834f, 7.2929f, 7.2929f)
                curveTo(7.6834f, 6.9024f, 8.3166f, 6.9024f, 8.7071f, 7.2929f)
                lineTo(10.0f, 8.5858f)
                lineTo(11.2929f, 7.2929f)
                curveTo(11.6834f, 6.9024f, 12.3166f, 6.9024f, 12.7071f, 7.2929f)
                close()
                moveTo(2.0f, 10.0f)
                curveTo(2.0f, 5.5817f, 5.5817f, 2.0f, 10.0f, 2.0f)
                curveTo(14.4183f, 2.0f, 18.0f, 5.5817f, 18.0f, 10.0f)
                curveTo(18.0f, 14.4183f, 14.4183f, 18.0f, 10.0f, 18.0f)
                curveTo(5.5817f, 18.0f, 2.0f, 14.4183f, 2.0f, 10.0f)
                close()
                moveTo(10.0f, 4.0f)
                curveTo(6.6863f, 4.0f, 4.0f, 6.6863f, 4.0f, 10.0f)
                curveTo(4.0f, 13.3137f, 6.6863f, 16.0f, 10.0f, 16.0f)
                curveTo(13.3137f, 16.0f, 16.0f, 13.3137f, 16.0f, 10.0f)
                curveTo(16.0f, 6.6863f, 13.3137f, 4.0f, 10.0f, 4.0f)
                close()
            }
        }
                .build()
        return _dark!!
    }

private var _dark: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/offline/large/Light.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.offline.large

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.avataricons.presence.offline.LargeGroup

val LargeGroup.Light: ImageVector
    get() {
        if (_light != null) {
            return _light!!
        }
        _light = Builder(name = "Light", defaultWidth = 20.0.dp, defaultHeight = 20.0.dp,
                viewportWidth = 20.0f, viewportHeight = 20.0f).apply {
            path(fill = SolidColor(Color(0xFFffffff)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(10.0f, 1.0f)
                lineTo(10.0f, 1.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 19.0f, 10.0f)
                lineTo(19.0f, 10.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 10.0f, 19.0f)
                lineTo(10.0f, 19.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 1.0f, 10.0f)
                lineTo(1.0f, 10.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 10.0f, 1.0f)
                close()
            }
            path(fill = SolidColor(Color(0xFFffffff)), stroke = SolidColor(Color(0xFFffffff)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(10.0f, 10.0f)
                moveToRelative(-9.0f, 0.0f)
                arcToRelative(9.0f, 9.0f, 0.0f, true, true, 18.0f, 0.0f)
                arcToRelative(9.0f, 9.0f, 0.0f, true, true, -18.0f, 0.0f)
            }
            path(fill = SolidColor(Color(0xFF8A8886)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(12.7071f, 7.2929f)
                curveTo(13.0976f, 7.6834f, 13.0976f, 8.3166f, 12.7071f, 8.7071f)
                lineTo(11.4142f, 10.0f)
                lineTo(12.7071f, 11.2929f)
                curveTo(13.0976f, 11.6834f, 13.0976f, 12.3166f, 12.7071f, 12.7071f)
                curveTo(12.3166f, 13.0976f, 11.6834f, 13.0976f, 11.2929f, 12.7071f)
                lineTo(10.0f, 11.4142f)
                lineTo(8.7071f, 12.7071f)
                curveTo(8.3166f, 13.0976f, 7.6834f, 13.0976f, 7.2929f, 12.7071f)
                curveTo(6.9024f, 12.3166f, 6.9024f, 11.6834f, 7.2929f, 11.2929f)
                lineTo(8.5858f, 10.0f)
                lineTo(7.2929f, 8.7071f)
                curveTo(6.9024f, 8.3166f, 6.9024f, 7.6834f, 7.2929f, 7.2929f)
                curveTo(7.6834f, 6.9024f, 8.3166f, 6.9024f, 8.7071f, 7.2929f)
                lineTo(10.0f, 8.5858f)
                lineTo(11.2929f, 7.2929f)
                curveTo(11.6834f, 6.9024f, 12.3166f, 6.9024f, 12.7071f, 7.2929f)
                close()
                moveTo(2.0f, 10.0f)
                curveTo(2.0f, 5.5817f, 5.5817f, 2.0f, 10.0f, 2.0f)
                curveTo(14.4183f, 2.0f, 18.0f, 5.5817f, 18.0f, 10.0f)
                curveTo(18.0f, 14.4183f, 14.4183f, 18.0f, 10.0f, 18.0f)
                curveTo(5.5817f, 18.0f, 2.0f, 14.4183f, 2.0f, 10.0f)
                close()
                moveTo(10.0f, 4.0f)
                curveTo(6.6863f, 4.0f, 4.0f, 6.6863f, 4.0f, 10.0f)
                curveTo(4.0f, 13.3137f, 6.6863f, 16.0f, 10.0f, 16.0f)
                curveTo(13.3137f, 16.0f, 16.0f, 13.3137f, 16.0f, 10.0f)
                curveTo(16.0f, 6.6863f, 13.3137f, 4.0f, 10.0f, 4.0f)
                close()
            }
            path(fill = SolidColor(Color(0x00000000)), stroke = SolidColor(Color(0xFFffffff)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(10.0f, 1.0f)
                lineTo(10.0f, 1.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 19.0f, 10.0f)
                lineTo(19.0f, 10.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 10.0f, 19.0f)
                lineTo(10.0f, 19.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 1.0f, 10.0f)
                lineTo(1.0f, 10.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 10.0f, 1.0f)
                close()
            }
        }
                .build()
        return _light!!
    }

private var _light: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/offline/medium/Dark.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.offline.medium

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.avataricons.presence.offline.MediumGroup

val MediumGroup.Dark: ImageVector
    get() {
        if (_dark != null) {
            return _dark!!
        }
        _dark = Builder(name = "Dark", defaultWidth = 16.0.dp, defaultHeight = 16.0.dp,
                viewportWidth = 16.0f, viewportHeight = 16.0f).apply {
            path(fill = SolidColor(Color(0xFF000000)), stroke = SolidColor(Color(0xFF000000)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(8.0f, 8.0f)
                moveToRelative(-7.0f, 0.0f)
                arcToRelative(7.0f, 7.0f, 0.0f, true, true, 14.0f, 0.0f)
                arcToRelative(7.0f, 7.0f, 0.0f, true, true, -14.0f, 0.0f)
            }
            path(fill = SolidColor(Color(0xFF979593)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(10.0303f, 5.9697f)
                curveTo(10.3232f, 6.2626f, 10.3232f, 6.7374f, 10.0303f, 7.0303f)
                lineTo(9.0606f, 8.0f)
                lineTo(10.0303f, 8.9697f)
                curveTo(10.3232f, 9.2626f, 10.3232f, 9.7375f, 10.0303f, 10.0304f)
                curveTo(9.7374f, 10.3233f, 9.2626f, 10.3233f, 8.9697f, 10.0304f)
                lineTo(8.0f, 9.0607f)
                lineTo(7.0303f, 10.0303f)
                curveTo(6.7374f, 10.3232f, 6.2626f, 10.3232f, 5.9697f, 10.0303f)
                curveTo(5.6768f, 9.7374f, 5.6768f, 9.2626f, 5.9697f, 8.9697f)
                lineTo(6.9393f, 8.0f)
                lineTo(5.9697f, 7.0304f)
                curveTo(5.6768f, 6.7375f, 5.6768f, 6.2626f, 5.9697f, 5.9697f)
                curveTo(6.2626f, 5.6768f, 6.7374f, 5.6768f, 7.0303f, 5.9697f)
                lineTo(8.0f, 6.9394f)
                lineTo(8.9697f, 5.9697f)
                curveTo(9.2626f, 5.6768f, 9.7374f, 5.6768f, 10.0303f, 5.9697f)
                close()
                moveTo(2.0f, 8.0f)
                curveTo(2.0f, 4.6863f, 4.6863f, 2.0f, 8.0f, 2.0f)
                curveTo(11.3137f, 2.0f, 14.0f, 4.6863f, 14.0f, 8.0f)
                curveTo(14.0f, 11.3137f, 11.3137f, 14.0f, 8.0f, 14.0f)
                curveTo(4.6863f, 14.0f, 2.0f, 11.3137f, 2.0f, 8.0f)
                close()
                moveTo(8.0f, 3.5f)
                curveTo(5.5147f, 3.5f, 3.5f, 5.5147f, 3.5f, 8.0f)
                curveTo(3.5f, 10.4853f, 5.5147f, 12.5f, 8.0f, 12.5f)
                curveTo(10.4853f, 12.5f, 12.5f, 10.4853f, 12.5f, 8.0f)
                curveTo(12.5f, 5.5147f, 10.4853f, 3.5f, 8.0f, 3.5f)
                close()
            }
        }
                .build()
        return _dark!!
    }

private var _dark: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/offline/medium/Light.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.offline.medium

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.avataricons.presence.offline.MediumGroup

val MediumGroup.Light: ImageVector
    get() {
        if (_light != null) {
            return _light!!
        }
        _light = Builder(name = "Light", defaultWidth = 16.0.dp, defaultHeight = 16.0.dp,
                viewportWidth = 16.0f, viewportHeight = 16.0f).apply {
            path(fill = SolidColor(Color(0xFFffffff)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(8.0f, 1.0f)
                lineTo(8.0f, 1.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 15.0f, 8.0f)
                lineTo(15.0f, 8.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 8.0f, 15.0f)
                lineTo(8.0f, 15.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 1.0f, 8.0f)
                lineTo(1.0f, 8.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 8.0f, 1.0f)
                close()
            }
            path(fill = SolidColor(Color(0xFFffffff)), stroke = SolidColor(Color(0xFFffffff)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(8.0f, 8.0f)
                moveToRelative(-7.0f, 0.0f)
                arcToRelative(7.0f, 7.0f, 0.0f, true, true, 14.0f, 0.0f)
                arcToRelative(7.0f, 7.0f, 0.0f, true, true, -14.0f, 0.0f)
            }
            path(fill = SolidColor(Color(0xFF8A8886)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(10.0303f, 5.9697f)
                curveTo(10.3232f, 6.2626f, 10.3232f, 6.7374f, 10.0303f, 7.0303f)
                lineTo(9.0606f, 8.0f)
                lineTo(10.0303f, 8.9697f)
                curveTo(10.3232f, 9.2626f, 10.3232f, 9.7375f, 10.0303f, 10.0304f)
                curveTo(9.7374f, 10.3233f, 9.2626f, 10.3233f, 8.9697f, 10.0304f)
                lineTo(8.0f, 9.0607f)
                lineTo(7.0303f, 10.0303f)
                curveTo(6.7374f, 10.3232f, 6.2626f, 10.3232f, 5.9697f, 10.0303f)
                curveTo(5.6768f, 9.7374f, 5.6768f, 9.2626f, 5.9697f, 8.9697f)
                lineTo(6.9393f, 8.0f)
                lineTo(5.9697f, 7.0304f)
                curveTo(5.6768f, 6.7375f, 5.6768f, 6.2626f, 5.9697f, 5.9697f)
                curveTo(6.2626f, 5.6768f, 6.7374f, 5.6768f, 7.0303f, 5.9697f)
                lineTo(8.0f, 6.9394f)
                lineTo(8.9697f, 5.9697f)
                curveTo(9.2626f, 5.6768f, 9.7374f, 5.6768f, 10.0303f, 5.9697f)
                close()
                moveTo(2.0f, 8.0f)
                curveTo(2.0f, 4.6863f, 4.6863f, 2.0f, 8.0f, 2.0f)
                curveTo(11.3137f, 2.0f, 14.0f, 4.6863f, 14.0f, 8.0f)
                curveTo(14.0f, 11.3137f, 11.3137f, 14.0f, 8.0f, 14.0f)
                curveTo(4.6863f, 14.0f, 2.0f, 11.3137f, 2.0f, 8.0f)
                close()
                moveTo(8.0f, 3.5f)
                curveTo(5.5147f, 3.5f, 3.5f, 5.5147f, 3.5f, 8.0f)
                curveTo(3.5f, 10.4853f, 5.5147f, 12.5f, 8.0f, 12.5f)
                curveTo(10.4853f, 12.5f, 12.5f, 10.4853f, 12.5f, 8.0f)
                curveTo(12.5f, 5.5147f, 10.4853f, 3.5f, 8.0f, 3.5f)
                close()
            }
            path(fill = SolidColor(Color(0x00000000)), stroke = SolidColor(Color(0xFFffffff)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(8.0f, 1.0f)
                lineTo(8.0f, 1.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 15.0f, 8.0f)
                lineTo(15.0f, 8.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 8.0f, 15.0f)
                lineTo(8.0f, 15.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 1.0f, 8.0f)
                lineTo(1.0f, 8.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 8.0f, 1.0f)
                close()
            }
        }
                .build()
        return _light!!
    }

private var _light: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/offline/small/Dark.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.offline.small

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.avataricons.presence.offline.SmallGroup

val SmallGroup.Dark: ImageVector
    get() {
        if (_dark != null) {
            return _dark!!
        }
        _dark = Builder(name = "Dark", defaultWidth = 14.0.dp, defaultHeight = 14.0.dp,
                viewportWidth = 14.0f, viewportHeight = 14.0f).apply {
            path(fill = SolidColor(Color(0xFF000000)), stroke = SolidColor(Color(0xFF000000)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(7.0f, 7.0f)
                moveToRelative(-6.0f, 0.0f)
                arcToRelative(6.0f, 6.0f, 0.0f, true, true, 12.0f, 0.0f)
                arcToRelative(6.0f, 6.0f, 0.0f, true, true, -12.0f, 0.0f)
            }
            path(fill = SolidColor(Color(0xFF979593)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(8.8535f, 5.1465f)
                curveTo(9.0488f, 5.3417f, 9.0488f, 5.6583f, 8.8535f, 5.8535f)
                lineTo(7.7071f, 7.0f)
                lineTo(8.8535f, 8.1465f)
                curveTo(9.0488f, 8.3417f, 9.0488f, 8.6583f, 8.8535f, 8.8535f)
                curveTo(8.6583f, 9.0488f, 8.3417f, 9.0488f, 8.1465f, 8.8535f)
                lineTo(7.0f, 7.7071f)
                lineTo(5.8535f, 8.8535f)
                curveTo(5.6583f, 9.0488f, 5.3417f, 9.0488f, 5.1465f, 8.8535f)
                curveTo(4.9512f, 8.6583f, 4.9512f, 8.3417f, 5.1465f, 8.1465f)
                lineTo(6.2929f, 7.0f)
                lineTo(5.1465f, 5.8535f)
                curveTo(4.9512f, 5.6583f, 4.9512f, 5.3417f, 5.1465f, 5.1465f)
                curveTo(5.3417f, 4.9512f, 5.6583f, 4.9512f, 5.8535f, 5.1465f)
                lineTo(7.0f, 6.2929f)
                lineTo(8.1465f, 5.1465f)
                curveTo(8.3417f, 4.9512f, 8.6583f, 4.9512f, 8.8535f, 5.1465f)
                close()
                moveTo(2.0f, 7.0f)
                curveTo(2.0f, 4.2386f, 4.2386f, 2.0f, 7.0f, 2.0f)
                curveTo(9.7615f, 2.0f, 12.0001f, 4.2386f, 12.0001f, 7.0f)
                curveTo(12.0001f, 9.7615f, 9.7615f, 12.0001f, 7.0f, 12.0001f)
                curveTo(4.2386f, 12.0001f, 2.0f, 9.7615f, 2.0f, 7.0f)
                close()
                moveTo(7.0f, 3.0f)
                curveTo(4.7909f, 3.0f, 3.0f, 4.7909f, 3.0f, 7.0f)
                curveTo(3.0f, 9.2092f, 4.7909f, 11.0001f, 7.0f, 11.0001f)
                curveTo(9.2092f, 11.0001f, 11.0001f, 9.2092f, 11.0001f, 7.0f)
                curveTo(11.0001f, 4.7909f, 9.2092f, 3.0f, 7.0f, 3.0f)
                close()
            }
        }
                .build()
        return _dark!!
    }

private var _dark: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/offline/small/Light.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.offline.small

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.avataricons.presence.offline.SmallGroup

val SmallGroup.Light: ImageVector
    get() {
        if (_light != null) {
            return _light!!
        }
        _light = Builder(name = "Light", defaultWidth = 14.0.dp, defaultHeight = 14.0.dp,
                viewportWidth = 14.0f, viewportHeight = 14.0f).apply {
            path(fill = SolidColor(Color(0xFFffffff)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(7.0f, 1.0f)
                lineTo(7.0f, 1.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 13.0f, 7.0f)
                lineTo(13.0f, 7.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 7.0f, 13.0f)
                lineTo(7.0f, 13.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 1.0f, 7.0f)
                lineTo(1.0f, 7.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 7.0f, 1.0f)
                close()
            }
            path(fill = SolidColor(Color(0xFFffffff)), stroke = SolidColor(Color(0xFFffffff)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(7.0f, 7.0f)
                moveToRelative(-6.0f, 0.0f)
                arcToRelative(6.0f, 6.0f, 0.0f, true, true, 12.0f, 0.0f)
                arcToRelative(6.0f, 6.0f, 0.0f, true, true, -12.0f, 0.0f)
            }
            path(fill = SolidColor(Color(0xFF8A8886)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(8.8535f, 5.1465f)
                curveTo(9.0488f, 5.3417f, 9.0488f, 5.6583f, 8.8535f, 5.8535f)
                lineTo(7.7071f, 7.0f)
                lineTo(8.8535f, 8.1465f)
                curveTo(9.0488f, 8.3417f, 9.0488f, 8.6583f, 8.8535f, 8.8535f)
                curveTo(8.6583f, 9.0488f, 8.3417f, 9.0488f, 8.1465f, 8.8535f)
                lineTo(7.0f, 7.7071f)
                lineTo(5.8535f, 8.8535f)
                curveTo(5.6583f, 9.0488f, 5.3417f, 9.0488f, 5.1465f, 8.8535f)
                curveTo(4.9512f, 8.6583f, 4.9512f, 8.3417f, 5.1465f, 8.1465f)
                lineTo(6.2929f, 7.0f)
                lineTo(5.1465f, 5.8535f)
                curveTo(4.9512f, 5.6583f, 4.9512f, 5.3417f, 5.1465f, 5.1465f)
                curveTo(5.3417f, 4.9512f, 5.6583f, 4.9512f, 5.8535f, 5.1465f)
                lineTo(7.0f, 6.2929f)
                lineTo(8.1465f, 5.1465f)
                curveTo(8.3417f, 4.9512f, 8.6583f, 4.9512f, 8.8535f, 5.1465f)
                close()
                moveTo(2.0f, 7.0f)
                curveTo(2.0f, 4.2386f, 4.2386f, 2.0f, 7.0f, 2.0f)
                curveTo(9.7615f, 2.0f, 12.0001f, 4.2386f, 12.0001f, 7.0f)
                curveTo(12.0001f, 9.7615f, 9.7615f, 12.0001f, 7.0f, 12.0001f)
                curveTo(4.2386f, 12.0001f, 2.0f, 9.7615f, 2.0f, 7.0f)
                close()
                moveTo(7.0f, 3.0f)
                curveTo(4.7909f, 3.0f, 3.0f, 4.7909f, 3.0f, 7.0f)
                curveTo(3.0f, 9.2092f, 4.7909f, 11.0001f, 7.0f, 11.0001f)
                curveTo(9.2092f, 11.0001f, 11.0001f, 9.2092f, 11.0001f, 7.0f)
                curveTo(11.0001f, 4.7909f, 9.2092f, 3.0f, 7.0f, 3.0f)
                close()
            }
            path(fill = SolidColor(Color(0x00000000)), stroke = SolidColor(Color(0xFFffffff)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(7.0f, 1.0f)
                lineTo(7.0f, 1.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 13.0f, 7.0f)
                lineTo(13.0f, 7.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 7.0f, 13.0f)
                lineTo(7.0f, 13.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 1.0f, 7.0f)
                lineTo(1.0f, 7.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 7.0f, 1.0f)
                close()
            }
        }
                .build()
        return _light!!
    }

private var _light: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/oof/__Large.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.oof

import androidx.compose.ui.graphics.vector.ImageVector
import com.microsoft.fluentui.icons.avataricons.presence.OofGroup
import com.microsoft.fluentui.icons.avataricons.presence.oof.large.Dark
import com.microsoft.fluentui.icons.avataricons.presence.oof.large.Light
import kotlin.collections.List as ____KtList

object LargeGroup

val OofGroup.Large: LargeGroup
    get() = LargeGroup

private var __AllIcons: ____KtList<ImageVector>? = null

val LargeGroup.AllIcons: ____KtList<ImageVector>
    get() {
        if (__AllIcons != null) {
            return __AllIcons!!
        }
        __AllIcons = listOf(Dark, Light)
        return __AllIcons!!
    }
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/oof/__Medium.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.oof

import androidx.compose.ui.graphics.vector.ImageVector
import com.microsoft.fluentui.icons.avataricons.presence.OofGroup
import com.microsoft.fluentui.icons.avataricons.presence.oof.medium.Dark
import com.microsoft.fluentui.icons.avataricons.presence.oof.medium.Light
import kotlin.collections.List as ____KtList

object MediumGroup

val OofGroup.Medium: MediumGroup
    get() = MediumGroup

private var __AllIcons: ____KtList<ImageVector>? = null

val MediumGroup.AllIcons: ____KtList<ImageVector>
    get() {
        if (__AllIcons != null) {
            return __AllIcons!!
        }
        __AllIcons = listOf(Dark, Light)
        return __AllIcons!!
    }
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/oof/__Small.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.oof

import androidx.compose.ui.graphics.vector.ImageVector
import com.microsoft.fluentui.icons.avataricons.presence.OofGroup
import com.microsoft.fluentui.icons.avataricons.presence.oof.small.Dark
import com.microsoft.fluentui.icons.avataricons.presence.oof.small.Light
import kotlin.collections.List as ____KtList

object SmallGroup

val OofGroup.Small: SmallGroup
    get() = SmallGroup

private var __AllIcons: ____KtList<ImageVector>? = null

val SmallGroup.AllIcons: ____KtList<ImageVector>
    get() {
        if (__AllIcons != null) {
            return __AllIcons!!
        }
        __AllIcons = listOf(Dark, Light)
        return __AllIcons!!
    }
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/oof/large/Dark.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.oof.large

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.avataricons.presence.oof.LargeGroup

val LargeGroup.Dark: ImageVector
    get() {
        if (_dark != null) {
            return _dark!!
        }
        _dark = Builder(name = "Dark", defaultWidth = 20.0.dp, defaultHeight = 20.0.dp,
                viewportWidth = 20.0f, viewportHeight = 20.0f).apply {
            path(fill = SolidColor(Color(0xFF000000)), stroke = SolidColor(Color(0xFF000000)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(10.0f, 10.0f)
                moveToRelative(-9.0f, 0.0f)
                arcToRelative(9.0f, 9.0f, 0.0f, true, true, 18.0f, 0.0f)
                arcToRelative(9.0f, 9.0f, 0.0f, true, true, -18.0f, 0.0f)
            }
            path(fill = SolidColor(Color(0xFFE959D9)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(10.2071f, 8.2074f)
                curveTo(10.5976f, 7.8168f, 10.5976f, 7.1837f, 10.2071f, 6.7931f)
                curveTo(9.8166f, 6.4026f, 9.1834f, 6.4026f, 8.7929f, 6.7931f)
                lineTo(6.2929f, 9.293f)
                curveTo(6.1054f, 9.4806f, 6.0f, 9.7349f, 6.0f, 10.0002f)
                curveTo(6.0f, 10.2654f, 6.1054f, 10.5197f, 6.2929f, 10.7073f)
                lineTo(8.7929f, 13.2073f)
                curveTo(9.1834f, 13.5978f, 9.8166f, 13.5978f, 10.2071f, 13.2073f)
                curveTo(10.5976f, 12.8167f, 10.5976f, 12.1836f, 10.2071f, 11.7931f)
                lineTo(9.4142f, 11.0002f)
                horizontalLineTo(13.0f)
                curveTo(13.5523f, 11.0002f, 14.0f, 10.5524f, 14.0f, 10.0002f)
                curveTo(14.0f, 9.4479f, 13.5523f, 9.0002f, 13.0f, 9.0002f)
                horizontalLineTo(9.4143f)
                lineTo(10.2071f, 8.2074f)
                close()
                moveTo(10.0f, 2.0f)
                curveTo(5.5817f, 2.0f, 2.0f, 5.5817f, 2.0f, 10.0f)
                curveTo(2.0f, 14.4183f, 5.5817f, 18.0f, 10.0f, 18.0f)
                curveTo(14.4183f, 18.0f, 18.0f, 14.4183f, 18.0f, 10.0f)
                curveTo(18.0f, 5.5817f, 14.4183f, 2.0f, 10.0f, 2.0f)
                close()
                moveTo(4.0f, 10.0f)
                curveTo(4.0f, 6.6863f, 6.6863f, 4.0f, 10.0f, 4.0f)
                curveTo(13.3137f, 4.0f, 16.0f, 6.6863f, 16.0f, 10.0f)
                curveTo(16.0f, 13.3137f, 13.3137f, 16.0f, 10.0f, 16.0f)
                curveTo(6.6863f, 16.0f, 4.0f, 13.3137f, 4.0f, 10.0f)
                close()
            }
        }
                .build()
        return _dark!!
    }

private var _dark: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/oof/large/Light.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.oof.large

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.avataricons.presence.oof.LargeGroup

val LargeGroup.Light: ImageVector
    get() {
        if (_light != null) {
            return _light!!
        }
        _light = Builder(name = "Light", defaultWidth = 20.0.dp, defaultHeight = 20.0.dp,
                viewportWidth = 20.0f, viewportHeight = 20.0f).apply {
            path(fill = SolidColor(Color(0xFFffffff)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(10.0f, 1.0f)
                lineTo(10.0f, 1.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 19.0f, 10.0f)
                lineTo(19.0f, 10.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 10.0f, 19.0f)
                lineTo(10.0f, 19.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 1.0f, 10.0f)
                lineTo(1.0f, 10.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 10.0f, 1.0f)
                close()
            }
            path(fill = SolidColor(Color(0xFFffffff)), stroke = SolidColor(Color(0xFFffffff)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(10.0f, 10.0f)
                moveToRelative(-9.0f, 0.0f)
                arcToRelative(9.0f, 9.0f, 0.0f, true, true, 18.0f, 0.0f)
                arcToRelative(9.0f, 9.0f, 0.0f, true, true, -18.0f, 0.0f)
            }
            path(fill = SolidColor(Color(0xFFB4009E)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(10.2071f, 8.2074f)
                curveTo(10.5976f, 7.8168f, 10.5976f, 7.1837f, 10.2071f, 6.7931f)
                curveTo(9.8166f, 6.4026f, 9.1834f, 6.4026f, 8.7929f, 6.7931f)
                lineTo(6.2929f, 9.293f)
                curveTo(6.1054f, 9.4806f, 6.0f, 9.7349f, 6.0f, 10.0002f)
                curveTo(6.0f, 10.2654f, 6.1054f, 10.5197f, 6.2929f, 10.7073f)
                lineTo(8.7929f, 13.2073f)
                curveTo(9.1834f, 13.5978f, 9.8166f, 13.5978f, 10.2071f, 13.2073f)
                curveTo(10.5976f, 12.8167f, 10.5976f, 12.1836f, 10.2071f, 11.7931f)
                lineTo(9.4142f, 11.0002f)
                horizontalLineTo(13.0f)
                curveTo(13.5523f, 11.0002f, 14.0f, 10.5524f, 14.0f, 10.0002f)
                curveTo(14.0f, 9.4479f, 13.5523f, 9.0002f, 13.0f, 9.0002f)
                horizontalLineTo(9.4143f)
                lineTo(10.2071f, 8.2074f)
                close()
                moveTo(10.0f, 2.0f)
                curveTo(5.5817f, 2.0f, 2.0f, 5.5817f, 2.0f, 10.0f)
                curveTo(2.0f, 14.4183f, 5.5817f, 18.0f, 10.0f, 18.0f)
                curveTo(14.4183f, 18.0f, 18.0f, 14.4183f, 18.0f, 10.0f)
                curveTo(18.0f, 5.5817f, 14.4183f, 2.0f, 10.0f, 2.0f)
                close()
                moveTo(4.0f, 10.0f)
                curveTo(4.0f, 6.6863f, 6.6863f, 4.0f, 10.0f, 4.0f)
                curveTo(13.3137f, 4.0f, 16.0f, 6.6863f, 16.0f, 10.0f)
                curveTo(16.0f, 13.3137f, 13.3137f, 16.0f, 10.0f, 16.0f)
                curveTo(6.6863f, 16.0f, 4.0f, 13.3137f, 4.0f, 10.0f)
                close()
            }
            path(fill = SolidColor(Color(0x00000000)), stroke = SolidColor(Color(0xFFffffff)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(10.0f, 1.0f)
                lineTo(10.0f, 1.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 19.0f, 10.0f)
                lineTo(19.0f, 10.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 10.0f, 19.0f)
                lineTo(10.0f, 19.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 1.0f, 10.0f)
                lineTo(1.0f, 10.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 10.0f, 1.0f)
                close()
            }
        }
                .build()
        return _light!!
    }

private var _light: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/oof/medium/Dark.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.oof.medium

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.avataricons.presence.oof.MediumGroup

val MediumGroup.Dark: ImageVector
    get() {
        if (_dark != null) {
            return _dark!!
        }
        _dark = Builder(name = "Dark", defaultWidth = 16.0.dp, defaultHeight = 16.0.dp,
                viewportWidth = 16.0f, viewportHeight = 16.0f).apply {
            path(fill = SolidColor(Color(0xFF000000)), stroke = SolidColor(Color(0xFF000000)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(8.0f, 8.0f)
                moveToRelative(-7.0f, 0.0f)
                arcToRelative(7.0f, 7.0f, 0.0f, true, true, 14.0f, 0.0f)
                arcToRelative(7.0f, 7.0f, 0.0f, true, true, -14.0f, 0.0f)
            }
            path(fill = SolidColor(Color(0xFFE959D9)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(8.2812f, 6.5284f)
                curveTo(8.5741f, 6.2355f, 8.5741f, 5.7606f, 8.2812f, 5.4677f)
                curveTo(7.9883f, 5.1748f, 7.5134f, 5.1748f, 7.2205f, 5.4677f)
                lineTo(5.2185f, 7.4698f)
                curveTo(4.9256f, 7.7627f, 4.9256f, 8.2376f, 5.2185f, 8.5304f)
                lineTo(7.2205f, 10.5325f)
                curveTo(7.5134f, 10.8254f, 7.9883f, 10.8254f, 8.2812f, 10.5325f)
                curveTo(8.5741f, 10.2396f, 8.5741f, 9.7647f, 8.2812f, 9.4719f)
                lineTo(7.5594f, 8.7501f)
                horizontalLineTo(10.2499f)
                curveTo(10.6641f, 8.7501f, 10.9999f, 8.4143f, 10.9999f, 8.0001f)
                curveTo(10.9999f, 7.5859f, 10.6641f, 7.2501f, 10.2499f, 7.2501f)
                horizontalLineTo(7.5594f)
                lineTo(8.2812f, 6.5284f)
                close()
                moveTo(8.0f, 2.0f)
                curveTo(4.6863f, 2.0f, 2.0f, 4.6863f, 2.0f, 8.0f)
                curveTo(2.0f, 11.3137f, 4.6863f, 14.0f, 8.0f, 14.0f)
                curveTo(11.3137f, 14.0f, 14.0f, 11.3137f, 14.0f, 8.0f)
                curveTo(14.0f, 4.6863f, 11.3137f, 2.0f, 8.0f, 2.0f)
                close()
                moveTo(3.5f, 8.0f)
                curveTo(3.5f, 5.5147f, 5.5147f, 3.5f, 8.0f, 3.5f)
                curveTo(10.4853f, 3.5f, 12.5f, 5.5147f, 12.5f, 8.0f)
                curveTo(12.5f, 10.4853f, 10.4853f, 12.5f, 8.0f, 12.5f)
                curveTo(5.5147f, 12.5f, 3.5f, 10.4853f, 3.5f, 8.0f)
                close()
            }
        }
                .build()
        return _dark!!
    }

private var _dark: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/oof/medium/Light.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.oof.medium

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.avataricons.presence.oof.MediumGroup

val MediumGroup.Light: ImageVector
    get() {
        if (_light != null) {
            return _light!!
        }
        _light = Builder(name = "Light", defaultWidth = 16.0.dp, defaultHeight = 16.0.dp,
                viewportWidth = 16.0f, viewportHeight = 16.0f).apply {
            path(fill = SolidColor(Color(0xFFffffff)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(8.0f, 1.0f)
                lineTo(8.0f, 1.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 15.0f, 8.0f)
                lineTo(15.0f, 8.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 8.0f, 15.0f)
                lineTo(8.0f, 15.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 1.0f, 8.0f)
                lineTo(1.0f, 8.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 8.0f, 1.0f)
                close()
            }
            path(fill = SolidColor(Color(0xFFffffff)), stroke = SolidColor(Color(0xFFffffff)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(8.0f, 8.0f)
                moveToRelative(-7.0f, 0.0f)
                arcToRelative(7.0f, 7.0f, 0.0f, true, true, 14.0f, 0.0f)
                arcToRelative(7.0f, 7.0f, 0.0f, true, true, -14.0f, 0.0f)
            }
            path(fill = SolidColor(Color(0xFFB4009E)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(8.2812f, 6.5284f)
                curveTo(8.5741f, 6.2355f, 8.5741f, 5.7606f, 8.2812f, 5.4677f)
                curveTo(7.9883f, 5.1748f, 7.5134f, 5.1748f, 7.2205f, 5.4677f)
                lineTo(5.2185f, 7.4698f)
                curveTo(4.9256f, 7.7627f, 4.9256f, 8.2376f, 5.2185f, 8.5304f)
                lineTo(7.2205f, 10.5325f)
                curveTo(7.5134f, 10.8254f, 7.9883f, 10.8254f, 8.2812f, 10.5325f)
                curveTo(8.5741f, 10.2396f, 8.5741f, 9.7647f, 8.2812f, 9.4719f)
                lineTo(7.5594f, 8.7501f)
                horizontalLineTo(10.2499f)
                curveTo(10.6641f, 8.7501f, 10.9999f, 8.4143f, 10.9999f, 8.0001f)
                curveTo(10.9999f, 7.5859f, 10.6641f, 7.2501f, 10.2499f, 7.2501f)
                horizontalLineTo(7.5594f)
                lineTo(8.2812f, 6.5284f)
                close()
                moveTo(8.0f, 2.0f)
                curveTo(4.6863f, 2.0f, 2.0f, 4.6863f, 2.0f, 8.0f)
                curveTo(2.0f, 11.3137f, 4.6863f, 14.0f, 8.0f, 14.0f)
                curveTo(11.3137f, 14.0f, 14.0f, 11.3137f, 14.0f, 8.0f)
                curveTo(14.0f, 4.6863f, 11.3137f, 2.0f, 8.0f, 2.0f)
                close()
                moveTo(3.5f, 8.0f)
                curveTo(3.5f, 5.5147f, 5.5147f, 3.5f, 8.0f, 3.5f)
                curveTo(10.4853f, 3.5f, 12.5f, 5.5147f, 12.5f, 8.0f)
                curveTo(12.5f, 10.4853f, 10.4853f, 12.5f, 8.0f, 12.5f)
                curveTo(5.5147f, 12.5f, 3.5f, 10.4853f, 3.5f, 8.0f)
                close()
            }
            path(fill = SolidColor(Color(0x00000000)), stroke = SolidColor(Color(0xFFffffff)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(8.0f, 1.0f)
                lineTo(8.0f, 1.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 15.0f, 8.0f)
                lineTo(15.0f, 8.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 8.0f, 15.0f)
                lineTo(8.0f, 15.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 1.0f, 8.0f)
                lineTo(1.0f, 8.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 8.0f, 1.0f)
                close()
            }
        }
                .build()
        return _light!!
    }

private var _light: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/oof/small/Dark.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.oof.small

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.avataricons.presence.oof.SmallGroup

val SmallGroup.Dark: ImageVector
    get() {
        if (_dark != null) {
            return _dark!!
        }
        _dark = Builder(name = "Dark", defaultWidth = 14.0.dp, defaultHeight = 14.0.dp,
                viewportWidth = 14.0f, viewportHeight = 14.0f).apply {
            path(fill = SolidColor(Color(0xFF000000)), stroke = SolidColor(Color(0xFF000000)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(7.0f, 7.0f)
                moveToRelative(-6.0f, 0.0f)
                arcToRelative(6.0f, 6.0f, 0.0f, true, true, 12.0f, 0.0f)
                arcToRelative(6.0f, 6.0f, 0.0f, true, true, -12.0f, 0.0f)
            }
            path(fill = SolidColor(Color(0xFFE959D9)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(7.3488f, 5.8508f)
                curveTo(7.5439f, 5.6554f, 7.5436f, 5.3388f, 7.3482f, 5.1437f)
                curveTo(7.1527f, 4.9486f, 6.8362f, 4.9489f, 6.641f, 5.1443f)
                lineTo(5.1436f, 6.6443f)
                curveTo(4.9487f, 6.8395f, 4.9487f, 7.1556f, 5.1436f, 7.3508f)
                lineTo(6.6411f, 8.8508f)
                curveTo(6.8362f, 9.0462f, 7.1527f, 9.0465f, 7.3482f, 8.8514f)
                curveTo(7.5436f, 8.6563f, 7.5439f, 8.3397f, 7.3488f, 8.1443f)
                lineTo(6.7031f, 7.4976f)
                horizontalLineTo(8.5027f)
                curveTo(8.7788f, 7.4976f, 9.0027f, 7.2737f, 9.0027f, 6.9976f)
                curveTo(9.0027f, 6.7214f, 8.7788f, 6.4976f, 8.5027f, 6.4976f)
                horizontalLineTo(6.7031f)
                lineTo(7.3488f, 5.8508f)
                close()
                moveTo(6.9977f, 2.0f)
                curveTo(4.2375f, 2.0f, 2.0f, 4.2375f, 2.0f, 6.9977f)
                curveTo(2.0f, 9.7578f, 4.2375f, 11.9954f, 6.9977f, 11.9954f)
                curveTo(9.7578f, 11.9954f, 11.9954f, 9.7578f, 11.9954f, 6.9977f)
                curveTo(11.9954f, 4.2375f, 9.7578f, 2.0f, 6.9977f, 2.0f)
                close()
                moveTo(3.0f, 6.9977f)
                curveTo(3.0f, 4.7898f, 4.7898f, 3.0f, 6.9977f, 3.0f)
                curveTo(9.2056f, 3.0f, 10.9954f, 4.7898f, 10.9954f, 6.9977f)
                curveTo(10.9954f, 9.2056f, 9.2056f, 10.9954f, 6.9977f, 10.9954f)
                curveTo(4.7898f, 10.9954f, 3.0f, 9.2056f, 3.0f, 6.9977f)
                close()
            }
        }
                .build()
        return _dark!!
    }

private var _dark: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/oof/small/Light.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.oof.small

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.avataricons.presence.oof.SmallGroup

val SmallGroup.Light: ImageVector
    get() {
        if (_light != null) {
            return _light!!
        }
        _light = Builder(name = "Light", defaultWidth = 14.0.dp, defaultHeight = 14.0.dp,
                viewportWidth = 14.0f, viewportHeight = 14.0f).apply {
            path(fill = SolidColor(Color(0xFFffffff)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(7.0f, 1.0f)
                lineTo(7.0f, 1.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 13.0f, 7.0f)
                lineTo(13.0f, 7.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 7.0f, 13.0f)
                lineTo(7.0f, 13.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 1.0f, 7.0f)
                lineTo(1.0f, 7.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 7.0f, 1.0f)
                close()
            }
            path(fill = SolidColor(Color(0xFFffffff)), stroke = SolidColor(Color(0xFFffffff)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(7.0f, 7.0f)
                moveToRelative(-6.0f, 0.0f)
                arcToRelative(6.0f, 6.0f, 0.0f, true, true, 12.0f, 0.0f)
                arcToRelative(6.0f, 6.0f, 0.0f, true, true, -12.0f, 0.0f)
            }
            path(fill = SolidColor(Color(0xFFB4009E)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(7.3488f, 5.8508f)
                curveTo(7.5439f, 5.6554f, 7.5436f, 5.3388f, 7.3482f, 5.1437f)
                curveTo(7.1527f, 4.9486f, 6.8362f, 4.9489f, 6.641f, 5.1443f)
                lineTo(5.1436f, 6.6443f)
                curveTo(4.9487f, 6.8395f, 4.9487f, 7.1556f, 5.1436f, 7.3508f)
                lineTo(6.6411f, 8.8508f)
                curveTo(6.8362f, 9.0462f, 7.1527f, 9.0465f, 7.3482f, 8.8514f)
                curveTo(7.5436f, 8.6563f, 7.5439f, 8.3397f, 7.3488f, 8.1443f)
                lineTo(6.7031f, 7.4976f)
                horizontalLineTo(8.5027f)
                curveTo(8.7788f, 7.4976f, 9.0027f, 7.2737f, 9.0027f, 6.9976f)
                curveTo(9.0027f, 6.7214f, 8.7788f, 6.4976f, 8.5027f, 6.4976f)
                horizontalLineTo(6.7031f)
                lineTo(7.3488f, 5.8508f)
                close()
                moveTo(6.9977f, 2.0f)
                curveTo(4.2375f, 2.0f, 2.0f, 4.2375f, 2.0f, 6.9977f)
                curveTo(2.0f, 9.7578f, 4.2375f, 11.9954f, 6.9977f, 11.9954f)
                curveTo(9.7578f, 11.9954f, 11.9954f, 9.7578f, 11.9954f, 6.9977f)
                curveTo(11.9954f, 4.2375f, 9.7578f, 2.0f, 6.9977f, 2.0f)
                close()
                moveTo(3.0f, 6.9977f)
                curveTo(3.0f, 4.7898f, 4.7898f, 3.0f, 6.9977f, 3.0f)
                curveTo(9.2056f, 3.0f, 10.9954f, 4.7898f, 10.9954f, 6.9977f)
                curveTo(10.9954f, 9.2056f, 9.2056f, 10.9954f, 6.9977f, 10.9954f)
                curveTo(4.7898f, 10.9954f, 3.0f, 9.2056f, 3.0f, 6.9977f)
                close()
            }
            path(fill = SolidColor(Color(0x00000000)), stroke = SolidColor(Color(0xFFffffff)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(7.0f, 1.0f)
                lineTo(7.0f, 1.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 13.0f, 7.0f)
                lineTo(13.0f, 7.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 7.0f, 13.0f)
                lineTo(7.0f, 13.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 1.0f, 7.0f)
                lineTo(1.0f, 7.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 7.0f, 1.0f)
                close()
            }
        }
                .build()
        return _light!!
    }

private var _light: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/unknown/__Large.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.unknown

import androidx.compose.ui.graphics.vector.ImageVector
import com.microsoft.fluentui.icons.avataricons.presence.UnknownGroup
import com.microsoft.fluentui.icons.avataricons.presence.unknown.large.Dark
import com.microsoft.fluentui.icons.avataricons.presence.unknown.large.Light
import kotlin.collections.List as ____KtList

object LargeGroup

val UnknownGroup.Large: LargeGroup
    get() = LargeGroup

private var __AllIcons: ____KtList<ImageVector>? = null

val LargeGroup.AllIcons: ____KtList<ImageVector>
    get() {
        if (__AllIcons != null) {
            return __AllIcons!!
        }
        __AllIcons = listOf(Dark, Light)
        return __AllIcons!!
    }
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/unknown/__Medium.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.unknown

import androidx.compose.ui.graphics.vector.ImageVector
import com.microsoft.fluentui.icons.avataricons.presence.UnknownGroup
import com.microsoft.fluentui.icons.avataricons.presence.unknown.medium.Dark
import com.microsoft.fluentui.icons.avataricons.presence.unknown.medium.Light
import kotlin.collections.List as ____KtList

object MediumGroup

val UnknownGroup.Medium: MediumGroup
    get() = MediumGroup

private var __AllIcons: ____KtList<ImageVector>? = null

val MediumGroup.AllIcons: ____KtList<ImageVector>
    get() {
        if (__AllIcons != null) {
            return __AllIcons!!
        }
        __AllIcons = listOf(Dark, Light)
        return __AllIcons!!
    }
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/unknown/__Small.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.unknown

import androidx.compose.ui.graphics.vector.ImageVector
import com.microsoft.fluentui.icons.avataricons.presence.UnknownGroup
import com.microsoft.fluentui.icons.avataricons.presence.unknown.small.Dark
import com.microsoft.fluentui.icons.avataricons.presence.unknown.small.Light
import kotlin.collections.List as ____KtList

object SmallGroup

val UnknownGroup.Small: SmallGroup
    get() = SmallGroup

private var __AllIcons: ____KtList<ImageVector>? = null

val SmallGroup.AllIcons: ____KtList<ImageVector>
    get() {
        if (__AllIcons != null) {
            return __AllIcons!!
        }
        __AllIcons = listOf(Dark, Light)
        return __AllIcons!!
    }
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/unknown/large/Dark.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.unknown.large

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.avataricons.presence.unknown.LargeGroup

val LargeGroup.Dark: ImageVector
    get() {
        if (_dark != null) {
            return _dark!!
        }
        _dark = Builder(name = "Dark", defaultWidth = 20.0.dp, defaultHeight = 20.0.dp,
                viewportWidth = 20.0f, viewportHeight = 20.0f).apply {
            path(fill = SolidColor(Color(0xFF000000)), stroke = SolidColor(Color(0xFF000000)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(10.0f, 10.0f)
                moveToRelative(-9.0f, 0.0f)
                arcToRelative(9.0f, 9.0f, 0.0f, true, true, 18.0f, 0.0f)
                arcToRelative(9.0f, 9.0f, 0.0f, true, true, -18.0f, 0.0f)
            }
            path(fill = SolidColor(Color(0xFF979593)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(10.0f, 4.0f)
                curveTo(6.6863f, 4.0f, 4.0f, 6.6863f, 4.0f, 10.0f)
                curveTo(4.0f, 13.3137f, 6.6863f, 16.0f, 10.0f, 16.0f)
                curveTo(13.3137f, 16.0f, 16.0f, 13.3137f, 16.0f, 10.0f)
                curveTo(16.0f, 6.6863f, 13.3137f, 4.0f, 10.0f, 4.0f)
                close()
                moveTo(2.0f, 10.0f)
                curveTo(2.0f, 5.5817f, 5.5817f, 2.0f, 10.0f, 2.0f)
                curveTo(14.4183f, 2.0f, 18.0f, 5.5817f, 18.0f, 10.0f)
                curveTo(18.0f, 14.4183f, 14.4183f, 18.0f, 10.0f, 18.0f)
                curveTo(5.5817f, 18.0f, 2.0f, 14.4183f, 2.0f, 10.0f)
                close()
            }
        }
                .build()
        return _dark!!
    }

private var _dark: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/unknown/large/Light.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.unknown.large

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.avataricons.presence.unknown.LargeGroup

val LargeGroup.Light: ImageVector
    get() {
        if (_light != null) {
            return _light!!
        }
        _light = Builder(name = "Light", defaultWidth = 20.0.dp, defaultHeight = 20.0.dp,
                viewportWidth = 20.0f, viewportHeight = 20.0f).apply {
            path(fill = SolidColor(Color(0xFFffffff)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(10.0f, 1.0f)
                lineTo(10.0f, 1.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 19.0f, 10.0f)
                lineTo(19.0f, 10.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 10.0f, 19.0f)
                lineTo(10.0f, 19.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 1.0f, 10.0f)
                lineTo(1.0f, 10.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 10.0f, 1.0f)
                close()
            }
            path(fill = SolidColor(Color(0xFFffffff)), stroke = SolidColor(Color(0xFFffffff)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(10.0f, 10.0f)
                moveToRelative(-9.0f, 0.0f)
                arcToRelative(9.0f, 9.0f, 0.0f, true, true, 18.0f, 0.0f)
                arcToRelative(9.0f, 9.0f, 0.0f, true, true, -18.0f, 0.0f)
            }
            path(fill = SolidColor(Color(0xFF8A8886)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(10.0f, 4.0f)
                curveTo(6.6863f, 4.0f, 4.0f, 6.6863f, 4.0f, 10.0f)
                curveTo(4.0f, 13.3137f, 6.6863f, 16.0f, 10.0f, 16.0f)
                curveTo(13.3137f, 16.0f, 16.0f, 13.3137f, 16.0f, 10.0f)
                curveTo(16.0f, 6.6863f, 13.3137f, 4.0f, 10.0f, 4.0f)
                close()
                moveTo(2.0f, 10.0f)
                curveTo(2.0f, 5.5817f, 5.5817f, 2.0f, 10.0f, 2.0f)
                curveTo(14.4183f, 2.0f, 18.0f, 5.5817f, 18.0f, 10.0f)
                curveTo(18.0f, 14.4183f, 14.4183f, 18.0f, 10.0f, 18.0f)
                curveTo(5.5817f, 18.0f, 2.0f, 14.4183f, 2.0f, 10.0f)
                close()
            }
            path(fill = SolidColor(Color(0x00000000)), stroke = SolidColor(Color(0xFFffffff)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(10.0f, 1.0f)
                lineTo(10.0f, 1.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 19.0f, 10.0f)
                lineTo(19.0f, 10.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 10.0f, 19.0f)
                lineTo(10.0f, 19.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 1.0f, 10.0f)
                lineTo(1.0f, 10.0f)
                arcTo(9.0f, 9.0f, 0.0f, false, true, 10.0f, 1.0f)
                close()
            }
        }
                .build()
        return _light!!
    }

private var _light: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/unknown/medium/Dark.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.unknown.medium

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.avataricons.presence.unknown.MediumGroup

val MediumGroup.Dark: ImageVector
    get() {
        if (_dark != null) {
            return _dark!!
        }
        _dark = Builder(name = "Dark", defaultWidth = 16.0.dp, defaultHeight = 16.0.dp,
                viewportWidth = 16.0f, viewportHeight = 16.0f).apply {
            path(fill = SolidColor(Color(0xFF000000)), stroke = SolidColor(Color(0xFF000000)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(8.0f, 8.0f)
                moveToRelative(-7.0f, 0.0f)
                arcToRelative(7.0f, 7.0f, 0.0f, true, true, 14.0f, 0.0f)
                arcToRelative(7.0f, 7.0f, 0.0f, true, true, -14.0f, 0.0f)
            }
            path(fill = SolidColor(Color(0xFF979593)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(8.0f, 3.5f)
                curveTo(5.5147f, 3.5f, 3.5f, 5.5147f, 3.5f, 8.0f)
                curveTo(3.5f, 10.4853f, 5.5147f, 12.5f, 8.0f, 12.5f)
                curveTo(10.4853f, 12.5f, 12.5f, 10.4853f, 12.5f, 8.0f)
                curveTo(12.5f, 5.5147f, 10.4853f, 3.5f, 8.0f, 3.5f)
                close()
                moveTo(2.0f, 8.0f)
                curveTo(2.0f, 4.6863f, 4.6863f, 2.0f, 8.0f, 2.0f)
                curveTo(11.3137f, 2.0f, 14.0f, 4.6863f, 14.0f, 8.0f)
                curveTo(14.0f, 11.3137f, 11.3137f, 14.0f, 8.0f, 14.0f)
                curveTo(4.6863f, 14.0f, 2.0f, 11.3137f, 2.0f, 8.0f)
                close()
            }
        }
                .build()
        return _dark!!
    }

private var _dark: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/unknown/medium/Light.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.unknown.medium

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.avataricons.presence.unknown.MediumGroup

val MediumGroup.Light: ImageVector
    get() {
        if (_light != null) {
            return _light!!
        }
        _light = Builder(name = "Light", defaultWidth = 16.0.dp, defaultHeight = 16.0.dp,
                viewportWidth = 16.0f, viewportHeight = 16.0f).apply {
            path(fill = SolidColor(Color(0xFFffffff)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(8.0f, 1.0f)
                lineTo(8.0f, 1.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 15.0f, 8.0f)
                lineTo(15.0f, 8.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 8.0f, 15.0f)
                lineTo(8.0f, 15.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 1.0f, 8.0f)
                lineTo(1.0f, 8.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 8.0f, 1.0f)
                close()
            }
            path(fill = SolidColor(Color(0xFFffffff)), stroke = SolidColor(Color(0xFFffffff)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(8.0f, 8.0f)
                moveToRelative(-7.0f, 0.0f)
                arcToRelative(7.0f, 7.0f, 0.0f, true, true, 14.0f, 0.0f)
                arcToRelative(7.0f, 7.0f, 0.0f, true, true, -14.0f, 0.0f)
            }
            path(fill = SolidColor(Color(0xFF8A8886)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(8.0f, 3.5f)
                curveTo(5.5147f, 3.5f, 3.5f, 5.5147f, 3.5f, 8.0f)
                curveTo(3.5f, 10.4853f, 5.5147f, 12.5f, 8.0f, 12.5f)
                curveTo(10.4853f, 12.5f, 12.5f, 10.4853f, 12.5f, 8.0f)
                curveTo(12.5f, 5.5147f, 10.4853f, 3.5f, 8.0f, 3.5f)
                close()
                moveTo(2.0f, 8.0f)
                curveTo(2.0f, 4.6863f, 4.6863f, 2.0f, 8.0f, 2.0f)
                curveTo(11.3137f, 2.0f, 14.0f, 4.6863f, 14.0f, 8.0f)
                curveTo(14.0f, 11.3137f, 11.3137f, 14.0f, 8.0f, 14.0f)
                curveTo(4.6863f, 14.0f, 2.0f, 11.3137f, 2.0f, 8.0f)
                close()
            }
            path(fill = SolidColor(Color(0x00000000)), stroke = SolidColor(Color(0xFFffffff)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(8.0f, 1.0f)
                lineTo(8.0f, 1.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 15.0f, 8.0f)
                lineTo(15.0f, 8.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 8.0f, 15.0f)
                lineTo(8.0f, 15.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 1.0f, 8.0f)
                lineTo(1.0f, 8.0f)
                arcTo(7.0f, 7.0f, 0.0f, false, true, 8.0f, 1.0f)
                close()
            }
        }
                .build()
        return _light!!
    }

private var _light: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/unknown/small/Dark.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.unknown.small

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.avataricons.presence.unknown.SmallGroup

val SmallGroup.Dark: ImageVector
    get() {
        if (_dark != null) {
            return _dark!!
        }
        _dark = Builder(name = "Dark", defaultWidth = 14.0.dp, defaultHeight = 14.0.dp,
                viewportWidth = 14.0f, viewportHeight = 14.0f).apply {
            path(fill = SolidColor(Color(0xFF000000)), stroke = SolidColor(Color(0xFF000000)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(7.0f, 7.0f)
                moveToRelative(-6.0f, 0.0f)
                arcToRelative(6.0f, 6.0f, 0.0f, true, true, 12.0f, 0.0f)
                arcToRelative(6.0f, 6.0f, 0.0f, true, true, -12.0f, 0.0f)
            }
            path(fill = SolidColor(Color(0xFF979593)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(6.9987f, 3.0f)
                curveTo(4.7903f, 3.0f, 3.0f, 4.7903f, 3.0f, 6.9987f)
                curveTo(3.0f, 9.2071f, 4.7903f, 10.9974f, 6.9987f, 10.9974f)
                curveTo(9.2071f, 10.9974f, 10.9974f, 9.2071f, 10.9974f, 6.9987f)
                curveTo(10.9974f, 4.7903f, 9.2071f, 3.0f, 6.9987f, 3.0f)
                close()
                moveTo(2.0f, 6.9987f)
                curveTo(2.0f, 4.238f, 4.238f, 2.0f, 6.9987f, 2.0f)
                curveTo(9.7594f, 2.0f, 11.9974f, 4.238f, 11.9974f, 6.9987f)
                curveTo(11.9974f, 9.7594f, 9.7594f, 11.9974f, 6.9987f, 11.9974f)
                curveTo(4.238f, 11.9974f, 2.0f, 9.7594f, 2.0f, 6.9987f)
                close()
            }
        }
                .build()
        return _dark!!
    }

private var _dark: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/avataricons/presence/unknown/small/Light.kt
```kotlin
package com.microsoft.fluentui.icons.avataricons.presence.unknown.small

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.avataricons.presence.unknown.SmallGroup

val SmallGroup.Light: ImageVector
    get() {
        if (_light != null) {
            return _light!!
        }
        _light = Builder(name = "Light", defaultWidth = 14.0.dp, defaultHeight = 14.0.dp,
                viewportWidth = 14.0f, viewportHeight = 14.0f).apply {
            path(fill = SolidColor(Color(0xFFffffff)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(7.0f, 1.0f)
                lineTo(7.0f, 1.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 13.0f, 7.0f)
                lineTo(13.0f, 7.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 7.0f, 13.0f)
                lineTo(7.0f, 13.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 1.0f, 7.0f)
                lineTo(1.0f, 7.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 7.0f, 1.0f)
                close()
            }
            path(fill = SolidColor(Color(0xFFffffff)), stroke = SolidColor(Color(0xFFffffff)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(7.0f, 7.0f)
                moveToRelative(-6.0f, 0.0f)
                arcToRelative(6.0f, 6.0f, 0.0f, true, true, 12.0f, 0.0f)
                arcToRelative(6.0f, 6.0f, 0.0f, true, true, -12.0f, 0.0f)
            }
            path(fill = SolidColor(Color(0xFF8A8886)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(6.9987f, 3.0f)
                curveTo(4.7903f, 3.0f, 3.0f, 4.7903f, 3.0f, 6.9987f)
                curveTo(3.0f, 9.2071f, 4.7903f, 10.9974f, 6.9987f, 10.9974f)
                curveTo(9.2071f, 10.9974f, 10.9974f, 9.2071f, 10.9974f, 6.9987f)
                curveTo(10.9974f, 4.7903f, 9.2071f, 3.0f, 6.9987f, 3.0f)
                close()
                moveTo(2.0f, 6.9987f)
                curveTo(2.0f, 4.238f, 4.238f, 2.0f, 6.9987f, 2.0f)
                curveTo(9.7594f, 2.0f, 11.9974f, 4.238f, 11.9974f, 6.9987f)
                curveTo(11.9974f, 9.7594f, 9.7594f, 11.9974f, 6.9987f, 11.9974f)
                curveTo(4.238f, 11.9974f, 2.0f, 9.7594f, 2.0f, 6.9987f)
                close()
            }
            path(fill = SolidColor(Color(0x00000000)), stroke = SolidColor(Color(0xFFffffff)),
                    strokeLineWidth = 2.0f, strokeLineCap = Butt, strokeLineJoin = Miter,
                    strokeLineMiter = 4.0f, pathFillType = NonZero) {
                moveTo(7.0f, 1.0f)
                lineTo(7.0f, 1.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 13.0f, 7.0f)
                lineTo(13.0f, 7.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 7.0f, 13.0f)
                lineTo(7.0f, 13.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 1.0f, 7.0f)
                lineTo(1.0f, 7.0f)
                arcTo(6.0f, 6.0f, 0.0f, false, true, 7.0f, 1.0f)
                close()
            }
        }
                .build()
        return _light!!
    }

private var _light: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/ccbicons/Keyboarddismiss.kt
```kotlin
package com.microsoft.fluentui.icons.ccbicons

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.CCBIcons

public val CCBIcons.Keyboarddismiss: ImageVector
    get() {
        if (_keyboarddismiss != null) {
            return _keyboarddismiss!!
        }
        _keyboarddismiss = Builder(name = "Keyboarddismiss", defaultWidth = 24.0.dp, defaultHeight =
                24.0.dp, viewportWidth = 24.0f, viewportHeight = 24.0f).apply {
            path(fill = SolidColor(Color(0xFFffffff)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(17.7523f, 12.0f)
                horizontalLineTo(7.2523f)
                lineTo(7.1505f, 12.0068f)
                curveTo(6.7845f, 12.0565f, 6.5023f, 12.3703f, 6.5023f, 12.75f)
                curveTo(6.5023f, 13.1642f, 6.8381f, 13.5f, 7.2523f, 13.5f)
                horizontalLineTo(17.7523f)
                lineTo(17.8541f, 13.4932f)
                curveTo(18.2202f, 13.4435f, 18.5023f, 13.1297f, 18.5023f, 12.75f)
                curveTo(18.5023f, 12.3358f, 18.1665f, 12.0f, 17.7523f, 12.0f)
                close()
                moveTo(18.0023f, 9.5f)
                curveTo(18.0023f, 8.9477f, 17.5546f, 8.5f, 17.0023f, 8.5f)
                curveTo(16.45f, 8.5f, 16.0023f, 8.9477f, 16.0023f, 9.5f)
                curveTo(16.0023f, 10.0523f, 16.45f, 10.5f, 17.0023f, 10.5f)
                curveTo(17.5546f, 10.5f, 18.0023f, 10.0523f, 18.0023f, 9.5f)
                close()
                moveTo(12.0072f, 9.5f)
                curveTo(12.0072f, 8.9477f, 11.5595f, 8.5f, 11.0072f, 8.5f)
                curveTo(10.4549f, 8.5f, 10.0072f, 8.9477f, 10.0072f, 9.5f)
                curveTo(10.0072f, 10.0523f, 10.4549f, 10.5f, 11.0072f, 10.5f)
                curveTo(11.5595f, 10.5f, 12.0072f, 10.0523f, 12.0072f, 9.5f)
                close()
                moveTo(9.0072f, 9.5f)
                curveTo(9.0072f, 8.9477f, 8.5595f, 8.5f, 8.0072f, 8.5f)
                curveTo(7.4549f, 8.5f, 7.0072f, 8.9477f, 7.0072f, 9.5f)
                curveTo(7.0072f, 10.0523f, 7.4549f, 10.5f, 8.0072f, 10.5f)
                curveTo(8.5595f, 10.5f, 9.0072f, 10.0523f, 9.0072f, 9.5f)
                close()
                moveTo(15.0072f, 9.5f)
                curveTo(15.0072f, 8.9477f, 14.5595f, 8.5f, 14.0072f, 8.5f)
                curveTo(13.4549f, 8.5f, 13.0072f, 8.9477f, 13.0072f, 9.5f)
                curveTo(13.0072f, 10.0523f, 13.4549f, 10.5f, 14.0072f, 10.5f)
                curveTo(14.5595f, 10.5f, 15.0072f, 10.0523f, 15.0072f, 9.5f)
                close()
                moveTo(7.5023f, 6.5f)
                curveTo(7.5023f, 5.9477f, 7.0546f, 5.5f, 6.5023f, 5.5f)
                curveTo(5.95f, 5.5f, 5.5023f, 5.9477f, 5.5023f, 6.5f)
                curveTo(5.5023f, 7.0523f, 5.95f, 7.5f, 6.5023f, 7.5f)
                curveTo(7.0546f, 7.5f, 7.5023f, 7.0523f, 7.5023f, 6.5f)
                close()
                moveTo(10.4974f, 6.5f)
                curveTo(10.4974f, 5.9477f, 10.0497f, 5.5f, 9.4974f, 5.5f)
                curveTo(8.9452f, 5.5f, 8.4974f, 5.9477f, 8.4974f, 6.5f)
                curveTo(8.4974f, 7.0523f, 8.9452f, 7.5f, 9.4974f, 7.5f)
                curveTo(10.0497f, 7.5f, 10.4974f, 7.0523f, 10.4974f, 6.5f)
                close()
                moveTo(13.4974f, 6.5f)
                curveTo(13.4974f, 5.9477f, 13.0497f, 5.5f, 12.4974f, 5.5f)
                curveTo(11.9452f, 5.5f, 11.4974f, 5.9477f, 11.4974f, 6.5f)
                curveTo(11.4974f, 7.0523f, 11.9452f, 7.5f, 12.4974f, 7.5f)
                curveTo(13.0497f, 7.5f, 13.4974f, 7.0523f, 13.4974f, 6.5f)
                close()
                moveTo(16.4974f, 6.5f)
                curveTo(16.4974f, 5.9477f, 16.0497f, 5.5f, 15.4974f, 5.5f)
                curveTo(14.9452f, 5.5f, 14.4974f, 5.9477f, 14.4974f, 6.5f)
                curveTo(14.4974f, 7.0523f, 14.9452f, 7.5f, 15.4974f, 7.5f)
                curveTo(16.0497f, 7.5f, 16.4974f, 7.0523f, 16.4974f, 6.5f)
                close()
                moveTo(19.4974f, 6.5f)
                curveTo(19.4974f, 5.9477f, 19.0497f, 5.5f, 18.4974f, 5.5f)
                curveTo(17.9452f, 5.5f, 17.4974f, 5.9477f, 17.4974f, 6.5f)
                curveTo(17.4974f, 7.0523f, 17.9452f, 7.5f, 18.4974f, 7.5f)
                curveTo(19.0497f, 7.5f, 19.4974f, 7.0523f, 19.4974f, 6.5f)
                close()
                moveTo(22.4977f, 4.75f)
                curveTo(22.4977f, 3.5074f, 21.4903f, 2.5f, 20.2477f, 2.5f)
                horizontalLineTo(4.7523f)
                curveTo(3.5097f, 2.5f, 2.5023f, 3.5074f, 2.5023f, 4.75f)
                verticalLineTo(14.2546f)
                curveTo(2.5023f, 15.4972f, 3.5097f, 16.5046f, 4.7523f, 16.5046f)
                horizontalLineTo(11.75f)
                verticalLineTo(18.0f)
                horizontalLineTo(11.7525f)
                lineTo(11.7526f, 19.4392f)
                lineTo(10.9113f, 18.5984f)
                lineTo(10.8272f, 18.5257f)
                curveTo(10.5336f, 18.3079f, 10.1169f, 18.3321f, 9.8507f, 18.5984f)
                curveTo(9.5578f, 18.8912f, 9.5578f, 19.3661f, 9.8507f, 19.659f)
                lineTo(11.972f, 21.7803f)
                lineTo(12.0561f, 21.8529f)
                curveTo(12.1736f, 21.9401f, 12.3107f, 21.9885f, 12.45f, 21.9982f)
                horizontalLineTo(12.5546f)
                lineTo(12.6584f, 21.9837f)
                curveTo(12.7956f, 21.9546f, 12.9261f, 21.8868f, 13.0326f, 21.7803f)
                lineTo(15.154f, 19.659f)
                lineTo(15.2266f, 19.5749f)
                curveTo(15.4444f, 19.2813f, 15.4202f, 18.8646f, 15.154f, 18.5984f)
                lineTo(15.0699f, 18.5257f)
                curveTo(14.7762f, 18.3079f, 14.3596f, 18.3321f, 14.0933f, 18.5984f)
                lineTo(13.2526f, 19.4392f)
                lineTo(13.2523f, 16.5046f)
                horizontalLineTo(20.2477f)
                curveTo(21.4903f, 16.5046f, 22.4977f, 15.4972f, 22.4977f, 14.2546f)
                verticalLineTo(4.75f)
                close()
                moveTo(13.25f, 15.0046f)
                verticalLineTo(15.0f)
                horizontalLineTo(11.75f)
                verticalLineTo(15.0046f)
                horizontalLineTo(4.7523f)
                curveTo(4.3381f, 15.0046f, 4.0023f, 14.6688f, 4.0023f, 14.2546f)
                verticalLineTo(4.75f)
                curveTo(4.0023f, 4.3358f, 4.3381f, 4.0f, 4.7523f, 4.0f)
                horizontalLineTo(20.2477f)
                curveTo(20.6619f, 4.0f, 20.9977f, 4.3358f, 20.9977f, 4.75f)
                verticalLineTo(14.2546f)
                curveTo(20.9977f, 14.6688f, 20.6619f, 15.0046f, 20.2477f, 15.0046f)
                horizontalLineTo(13.25f)
                close()
            }
        }
        .build()
        return _keyboarddismiss!!
    }

private var _keyboarddismiss: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/listitemicons/Chevron.kt
```kotlin
package com.microsoft.fluentui.icons.listitemicons

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.ListItemIcons

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

## File: src/main/java/com/microsoft/fluentui/icons/progresstexticons/DismissCircle.kt
```kotlin
package com.microsoft.fluentui.icons.progresstexticons

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.ProgressTextIcons

public val ProgressTextIcons.DismissCircle: ImageVector
    get() {
        if (_dismissCircle != null) {
            return _dismissCircle!!
        }
        _dismissCircle = Builder(name = "DismissCircle", defaultWidth = 24.0.dp, defaultHeight =
                24.0.dp, viewportWidth = 24.0f, viewportHeight = 24.0f).apply {
            path(fill = SolidColor(Color(0xFF616161)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = NonZero) {
                moveTo(12.0f, 2.0f)
                curveTo(17.5228f, 2.0f, 22.0f, 6.4771f, 22.0f, 12.0f)
                curveTo(22.0f, 17.5228f, 17.5228f, 22.0f, 12.0f, 22.0f)
                curveTo(6.4771f, 22.0f, 2.0f, 17.5228f, 2.0f, 12.0f)
                curveTo(2.0f, 6.4771f, 6.4771f, 2.0f, 12.0f, 2.0f)
                close()
                moveTo(12.0f, 3.5f)
                curveTo(7.3056f, 3.5f, 3.5f, 7.3056f, 3.5f, 12.0f)
                curveTo(3.5f, 16.6944f, 7.3056f, 20.5f, 12.0f, 20.5f)
                curveTo(16.6944f, 20.5f, 20.5f, 16.6944f, 20.5f, 12.0f)
                curveTo(20.5f, 7.3056f, 16.6944f, 3.5f, 12.0f, 3.5f)
                close()
                moveTo(15.4462f, 8.397f)
                lineTo(15.5303f, 8.4697f)
                curveTo(15.7966f, 8.7359f, 15.8208f, 9.1526f, 15.6029f, 9.4462f)
                lineTo(15.5303f, 9.5303f)
                lineTo(13.061f, 12.0f)
                lineTo(15.5303f, 14.4697f)
                curveTo(15.7966f, 14.7359f, 15.8208f, 15.1526f, 15.6029f, 15.4462f)
                lineTo(15.5303f, 15.5303f)
                curveTo(15.2641f, 15.7966f, 14.8474f, 15.8208f, 14.5538f, 15.6029f)
                lineTo(14.4697f, 15.5303f)
                lineTo(12.0f, 13.061f)
                lineTo(9.5303f, 15.5303f)
                curveTo(9.2641f, 15.7966f, 8.8474f, 15.8208f, 8.5538f, 15.6029f)
                lineTo(8.4697f, 15.5303f)
                curveTo(8.2034f, 15.2641f, 8.1792f, 14.8474f, 8.397f, 14.5538f)
                lineTo(8.4697f, 14.4697f)
                lineTo(10.939f, 12.0f)
                lineTo(8.4697f, 9.5303f)
                curveTo(8.2034f, 9.2641f, 8.1792f, 8.8474f, 8.397f, 8.5538f)
                lineTo(8.4697f, 8.4697f)
                curveTo(8.7359f, 8.2034f, 9.1526f, 8.1792f, 9.4462f, 8.397f)
                lineTo(9.5303f, 8.4697f)
                lineTo(12.0f, 10.939f)
                lineTo(14.4697f, 8.4697f)
                curveTo(14.7359f, 8.2034f, 15.1526f, 8.1792f, 15.4462f, 8.397f)
                close()
            }
        }
        .build()
        return _dismissCircle!!
    }

private var _dismissCircle: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/searchbaricons/Arrowback.kt
```kotlin
package com.microsoft.fluentui.icons.searchbaricons

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.SearchBarIcons

val SearchBarIcons.Arrowback: ImageVector
    get() {
        if (_arrowback != null) {
            return _arrowback!!
        }
        _arrowback = Builder(
            name = "Arrowback", defaultWidth = 20.0.dp, defaultHeight = 20.0.dp,
            viewportWidth = 20.0f, viewportHeight = 20.0f
        ).apply {
            path(
                fill = SolidColor(Color(0xFF242424)), stroke = null, strokeLineWidth = 0.0f,
                strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                pathFillType = NonZero
            ) {
                moveTo(9.159f, 16.3666f)
                curveTo(9.3629f, 16.5528f, 9.6792f, 16.5384f, 9.8654f, 16.3345f)
                curveTo(10.0515f, 16.1305f, 10.0371f, 15.8143f, 9.8332f, 15.6281f)
                lineTo(3.6653f, 9.9974f)
                horizontalLineTo(17.4961f)
                curveTo(17.7722f, 9.9974f, 17.9961f, 9.7735f, 17.9961f, 9.4974f)
                curveTo(17.9961f, 9.2212f, 17.7722f, 8.9974f, 17.4961f, 8.9974f)
                horizontalLineTo(3.6682f)
                lineTo(9.8332f, 3.3693f)
                curveTo(10.0371f, 3.1831f, 10.0515f, 2.8668f, 9.8654f, 2.6629f)
                curveTo(9.6792f, 2.459f, 9.3629f, 2.4446f, 9.159f, 2.6307f)
                lineTo(2.2426f, 8.9448f)
                curveTo(2.1027f, 9.0725f, 2.0229f, 9.2401f, 2.0031f, 9.4132f)
                curveTo(1.9985f, 9.4406f, 1.9961f, 9.4687f, 1.9961f, 9.4974f)
                curveTo(1.9961f, 9.5242f, 1.9982f, 9.5506f, 2.0023f, 9.5763f)
                curveTo(2.0205f, 9.7522f, 2.1006f, 9.9229f, 2.2426f, 10.0526f)
                lineTo(9.159f, 16.3666f)
                close()
            }
        }
            .build()
        return _arrowback!!
    }

private var _arrowback: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/searchbaricons/Dismisscircle.kt
```kotlin
package com.microsoft.fluentui.icons.searchbaricons

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.SearchBarIcons

val SearchBarIcons.Dismisscircle: ImageVector
    get() {
        if (_dismisscircle != null) {
            return _dismisscircle!!
        }
        _dismisscircle = Builder(
            name = "Dismisscircle", defaultWidth = 20.0.dp, defaultHeight =
            20.0.dp, viewportWidth = 20.0f, viewportHeight = 20.0f
        ).apply {
            path(
                fill = SolidColor(Color(0xFF616161)), stroke = null, strokeLineWidth = 0.0f,
                strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                pathFillType = NonZero
            ) {
                moveTo(10.0f, 2.0f)
                curveTo(14.4183f, 2.0f, 18.0f, 5.5817f, 18.0f, 10.0f)
                curveTo(18.0f, 14.4183f, 14.4183f, 18.0f, 10.0f, 18.0f)
                curveTo(5.5817f, 18.0f, 2.0f, 14.4183f, 2.0f, 10.0f)
                curveTo(2.0f, 5.5817f, 5.5817f, 2.0f, 10.0f, 2.0f)
                close()
                moveTo(7.8094f, 7.1137f)
                curveTo(7.6146f, 6.9787f, 7.3451f, 6.998f, 7.1716f, 7.1716f)
                lineTo(7.1137f, 7.2408f)
                curveTo(6.9787f, 7.4357f, 6.998f, 7.7051f, 7.1716f, 7.8787f)
                lineTo(9.2929f, 10.0f)
                lineTo(7.1716f, 12.1213f)
                lineTo(7.1137f, 12.1906f)
                curveTo(6.9787f, 12.3854f, 6.998f, 12.6549f, 7.1716f, 12.8284f)
                lineTo(7.2408f, 12.8863f)
                curveTo(7.4357f, 13.0213f, 7.7051f, 13.002f, 7.8787f, 12.8284f)
                lineTo(10.0f, 10.7071f)
                lineTo(12.1213f, 12.8284f)
                lineTo(12.1906f, 12.8863f)
                curveTo(12.3854f, 13.0213f, 12.6549f, 13.002f, 12.8284f, 12.8284f)
                lineTo(12.8863f, 12.7592f)
                curveTo(13.0213f, 12.5643f, 13.002f, 12.2949f, 12.8284f, 12.1213f)
                lineTo(10.7071f, 10.0f)
                lineTo(12.8284f, 7.8787f)
                lineTo(12.8863f, 7.8094f)
                curveTo(13.0213f, 7.6146f, 13.002f, 7.3451f, 12.8284f, 7.1716f)
                lineTo(12.7592f, 7.1137f)
                curveTo(12.5643f, 6.9787f, 12.2949f, 6.998f, 12.1213f, 7.1716f)
                lineTo(10.0f, 9.2929f)
                lineTo(7.8787f, 7.1716f)
                lineTo(7.8094f, 7.1137f)
                close()
            }
        }
            .build()
        return _dismisscircle!!
    }

private var _dismisscircle: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/searchbaricons/Microphone.kt
```kotlin
package com.microsoft.fluentui.icons.searchbaricons

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.SearchBarIcons

val SearchBarIcons.Microphone: ImageVector
    get() {
        if (_microphone != null) {
            return _microphone!!
        }
        _microphone = Builder(
            name = "Microphone", defaultWidth = 20.0.dp, defaultHeight = 20.0.dp,
            viewportWidth = 20.0f, viewportHeight = 20.0f
        ).apply {
            path(
                fill = SolidColor(Color(0xFF616161)), stroke = null, strokeLineWidth = 0.0f,
                strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                pathFillType = NonZero
            ) {
                moveTo(10.0f, 13.0f)
                curveTo(11.6569f, 13.0f, 13.0f, 11.6568f, 13.0f, 10.0f)
                verticalLineTo(5.0f)
                curveTo(13.0f, 3.3431f, 11.6569f, 2.0f, 10.0f, 2.0f)
                curveTo(8.3432f, 2.0f, 7.0f, 3.3431f, 7.0f, 5.0f)
                verticalLineTo(10.0f)
                curveTo(7.0f, 11.6568f, 8.3432f, 13.0f, 10.0f, 13.0f)
                close()
                moveTo(10.0f, 12.0f)
                curveTo(8.8954f, 12.0f, 8.0f, 11.1046f, 8.0f, 10.0f)
                verticalLineTo(5.0f)
                curveTo(8.0f, 3.8954f, 8.8954f, 3.0f, 10.0f, 3.0f)
                curveTo(11.1046f, 3.0f, 12.0f, 3.8954f, 12.0f, 5.0f)
                verticalLineTo(10.0f)
                curveTo(12.0f, 11.1046f, 11.1046f, 12.0f, 10.0f, 12.0f)
                close()
                moveTo(5.0f, 9.5f)
                curveTo(5.2761f, 9.5f, 5.5f, 9.7238f, 5.5f, 10.0f)
                curveTo(5.5f, 12.4853f, 7.5147f, 14.5f, 10.0f, 14.5f)
                curveTo(12.4853f, 14.5f, 14.5f, 12.4853f, 14.5f, 10.0f)
                curveTo(14.5f, 9.7238f, 14.7239f, 9.5f, 15.0f, 9.5f)
                curveTo(15.2761f, 9.5f, 15.5f, 9.7238f, 15.5f, 10.0f)
                curveTo(15.5f, 12.869f, 13.3033f, 15.2249f, 10.5f, 15.4776f)
                verticalLineTo(17.5f)
                curveTo(10.5f, 17.7761f, 10.2761f, 18.0f, 10.0f, 18.0f)
                curveTo(9.7239f, 18.0f, 9.5f, 17.7761f, 9.5f, 17.5f)
                verticalLineTo(15.4776f)
                curveTo(6.6968f, 15.2249f, 4.5f, 12.869f, 4.5f, 10.0f)
                curveTo(4.5f, 9.7238f, 4.7239f, 9.5f, 5.0f, 9.5f)
                close()
            }
        }
            .build()
        return _microphone!!
    }

private var _microphone: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/searchbaricons/Office.kt
```kotlin
package com.microsoft.fluentui.icons.searchbaricons

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.SearchBarIcons

val SearchBarIcons.Office: ImageVector
    get() {
        if (_office != null) {
            return _office!!
        }
        _office = Builder(
            name = "Office", defaultWidth = 20.0.dp, defaultHeight = 20.0.dp,
            viewportWidth = 20.0f, viewportHeight = 20.0f
        ).apply {
            path(
                fill = SolidColor(Color(0xFF242424)), stroke = null, strokeLineWidth = 0.0f,
                strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                pathFillType = NonZero
            ) {
                moveTo(16.66f, 2.2999f)
                lineTo(10.72f, 0.57f)
                curveTo(10.5614f, 0.5209f, 10.396f, 0.4972f, 10.23f, 0.5f)
                curveTo(9.917f, 0.4975f, 9.6093f, 0.5805f, 9.34f, 0.74f)
                lineTo(2.93f, 4.46f)
                curveTo(2.6467f, 4.6224f, 2.4114f, 4.8569f, 2.248f, 5.1397f)
                curveTo(2.0847f, 5.4225f, 1.9991f, 5.7434f, 2.0f, 6.07f)
                verticalLineTo(14.07f)
                curveTo(2.0f, 14.3087f, 2.0948f, 14.5376f, 2.2636f, 14.7064f)
                curveTo(2.4324f, 14.8752f, 2.6613f, 14.9699f, 2.9f, 14.9699f)
                curveTo(3.0547f, 14.9693f, 3.2064f, 14.9279f, 3.34f, 14.8499f)
                lineTo(5.34f, 13.75f)
                curveTo(5.5516f, 13.6313f, 5.7279f, 13.4587f, 5.8509f, 13.2496f)
                curveTo(5.9738f, 13.0405f, 6.0391f, 12.8025f, 6.04f, 12.56f)
                verticalLineTo(7.06f)
                curveTo(6.0416f, 6.7777f, 6.1296f, 6.5027f, 6.2923f, 6.272f)
                curveTo(6.455f, 6.0413f, 6.6846f, 5.8661f, 6.95f, 5.77f)
                lineTo(11.04f, 4.32f)
                verticalLineTo(15.0f)
                horizontalLineTo(6.49f)
                curveTo(6.2181f, 14.9992f, 5.9537f, 15.0886f, 5.7379f, 15.2541f)
                curveTo(5.5222f, 15.4195f, 5.3674f, 15.6518f, 5.2977f, 15.9146f)
                curveTo(5.228f, 16.1774f, 5.2474f, 16.4559f, 5.3527f, 16.7066f)
                curveTo(5.4581f, 16.9572f, 5.6435f, 17.1659f, 5.88f, 17.3f)
                lineTo(9.38f, 19.3f)
                curveTo(9.649f, 19.4503f, 9.9519f, 19.5295f, 10.26f, 19.53f)
                curveTo(10.426f, 19.5327f, 10.5914f, 19.5091f, 10.75f, 19.46f)
                lineTo(16.75f, 17.74f)
                curveTo(17.1364f, 17.6258f, 17.4756f, 17.3898f, 17.717f, 17.0673f)
                curveTo(17.9585f, 16.7448f, 18.0893f, 16.3529f, 18.09f, 15.95f)
                verticalLineTo(4.08f)
                curveTo(18.0851f, 3.6661f, 17.9416f, 3.2657f, 17.6824f, 2.943f)
                curveTo(17.4231f, 2.6203f, 17.0631f, 2.3939f, 16.66f, 2.2999f)
                close()
                moveTo(17.0f, 15.9199f)
                curveTo(16.9977f, 16.1061f, 16.9365f, 16.2867f, 16.8251f, 16.4359f)
                curveTo(16.7137f, 16.585f, 16.5579f, 16.695f, 16.38f, 16.75f)
                lineTo(12.0f, 18.0f)
                curveTo(12.0f, 17.9f, 12.0f, 17.8f, 12.0f, 17.7f)
                verticalLineTo(2.27f)
                curveTo(12.0053f, 2.1734f, 12.0053f, 2.0765f, 12.0f, 1.9799f)
                lineTo(16.4f, 3.26f)
                curveTo(16.5787f, 3.3102f, 16.7361f, 3.4176f, 16.848f, 3.5656f)
                curveTo(16.96f, 3.7137f, 17.0204f, 3.8944f, 17.02f, 4.08f)
                lineTo(17.0f, 15.9199f)
                close()
            }
        }
            .build()
        return _office!!
    }

private var _office: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/searchbaricons/Search.kt
```kotlin
package com.microsoft.fluentui.icons.searchbaricons

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.NonZero
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.SearchBarIcons

val SearchBarIcons.Search: ImageVector
    get() {
        if (_search != null) {
            return _search!!
        }
        _search = Builder(
            name = "Search", defaultWidth = 20.0.dp, defaultHeight = 20.0.dp,
            viewportWidth = 20.0f, viewportHeight = 20.0f
        ).apply {
            path(
                fill = SolidColor(Color(0xFF808080)), stroke = null, strokeLineWidth = 0.0f,
                strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                pathFillType = NonZero
            ) {
                moveTo(8.5f, 3.0f)
                curveTo(11.5376f, 3.0f, 14.0f, 5.4624f, 14.0f, 8.5f)
                curveTo(14.0f, 9.8388f, 13.5217f, 11.0659f, 12.7266f, 12.0196f)
                lineTo(16.8536f, 16.1464f)
                curveTo(17.0488f, 16.3417f, 17.0488f, 16.6583f, 16.8536f, 16.8536f)
                curveTo(16.68f, 17.0271f, 16.4106f, 17.0464f, 16.2157f, 16.9114f)
                lineTo(16.1464f, 16.8536f)
                lineTo(12.0196f, 12.7266f)
                curveTo(11.0659f, 13.5217f, 9.8388f, 14.0f, 8.5f, 14.0f)
                curveTo(5.4624f, 14.0f, 3.0f, 11.5376f, 3.0f, 8.5f)
                curveTo(3.0f, 5.4624f, 5.4624f, 3.0f, 8.5f, 3.0f)
                close()
                moveTo(8.5f, 4.0f)
                curveTo(6.0147f, 4.0f, 4.0f, 6.0147f, 4.0f, 8.5f)
                curveTo(4.0f, 10.9853f, 6.0147f, 13.0f, 8.5f, 13.0f)
                curveTo(10.9853f, 13.0f, 13.0f, 10.9853f, 13.0f, 8.5f)
                curveTo(13.0f, 6.0147f, 10.9853f, 4.0f, 8.5f, 4.0f)
                close()
            }
        }
            .build()
        return _search!!
    }

private var _search: ImageVector? = null
```

## File: src/main/java/com/microsoft/fluentui/icons/tooltipicons/Tip.kt
```kotlin
package com.microsoft.fluentui.icons.tooltipicons

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.PathFillType.Companion.EvenOdd
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap.Companion.Butt
import androidx.compose.ui.graphics.StrokeJoin.Companion.Miter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.ImageVector.Builder
import androidx.compose.ui.graphics.vector.path
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.icons.ToolTipIcons

public val ToolTipIcons.Tip: ImageVector
    get() {
        if (_tip != null) {
            return _tip!!
        }
        _tip = Builder(name = "Tip", defaultWidth = 14.0.dp, defaultHeight = 7.0.dp, viewportWidth =
                14.0f, viewportHeight = 7.0f).apply {
            path(fill = SolidColor(Color(0xFF242424)), stroke = null, strokeLineWidth = 0.0f,
                    strokeLineCap = Butt, strokeLineJoin = Miter, strokeLineMiter = 4.0f,
                    pathFillType = EvenOdd) {
                moveTo(7.7071f, 0.5899f)
                curveTo(7.3166f, 0.1994f, 6.6834f, 0.1994f, 6.2929f, 0.5899f)
                lineTo(0.0f, 6.8828f)
                horizontalLineTo(14.0f)
                lineTo(7.7071f, 0.5899f)
                close()
            }
        }
        .build()
        return _tip!!
    }

private var _tip: ImageVector? = null
```
