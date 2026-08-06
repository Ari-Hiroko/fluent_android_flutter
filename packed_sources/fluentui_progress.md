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
src/main/java/com/microsoft/fluentui/progress/ProgressBar.kt
src/main/java/com/microsoft/fluentui/tokenized/progress/CircularProgressIndicator.kt
src/main/java/com/microsoft/fluentui/tokenized/progress/LinearProgressIndicator.kt
src/main/java/com/microsoft/fluentui/tokenized/progress/ProgressText.kt
src/main/java/com/microsoft/fluentui/tokenized/shimmer/Shimmer.kt
src/main/res/values/attrs.xml
src/main/res/values/dimens.xml
src/main/res/values/styles.xml
src/main/res/values/themes.xml
```

# Files

## File: src/main/java/com/microsoft/fluentui/progress/ProgressBar.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentui.progress

import android.content.Context
import android.util.AttributeSet
import android.widget.ProgressBar
import com.microsoft.fluentui.theming.FluentUIContextThemeWrapper

/**
 * Use this [ProgressBar] to get access to the FluentUI theme attribute default values via [FluentUIContextThemeWrapper]
 * without needing to extend Theme.FluentUI in your app's theme.
 */
class ProgressBar : ProgressBar {
    @JvmOverloads
    constructor(appContext: Context, attrs: AttributeSet? = null, defStyleAttr: Int = 0, defStyleRes: Int = 0)
        : super(FluentUIContextThemeWrapper(appContext,R.style.Theme_FluentUI_Progress), attrs, defStyleAttr, defStyleRes)
}
```

