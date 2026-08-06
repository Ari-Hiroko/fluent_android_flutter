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
src/main/java/com/microsoft/fluentui/tokenized/notification/Badge.kt
src/main/java/com/microsoft/fluentui/tokenized/notification/Banner.kt
src/main/java/com/microsoft/fluentui/tokenized/notification/CardNudge.kt
src/main/java/com/microsoft/fluentui/tokenized/notification/NotificationCommon.kt
src/main/java/com/microsoft/fluentui/tokenized/notification/Snackbar.kt
src/main/java/com/microsoft/fluentui/tokenized/notification/StackableSnackbar.kt
src/main/java/com/microsoft/fluentui/tokenized/notification/ToolTip.kt
```

# Files

## File: src/main/java/com/microsoft/fluentui/tokenized/notification/Badge.kt
```kotlin
package com.microsoft.fluentui.tokenized.notification

import androidx.compose.foundation.Canvas
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.text.BasicText
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.drawscope.Fill
import androidx.compose.ui.text.ExperimentalTextApi
import androidx.compose.ui.text.PlatformTextStyle
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.ControlTokens
import com.microsoft.fluentui.theme.token.controlTokens.BadgeInfo
import com.microsoft.fluentui.theme.token.controlTokens.BadgeTokens
import com.microsoft.fluentui.theme.token.controlTokens.BadgeType
import com.microsoft.fluentui.util.dpToPx

/**
 * Badge represents dynamic information such as a number of pending requests on tab.
 * @param text Text to display, if not provided then it appear as dot.
 * @param modifier the [Modifier] to be applied to this item
 * @param badgeType Badge type could be [BadgeType.Character] to use it on tab or [BadgeType.List] to use in List.
 * @param badgeTokens provide appearance values. If not provided then tokens will be picked from AppThemeController
 *
 */

@OptIn(ExperimentalTextApi::class)
@Composable
fun Badge(
    modifier: Modifier = Modifier,
    text: String? = null,
    badgeType: BadgeType = BadgeType.List,
    badgeTokens: BadgeTokens? = null
) {
    val themeID =
        FluentTheme.themeID    //Adding This only for recomposition in case of Token Updates. Unused otherwise.
    val token = badgeTokens
        ?: FluentTheme.controlTokens.tokens[ControlTokens.ControlType.BadgeControlType] as BadgeTokens
    val badgeInfo = BadgeInfo(badgeType)
    val background = token.backgroundBrush(badgeInfo = badgeInfo)
    val borderStroke = token.borderStroke(badgeInfo = badgeInfo)
    if (text.isNullOrEmpty()) {
        Box(
            modifier = modifier
                .defaultMinSize(16.dp, 16.dp)
        ) {
            Canvas(
                modifier = Modifier
                    .padding(start = 5.dp, end = 3.dp, top = 3.dp, bottom = 5.dp)
                    .sizeIn(minWidth = 8.dp, minHeight = 8.dp)
            ) {
                drawCircle(
                    brush = borderStroke.brush,
                    radius = dpToPx(borderStroke.width + 4.dp)
                )
                drawCircle(
                    brush = background,
                    style = Fill,
                    radius = dpToPx(4.dp)
                )
            }
        }
    } else {
        val textColor = token.textColor(badgeInfo = badgeInfo)
        var typography = token.typography(badgeInfo = badgeInfo)
        val fontSize = remember { mutableStateOf(typography.fontSize) }
        var textStyle by remember(textColor) {
            mutableStateOf(
                typography.merge(TextStyle(color = textColor, fontSize = fontSize.value,  platformStyle = PlatformTextStyle(
                    includeFontPadding = false
                )))
            )
        }
        val paddingValues = token.padding(badgeInfo = badgeInfo)
        val shape = RoundedCornerShape(token.cornerRadius(badgeInfo = badgeInfo))

        Row(
            modifier
                .requiredHeight(if (badgeType == BadgeType.Character) 20.dp else 27.dp)
                .border(borderStroke.width, borderStroke.brush, shape)
                .padding(0.5.dp) //TODO to check fix for https://issuetracker.google.com/issues/228985905
                .background(background, shape)
                .clip(shape),
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.Center
        ) {
            BasicText(
                text,
                modifier = Modifier.padding(paddingValues),
                style = textStyle,
                onTextLayout = { textLayoutResult ->
                    if (textLayoutResult.didOverflowHeight) {
                        textStyle.fontSize
                        fontSize.value *= 0.9
                        textStyle = textStyle.copy(fontSize = fontSize.value)
                    }
                }
            )
        }
    }
}
```

## File: src/main/java/com/microsoft/fluentui/tokenized/notification/Banner.kt
```kotlin
package com.microsoft.fluentui.tokenized.notification

import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.text.BasicText
import androidx.compose.foundation.text.ClickableText
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.AnnotatedString
import androidx.compose.ui.text.TextStyle
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.ControlTokens
import com.microsoft.fluentui.theme.token.FluentIcon
import com.microsoft.fluentui.theme.token.Icon
import com.microsoft.fluentui.theme.token.controlTokens.BannerInfo
import com.microsoft.fluentui.theme.token.controlTokens.BannerTokens

/**
 * A Banner displays a prominent message and related actions for users to address it. Banners are dismissed by the user.
 * Banners are used to inform users about important changes or persistent conditions. They are non-modal, meaning users can either interact or ignore them, and continue with their task.
 *
 * @param text The text to be displayed in the banner.
 * @param modifier The modifier to be applied to the component.
 * @param isTextCentered Whether the text should be centered or not. Text is centered when there is no leading icon, action button, or accessory buttons.
 * @param leadingIcon The icon to be displayed before the text.
 * @param actionButtonOnClick The callback to be invoked when the action button is clicked.
 * @param actionButtonText The text to be displayed on the action button. ActionButtonIcon will be replaced when this is set.
 * @param actionButtonIcon The icon to be displayed on the action button. ActionButtonText should not be set to display the icon.
 * @param accessoryTextButton1 The text to be displayed on the first accessory button.
 * @param accessoryTextButton2 The text to be displayed on the second accessory button.
 * @param accessoryTextButton1OnClick The callback to be invoked when the first accessory button is clicked.
 * @param accessoryTextButton2OnClick The callback to be invoked when the second accessory button is clicked.
 * @param bannerTokens The tokens to be used to customize the component.
 */
@Composable
fun Banner(
    text: String,
    modifier: Modifier = Modifier,
    isTextCentered: Boolean = false,
    leadingIcon: FluentIcon? = null,
    actionButtonOnClick: (() -> Unit)? = null,
    actionButtonText: String? = null,
    actionButtonIcon: FluentIcon? = null,
    accessoryTextButton1: String? = null,
    accessoryTextButton2: String? = null,
    accessoryTextButton1OnClick: (() -> Unit)? = null,
    accessoryTextButton2OnClick: (() -> Unit)? = null,
    bannerTokens: BannerTokens? = null,
) {
    val tokens = bannerTokens
        ?: FluentTheme.controlTokens.tokens[ControlTokens.ControlType.BannerControlType] as BannerTokens
    val actionButton1Enabled = accessoryTextButton1 != null && accessoryTextButton1OnClick != null
    val actionButton2Enabled = accessoryTextButton2 != null && accessoryTextButton2OnClick != null
    val bannerInfo = BannerInfo(actionButton1Enabled || actionButton2Enabled)
    var centerText = false
    if (isTextCentered && leadingIcon == null && actionButtonIcon == null && actionButtonText == null && !actionButton1Enabled && !actionButton2Enabled) {
        centerText = true
    }
    Box(
        modifier = modifier
            .background(tokens.backgroundColor(bannerInfo = bannerInfo))
            .fillMaxWidth()
    ) {
        Column(
            modifier = Modifier.padding(tokens.padding(bannerInfo = bannerInfo)),
            horizontalAlignment = Alignment.CenterHorizontally
        ) {
            Row(verticalAlignment = Alignment.CenterVertically) {
                if (leadingIcon != null) {
                    Icon(
                        icon = leadingIcon,
                        tint = tokens.leadingIconColor(bannerInfo = bannerInfo),
                        modifier = Modifier.size(
                            tokens.leadingIconSize(
                                bannerInfo = bannerInfo
                            )
                        )
                    )
                }
                Spacer(modifier = Modifier.width(tokens.leadingIconAndTextSpacing(bannerInfo = bannerInfo)))
                BasicText(
                    modifier = Modifier.weight(1f, !centerText),
                    text = text,
                    style = TextStyle(color = tokens.textColor(bannerInfo = bannerInfo)).merge(
                        tokens.textTypography(
                            bannerInfo = bannerInfo
                        )
                    )
                )
                Spacer(modifier = Modifier.width(tokens.textAndActionButtonSpacing(bannerInfo = bannerInfo)))
                if (actionButtonOnClick != null) {
                    if (actionButtonText != null) {
                        ClickableText(
                            text = AnnotatedString(actionButtonText),
                            onClick = { actionButtonOnClick() },
                            style = TextStyle(color = tokens.actionButtonColor(bannerInfo = bannerInfo)).merge(
                                tokens.actionButtonTextTypography(
                                    bannerInfo = bannerInfo
                                )
                            )
                        )
                    } else if (actionButtonIcon != null) {
                        Icon(
                            icon = actionButtonIcon,
                            modifier = Modifier
                                .clickable(onClick = { actionButtonOnClick() })
                                .size(tokens.actionIconSize(bannerInfo = bannerInfo)),
                            tint = tokens.actionIconColor(
                                bannerInfo = bannerInfo
                            )
                        )
                    }
                }
            }
            if (actionButton1Enabled || actionButton2Enabled) {
                Spacer(modifier = Modifier.height(tokens.textAndAccessoryButtonSpacing(bannerInfo = bannerInfo)))
            }
            Row(modifier = Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.End) {
                if (actionButton1Enabled) {
                    ClickableText(
                        text = AnnotatedString(accessoryTextButton1!!),
                        style = TextStyle(color = tokens.actionButtonColor(bannerInfo = bannerInfo)).merge(
                            tokens.actionButtonTextTypography(
                                bannerInfo = bannerInfo
                            )
                        ),
                        onClick = {
                            if (accessoryTextButton1OnClick != null) {
                                accessoryTextButton1OnClick()
                            }
                        })
                    Spacer(modifier = Modifier.width(tokens.accessoryActionButtonsSpacing(bannerInfo = bannerInfo)))
                }

                if (actionButton2Enabled) {
                    ClickableText(
                        text = AnnotatedString(accessoryTextButton2!!),
                        style = TextStyle(color = tokens.actionButtonColor(bannerInfo = bannerInfo)).merge(
                            tokens.actionButtonTextTypography(
                                bannerInfo = bannerInfo
                            )
                        ),
                        onClick = {
                            if (accessoryTextButton2OnClick != null) {
                                accessoryTextButton2OnClick()
                            }
                        })
                }
            }
        }
    }

}
```

## File: src/main/java/com/microsoft/fluentui/tokenized/notification/CardNudge.kt
```kotlin
package com.microsoft.fluentui.tokenized.notification