## File: src/main/java/com/microsoft/fluentui/tokenized/progress/CircularProgressIndicator.kt
```kotlin
package com.microsoft.fluentui.tokenized.progress

import androidx.compose.animation.core.*
import androidx.compose.foundation.Canvas
import androidx.compose.foundation.layout.requiredSize
import androidx.compose.foundation.progressSemantics
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.geometry.Size
import androidx.compose.ui.graphics.StrokeCap
import androidx.compose.ui.graphics.drawscope.Stroke
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.ControlTokens
import com.microsoft.fluentui.theme.token.FluentStyle
import com.microsoft.fluentui.theme.token.controlTokens.CircularProgressIndicatorInfo
import com.microsoft.fluentui.theme.token.controlTokens.CircularProgressIndicatorSize
import com.microsoft.fluentui.theme.token.controlTokens.CircularProgressIndicatorTokens
import com.microsoft.fluentui.util.dpToPx

/**
 * Create a Determinate Circular Progress Indicator
 *
 * @param progress Progress of the progress indicator. 0.0 represents no progress and 1.0 represents full progress.
 * @param size Optional size of the circular progress indicator
 * @param modifier Modifier for circular progress indicator
 * @param style Style of progress indicator. Default: [FluentStyle.Neutral]
 * @param circularProgressIndicatorTokens Token values for circular progress indicator
 *
 */
@Composable
fun CircularProgressIndicator(
    progress: Float,
    size: CircularProgressIndicatorSize = CircularProgressIndicatorSize.XXSmall,
    modifier: Modifier = Modifier,
    style: FluentStyle = FluentStyle.Neutral,
    circularProgressIndicatorTokens: CircularProgressIndicatorTokens? = null
) {
    val themeID =
        FluentTheme.themeID    //Adding This only for recomposition in case of Token Updates. Unused otherwise.
    val tokens = circularProgressIndicatorTokens
        ?: FluentTheme.controlTokens.tokens[ControlTokens.ControlType.CircularProgressIndicatorControlType] as CircularProgressIndicatorTokens
    val circularProgressIndicatorInfo = CircularProgressIndicatorInfo(
        circularProgressIndicatorSize = size,
        style = style
    )
    val currentProgress = animateFloatAsState(
        targetValue = progress.coerceIn(0f..1f),
        animationSpec = tween(
            delayMillis = 0,
            durationMillis = 750,
            easing = LinearOutSlowInEasing
        )
    )
    val circularProgressIndicatorColor =
        tokens.brush(
            circularProgressIndicatorInfo
        )
    val circularProgressIndicatorSize =
        tokens.size(
            circularProgressIndicatorInfo
        )
    val circularProgressIndicatorStrokeWidth =
        tokens.strokeWidth(
            circularProgressIndicatorInfo
        )
    val indicatorSizeInPx = dpToPx(circularProgressIndicatorSize)
    Canvas(
        modifier = modifier
            .requiredSize(circularProgressIndicatorSize)
            .progressSemantics(progress)
    ) {
        drawArc(
            circularProgressIndicatorColor,
            -90f,
            currentProgress.value * 360,
            false,
            size = Size(
                indicatorSizeInPx,
                indicatorSizeInPx
            ),
            style = Stroke(dpToPx(circularProgressIndicatorStrokeWidth), cap = StrokeCap.Round)
        )
    }
}

/**
 * Create an Indeterminate Circular Progress indicator
 *
 * @param size Optional size of the circular progress indicator
 * @param modifier Modifier for circular progress indicator
 * @param style Style of progress indicator. Default: [FluentStyle.Neutral]
 * @param circularProgressIndicatorTokens Token values for circular progress indicator
 *
 */
@Composable
fun CircularProgressIndicator(
    size: CircularProgressIndicatorSize = CircularProgressIndicatorSize.XXSmall,
    modifier: Modifier = Modifier,
    style: FluentStyle = FluentStyle.Neutral,
    circularProgressIndicatorTokens: CircularProgressIndicatorTokens? = null
) {
    val themeID =
        FluentTheme.themeID    //Adding This only for recomposition in case of Token Updates. Unused otherwise.
    val tokens = circularProgressIndicatorTokens
        ?: FluentTheme.controlTokens.tokens[ControlTokens.ControlType.CircularProgressIndicatorControlType] as CircularProgressIndicatorTokens
    val circularProgressIndicatorInfo = CircularProgressIndicatorInfo(
        circularProgressIndicatorSize = size,
        style = style
    )
    val circularProgressIndicatorColor =
        tokens.brush(
            circularProgressIndicatorInfo
        )
    val circularProgressIndicatorSize =
        tokens.size(
            circularProgressIndicatorInfo
        )
    val circularProgressIndicatorStrokeWidth =
        tokens.strokeWidth(
            circularProgressIndicatorInfo
        )
    val infiniteTransition = rememberInfiniteTransition()
    val startAngle by infiniteTransition.animateFloat(
        0f,
        360f,
        infiniteRepeatable(
            animation = tween(
                durationMillis = 1000,
                easing = LinearEasing
            )
        )
    )
    val indicatorSizeInPx = dpToPx(circularProgressIndicatorSize)
    Canvas(
        modifier = modifier
            .requiredSize(circularProgressIndicatorSize)
            .progressSemantics()
    ) {
        drawArc(
            circularProgressIndicatorColor,
            startAngle,
            270f,
            false,
            size = Size(
                indicatorSizeInPx, indicatorSizeInPx
            ),
            style = Stroke(dpToPx(circularProgressIndicatorStrokeWidth), cap = StrokeCap.Round)
        )
    }
}
```