import androidx.compose.animation.core.TweenSpec
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.gestures.Orientation
import androidx.compose.foundation.interaction.MutableInteractionSource
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.text.BasicText
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Close
import androidx.compose.material.ripple.rememberRipple
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalLayoutDirection
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.semantics.Role
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.unit.IntOffset
import androidx.compose.ui.unit.LayoutDirection
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.compose.FractionalThreshold
import com.microsoft.fluentui.compose.rememberSwipeableState
import com.microsoft.fluentui.compose.swipeable
import com.microsoft.fluentui.notification.R
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.FluentTheme.aliasTokens
import com.microsoft.fluentui.theme.token.*
import com.microsoft.fluentui.theme.token.controlTokens.CardNudgeInfo
import com.microsoft.fluentui.theme.token.controlTokens.CardNudgeTokens
import com.microsoft.fluentui.theme.token.controlTokens.PillButtonInfo
import com.microsoft.fluentui.theme.token.controlTokens.PillButtonTokens
import com.microsoft.fluentui.tokenized.segmentedcontrols.PillButton
import com.microsoft.fluentui.tokenized.segmentedcontrols.PillMetaData
import kotlin.math.roundToInt

// TAGS FOR TESTING
const val CARD_NUDGE = "Fluent Card Nudge"
const val CARD_NUDGE_ICON = "Fluent Card Nudge Icon"
const val CARD_NUDGE_ACCENT_ICON = "Fluent Card Nudge Accent Icon"
const val CARD_NUDGE_ACCENT_TEXT = "Fluent Card Nudge Accent Text"
const val CARD_NUDGE_SUBTITLE = "Fluent Card Nudge Subtitle"
const val CARD_NUDGE_ACTION_BUTTON = "Fluent Card Nudge Action Button"
const val CARD_NUDGE_DISMISS_BUTTON = "Fluent Card Nudge Dismiss Button"

class CardNudgeMetaData(
    val message: String,
    val dismissOnClick: (() -> Unit)? = null,
    val icon: FluentIcon? = null,
    val subTitle: String? = null,
    val accentText: String? = null,
    val accentIcon: FluentIcon? = null,
    val actionMetaData: PillMetaData? = null,
    val leftSwipeGesture: ((Float) -> Unit)? = null,
    val rightSwipeGesture: ((Float) -> Unit)? = null
)

private enum class SwipeGesture {
    NONE,
    LEFT,
    RIGHT
}

/**
 * A card nudge is a short message that helps people discover what they can do in an app.
 * It appears at the top of a screen, beneath the navigation bar, and pushes all other content below it.
 * Card nudges are helpful for sending reminders and recommendations, but they don’t necessarily relates
 * to someone’s current task.
 *
 * @param metadata [CardNudgeMetaData] storing the information for the Nudge to be displayed.
 * @param modifier Optional Modifier to be applied to CardNudge.
 * @param outlineMode Boolean for enabling outline on CardNudge. Default: [false]
 * @param cardNudgeTokens Optional Tokens for customizing CardNudge.
 */
@Composable
fun CardNudge(
    metadata: CardNudgeMetaData,
    modifier: Modifier = Modifier,
    outlineMode: Boolean = false,
    cardNudgeTokens: CardNudgeTokens? = null
) {
    val themeID =
        FluentTheme.themeID    //Adding This only for recomposition in case of Token Updates. Unused otherwise.
    val token = cardNudgeTokens
        ?: FluentTheme.controlTokens.tokens[ControlTokens.ControlType.CardNudgeControlType] as CardNudgeTokens

    val cardNudgeInfo = CardNudgeInfo()
    val animationSpec = TweenSpec<Float>(durationMillis = 300)
    val state = rememberSwipeableState(initialValue = SwipeGesture.NONE, animationSpec) { true }
    val isRtl = LocalLayoutDirection.current == LayoutDirection.Rtl

    BoxWithConstraints {
        val maxWidth = constraints.maxWidth.toFloat()
        val shape = RoundedCornerShape(12.dp)

        Row(
            modifier
                .fillMaxWidth()
                .offset { IntOffset(state.offset.value.roundToInt(), 0) }
                .background(
                    token.backgroundBrush(cardNudgeInfo),
                    shape
                )
                .then(
                    if (outlineMode)
                        Modifier.border(
                            token.borderSize(cardNudgeInfo),
                            token.borderStrokeColor(cardNudgeInfo),
                            shape
                        )
                    else
                        Modifier
                )
                .padding(horizontal = 16.dp, vertical = 12.dp)
                .swipeable(
                    state,
                    anchors = mapOf(
                        -maxWidth to SwipeGesture.LEFT,
                        0F to SwipeGesture.NONE,
                        maxWidth to SwipeGesture.RIGHT
                    ),
                    reverseDirection = isRtl,
                    thresholds = { _, _ -> FractionalThreshold(0.3F) },
                    orientation = Orientation.Horizontal,
                )
                .testTag(CARD_NUDGE),
            verticalAlignment = Alignment.CenterVertically
        ) {
            LaunchedEffect(state.offset.value) {
                if (state.offset.value > 0.1F) {
                    metadata.rightSwipeGesture?.invoke(state.offset.value / maxWidth)
                } else if (state.offset.value < -0.1F) {
                    metadata.leftSwipeGesture?.invoke(state.offset.value / maxWidth)
                }
            }

            LaunchedEffect(state.currentValue) {
                if (state.currentValue != SwipeGesture.NONE)
                    state.animateTo(SwipeGesture.NONE)
            }

            if (metadata.icon != null && metadata.icon.isIconAvailable()) {
                Box(
                    modifier = Modifier
                        .size(token.iconBackgroundSize(cardNudgeInfo))
                        .background(
                            token.iconBackgroundBrush(cardNudgeInfo),
                            CircleShape
                        )
                        .then(
                            if (metadata.icon.onClick != null) {
                                Modifier.clickable(
                                    interactionSource = remember { MutableInteractionSource() },
                                    indication = rememberRipple(),
                                    enabled = true,
                                    role = Role.Image,
                                    onClick = metadata.icon.onClick!!
                                )
                            } else Modifier
                        )
                        .testTag(CARD_NUDGE_ICON),
                    contentAlignment = Alignment.Center
                ) {
                    Icon(
                        metadata.icon,
                        modifier = Modifier
                            .size(token.iconSize(cardNudgeInfo)),
                        tint = metadata.icon.tint ?: token.iconColor(cardNudgeInfo)
                    )
                }
            }

            Column(
                modifier = Modifier
                    .weight(1F)
                    .padding(start = 16.dp)
            ) {
                BasicText(
                    metadata.message,
                    style = token.titleTypography(cardNudgeInfo),
                )
                if (!metadata.subTitle.isNullOrBlank() || !metadata.accentText.isNullOrBlank() || metadata.accentIcon != null) {
                    Row(
                        horizontalArrangement = Arrangement.spacedBy(4.dp),
                        verticalAlignment = Alignment.CenterVertically
                    ) {
                        if (metadata.accentIcon != null) {
                            Box(
                                modifier = Modifier
                                    .size(12.dp)
                                    .testTag(CARD_NUDGE_ACCENT_ICON),
                                contentAlignment = Alignment.Center
                            ) {
                                Icon(
                                    metadata.accentIcon,
                                    tint = metadata.accentIcon.tint ?: token.accentColor(cardNudgeInfo)
                                )
                            }
                        }

                        if (!metadata.accentText.isNullOrBlank()) {
                            BasicText(
                                metadata.accentText,
                                style = token.accentTypography(cardNudgeInfo),
                                modifier = Modifier.testTag(CARD_NUDGE_ACCENT_TEXT)
                            )
                        }

                        if (!metadata.subTitle.isNullOrBlank()) {
                            BasicText(
                                metadata.subTitle,
                                style = token.subtitleTypography(cardNudgeInfo),
                                modifier = Modifier.testTag(CARD_NUDGE_SUBTITLE)
                            )
                        }
                    }
                }
                Spacer(modifier = Modifier.width(4.dp))
            }

            if (metadata.actionMetaData != null) {
                metadata.actionMetaData.calloutSelectionState = false
                PillButton(
                    metadata.actionMetaData,
                    modifier = Modifier.testTag(CARD_NUDGE_ACTION_BUTTON),
                    pillButtonTokens = object : PillButtonTokens() {
                        @Composable
                        override fun backgroundBrush(pillButtonInfo: PillButtonInfo): StateBrush {
                            return StateBrush(
                                rest = SolidColor(aliasTokens.brandBackgroundColor[FluentAliasTokens.BrandBackgroundColorTokens.BrandBackgroundTint].value()),
                                pressed = SolidColor(aliasTokens.brandBackgroundColor[FluentAliasTokens.BrandBackgroundColorTokens.BrandBackgroundTint].value()),
                                focused = SolidColor(aliasTokens.brandBackgroundColor[FluentAliasTokens.BrandBackgroundColorTokens.BrandBackgroundTint].value())
                            )
                        }

                        @Composable
                        override fun textColor(pillButtonInfo: PillButtonInfo): StateColor {
                            return StateColor(
                                rest = aliasTokens.brandForegroundColor[FluentAliasTokens.BrandForegroundColorTokens.BrandForegroundTint].value(),
                                pressed = aliasTokens.brandForegroundColor[FluentAliasTokens.BrandForegroundColorTokens.BrandForegroundTint].value(),
                                focused = aliasTokens.brandForegroundColor[FluentAliasTokens.BrandForegroundColorTokens.BrandForegroundTint].value()
                            )
                        }

                        @Composable
                        override fun typography(pillButtonInfo: PillButtonInfo): TextStyle {
                            return aliasTokens.typography[FluentAliasTokens.TypographyTokens.Body2Strong]
                        }
                    }
                )

                Spacer(modifier = Modifier.width(12.dp))
            }

            if (metadata.dismissOnClick != null) {
                Icon(
                    Icons.Filled.Close,
                    LocalContext.current.resources.getString(R.string.fluentui_dismiss_button),
                    modifier = Modifier
                        .padding(10.dp)
                        .size(token.dismissIconSize(cardNudgeInfo))
                        .testTag(CARD_NUDGE_DISMISS_BUTTON),
                    tint = token.dismissIconColor(cardNudgeInfo),
                    onClick = metadata.dismissOnClick
                )
            }
        }
    }
}
```

## File: src/main/java/com/microsoft/fluentui/tokenized/notification/NotificationCommon.kt
```kotlin
package com.microsoft.fluentui.tokenized.notification

import androidx.compose.animation.core.*
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.ui.platform.AccessibilityManager
import androidx.compose.ui.platform.LocalAccessibilityManager
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.delay

interface NotificationMetadata {
    fun clicked(scope: CoroutineScope? = null)

    fun dismiss(scope: CoroutineScope? = null )

    fun timedOut(scope: CoroutineScope? = null)
}

open class AnimationVariables {
    open var alpha = Animatable(0F)
    open var scale = Animatable(0.8F)
    open var offsetX = Animatable(0f)
    open var offsetY = Animatable(0f)
}

open class AnimationBehavior {
    open var animationVariables: AnimationVariables = AnimationVariables()

    open suspend fun onShowAnimation() {
        animationVariables.alpha.animateTo(
            1F,
            animationSpec = tween(
                easing = LinearEasing,
                durationMillis = 150,
            )
        )
        animationVariables.scale.animateTo(
            1F,
            animationSpec = tween(
                easing = FastOutSlowInEasing,
                durationMillis = 150,
            )
        )
    }

    open suspend fun onClickAnimation() {
        // fade out
        animationVariables.alpha.animateTo(
            0F,
            animationSpec = tween(
                easing = LinearEasing,
                durationMillis = 150,
            )
        )
    }

    open suspend fun onDismissAnimation() {
        // fade out
        animationVariables.alpha.animateTo(
            0F,
            animationSpec = tween(
                easing = LinearEasing,
                durationMillis = 150,
            )
        )
    }

    open suspend fun onTimeoutAnimation() {
        // fade out
        animationVariables.alpha.animateTo(
            0F,
            animationSpec = tween(
                easing = LinearEasing,
                durationMillis = 150,
            )
        )
    }
}

enum class NotificationResult {
    TIMEOUT,
    DISMISSED,
    CLICKED
}

enum class NotificationDuration {
    SHORT,
    LONG,
    INDEFINITE;


    fun convertToMillis(
        hasIcon: Boolean,
        hasAction: Boolean,
        accessibilityManager: AccessibilityManager?
    ): Long {
        val actualDuration = when (this) {
            INDEFINITE -> Long.MAX_VALUE
            LONG -> 10000L
            SHORT -> 4000L
        }

        if (accessibilityManager == null)
            return actualDuration

        return accessibilityManager.calculateRecommendedTimeoutMillis(
            actualDuration,
            containsIcons = true,
            containsText = hasIcon,
            containsControls = hasAction
        )
    }
}

@Composable
internal fun NotificationContainer(
    notificationMetadata: NotificationMetadata,
    hasIcon: Boolean,
    hasAction: Boolean,
    duration: NotificationDuration,
    animationBehavior: AnimationBehavior,
    scope: CoroutineScope,
    content: @Composable ((animationVariables: AnimationVariables) -> Unit)
) {
    val accessibilityManager = LocalAccessibilityManager.current
    LaunchedEffect(notificationMetadata) {
        delay(
            duration.convertToMillis(
                hasIcon = hasIcon,
                hasAction = hasAction,
                accessibilityManager = accessibilityManager
            )
        )
        notificationMetadata.timedOut(scope)
    }

    LaunchedEffect(notificationMetadata) {
        animationBehavior.onShowAnimation()
    }

    content(animationBehavior.animationVariables)
}
```

## File: src/main/java/com/microsoft/fluentui/tokenized/notification/Snackbar.kt
```kotlin
package com.microsoft.fluentui.tokenized.notification

import androidx.compose.animation.core.tween
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.gestures.detectHorizontalDragGestures
import androidx.compose.foundation.interaction.MutableInteractionSource
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.text.BasicText
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Close
import androidx.compose.material.ripple.rememberRipple
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.draw.shadow
import androidx.compose.ui.graphics.graphicsLayer
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.platform.LocalConfiguration
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.semantics.LiveRegionMode
import androidx.compose.ui.semantics.Role
import androidx.compose.ui.semantics.liveRegion
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.ControlTokens
import com.microsoft.fluentui.theme.token.FluentIcon
import com.microsoft.fluentui.theme.token.Icon
import com.microsoft.fluentui.theme.token.StateColor
import com.microsoft.fluentui.theme.token.controlTokens.*
import com.microsoft.fluentui.tokenized.controls.Button
import com.microsoft.fluentui.util.dpToPx
import kotlinx.coroutines.CancellableContinuation
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch
import kotlinx.coroutines.suspendCancellableCoroutine
import kotlinx.coroutines.sync.Mutex
import kotlinx.coroutines.sync.withLock
import kotlin.coroutines.resume

// TAGS FOR TESTING
const val SNACK_BAR = "Fluent Snack bar"
const val SNACK_BAR_ICON = "Fluent Snack bar Icon"
const val SNACK_BAR_SUBTITLE = "Fluent Snack bar Subtitle"
const val SNACK_BAR_ACTION_BUTTON = "Fluent Snack bar Action Button"
const val SNACK_BAR_DISMISS_BUTTON = "Fluent Snack bar Dismiss Button"

/**
 * SnackbarMetadata is a data class that holds the metadata for a Snackbar.
 * It contains information such as the message, style, icon, action text, and duration.
 *
 * @param message The message to be displayed in the Snackbar.
 * @param style The style of the Snackbar.
 * @param enableDismiss Whether the Snackbar can be dismissed by the user.
 * @param icon The icon to be displayed in the Snackbar.
 * @param subTitle The subtitle to be displayed in the Snackbar.
 * @param actionText The text for the action button in the Snackbar.
 * @param duration The duration for which the Snackbar will be displayed.
 * @param continuation A cancellable continuation for handling user interactions with the Snackbar.
 * @param animationBehavior The animation behavior for the Snackbar.
 */

class SnackbarMetadata(
    val message: String,
    val style: SnackbarStyle,
    val enableDismiss: Boolean,
    val icon: FluentIcon?,
    val subTitle: String?,
    val actionText: String?,
    val duration: NotificationDuration,
    private val continuation: CancellableContinuation<NotificationResult>,
    val animationBehavior: AnimationBehavior
) : NotificationMetadata {

    override fun clicked(scope: CoroutineScope?) {
        try {
            if(scope == null) {
                if (continuation.isActive) continuation.resume(NotificationResult.CLICKED)
                return
            }
            scope.launch {
                animationBehavior.onClickAnimation()
                if (continuation.isActive) continuation.resume(NotificationResult.CLICKED)
            }
        } catch (e: Exception) {
            // This can happen if there is a race condition b/w two events. In that case, we ignore the second event.
        }
    }

    override fun dismiss(scope: CoroutineScope?) {
        try {
            if(scope == null) {
                if (continuation.isActive) continuation.resume(NotificationResult.DISMISSED)
                return
            }
            scope.launch {
                animationBehavior.onDismissAnimation()
                if (continuation.isActive) continuation.resume(NotificationResult.DISMISSED)
            }
        } catch (e: Exception) {
            // This can happen if there is a race condition b/w two events. In that case, we ignore the second event.
        }
    }

    override fun timedOut(scope: CoroutineScope?) {
        try {
            if(scope == null) {
                if (continuation.isActive) continuation.resume(NotificationResult.TIMEOUT)
                return
            }
            scope.launch {
                animationBehavior.onTimeoutAnimation()
                if (continuation.isActive) continuation.resume(NotificationResult.TIMEOUT)
            }
        } catch (e: Exception) {
            // This can happen if there is a race condition b/w two events. In that case, we ignore the second event.
        }
    }
}

class SnackbarState {
    private val mutex = Mutex()

    var currentSnackbar by mutableStateOf<SnackbarMetadata?>(null)

    suspend fun showSnackbar(
        message: String,
        style: SnackbarStyle = SnackbarStyle.Neutral,
        enableDismiss: Boolean = false,
        icon: FluentIcon? = null,
        subTitle: String? = null,
        actionText: String? = null,
        duration: NotificationDuration = NotificationDuration.SHORT,
        animationBehavior: AnimationBehavior = AnimationBehavior()
    ): NotificationResult {
        mutex.withLock {
            try {
                return suspendCancellableCoroutine { it ->
                    currentSnackbar = SnackbarMetadata(
                        message,
                        style,
                        enableDismiss,
                        icon,
                        subTitle,
                        actionText,
                        duration,
                        it,
                        animationBehavior
                    )
                }
            } finally {
                currentSnackbar = null
                delay(75)
            }
        }
    }
}

@Composable
fun Modifier.swipeToDismiss(
    animationVariables: AnimationVariables,
    scope: CoroutineScope,
    metadata: SnackbarMetadata
): Modifier {
    val configuration = LocalConfiguration.current
    val dismissThreshold =
        dpToPx(configuration.screenWidthDp.dp) * 0.33f  // One-third of screen width
    return this.pointerInput(Unit) {
        detectHorizontalDragGestures(
            onDragEnd = {
                if (animationVariables.offsetX.value < -dismissThreshold) {
                    scope.launch {
                        metadata.dismiss()
                    }
                } else {
                    scope.launch {
                        animationVariables.offsetX.animateTo(
                            0f,
                            animationSpec = tween(300)
                        )
                    }
                }
            },
            onHorizontalDrag = { _, dragAmount ->
                scope.launch {
                    animationVariables.offsetX.snapTo(animationVariables.offsetX.value + dragAmount)
                }
            }
        )
    }
}

/**
 * Snackbar are transient Notification control used to deliver information which can be timedout or
 * can be cleared by user pressing the CTA or dismiss icon. Snackbar is rendered using [SnackbarMetadata]
 * which saves all the information about it. Snackbar shows one message at a time and uses a [SnackbarState]
 * to save all the requests. Multiple styles of Snackbar are supported using [SnackbarStyle].
 *
 * @param snackbarState Queue to store all the Notification requests.
 * @param modifier Optional modifier to be applied to Snackbar.
 * @param snackbarTokens Optional Tokens to redesign Snackbar.
 * @param enableSwipeToDismiss Optional flag to enable swipe to dismiss functionality.
 */