## File: src/main/java/com/microsoft/fluentui/tokenized/progress/LinearProgressIndicator.kt
```kotlin
package com.microsoft.fluentui.tokenized.progress

import androidx.compose.animation.core.*
import androidx.compose.foundation.Canvas
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.requiredHeight
import androidx.compose.foundation.progressSemantics
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.unit.LayoutDirection
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.ControlTokens
import com.microsoft.fluentui.theme.token.controlTokens.LinearProgressIndicatorHeight
import com.microsoft.fluentui.theme.token.controlTokens.LinearProgressIndicatorInfo
import com.microsoft.fluentui.theme.token.controlTokens.LinearProgressIndicatorTokens
import com.microsoft.fluentui.util.dpToPx

/**
 *
 *
 * @param progress Progress of the progress indicator. 0.0 represents no progress and 1.0 represents full progress.
 * @param linearProgressIndicatorHeight Optional width of the progress indicator
 * @param modifier Modifier for linear progress indicator
 * @param linearProgressIndicatorTokens Token values for linear progress indicator
 *
 */
@Composable
fun LinearProgressIndicator(
    progress: Float,
    modifier: Modifier = Modifier,
    linearProgressIndicatorHeight: LinearProgressIndicatorHeight = LinearProgressIndicatorHeight.XXXSmall,
    linearProgressIndicatorTokens: LinearProgressIndicatorTokens? = null
) {
    val themeID =
        FluentTheme.themeID    //Adding This only for recomposition in case of Token Updates. Unused otherwise.
    val tokens = linearProgressIndicatorTokens
        ?: FluentTheme.controlTokens.tokens[ControlTokens.ControlType.LinearProgressIndicatorControlType] as LinearProgressIndicatorTokens
    val linearProgressIndicatorInfo = LinearProgressIndicatorInfo(
        linearProgressIndicatorHeight = linearProgressIndicatorHeight
    )
    val currentProgress = animateFloatAsState(
        targetValue = progress.coerceIn(0f..1f), animationSpec = tween(
            delayMillis = 0, durationMillis = 1000, easing = LinearOutSlowInEasing
        )
    )
    val linearProgressIndicatorStrokeWidth = tokens.strokeWidth(
        linearProgressIndicatorInfo
    )
    val linearProgressIndicatorBackgroundColor =
        tokens.backgroundColor(
            linearProgressIndicatorInfo
        )
    val linearProgressIndicatorColor = tokens.color(
        linearProgressIndicatorInfo
    )
    Canvas(
        modifier = modifier
            .fillMaxWidth()
            .requiredHeight(linearProgressIndicatorStrokeWidth)
            .progressSemantics(progress)
    ) {
        val strokeWidth = dpToPx(linearProgressIndicatorStrokeWidth)
        val yOffset = strokeWidth / 2
        val isLtr = layoutDirection == LayoutDirection.Ltr
        val barStart = (if (isLtr) 0f else size.width)
        val barEnd = (if (isLtr) size.width else 0f)
        drawLine(
            linearProgressIndicatorBackgroundColor,
            Offset(barStart, yOffset),
            Offset(barEnd, yOffset),
            strokeWidth
        )
        val progressIndicatorWidth = currentProgress.value * size.width
        val indicatorLineEnd =
            if (isLtr) progressIndicatorWidth else size.width - progressIndicatorWidth
        drawLine(
            linearProgressIndicatorColor,
            Offset(barStart, yOffset),
            Offset(indicatorLineEnd, yOffset),
            strokeWidth
        )
    }
}

/**
 * Create an Indeterminate Linear Progress Indicator
 *
 * @param linearProgressIndicatorHeight Optional width of the progress indicator
 * @param modifier Modifier for linear progress indicator
 * @param linearProgressIndicatorTokens Token values for linear progress indicator
 *
 */
@Composable
fun LinearProgressIndicator(
    modifier: Modifier = Modifier,
    linearProgressIndicatorHeight: LinearProgressIndicatorHeight = LinearProgressIndicatorHeight.XXXSmall,
    linearProgressIndicatorTokens: LinearProgressIndicatorTokens? = null
) {
    val themeID =
        FluentTheme.themeID    //Adding This only for recomposition in case of Token Updates. Unused otherwise.
    val tokens = linearProgressIndicatorTokens
        ?: FluentTheme.controlTokens.tokens[ControlTokens.ControlType.LinearProgressIndicatorControlType] as LinearProgressIndicatorTokens
    val linearProgressIndicatorInfo = LinearProgressIndicatorInfo(
        linearProgressIndicatorHeight = linearProgressIndicatorHeight
    )
    val linearProgressIndicatorStrokeWidth = tokens.strokeWidth(
        linearProgressIndicatorInfo
    )
    val linearProgressIndicatorBackgroundColor = tokens.backgroundColor(
        linearProgressIndicatorInfo
    )
    val linearProgressIndicatorColor = tokens.color(
        linearProgressIndicatorInfo
    )
    val infiniteTransition = rememberInfiniteTransition()
    val animationDuration = (1750 * 0.5f).toInt()
    val headAnimationDelay = 0
    val tailAnimationDelay = (animationDuration * 0.5f).toInt()
    val indicatorHead by infiniteTransition.animateFloat(
        0f, 1f, infiniteRepeatable(animation = keyframes {
            durationMillis = animationDuration + 500
            0f at headAnimationDelay with FastOutSlowInEasing
            1f at animationDuration + headAnimationDelay
        })
    )
    val indicatorTail by infiniteTransition.animateFloat(
        0f, 1f, infiniteRepeatable(animation = keyframes {
            durationMillis = animationDuration + 500
            0f at tailAnimationDelay with FastOutSlowInEasing
            1f at animationDuration + tailAnimationDelay
        })
    )
    Canvas(
        modifier = modifier
            .fillMaxWidth()
            .progressSemantics()
            .requiredHeight(linearProgressIndicatorStrokeWidth)
    ) {
        val strokeWidth = dpToPx(linearProgressIndicatorStrokeWidth)
        val yOffset = strokeWidth / 2
        val isLtr = layoutDirection == LayoutDirection.Ltr
        val barStart = (if (isLtr) 0f else size.width)
        val barEnd = (if (isLtr) size.width else 0f)
        drawLine(
            linearProgressIndicatorBackgroundColor,
            Offset(barStart, yOffset),
            Offset(barEnd, yOffset),
            strokeWidth
        )
        val progressIndicatorStart =
            (if (isLtr) indicatorHead * size.width else (size.width) - indicatorHead * size.width)
        val progressIndicatorEnd =
            (if (isLtr) indicatorTail * (size.width) else (size.width) - indicatorTail * (size.width))
        drawLine(
            Brush.linearGradient(
                0f to linearProgressIndicatorBackgroundColor,
                0.5f to linearProgressIndicatorColor,
                1.0f to linearProgressIndicatorBackgroundColor,
                start = Offset(progressIndicatorStart, yOffset),
                end = Offset(progressIndicatorEnd, yOffset)
            ),
            Offset(progressIndicatorStart, yOffset),
            Offset(progressIndicatorEnd, yOffset),
            strokeWidth
        )
    }
}
```