@Composable
fun Snackbar(
    snackbarState: SnackbarState,
    modifier: Modifier = Modifier,
    snackbarTokens: SnackBarTokens? = null,
    enableSwipeToDismiss: Boolean = false
) {
    val metadata = snackbarState.currentSnackbar ?: return
    val scope = rememberCoroutineScope()

    val themeID =
        FluentTheme.themeID    //Adding This only for recomposition in case of Token Updates. Unused otherwise.
    val token = snackbarTokens
        ?: FluentTheme.controlTokens.tokens[ControlTokens.ControlType.SnackbarControlType] as SnackBarTokens

    val snackBarInfo = SnackBarInfo(metadata.style, !metadata.subTitle.isNullOrBlank())
    var textPaddingValues =
        if (metadata.actionText == null && !metadata.enableDismiss) PaddingValues(
            start = 16.dp,
            top = 12.dp,
            bottom = 12.dp,
            end = 16.dp
        ) else PaddingValues(start = 16.dp, top = 12.dp, bottom = 12.dp)
    val shadowElevationValue = token.shadowElevationValue(snackBarInfo)
    NotificationContainer(
        notificationMetadata = metadata,
        hasIcon = metadata.icon != null,
        hasAction = metadata.actionText != null,
        duration = metadata.duration,
        scope = scope,
        animationBehavior = metadata.animationBehavior,
    ) { animationVariables ->
        val swipeToDismissModifier = if (enableSwipeToDismiss) {
            modifier.swipeToDismiss(
                animationVariables,
                scope,
                metadata
            )
        } else {
            modifier
        }
        Row(
            swipeToDismissModifier
                .graphicsLayer(
                    scaleX = animationVariables.scale.value,
                    scaleY = animationVariables.scale.value,
                    alpha = animationVariables.alpha.value,
                    translationX = animationVariables.offsetX.value,
                    translationY = animationVariables.offsetY.value
                )
                .padding(horizontal = 16.dp)
                .defaultMinSize(minHeight = 52.dp)
                .fillMaxWidth()
                .shadow(
                    elevation = shadowElevationValue,
                    shape = RoundedCornerShape(8.dp)
                )
                .clip(RoundedCornerShape(8.dp))
                .background(token.backgroundBrush(snackBarInfo))
                .semantics {
                    liveRegion = LiveRegionMode.Polite
                }
                .testTag(SNACK_BAR),
            verticalAlignment = Alignment.CenterVertically
        ) {
            if (metadata.icon != null && metadata.icon.isIconAvailable()) {
                Box(
                    modifier = Modifier
                        .testTag(SNACK_BAR_ICON)
                        .then(
                            if (metadata.icon.onClick != null) {
                                Modifier.clickable(
                                    interactionSource = remember { MutableInteractionSource() },
                                    indication = rememberRipple(),
                                    enabled = true,
                                    role = Role.Image,
                                    onClick = metadata.icon.onClick!!
                                )
                            } else Modifier
                        )
                ) {
                    Icon(
                        metadata.icon,
                        modifier = Modifier
                            .padding(start = 16.dp, top = 12.dp, bottom = 12.dp)
                            .size(token.leftIconSize(snackBarInfo)),
                        tint = token.iconColor(snackBarInfo)
                    )
                }
            }
            Column(
                Modifier
                    .weight(1F)
                    .padding(textPaddingValues)
            ) {
                BasicText(
                    text = metadata.message,
                    style = token.titleTypography(snackBarInfo)
                )
                if (!metadata.subTitle.isNullOrBlank()) {
                    BasicText(
                        text = metadata.subTitle,
                        style = token.subtitleTypography(snackBarInfo),
                        modifier = Modifier.testTag(SNACK_BAR_SUBTITLE)
                    )
                }

            }

            if (metadata.actionText != null) {
                Button(
                    onClick = {
                        metadata.clicked(scope)
                    },
                    modifier = Modifier
                        .testTag(SNACK_BAR_ACTION_BUTTON)
                        .then(
                            if (!metadata.enableDismiss)
                                Modifier.padding(horizontal = 16.dp, vertical = 12.dp)
                            else
                                Modifier.padding(start = 16.dp, top = 12.dp, bottom = 12.dp)
                        ),
                    text = metadata.actionText,
                    style = ButtonStyle.TextButton,
                    size = ButtonSize.Small,
                    buttonTokens = object : ButtonTokens() {
                        @Composable
                        override fun textColor(buttonInfo: ButtonInfo): StateColor {
                            return StateColor(
                                rest = token.iconColor(snackBarInfo),
                                pressed = token.iconColor(snackBarInfo),
                                focused = token.iconColor(snackBarInfo),
                            )
                        }
                    }
                )
            }

            if (metadata.enableDismiss) {
                Box(
                    modifier = Modifier
                        .clickable(
                            interactionSource = remember { MutableInteractionSource() },
                            indication = rememberRipple(),
                            enabled = true,
                            role = Role.Image,
                            onClickLabel = "Dismiss",
                            onClick = {
                                metadata.dismiss(scope)
                            }
                        )
                        .testTag(SNACK_BAR_DISMISS_BUTTON)
                ) {
                    Icon(
                        Icons.Filled.Close,
                        "Dismiss",
                        modifier = Modifier
                            .padding(start = 12.dp, top = 12.dp, bottom = 12.dp, end = 16.dp)
                            .size(token.dismissIconSize(snackBarInfo)),
                        tint = token.iconColor(snackBarInfo)
                    )
                }
            }
        }
    }
}
```

## File: src/main/java/com/microsoft/fluentui/tokenized/notification/StackableSnackbar.kt
```kotlin
package com.microsoft.fluentui.tokenized.notification

import android.util.Log
import androidx.compose.animation.animateColorAsState
import androidx.compose.animation.core.Animatable
import androidx.compose.animation.core.FastOutLinearInEasing
import androidx.compose.animation.core.FastOutSlowInEasing
import androidx.compose.animation.core.Spring
import androidx.compose.animation.core.animateDpAsState
import androidx.compose.animation.core.animateFloatAsState
import androidx.compose.animation.core.spring
import androidx.compose.animation.core.tween
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.focusable
import androidx.compose.foundation.gestures.detectHorizontalDragGestures
import androidx.compose.foundation.interaction.MutableInteractionSource
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.defaultMinSize
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.wrapContentHeight
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.Text
import androidx.compose.material.ripple.rememberRipple
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.MutableIntState
import androidx.compose.runtime.MutableState
import androidx.compose.runtime.Stable
import androidx.compose.runtime.derivedStateOf
import androidx.compose.runtime.getValue
import androidx.compose.runtime.key
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.mutableStateListOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.setValue
import androidx.compose.runtime.snapshotFlow
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.draw.shadow
import androidx.compose.ui.focus.FocusRequester
import androidx.compose.ui.focus.focusRequester
import androidx.compose.ui.focus.onFocusChanged
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.graphicsLayer
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.layout.LayoutCoordinates
import androidx.compose.ui.layout.onGloballyPositioned
import androidx.compose.ui.platform.LocalConfiguration
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.platform.LocalFocusManager
import androidx.compose.ui.platform.LocalView
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.semantics.Role
import androidx.compose.ui.semantics.contentDescription
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.times
import com.microsoft.fluentui.notification.R
import com.microsoft.fluentui.theme.token.FluentIcon
import com.microsoft.fluentui.theme.token.Icon
import com.microsoft.fluentui.theme.token.StateColor
import com.microsoft.fluentui.theme.token.controlTokens.ButtonInfo
import com.microsoft.fluentui.theme.token.controlTokens.ButtonSize
import com.microsoft.fluentui.theme.token.controlTokens.ButtonStyle
import com.microsoft.fluentui.theme.token.controlTokens.ButtonTokens
import com.microsoft.fluentui.theme.token.controlTokens.SnackBarInfo
import com.microsoft.fluentui.theme.token.controlTokens.SnackbarStyle
import com.microsoft.fluentui.theme.token.controlTokens.StackableSnackBarTokens
import com.microsoft.fluentui.theme.token.controlTokens.StackableSnackbarEntryAnimationType
import com.microsoft.fluentui.theme.token.controlTokens.StackableSnackbarExitAnimationType
import com.microsoft.fluentui.tokenized.controls.Button
import kotlinx.coroutines.delay
import kotlinx.coroutines.flow.drop
import kotlinx.coroutines.launch
import kotlin.math.abs
import kotlin.math.pow

private const val ANIMATION_DURATION_MS = 250
private const val SWIPE_AWAY_ANIMATION_TARGET_FACTOR = 1.2f
private const val SWIPE_TO_DISMISS_THRESHOLD_DIVISOR = 4
private const val DEFAULT_NUMBER_OF_SNACKBARS_EXPANDED = 10
private const val DEFAULT_NUMBER_OF_SNACKBARS_COLLAPSED = 5

//TODO: Add accessibility support for the stack and individual snackbars
//TODO: Perf, reduce recompositions, make stable, minimize launch effect tracked variables

private object SnackBarTestTags {
    const val SNACK_BAR = "snack_bar"
    const val SNACK_BAR_ICON = "snack_bar_icon"
    const val SNACK_BAR_SUBTITLE = "snack_bar_subtitle"
    const val SNACK_BAR_ACTION_BUTTON = "snack_bar_action_button"
}

private object SnackBarLabels {
    const val STACK_HEIGHT_ANIMATION = "StackHeightAnimation"
    const val WIDTH_SCALE_ANIMATION = "WidthScaleAnimation"
    const val SCRIM_COLOR_ANIMATION = "ScrimColorAnimation"
}

/**
 * Enum class to define the visibility state of a snackbar item within the stack.
 */
enum class ItemVisibility {
    /** The snackbar is currently visible. */
    Visible,

    /** The snackbar is currently hidden. */
    Hidden,

    /** The snackbar is being removed with an animation. */
    BeingRemoved
}

private val DEFAULT_SNACKBAR_TOKENS = StackableSnackBarTokens()

/**
 * Data model for an individual snackbar item.
 *
 * @property message The main text message to be displayed in the snackbar.
 * @property id A unique identifier for the snackbar item. Defaults to a random UUID.
 * @property style The visual style of the snackbar, e.g., Neutral, Danger, Warning.
 * @property leadingIcon An optional leading icon to display.
 * @property trailingIcon An optional trailing icon to display.
 * @property subTitle An optional subtitle text.
 * @property actionText Optional text for the action button. If null, no action button is shown.
 * @property snackBarToken The tokens for customizing the snackbar's appearance.
 * @property onActionTextClicked The callback to be invoked when the action button is clicked.
 * @property enableSwipeToDismiss If `true`, swiping the snackbar item horizontally will dismiss it.
 * @property onTitleOverflowChange The callback to determine on whether the text(title) has overflown. It receives a boolean indicating if there is an overflow.
 */
@Stable
data class SnackBarItemModel(
    val message: String,
    val id: String = java.util.UUID.randomUUID().toString(),
    val style: SnackbarStyle = SnackbarStyle.Neutral,
    val leadingIcon: FluentIcon? = null,
    var trailingIcon: FluentIcon? = null,
    val subTitle: String? = null,
    val actionText: String? = null,
    val snackBarToken: StackableSnackBarTokens = DEFAULT_SNACKBAR_TOKENS,
    val onActionTextClicked: () -> Unit = {},
    val enableSwipeToDismiss: Boolean = true,
    val onTitleOverflowChange: ((Boolean) -> Unit)? = null
)

internal data class SnackbarItemInternal(
    val model: SnackBarItemModel,
    var visibility: MutableState<ItemVisibility> = mutableStateOf(ItemVisibility.Visible),
    var contentHeight: MutableIntState = mutableIntStateOf(0)
)

/**
 * State holder for a stack of snackbars. It manages the list of items, their visibility, and height,
 * providing methods to add, remove, and toggle the stack's expanded state.
 *
 * @param initialSnackbars The initial list of snackbars to be displayed.
 * @param maxCollapsedSize The maximum number of snackbars to show when the stack is collapsed.
 * @param maxExpandedSize The maximum number of snackbars to show when the stack is expanded.
 */
class SnackBarStackState(
    internal val initialSnackbars: MutableList<SnackBarItemModel> = mutableListOf(),
    internal var maxCollapsedSize: Int = DEFAULT_NUMBER_OF_SNACKBARS_COLLAPSED,
    internal var maxExpandedSize: Int = DEFAULT_NUMBER_OF_SNACKBARS_EXPANDED
) {
    internal val snapshotStateList: MutableList<SnackbarItemInternal> =
        mutableStateListOf<SnackbarItemInternal>().apply {
            addAll(initialSnackbars.map { SnackbarItemInternal(it) })
        }

    var expanded by mutableStateOf(false)
        private set
    var selectedItemId: String? = null
        private set
    var focusRequestToken by mutableIntStateOf(0)
        private set
    internal var maxCurrentSize = maxCollapsedSize

    internal var combinedStackHeight by mutableIntStateOf(0)

    fun getSnackBarItemById(id: String): SnackBarItemModel? =
        snapshotStateList.firstOrNull { it.model.id == id }?.model

    fun getSnackbarItemByIndex(index: Int): SnackBarItemModel? =
        snapshotStateList.getOrNull(index)?.model

    fun getSnackBarItemIndexById(id: String): Int? =
        snapshotStateList.indexOfFirst { it.model.id == id }.let { if (it == -1) null else it }

    fun getAllSnackBarItems(): List<SnackBarItemModel> = snapshotStateList.map { it.model }

    suspend fun clearAllSnackBars(animateRemoval: Boolean = false) {
        if (animateRemoval) {
            snapshotStateList.reversed().forEach {
                it.visibility.value = ItemVisibility.BeingRemoved
                delay(40)
            }
            delay(ANIMATION_DURATION_MS.toLong())
        }
        snapshotStateList.clear()
    }

    /**
     * Adds a new snackbar to the stack. If the stack exceeds its maximum current size, the
     * oldest visible snackbar is automatically hidden.
     *
     * @param snackbar The [SnackBarItemModel] to add.
     */
    fun addSnackbar(snackbar: SnackBarItemModel) {
        if (snapshotStateList.any { it.model.id == snackbar.id }) {
            return
        }
        maxCurrentSize = if (expanded) maxExpandedSize else maxCollapsedSize
        snapshotStateList.add(SnackbarItemInternal(snackbar))
        selectedItemId = snackbar.id
        focusRequestToken++
        if (sizeVisible() > maxCurrentSize) {
            hideOldest()
        }
    }

    /**
     * Removes a snackbar from the stack by its unique ID.
     *
     * @param id The ID of the snackbar to remove.
     * @return `true` if the snackbar was found and removed, `false` otherwise.
     */
    fun removeSnackbarById(id: String): Boolean {
        val index = snapshotStateList.indexOfFirst { id == it.model.id }
        if (index == -1) {
            return false
        }
        if (id != selectedItemId) {
            snapshotStateList.removeAt(index)
            return true
        }
        selectedItemId = if (index == snapshotStateList.size - 1){
            snapshotStateList.firstOrNull{ it.visibility.value == ItemVisibility.Visible && it.model.id != selectedItemId }?.model?.id
        } else {
            snapshotStateList.getOrNull(index+1)?.model?.id
        }
        snapshotStateList.removeAt(index)
        focusRequestToken++
        return true
    }

    fun updateSelectedItem(id: String) {
        selectedItemId = id
    }

    /**
     * Removes a snackbar with an exit animation. The actual removal from the state list is
     * delayed to allow the animation to complete.
     *
     * @param id The ID of the snackbar to remove.
     * @param showLastHiddenSnackbarOnRemove If `true`, the oldest hidden snackbar will become visible after removal.
     * @param onRemoveCompleteCallback A callback invoked after the removal process is complete.
     */
    suspend fun removeSnackbarByIdWithAnimation(
        id: String,
        showLastHiddenSnackbarOnRemove: Boolean = true,
        onRemoveCompleteCallback: () -> Unit = {}
    ) {
        val snackbar = snapshotStateList.firstOrNull { it.model.id == id } ?: return
        if (id == selectedItemId) {
            val index = snapshotStateList.indexOf(snackbar)
            selectedItemId = if (index == snapshotStateList.size - 1) {
                snapshotStateList.firstOrNull {
                    it.visibility.value == ItemVisibility.Visible && it.model.id != id
                }?.model?.id
            } else {
                snapshotStateList.getOrNull(index + 1)?.model?.id
            }
        }
        snackbar.visibility.value = ItemVisibility.BeingRemoved
        delay(ANIMATION_DURATION_MS.toLong())
        snapshotStateList.remove(snackbar)
        if (id != selectedItemId) {
            focusRequestToken++
        }
        if (showLastHiddenSnackbarOnRemove) {
            onVisibleSizeChange()
        }
        onRemoveCompleteCallback()
    }

    /**
     * Toggles the expanded state of the snackbar stack. This changes the layout and the
     * maximum number of visible snackbars.
     */
    fun toggleExpandedState() {
        expanded = !expanded
        maxCurrentSize = if (expanded) maxExpandedSize else maxCollapsedSize
        onVisibleSizeChange()
        selectedItemId = if (expanded) {
            snapshotStateList.firstOrNull { it.visibility.value == ItemVisibility.Visible }?.model?.id
        } else {
            snapshotStateList.lastOrNull()?.model?.id
        }
        focusRequestToken++
    }

    /**
     * Adjusts the visibility of snackbars based on the current expanded/collapsed state and
     * the configured maximum size. This function ensures the number of visible snackbars
     * does not exceed the allowed maximum.
     */
    private fun onVisibleSizeChange() {
        val numVisibleSnackbars =
            snapshotStateList.count { it.visibility.value == ItemVisibility.Visible }
        var (numUpdatesRequired, sequenceIterationOrder, targetVisibilityAfterUpdate) =
            if (numVisibleSnackbars > maxCurrentSize) {
                Triple(
                    numVisibleSnackbars - maxCurrentSize,
                    snapshotStateList,
                    ItemVisibility.Hidden
                )
            } else {
                Triple(
                    maxCurrentSize - numVisibleSnackbars,
                    snapshotStateList.asReversed(),
                    ItemVisibility.Visible
                )
            }

        sequenceIterationOrder.forEach {
            if (numUpdatesRequired <= 0) return@forEach
            if (it.visibility.value != targetVisibilityAfterUpdate) {
                it.visibility.value = targetVisibilityAfterUpdate
                numUpdatesRequired--
            }
        }
    }

    /**
     * Hides the oldest visible snackbar.
     *
     * @return `true` if a snackbar was hidden, `false` otherwise.
     */
    fun hideOldest(): Boolean {
        snapshotStateList.firstOrNull { it.visibility.value == ItemVisibility.Visible }?.let {
            it.visibility.value = ItemVisibility.Hidden
            return true
        }
        return false
    }

    /**
     * Hides the newest visible snackbar.
     *
     * @return `true` if a snackbar was hidden, `false` otherwise.
     */
    fun hideLatest(): Boolean {
        snapshotStateList.lastOrNull { it.visibility.value == ItemVisibility.Visible }?.let {
            it.visibility.value = ItemVisibility.Hidden
            return true
        }
        return false
    }

    /**
     * Removes the newest snackbar from the stack.
     *
     * @param skipHidden If `true`, only visible snackbars are considered for removal.
     * @return `true` if a snackbar was removed, `false` otherwise.
     */
    fun removeLatest(skipHidden: Boolean = false): Boolean {
        snapshotStateList.lastOrNull { (skipHidden && it.visibility.value == ItemVisibility.Visible) || !skipHidden }
            ?.let {
                snapshotStateList.remove(it)
                return true
            }
        return false
    }

    /**
     * Shows the oldest hidden snackbar.
     *
     * @return `true` if a snackbar was shown, `false` otherwise.
     */
    fun showLastHidden(): Boolean {
        snapshotStateList.lastOrNull { it.visibility.value == ItemVisibility.Hidden }?.let {
            it.visibility.value = ItemVisibility.Visible
            return true
        }
        return false
    }

    /**
     * Calculates the combined height of all visible snackbars that appear after a given index.
     *
     * @param index The starting index.
     * @return The combined height in pixels.
     */
    internal fun heightAfterIndex(index: Int): Int {
        var ans = 0
        snapshotStateList.drop(index + 1).forEach {
            if (it.visibility.value == ItemVisibility.Visible) {
                ans += it.contentHeight.intValue
            }
        }
        return ans
    }

    /**
     * Returns the total number of snackbars (visible and hidden) in the stack.
     *
     * @return The total size of the stack.
     */
    fun size(): Int = snapshotStateList.size

    /**
     * Returns the number of currently visible snackbars in the stack.
     *
     * @return The number of visible snackbars.
     */
    fun sizeVisible(): Int =
        snapshotStateList.count { it.visibility.value == ItemVisibility.Visible }
}

/**
 * Creates and remembers a [SnackBarStackState] for managing a stack of snackbars.
 *
 * @param initial The initial list of snackbar models. Defaults to an empty list.
 * @param maxExpandedSize The maximum number of snackbars to show when the stack is expanded.
 * @param maxCollapsedSize The maximum number of snackbars to show when the stack is collapsed.
 * @return A [SnackBarStackState] instance.
 */
@Composable
fun rememberSnackBarStackState(
    initial: List<SnackBarItemModel> = emptyList(),
    maxExpandedSize: Int = DEFAULT_NUMBER_OF_SNACKBARS_EXPANDED,
    maxCollapsedSize: Int = DEFAULT_NUMBER_OF_SNACKBARS_COLLAPSED
): SnackBarStackState {
    return remember {
        SnackBarStackState(
            initialSnackbars = initial.toMutableList(),
            maxExpandedSize = maxExpandedSize,
            maxCollapsedSize = maxCollapsedSize
        )
    }
}

/**
 * Configuration data for the [SnackBarStack] composable.
 *
 * @property snackbarGapWhenExpanded The vertical gap between snackbars when the stack is expanded.
 * @property snackbarHeightWhenCollapsed The fixed height of a snackbar when the stack is collapsed.
 * @property maximumTextLinesWhenCollapsed The maximum number of text lines allowed for a snackbar's message and subtitle when collapsed.
 * @property snackbarPeekHeightWhenCollapsed The vertical distance one snackbar peeks from the one below it when collapsed.
 * @property snackbarStackBottomPadding The padding at the bottom of the entire stack.
 * @property snackbarStackExpandedTopPadding The padding at the top of the stack when it's expanded.
 */
data class SnackBarStackConfig(
    val snackbarGapWhenExpanded: Dp = 10.dp,
    val maxSnackbarHeightWhenCollapsed: Dp = 80.dp,
    val maximumTextLinesWhenCollapsed: Int = 2,
    val snackbarPeekHeightWhenCollapsed: Dp = 8.dp,
    val snackbarStackBottomPadding: Dp = 20.dp,
    val snackbarStackExpandedTopPadding: Dp = 200.dp
)

/**
 * A composable that displays a stack of snackbars. It supports a collapsed state (showing a
 * limited number of items) and an expanded state (showing all items). The stack is
 * managed by the provided [SnackBarStackState].
 *
 * @param state The state object that manages the snackbar stack.
 * @param snackBarStackConfig The configuration for the stack's appearance and behavior.
 */