## File: src/main/java/com/microsoft/fluentui/tokenized/progress/ProgressText.kt
```kotlin
package com.microsoft.fluentui.tokenized.progress

import androidx.compose.animation.core.LinearOutSlowInEasing
import androidx.compose.animation.core.animateFloatAsState
import androidx.compose.animation.core.tween
import androidx.compose.foundation.*
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.text.BasicText
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.graphics.StrokeCap
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.unit.LayoutDirection
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.ControlTokens
import com.microsoft.fluentui.theme.token.FluentIcon
import com.microsoft.fluentui.theme.token.Icon
import com.microsoft.fluentui.theme.token.controlTokens.ProgressTextInfo
import com.microsoft.fluentui.theme.token.controlTokens.ProgressTextTokens
import com.microsoft.fluentui.util.dpToPx

/**
 * ProgressTexts are used to give information through a text about the current progress.
 * A ProgressText consists of a Text and a progressbar.
 * @param text Text or info to display
 * @param progress Progress of the progress indicator. 0.0 represents no progress and 1.0 represents full progress.
 * @param leadingIconAccessory Add an optional leading icon.
 * @param modifier Modifier for the progress text
 * @param progressTextTokens Token values for the ProgressText
 */
@Composable
fun ProgressText(
    text: String,
    progress: Float,
    leadingIconAccessory: FluentIcon? = null,
    modifier: Modifier = Modifier,
    progressTextTokens: ProgressTextTokens? = null
) {
    val themeID =
        FluentTheme.themeID    //Adding This only for recomposition in case of Token Updates. Unused otherwise.
    val tokens = progressTextTokens
        ?: FluentTheme.controlTokens.tokens[ControlTokens.ControlType.ProgressTextControlType] as ProgressTextTokens
    val progressTextInfo = ProgressTextInfo(progress)
    val currentProgress = animateFloatAsState(
        targetValue = progress.coerceIn(0f..1f), animationSpec = tween(
            delayMillis = 0, durationMillis = 1000, easing = LinearOutSlowInEasing
        )
    )
    val backgroundBrush = tokens.backgroundBrush(progressTextInfo = progressTextInfo)
    val border = tokens.borderWidth(progressTextInfo = progressTextInfo)
    val borderColor = tokens.borderColor(progressTextInfo = progressTextInfo)
    val typography = tokens.typography(progressTextInfo = progressTextInfo)
    val textColor = tokens.textColor(progressTextInfo = progressTextInfo)
    val progressIndicatorHeight = tokens.progressbarHeight(progressTextInfo = progressTextInfo)
    val progressIndicatorBackgroundColor =
        tokens.progressbarBackgroundColor(progressTextInfo = progressTextInfo)
    val progressIndicatorBrush = tokens.progressbarBrush(progressTextInfo = progressTextInfo)
    val iconTextSpacing = tokens.iconTextSpacing(progressTextInfo = progressTextInfo)
    val padding = tokens.padding(progressTextInfo = progressTextInfo)
    val iconSize = tokens.iconSize(progressTextInfo = progressTextInfo)
    val iconColor = tokens.iconColor(progressTextInfo = progressTextInfo)
    val shape = RoundedCornerShape(12.dp)
    Box(modifier = Modifier.clip(shape)) {
        Box(
            modifier = modifier
                .background(
                    backgroundBrush, shape
                )
                .border(
                    border, borderColor, shape
                )
        ) {
            Row(
                modifier = Modifier.padding(padding),
                verticalAlignment = Alignment.CenterVertically
            ) {
                if (leadingIconAccessory != null) {
                    Icon(modifier = Modifier.size(iconSize), icon = leadingIconAccessory, tint = iconColor)
                    Spacer(modifier = Modifier.width(iconTextSpacing))
                }
                BasicText(text = text, style = typography.merge(TextStyle(color = textColor)))
            }
        }
        Box(modifier = Modifier.align(Alignment.BottomCenter)) {
            Canvas(
                modifier = modifier
                    .fillMaxWidth()
                    .requiredHeight(progressIndicatorHeight)
                    .progressSemantics(progress)
                    .testTag("progressBar")
            ) {
                val strokeWidth = dpToPx(progressIndicatorHeight)
                val yOffset = strokeWidth / 2
                val isLtr = layoutDirection == LayoutDirection.Ltr
                val barStart = (if (isLtr) 0f else size.width)
                val barEnd = (if (isLtr) size.width else 0f)
                drawLine(
                    progressIndicatorBackgroundColor,
                    Offset(barStart, yOffset),
                    Offset(barEnd, yOffset),
                    strokeWidth
                )
                val progressIndicatorWidth = currentProgress.value * size.width
                val indicatorLineEnd =
                    if (isLtr) progressIndicatorWidth else size.width - progressIndicatorWidth
                drawLine(
                    progressIndicatorBrush,
                    Offset(barStart, yOffset),
                    Offset(indicatorLineEnd, yOffset),
                    strokeWidth,
                    StrokeCap.Round
                )
            }
        }
    }
}
```