@Composable
fun SnackBarStack(
    state: SnackBarStackState,
    snackBarStackConfig: SnackBarStackConfig = SnackBarStackConfig()
) {
    val localDensity = LocalDensity.current
    val view = LocalView.current
    val focusManager = LocalFocusManager.current

    val totalVisibleSnackbars by remember { derivedStateOf { state.sizeVisible() } }
    val targetHeight = if (totalVisibleSnackbars == 0) {
        0.dp
    } else if (state.expanded) {
        with(localDensity) { state.combinedStackHeight.toDp() + snackBarStackConfig.snackbarStackExpandedTopPadding }
    } else {
        snackBarStackConfig.maxSnackbarHeightWhenCollapsed + (totalVisibleSnackbars - 1) * snackBarStackConfig.snackbarPeekHeightWhenCollapsed
    }
    val animatedStackHeight by animateDpAsState(
        targetValue = targetHeight,
        animationSpec = tween(durationMillis = ANIMATION_DURATION_MS, easing = FastOutSlowInEasing),
        label = SnackBarLabels.STACK_HEIGHT_ANIMATION
    )

    val expandedAnnouncement = stringResource(R.string.expanded_announcement)
    val collapsedAnnouncement = stringResource(R.string.collapsed_announcement)

    val screenWidth = LocalConfiguration.current.screenWidthDp.dp
    val screenWidthPx = with(localDensity) { screenWidth.toPx() }

    val scrollState =
        rememberScrollState() //TODO: Keep Focus Anchored To the Bottom when expanded and new snackbar added

    LaunchedEffect(expandedAnnouncement, collapsedAnnouncement) {
        snapshotFlow { state.expanded }
            .drop(1) // dropping the first emission since it's not a result of user interaction and can cause unwanted announcements on initial load.
            .collect { isExpanded ->
                if (!isExpanded) {
                    focusManager.clearFocus()
                }
                view.announceForAccessibility(if (isExpanded) expandedAnnouncement else collapsedAnnouncement)
            }
    }
    Column(
        modifier = Modifier
            .fillMaxWidth()
            .wrapContentHeight()
            .verticalScroll(scrollState, enabled = state.expanded)
            .padding(bottom = snackBarStackConfig.snackbarStackBottomPadding),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.Bottom
    ) {
        Box(
            modifier = Modifier
                .fillMaxWidth()
                .height(animatedStackHeight),
            contentAlignment = Alignment.BottomCenter
        ) {
            var visibleSnackbarsEncountered = 0
            state.snapshotStateList.forEachIndexed { index, snackBarModel ->
                val visibleIndex = totalVisibleSnackbars - 1 - visibleSnackbarsEncountered
                visibleSnackbarsEncountered += if (snackBarModel.visibility.value == ItemVisibility.Visible) 1 else 0
                key(snackBarModel.model.id) {
                    SnackBarStackItem(
                        state = state,
                        visibleIndex = visibleIndex,
                        trueIndex = index,
                        onSwipedAway = { idToRemove ->
                            state.removeSnackbarById(idToRemove)
                            state.showLastHidden()
                        },
                        snackBarStackConfig = snackBarStackConfig,
                        screenWidthPx = screenWidthPx
                    )
                }
            }
        }
    }
}

/**
 * A private composable for a single snackbar item in the stack. It handles individual
 * animations, styling, and swipe-to-dismiss gestures.
 *
 * @param state The state object managing the snackbar stack.
 * @param visibleIndex The logical index of the snackbar among the visible items.
 * @param trueIndex The actual index of the snackbar in the full list.
 * @param onSwipedAway A callback to be invoked when the snackbar is swiped off-screen.
 * @param snackBarStackConfig The configuration for the stack's appearance.
 * @param screenWidthPx The width of the screen in pixels, used for swipe animation.
 */
@Composable
private fun SnackBarStackItem(
    state: SnackBarStackState,
    visibleIndex: Int,
    trueIndex: Int,
    onSwipedAway: (String) -> Unit,
    snackBarStackConfig: SnackBarStackConfig,
    screenWidthPx: Float
) {
    val modelWrapper = state.snapshotStateList[trueIndex]
    val model = modelWrapper.model
    val cardHeight = snackBarStackConfig.maxSnackbarHeightWhenCollapsed
    val peekHeight = snackBarStackConfig.snackbarPeekHeightWhenCollapsed

    val scope = rememberCoroutineScope()
    val localDensity = LocalDensity.current
    val isTop = visibleIndex == 0

    val token = model.snackBarToken
    val snackBarInfo = SnackBarInfo(model.style, false)
    val entryAnimationType = token.entryAnimationType(snackBarInfo)
    val exitAnimationType = token.exitAnimationType(snackBarInfo)

    val focusRequester = remember { FocusRequester() }

    LaunchedEffect(state.focusRequestToken) {
        if (state.selectedItemId == model.id) {
            delay(ANIMATION_DURATION_MS.toLong())
            try {
                focusRequester.requestFocus()
            } catch (e: Exception) {
                Log.e("SnackBarStackItem", "Failed to request focus for snackbar with id ${model.id}", e)
            }
        }
    }

    // Vertical Offset Animation: Related to Stack Expansion/Collapse and Item Position in Stack
    val initialYOffset = when (entryAnimationType) {
        StackableSnackbarEntryAnimationType.SlideInFromAbove -> -with(localDensity) { cardHeight.toPx() }
        StackableSnackbarEntryAnimationType.SlideInFromBelow -> with(localDensity) { cardHeight.toPx() }
        StackableSnackbarEntryAnimationType.FadeIn -> 0f
        StackableSnackbarEntryAnimationType.SlideInFromLeft -> 0f
        StackableSnackbarEntryAnimationType.SlideInFromRight -> 0f
    }
    val animatedYOffset = remember { Animatable(initialYOffset) }
    LaunchedEffect(
        trueIndex,
        state.expanded,
        state.snapshotStateList.size,
        state.heightAfterIndex(trueIndex),
        modelWrapper.visibility.value
    ) {
        if (modelWrapper.visibility.value == ItemVisibility.BeingRemoved) {
            return@LaunchedEffect
        }
        animatedYOffset.animateTo(
            with(localDensity) {
                if (state.expanded) -state.heightAfterIndex(trueIndex)
                    .toFloat() else (visibleIndex * -peekHeight).toPx()
            },
            animationSpec = spring(stiffness = Spring.StiffnessLow)
        )
    }

    // Width Scale Animation: Related to Cards Shrinking when stacked
    val stackedWidthScaleFactor =
        token.snackbarWidthScalingFactor(snackBarInfo).coerceIn(0.01f, 2.0f)
    val targetWidthScale = if (state.expanded) 1f else stackedWidthScaleFactor.pow(visibleIndex)
    val animatedWidthScale = animateFloatAsState(
        targetValue = targetWidthScale,
        animationSpec = tween(durationMillis = ANIMATION_DURATION_MS, easing = FastOutSlowInEasing),
        label = SnackBarLabels.WIDTH_SCALE_ANIMATION
    )

    // Opacity Animation: Related to Entry/Exit Fade Animations
    val opacityProgress = remember { Animatable(0f) }
    LaunchedEffect(modelWrapper.visibility.value) {
        val visibility = modelWrapper.visibility.value
        opacityProgress.animateTo(
            if (visibility != ItemVisibility.Visible) 0f else 1f,
            tween(ANIMATION_DURATION_MS)
        )
    }

    // Horizontal Animations: Related to Swipe to Dismiss and Entry/Exit
    val initialXOffset = when (entryAnimationType) {
        StackableSnackbarEntryAnimationType.SlideInFromLeft -> -screenWidthPx
        StackableSnackbarEntryAnimationType.SlideInFromRight -> screenWidthPx
        StackableSnackbarEntryAnimationType.FadeIn -> 0f
        StackableSnackbarEntryAnimationType.SlideInFromAbove -> 0f
        StackableSnackbarEntryAnimationType.SlideInFromBelow -> 0f
    }
    val swipeX = remember { Animatable(initialXOffset) }
    LaunchedEffect(modelWrapper.visibility.value, state.expanded, visibleIndex) {
        if (modelWrapper.visibility.value == ItemVisibility.BeingRemoved) {
            val target = when (exitAnimationType) {
                StackableSnackbarExitAnimationType.SlideOutToLeft -> screenWidthPx * -SWIPE_AWAY_ANIMATION_TARGET_FACTOR
                StackableSnackbarExitAnimationType.SlideOutToRight -> screenWidthPx * SWIPE_AWAY_ANIMATION_TARGET_FACTOR
                StackableSnackbarExitAnimationType.FadeOut -> 0f
            }
            swipeX.animateTo(
                with(localDensity) { target },
                animationSpec = tween(
                    durationMillis = ANIMATION_DURATION_MS,
                    easing = FastOutLinearInEasing
                )
            )
        } else {
            if (isTop) {
                swipeX.animateTo(0f)
            } else {
                swipeX.snapTo(0f)
            }
        }
    }

    val textPaddingValues =
        if (model.actionText == null && model.trailingIcon != null) PaddingValues(
            start = 16.dp,
            top = 12.dp,
            bottom = 12.dp,
            end = 16.dp
        ) else PaddingValues(start = 16.dp, top = 12.dp, bottom = 12.dp)
    Box(
        modifier = Modifier
            .then(
                if (state.expanded) {
                    Modifier.onGloballyPositioned(
                        onGloballyPositioned = { coordinates: LayoutCoordinates ->
                            val contentHeight = coordinates.size.height
                            if (modelWrapper.contentHeight.intValue == contentHeight) {
                                return@onGloballyPositioned
                            }
                            modelWrapper.contentHeight.intValue =
                                contentHeight + with(localDensity) {
                                    snackBarStackConfig.snackbarGapWhenExpanded.toPx().toInt()
                                }
                            state.combinedStackHeight = state.heightAfterIndex(0)
                            return@onGloballyPositioned
                        }
                    )
                } else {
                    Modifier
                }
            )
            .graphicsLayer(
                alpha = opacityProgress.value,
                translationX = swipeX.value,
                translationY = animatedYOffset.value,
                scaleX = animatedWidthScale.value,
                scaleY = animatedWidthScale.value
            )
            .wrapContentHeight()
            .then(
                if (model.enableSwipeToDismiss && (isTop || state.expanded)) Modifier.pointerInput(model.id) {
                    detectHorizontalDragGestures(
                        onDragStart = {},
                        onDragEnd = {
                            val threshold = screenWidthPx / SWIPE_TO_DISMISS_THRESHOLD_DIVISOR
                            scope.launch {
                                if (abs(swipeX.value) > threshold) {
                                    val target = if (swipeX.value > 0)
                                        screenWidthPx * SWIPE_AWAY_ANIMATION_TARGET_FACTOR
                                    else
                                        screenWidthPx * -SWIPE_AWAY_ANIMATION_TARGET_FACTOR

                                    swipeX.animateTo(
                                        target,
                                        animationSpec = tween(
                                            durationMillis = ANIMATION_DURATION_MS,
                                            easing = FastOutLinearInEasing
                                        )
                                    )
                                    onSwipedAway(model.id)
                                } else {
                                    swipeX.animateTo(
                                        0f,
                                        animationSpec = spring(stiffness = Spring.StiffnessMedium)
                                    )
                                }
                            }
                        },
                        onDragCancel = {
                            scope.launch {
                                swipeX.animateTo(
                                    0f,
                                    animationSpec = spring(stiffness = Spring.StiffnessMedium)
                                )
                            }
                        }
                    ) { change, dragAmountX ->
                        change.consume()
                        scope.launch {
                            swipeX.snapTo(swipeX.value + dragAmountX)
                        }
                    }
                } else Modifier
            )
    ) {
        Row(
            Modifier
                .padding(horizontal = 16.dp)
                .defaultMinSize(minHeight = 52.dp)
                .fillMaxWidth()
                .shadow(
                    elevation = token.shadowElevationValue(snackBarInfo),
                    shape = RoundedCornerShape(8.dp)
                )
                .clip(RoundedCornerShape(8.dp))
                .background(token.backgroundBrush(snackBarInfo))
                .focusRequester(focusRequester)
                .onFocusChanged{
                    if (it.isFocused) {
                        state.updateSelectedItem(model.id)
                    }
                }
                .focusable()
                .then(
                    Modifier.semantics {
                        val resultString = buildString {
                            append("${trueIndex+1} of ${state.snapshotStateList.size} ${model.message}")
                            model.actionText?.let { append(", $it") }
                            model.trailingIcon?.contentDescription?.let { append(", $it") }
                        }
                        contentDescription = resultString
                    }
                )
                .testTag(SnackBarTestTags.SNACK_BAR),
            verticalAlignment = Alignment.CenterVertically
        ) {

            var hasTextOverflow by remember { mutableStateOf(false) }
            if (model.leadingIcon != null && model.leadingIcon.isIconAvailable()) {
                Box(
                    modifier = Modifier
                        .testTag(SnackBarTestTags.SNACK_BAR_ICON)
                        .then(
                            if (model.leadingIcon.onClick != null) {
                                Modifier.clickable(
                                    interactionSource = remember { MutableInteractionSource() },
                                    indication = rememberRipple(),
                                    enabled = true,
                                    role = Role.Image,
                                    onClick = model.leadingIcon.onClick!!
                                )
                            } else Modifier
                        )
                ) {
                    Icon(
                        model.leadingIcon,
                        modifier = Modifier
                            .padding(start = 16.dp, top = 12.dp, bottom = 12.dp)
                            .size(token.leftIconSize(snackBarInfo)),
                        tint = token.iconColor(snackBarInfo)
                    )
                }
            }
            Column(
                Modifier
                    .weight(1F)
                    .padding(textPaddingValues)
            ) {
                val messageMaxLines =
                    if (state.expanded) Int.MAX_VALUE else snackBarStackConfig.maximumTextLinesWhenCollapsed

                Text(
                    text = model.message,
                    style = token.titleTypography(snackBarInfo),
                    maxLines = messageMaxLines,
                    overflow = TextOverflow.Ellipsis,
                    onTextLayout = { textLayout ->
                        if (hasTextOverflow != textLayout.hasVisualOverflow) {
                            hasTextOverflow = textLayout.hasVisualOverflow
                            model.onTitleOverflowChange?.invoke(hasTextOverflow)
                        }
                    }
                )
                if (!model.subTitle.isNullOrBlank()) {
                    Text(
                        text = model.subTitle,
                        style = token.subtitleTypography(snackBarInfo),
                        maxLines = messageMaxLines,
                        overflow = TextOverflow.Ellipsis,
                        modifier = Modifier.testTag(SnackBarTestTags.SNACK_BAR_SUBTITLE)
                    )
                }

            }

            if (model.actionText != null) {
                Button(
                    onClick = {
                        model.onActionTextClicked()
                    },
                    modifier = Modifier
                        .testTag(SnackBarTestTags.SNACK_BAR_ACTION_BUTTON)
                        .then(
                            Modifier.padding(horizontal = 16.dp, vertical = 12.dp)
                        ),
                    text = model.actionText,
                    style = ButtonStyle.TextButton,
                    size = ButtonSize.Small,
                    buttonTokens = object : ButtonTokens() {
                        @Composable
                        override fun textColor(buttonInfo: ButtonInfo): StateColor {
                            return StateColor(
                                rest = token.iconColor(snackBarInfo),
                                pressed = token.iconColor(snackBarInfo),
                                focused = token.iconColor(snackBarInfo),
                            )
                        }
                    }
                )
            }

            model.trailingIcon?.let { icon ->
                if (icon.isIconAvailable()) {
                    Box(
                        modifier = Modifier
                            .testTag(SnackBarTestTags.SNACK_BAR_ICON)
                            .then(
                                icon.onClick?.let { onClick ->
                                    Modifier.clickable(
                                        interactionSource = remember { MutableInteractionSource() },
                                        indication = rememberRipple(),
                                        enabled = true,
                                        role = Role.Image,
                                        onClick = onClick
                                    )
                                } ?: Modifier
                            )
                    ) {
                        Icon(
                            icon,
                            modifier = Modifier
                                .padding(top = 12.dp, bottom = 12.dp, end = 16.dp)
                                .size(token.leftIconSize(snackBarInfo)),
                            tint = token.iconColor(snackBarInfo)
                        )
                    }
                }
            }
        }
    }
}

private const val SCRIM_DEFAULT_OPACITY = 0.6f

/**
 * A composable that provides a semi-transparent overlay (scrim) that can be used to block user
 * interaction with content behind it. The scrim animates its color and alpha.
 *
 * @param isActivated `true` if the scrim should be visible and opaque, `false` otherwise.
 * @param onDismiss A callback to be invoked when the scrim is clicked.
 * @param modifier The modifier to be applied to the scrim.
 */
@Composable
fun Scrim(
    isActivated: Boolean,
    onDismiss: () -> Unit,
    activatedColor: Color = Color.Black.copy(alpha = SCRIM_DEFAULT_OPACITY),
    modifier: Modifier = Modifier
) {
    val scrimColor by animateColorAsState(
        targetValue = if (isActivated) activatedColor else Color.Transparent,
        animationSpec = tween(durationMillis = ANIMATION_DURATION_MS),
        label = SnackBarLabels.SCRIM_COLOR_ANIMATION
    )

    if (scrimColor.alpha > 0f) {
        val scrimContentDescription = stringResource(R.string.scrim_content_description)
        Box(
            modifier = modifier
                .fillMaxSize()
                .background(scrimColor)
                .clickable(
                    interactionSource = remember { MutableInteractionSource() },
                    indication = null,
                    onClick = onDismiss
                )
                .semantics {
                    contentDescription = scrimContentDescription
                }
        )
    }
}
```

## File: src/main/java/com/microsoft/fluentui/tokenized/notification/ToolTip.kt
```kotlin
package com.microsoft.fluentui.tokenized.notification

import androidx.compose.animation.core.LinearEasing
import androidx.compose.animation.core.LinearOutSlowInEasing
import androidx.compose.animation.core.Transition
import androidx.compose.animation.core.animateFloat
import androidx.compose.animation.core.tween
import androidx.compose.animation.core.updateTransition
import androidx.compose.foundation.MutatorMutex
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.IntrinsicSize
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.offset
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.sizeIn
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.text.BasicText
import androidx.compose.runtime.Composable
import androidx.compose.runtime.DisposableEffect
import androidx.compose.runtime.Stable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.ExperimentalComposeUiApi
import androidx.compose.ui.Modifier
import androidx.compose.ui.composed
import androidx.compose.ui.draw.rotate
import androidx.compose.ui.graphics.graphicsLayer
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalLayoutDirection
import androidx.compose.ui.platform.debugInspectorInfo
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.semantics.paneTitle
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.semantics.testTagsAsResourceId
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.DpOffset
import androidx.compose.ui.unit.IntOffset
import androidx.compose.ui.unit.IntRect
import androidx.compose.ui.unit.IntSize
import androidx.compose.ui.unit.LayoutDirection
import androidx.compose.ui.unit.dp
import androidx.compose.ui.window.Popup
import androidx.compose.ui.window.PopupPositionProvider
import androidx.compose.ui.window.PopupProperties
import com.microsoft.fluentui.icons.ToolTipIcons
import com.microsoft.fluentui.icons.tooltipicons.Tip
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.ControlTokens
import com.microsoft.fluentui.theme.token.Icon
import com.microsoft.fluentui.theme.token.controlTokens.TooltipInfo
import com.microsoft.fluentui.theme.token.controlTokens.TooltipTokens
import com.microsoft.fluentui.util.dpToPx
import com.microsoft.fluentui.util.pxToDp
import com.microsoft.fluentui.util.softNavBarOffsetX
import kotlinx.coroutines.CancellableContinuation
import kotlinx.coroutines.launch
import kotlinx.coroutines.suspendCancellableCoroutine
import androidx.compose.runtime.saveable.Saver

/**
 * The state that is associated with an instance of a tooltip.
 * Each instance of tooltips should have its own [TooltipState].
 */
@Stable
interface TooltipState {
    /**
     * [Boolean] that will be used to update the visibility
     * state of the associated tooltip.
     */
    val isVisible: Boolean

    /**
     * Show the tooltip associated with the current [TooltipState].
     * When this method is called all of the other tooltips currently
     * being shown will dismiss.
     */
    suspend fun show()

    /**
     * Dismiss the tooltip associated with
     * this [TooltipState] if it's currently being shown.
     */
    fun dismiss()

    /**
     * Clean up when the this state leaves Composition.
     */
    fun onDispose()
}

@Stable
internal class TooltipStateImpl(private val mutatorMutex: MutatorMutex) : TooltipState {

    /**
     * [Boolean] that will be used to update the visibility
     * state of the associated tooltip.
     */
    override var isVisible by mutableStateOf(false)
        private set

    /**
     * continuation used to clean up
     */
    private var job: (CancellableContinuation<Unit>)? = null

    /**
     * Show the tooltip associated with the current [TooltipState].
     * It will dismiss after a short duration. When this method is called,
     * all of the other tooltips currently being shown will dismiss.
     */
    override suspend fun show() {
        mutatorMutex.mutate {
            try {
                suspendCancellableCoroutine { continuation: CancellableContinuation<Unit> ->
                    isVisible = true
                    job = continuation
                }
            } finally {
//                 cancellation has occurred
//                 and we close out the current tooltip.
                isVisible = false
            }
        }
    }

    /**
     * Dismiss the tooltip associated with
     * this [TooltipState] if it's currently being shown.
     */
    override fun dismiss() {
        isVisible = false
    }

    /**
     * Cleans up [MutatorMutex] when the tooltip associated
     * with this state leaves Composition.
     */
    override fun onDispose() {
        job?.cancel()
    }
}

object TooltipDefaults {
    /**
     * The global/default [MutatorMutex] used to sync Tooltips.
     */
    val GlobalMutatorMutex = MutatorMutex()
}

val TOOLTIP_TIP_TEST_TAG = "tooltip_tip_test_tag"
val TOOLTIP_CONTENT_TEST_TAG = "tooltip_content_test_tag"

/**
 * Create and remember the default [TooltipState].
 *
 * @param mutatorMutex [MutatorMutex] used to ensure that for all of the tooltips associated
 * with the mutator mutex, only one will be shown on the screen at any time.
 */
@Composable
fun rememberTooltipState(
    mutatorMutex: MutatorMutex = TooltipDefaults.GlobalMutatorMutex
): TooltipState =
    remember { TooltipStateImpl(mutatorMutex) }

/**
 *  ToolTipBox is a composable that shows a tooltip box with a title and a text anchor to its content.
 *  @param title The title of the tooltip box.
 *  @param text The text of the tooltip box.
 *  @param tooltipState The state of the tooltip box.
 *  @param modifier The modifier to be applied to the tooltip box.
 *  @param focusable Whether the tooltip box is focusable.
 *  @param offset The offset of the tooltip box.
 *  @param tipOffset The X offset to move tip icon relative to the tooltip box.
 *  @param onDismissRequest The callback to be invoked when the tooltip box is dismissed.
 *  @param tooltipTokens The tooltip tokens that are used to customize the tooltip box.
 *  @param content The content of the tooltip box.*
 */