## File: src/main/java/com/microsoft/fluentui/tokenized/shimmer/Shimmer.kt
```kotlin
package com.microsoft.fluentui.tokenized.shimmer

import androidx.compose.animation.core.LinearEasing
import androidx.compose.animation.core.RepeatMode
import androidx.compose.animation.core.animateFloat
import androidx.compose.animation.core.infiniteRepeatable
import androidx.compose.animation.core.rememberInfiniteTransition
import androidx.compose.animation.core.tween
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.IntrinsicSize
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableFloatStateOf
import androidx.compose.runtime.remember
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalConfiguration
import androidx.compose.ui.platform.LocalLayoutDirection
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.LayoutDirection
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.ControlTokens
import com.microsoft.fluentui.theme.token.controlTokens.ShimmerInfo
import com.microsoft.fluentui.theme.token.controlTokens.ShimmerOrientation
import com.microsoft.fluentui.theme.token.controlTokens.ShimmerTokens
import com.microsoft.fluentui.util.dpToPx
import kotlin.math.absoluteValue
import kotlin.math.sqrt

private const val DEFAULT_CORNER_RADIUS = 4

/**
 * Create Shimmer effect on some content, creates an empty shimmer if content not provided or left null
 *
 * @param cornerRadius Corner radius of the shimmer
 * @param modifier Modifier for shimmer
 * @param shimmerTokens Token values for shimmer
 * @param content Content to be shimmered, creates an empty shimmer if content not provided or left null
 *
 */
@Composable
fun Shimmer(
    cornerRadius: Dp = DEFAULT_CORNER_RADIUS.dp,
    modifier: Modifier = Modifier,
    shimmerTokens: ShimmerTokens? = null,
    shimmerDelay: Int = 1000,
    isShimmering: Boolean = true,
    shimmerOrientation: ShimmerOrientation = ShimmerOrientation.TOPLEFT_TO_BOTTOMRIGHT,
    content: (@Composable () -> Unit)? = null,
) {
    if(content == null) {
        InternalShimmer(
            cornerRadius = cornerRadius,
            modifier = modifier,
            shimmerTokens = shimmerTokens,
            shimmerDelay = shimmerDelay,
            isShimmering = isShimmering,
            shimmerOrientation = shimmerOrientation
        )
        return
    }
    InternalShimmer(
        cornerRadius = cornerRadius,
        modifier = modifier,
        shimmerTokens = shimmerTokens,
        shimmerDelay = shimmerDelay,
        isShimmering = isShimmering,
        shimmerOrientation = shimmerOrientation,
    ) {
        content()
    }
}

@Composable
internal fun InternalShimmer(
    cornerRadius: Dp,
    modifier: Modifier = Modifier,
    shimmerTokens: ShimmerTokens? = null,
    shimmerDelay: Int = 1000,
    isShimmering: Boolean = true,
    shimmerOrientation: ShimmerOrientation = ShimmerOrientation.TOPLEFT_TO_BOTTOMRIGHT,
    content: (@Composable () -> Unit)? = null,
) {
    val themeID =
        FluentTheme.themeID    //Adding This only for recomposition in case of Token Updates. Unused otherwise.
    val tokens = shimmerTokens
        ?: FluentTheme.controlTokens.tokens[ControlTokens.ControlType.ShimmerControlType] as ShimmerTokens
    val configuration = LocalConfiguration.current
    val screenHeight = dpToPx(configuration.screenHeightDp.dp)
    val screenWidth = dpToPx(configuration.screenWidthDp.dp)
    val diagonal =
        sqrt((screenHeight * screenHeight + screenWidth * screenWidth).toDouble()).toFloat()
    val shimmerInfo = ShimmerInfo()
    val cachedDelay = tokens.delay(shimmerInfo)
    val shimmerDelayValue = if (cachedDelay != -1) {
        cachedDelay
    } else {
        shimmerDelay
    }
    val tokenOrientation = tokens.orientation(shimmerInfo)
    val orientation: ShimmerOrientation = if(tokenOrientation != ShimmerOrientation._NONE){
        tokenOrientation
    } else {
        shimmerOrientation
    }
    val shimmerBackgroundColor = if (content != null) {
        Color.Transparent
    } else {
        tokens.color(shimmerInfo)
    }
    val shimmerKnockoutEffectColor = tokens.knockoutEffectColor(shimmerInfo)
    val cornerRadius =
        dpToPx(cornerRadius)
    val infiniteTransition = rememberInfiniteTransition()
    val isLtr = if (orientation in listOf(
            ShimmerOrientation.LEFT_TO_RIGHT,
            ShimmerOrientation.TOPLEFT_TO_BOTTOMRIGHT
        )
    ) (LocalLayoutDirection.current == LayoutDirection.Ltr) else (LocalLayoutDirection.current == LayoutDirection.Rtl)

    val initialValue = if (isLtr) 0f else diagonal
    val targetValue = if (isLtr) diagonal else 0f
    val shimmerEffect by if (isShimmering) {
            infiniteTransition.animateFloat(
                initialValue,
                targetValue,
                infiniteRepeatable(
                    animation = tween(
                        durationMillis = shimmerDelayValue,
                        easing = LinearEasing
                    ),
                    repeatMode = RepeatMode.Restart
                )
            )
    }
     else {
        remember { mutableFloatStateOf(0f) }
    }

    val startOffset: Offset = when (orientation) {
        ShimmerOrientation.LEFT_TO_RIGHT -> Offset.Zero
        ShimmerOrientation.RIGHT_TO_LEFT -> Offset.Zero
        ShimmerOrientation.TOPLEFT_TO_BOTTOMRIGHT -> Offset.Zero
        ShimmerOrientation.BOTTOMRIGHT_TO_TOPLEFT -> Offset.Zero
        else -> Offset.Zero
    }
    val endOffset: Offset = if (isShimmering) {
        when (orientation) {
            ShimmerOrientation.LEFT_TO_RIGHT -> Offset(shimmerEffect.absoluteValue, 0F)
            ShimmerOrientation.RIGHT_TO_LEFT -> Offset(shimmerEffect.absoluteValue, 0F)
            ShimmerOrientation.TOPLEFT_TO_BOTTOMRIGHT -> Offset(shimmerEffect.absoluteValue, shimmerEffect.absoluteValue)
            ShimmerOrientation.BOTTOMRIGHT_TO_TOPLEFT -> Offset(shimmerEffect.absoluteValue, shimmerEffect.absoluteValue)
            else -> Offset(shimmerEffect.absoluteValue, shimmerEffect.absoluteValue)
        }
    } else {
        Offset.Zero
    }
    val gradientColor = Brush.linearGradient(
        0f to shimmerBackgroundColor,
        0.5f to shimmerKnockoutEffectColor,
        1.0f to shimmerBackgroundColor,
        start = startOffset,
        end = endOffset
    )
    if (content != null) {
        Box(
            modifier
                .width(IntrinsicSize.Max)
                .height(IntrinsicSize.Max)
        ) {
            content()
            if(isShimmering) {
                Spacer(
                    modifier = Modifier
                        .fillMaxSize()
                        .clip(RoundedCornerShape(cornerRadius))
                        .background(gradientColor)
                )
            }
        }
    } else {
        Spacer(
            modifier = modifier
                .clip(RoundedCornerShape(cornerRadius))
                .background(gradientColor)
        )
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
    <!--Progress-->
    <attr name="fluentuiProgressPrimaryColor" format="reference|color"/>
    <attr name="fluentuiProgressBackgroundColor" format="reference|color"/>
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
    <!--Progress: Circular-->
    <dimen name="fluentui_progress_circular_xsmall">20dp</dimen>
    <dimen name="fluentui_progress_circular_small">24dp</dimen>
    <dimen name="fluentui_progress_circular_medium">36dp</dimen>
    <dimen name="fluentui_progress_circular_large">44dp</dimen>
    <dimen name="fluentui_progress_circular_anim_value_to">360</dimen>
    <dimen name="fluentui_progress_circular_anim_pivot">50%</dimen>

    <!--Progress: Linear-->
    <dimen name="fluentui_progress_linear_height">4dp</dimen>
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
    <!--Progress: Circular-->
    <style name="Widget.FluentUI.CircularProgress.XSmall" parent="@style/Widget.AppCompat.ProgressBar">
        <item name="android:contentDescription">@string/progress_circular_content_description_indeterminate</item>
        <item name="android:indeterminate">true</item>
        <item name="android:indeterminateDrawable">@drawable/anim_progress_circular_gray_xsmall</item>
        <item name="android:minHeight">@dimen/fluentui_progress_circular_xsmall</item>
        <item name="android:minWidth">@dimen/fluentui_progress_circular_xsmall</item>
        <item name="android:maxHeight">@dimen/fluentui_progress_circular_xsmall</item>
        <item name="android:maxWidth">@dimen/fluentui_progress_circular_xsmall</item>
    </style>
    <style name="Widget.FluentUI.CircularProgress.Small" parent="@style/Widget.AppCompat.ProgressBar">
        <item name="android:contentDescription">@string/progress_circular_content_description_indeterminate</item>
        <item name="android:indeterminate">true</item>
        <item name="android:indeterminateDrawable">@drawable/anim_progress_circular_gray_small</item>
        <item name="android:minHeight">@dimen/fluentui_progress_circular_small</item>
        <item name="android:minWidth">@dimen/fluentui_progress_circular_small</item>
        <item name="android:maxHeight">@dimen/fluentui_progress_circular_small</item>
        <item name="android:maxWidth">@dimen/fluentui_progress_circular_small</item>
    </style>
    <style name="Widget.FluentUI.CircularProgress.Medium" parent="@style/Widget.AppCompat.ProgressBar">
        <item name="android:contentDescription">@string/progress_circular_content_description_indeterminate</item>
        <item name="android:indeterminate">true</item>
        <item name="android:indeterminateDrawable">@drawable/anim_progress_circular_gray_medium</item>
        <item name="android:minHeight">@dimen/fluentui_progress_circular_medium</item>
        <item name="android:minWidth">@dimen/fluentui_progress_circular_medium</item>
        <item name="android:maxHeight">@dimen/fluentui_progress_circular_medium</item>
        <item name="android:maxWidth">@dimen/fluentui_progress_circular_medium</item>
    </style>
    <style name="Widget.FluentUI.CircularProgress.Large" parent="@style/Widget.AppCompat.ProgressBar">
        <item name="android:contentDescription">@string/progress_circular_content_description_indeterminate</item>
        <item name="android:indeterminate">true</item>
        <item name="android:indeterminateDrawable">@drawable/anim_progress_circular_gray_large</item>
        <item name="android:minHeight">@dimen/fluentui_progress_circular_large</item>
        <item name="android:minWidth">@dimen/fluentui_progress_circular_large</item>
        <item name="android:maxHeight">@dimen/fluentui_progress_circular_large</item>
        <item name="android:maxWidth">@dimen/fluentui_progress_circular_large</item>
    </style>
    <style name="Widget.FluentUI.CircularProgress.XSmall.Primary">
        <item name="android:indeterminateTint">?attr/fluentuiProgressPrimaryColor</item>
        <item name="android:indeterminateTintMode">src_in</item>
    </style>
    <style name="Widget.FluentUI.CircularProgress.Small.Primary">
        <item name="android:indeterminateTint">?attr/fluentuiProgressPrimaryColor</item>
        <item name="android:indeterminateTintMode">src_in</item>
    </style>
    <style name="Widget.FluentUI.CircularProgress.Medium.Primary">
        <item name="android:indeterminateTint">?attr/fluentuiProgressPrimaryColor</item>
        <item name="android:indeterminateTintMode">src_in</item>
    </style>
    <style name="Widget.FluentUI.CircularProgress.Large.Primary">
        <item name="android:indeterminateTint">?attr/fluentuiProgressPrimaryColor</item>
        <item name="android:indeterminateTintMode">src_in</item>
    </style>

    <!--Progress: Linear-->
    <style name="Widget.FluentUI.LinearProgress" parent="Widget.AppCompat.ProgressBar">
        <item name="android:indeterminateOnly">false</item>
        <item name="android:progressDrawable">@drawable/ms_ic_progress_linear_determinate</item>
        <item name="android:indeterminateDrawable">@drawable/anim_progress_linear_indeterminate</item>
        <item name="android:minHeight">@dimen/fluentui_progress_linear_height</item>
        <item name="android:maxHeight">@dimen/fluentui_progress_linear_height</item>
    </style>

    <style name="Widget.FluentUI.LinearProgress.Determinate" parent="Widget.FluentUI.LinearProgress">
        <item name="android:contentDescription">
            @string/progress_linear_content_description_determinate
        </item>
        <item name="android:indeterminate">false</item>
    </style>
    <style name="Widget.FluentUI.LinearProgress.Indeterminate" parent="Widget.FluentUI.LinearProgress">
        <item name="android:indeterminate">true</item>
        <item name="android:contentDescription">@string/progress_linear_content_description_indeterminate</item>
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
    <style name="Theme.FluentUI.Progress.Base" parent="Base.Theme.FluentUI">
        <!--Progress-->
        <item name="fluentuiProgressPrimaryColor">?attr/colorPrimary</item>
        <item name="fluentuiProgressBackgroundColor">@color/fluentui_gray_100</item>
    </style>
    <style name="Theme.FluentUI.Progress" parent="Theme.FluentUI.Progress.Base"/>
</resources>
```