@Composable
fun ToolTipBox(
    title: String?,
    text: String,
    tooltipState: TooltipState,
    modifier: Modifier = Modifier,
    focusable: Boolean = true,
    offset: DpOffset = DpOffset(0.dp, 0.dp),
    tipOffset: Dp = 0.dp,
    onDismissRequest: (() -> Unit)? = null,
    tooltipTokens: TooltipTokens? = null,
    content: @Composable () -> Unit,
) {
    val themeID =
        FluentTheme.themeID    //Adding This only for recomposition in case of Token Updates. Unused otherwise.
    val token = tooltipTokens
        ?: FluentTheme.controlTokens.tokens[ControlTokens.ControlType.TooltipControlType] as TooltipTokens
    val tooltipInfo = TooltipInfo()
    ToolTipBox(
        tooltipContent = {
            Column(
                modifier = Modifier
                    .semantics(mergeDescendants = true) {}
                    .padding(token.padding(tooltipInfo = tooltipInfo))
                    .width(IntrinsicSize.Max),
            ) {
                if (!title.isNullOrBlank()) {
                    BasicText(
                        text = title,
                        style = token.titleTypography(tooltipInfo = tooltipInfo).merge(
                            TextStyle(color = token.titleColor(tooltipInfo = tooltipInfo))
                        )
                    )
                    Spacer(
                        modifier = Modifier
                            .fillMaxWidth()
                            .height(
                                token.titleTextSpacing(
                                    tooltipInfo = tooltipInfo
                                )
                            )
                    )
                }
                BasicText(
                    text = text, style = token.textTypography(tooltipInfo = tooltipInfo).merge(
                        TextStyle(color = token.textColor(tooltipInfo = tooltipInfo))
                    )
                )
            }
        },
        tooltipState = tooltipState,
        modifier = modifier,
        focusable = focusable,
        offset = offset,
        tipOffset = tipOffset,
        onDismissRequest = onDismissRequest,
        tooltipTokens = token,
        content = content
    )
}

/**
 * ToolTipBox is a composable that shows a tooltipContent anchored to its content.
 * @param tooltipContent The content of the tooltip box.
 * @param tooltipState The state of the tooltip box.
 * @param modifier The modifier to be applied to the tooltip box.
 * @param focusable Whether the tooltip box is focusable.
 * @param offset The offset of the tooltip box.
 * @param onDismissRequest The callback to be invoked when the tooltip box is dismissed.
 * @param tooltipTokens The tooltip tokens that are used to customize the tooltip box.
 * @param content The content of the tooltip box.*
 */
@Composable
fun ToolTipBox(
    tooltipContent: @Composable () -> Unit,
    tooltipState: TooltipState,
    modifier: Modifier = Modifier,
    focusable: Boolean = true,
    offset: DpOffset = DpOffset(0.dp, 0.dp),
    tipOffset: Dp = 0.dp,
    onDismissRequest: (() -> Unit)? = null,
    tooltipTokens: TooltipTokens? = null,
    content: @Composable () -> Unit,
) {
    val themeID =
        FluentTheme.themeID    //Adding This only for recomposition in case of Token Updates. Unused otherwise.
    Box {
        content()
        if (tooltipState.isVisible) {
            Tooltip(
                tooltipContent = tooltipContent,
                tooltipState = tooltipState,
                modifier = modifier,
                focusable = focusable,
                offset = offset,
                tipOffset = tipOffset,
                onDismissRequest = onDismissRequest,
                tooltipTokens = tooltipTokens
            )
        }
    }
}
val TipAlignmentSaver = Saver<Alignment, Boolean>(
    save = { alignment ->
        alignment == Alignment.TopCenter
    },
    restore = { savedValue ->
        if (savedValue) Alignment.TopCenter else Alignment.BottomCenter
    }
)
@OptIn(ExperimentalComposeUiApi::class)
@Composable
private fun Tooltip(
    tooltipContent: @Composable () -> Unit,
    tooltipState: TooltipState,
    modifier: Modifier = Modifier,
    focusable: Boolean = true,
    offset: DpOffset = DpOffset(0.dp, 0.dp),
    tipOffset: Dp = 0.dp,
    onDismissRequest: (() -> Unit)? = null,
    tooltipTokens: TooltipTokens? = null,
) {
    val token = tooltipTokens
        ?: FluentTheme.controlTokens.tokens[ControlTokens.ControlType.TooltipControlType] as TooltipTokens
    val tooltipInfo = TooltipInfo()
    var tipAlignment: Alignment by rememberSaveable(stateSaver = TipAlignmentSaver) {
        mutableStateOf(Alignment.TopCenter)
    }
    var tipOffsetX by rememberSaveable { mutableStateOf(0.0f) }
    val isRTL = LocalLayoutDirection.current == LayoutDirection.Rtl

    val tooltipPositionProvider =
        TooltipPositionProvider(
            offset,
            token.margin(tooltipInfo),
            LocalContext.current.softNavBarOffsetX,
        ) { parentBounds, tooltipContentBounds ->
            tipAlignment =
                if (parentBounds.top + parentBounds.height / 2 <= tooltipContentBounds.top) {
                    Alignment.TopCenter
                } else {
                    Alignment.BottomCenter
                }
            val parentCenter = parentBounds.left + parentBounds.width / 2
            val tooltipCenter = tooltipContentBounds.left + tooltipContentBounds.width / 2
            tipOffsetX = dpToPx(offset.x) + dpToPx(tipOffset) + if (isRTL) (tooltipCenter - parentCenter).toFloat() else
                (parentCenter - tooltipCenter).toFloat()

            if(tipOffsetX + tooltipCenter > tooltipContentBounds.right - dpToPx(24.dp)){
                tipOffsetX =  tooltipContentBounds.right - tooltipCenter - dpToPx(24.dp)
            }
            else if(tipOffsetX + tooltipCenter < tooltipContentBounds.left + dpToPx(24.dp)) {
                tipOffsetX =  tooltipContentBounds.left - tooltipCenter + dpToPx(24.dp)
            }
        }

    val coroutineScope = rememberCoroutineScope()

    val transition = updateTransition(tooltipState.isVisible, label = "Tooltip transition")
    if (transition.currentState || transition.targetState) {
        val tooltipPaneDescription = "ToolTip"
        Popup(
            popupPositionProvider = tooltipPositionProvider,
            properties = PopupProperties(
                focusable = focusable,
                dismissOnClickOutside = true
            ),
            onDismissRequest = {
                if (tooltipState.isVisible) {
                    coroutineScope.launch { tooltipState.dismiss() }
                    if (onDismissRequest != null) {
                        onDismissRequest()
                    }
                }
            }
        ) {
            Column(
                horizontalAlignment = Alignment.CenterHorizontally,
                modifier = Modifier.semantics {
                    testTagsAsResourceId = true
                }) {
                if (tipAlignment == Alignment.TopCenter) {
                    Icon(
                        imageVector = ToolTipIcons.Tip,
                        contentDescription = null,
                        tint = token.tipColor(tooltipInfo),
                        modifier = Modifier
                            .offset { IntOffset(x = tipOffsetX.toInt(), y = 1) }
                            .testTag(TOOLTIP_TIP_TEST_TAG)
                    )
                }
                Box(
                    modifier = modifier
                        .sizeIn(
                            minWidth = 40.dp,
                            maxWidth = token.maxWidth(tooltipInfo),
                            minHeight = 24.dp
                        )
                        .animateTooltip(transition)
                        .semantics { paneTitle = tooltipPaneDescription }
                        .background(
                            token.backgroundBrush(tooltipInfo),
                            shape = RoundedCornerShape(token.cornerRadius(tooltipInfo))
                        )
                        .testTag(TOOLTIP_CONTENT_TEST_TAG)
                )
                {
                    tooltipContent()
                }
                if (tipAlignment == Alignment.BottomCenter) {
                    Icon(
                        imageVector = ToolTipIcons.Tip, contentDescription = null,
                        tint = token.tipColor(tooltipInfo),
                        modifier = Modifier
                            .offset { IntOffset(x = tipOffsetX.toInt(), y = -1) }
                            .rotate(180f)
                            .testTag(TOOLTIP_TIP_TEST_TAG)
                    )
                }
            }
        }
    }
    DisposableEffect(tooltipState) {
        onDispose {
            tooltipState.onDispose()
        }
    }
}

private class TooltipPositionProvider(
    val tooltipAnchorOffset: DpOffset,
    val margin: Dp = 0.dp,
    val softNavBarOffsetX: Int,
    val onPositionCalculated: (IntRect, IntRect) -> Unit = { _, _ -> }
) : PopupPositionProvider {
    override fun calculatePosition(
        anchorBounds: IntRect,
        windowSize: IntSize,
        layoutDirection: LayoutDirection,
        popupContentSize: IntSize
    ): IntOffset {
        val marginPx = dpToPx(margin).toInt()
        var x = anchorBounds.left + ((anchorBounds.width - popupContentSize.width) / 2) + dpToPx(
            tooltipAnchorOffset.x
        ).toInt()
        // If the tooltip goes out of window then we align it to the left or right
        if (x < marginPx + softNavBarOffsetX) {
            x = marginPx + softNavBarOffsetX //Left Align
        } else if (x + popupContentSize.width + marginPx - softNavBarOffsetX > windowSize.width) {
            x =
                windowSize.width - marginPx - popupContentSize.width + softNavBarOffsetX //Right Align
        }
        // Tooltip prefers to be below the anchor,
        // but if this causes the tooltip to out from window bounds,
        // then we place it above the anchor
        var y = anchorBounds.bottom + dpToPx(tooltipAnchorOffset.y).toInt()
        if (y + popupContentSize.height + marginPx > windowSize.height)
            y = anchorBounds.top - popupContentSize.height - dpToPx(tooltipAnchorOffset.y).toInt()
        onPositionCalculated(
            anchorBounds,
            IntRect(x, y, x + popupContentSize.width, y + popupContentSize.height)
        )
        return IntOffset(x, y)
    }
}

private const val TooltipFadeInDuration = 150
private const val TooltipFadeOutDuration = 75
private fun Modifier.animateTooltip(
    transition: Transition<Boolean>
): Modifier = composed(
    inspectorInfo = debugInspectorInfo {
        name = "animateTooltip"
        properties["transition"] = transition
    }
) {
    val scale by transition.animateFloat(
        transitionSpec = {
            if (false isTransitioningTo true) {
                // show tooltip
                tween(
                    durationMillis = TooltipFadeInDuration,
                    easing = LinearOutSlowInEasing
                )
            } else {
                // dismiss tooltip
                tween(
                    durationMillis = TooltipFadeOutDuration,
                    easing = LinearOutSlowInEasing
                )
            }
        },
        label = "tooltip transition: scaling"
    ) { if (it) 1f else 0.8f }

    val alpha by transition.animateFloat(
        transitionSpec = {
            if (false isTransitioningTo true) {
                // show tooltip
                tween(
                    durationMillis = TooltipFadeInDuration,
                    easing = LinearEasing
                )
            } else {
                // dismiss tooltip
                tween(
                    durationMillis = TooltipFadeOutDuration,
                    easing = LinearEasing
                )
            }
        },
        label = "tooltip transition: alpha"
    ) { if (it) 1f else 0f }

    return@composed this.graphicsLayer(
        scaleX = scale,
        scaleY = scale,
        alpha = alpha
    )
}
```
