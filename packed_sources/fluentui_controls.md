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
src/main/java/com/microsoft/fluentui/tokenized/controls/AnnouncementCard.kt
src/main/java/com/microsoft/fluentui/tokenized/controls/BasicCard.kt
src/main/java/com/microsoft/fluentui/tokenized/controls/BasicChip.kt
src/main/java/com/microsoft/fluentui/tokenized/controls/Button.kt
src/main/java/com/microsoft/fluentui/tokenized/controls/Checkbox.kt
src/main/java/com/microsoft/fluentui/tokenized/controls/Citation.kt
src/main/java/com/microsoft/fluentui/tokenized/controls/FileCard.kt
src/main/java/com/microsoft/fluentui/tokenized/controls/FloatingActionButton.kt
src/main/java/com/microsoft/fluentui/tokenized/controls/Label.kt
src/main/java/com/microsoft/fluentui/tokenized/controls/RadioButton.kt
src/main/java/com/microsoft/fluentui/tokenized/controls/TextField.kt
src/main/java/com/microsoft/fluentui/tokenized/controls/ToggleSwitch.kt
```

# Files

## File: src/main/java/com/microsoft/fluentui/tokenized/controls/AnnouncementCard.kt
```kotlin
package com.microsoft.fluentui.tokenized.controls

import androidx.annotation.DrawableRes
import androidx.compose.foundation.Image
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.text.BasicText
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.Dp
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.ControlTokens
import com.microsoft.fluentui.theme.token.StateColor
import com.microsoft.fluentui.theme.token.controlTokens.*

/**
 * Cards are flexible containers that group related content and actions together. They reveal more information upon interaction.
 * An Announcement card is made of a preview image on the top and some text and a button below. The card is non-interactive except the button.
 *
 * @param title Primary text of the Card
 * @param description Secondary text of the card, usually an announcement
 * @param buttonText Text for the button
 * @param buttonStyle Optional button styling. Default [ButtonStyle.TextButton]
 * @param buttonOnClick OnClick for the button
 * @param modifier Modifier for the card
 * @param previewImageVector Optional previewImage for the card
 * @param previewImageDrawable Optional previewImage for the card
 * @param announcementCardTokens Optional tokens for customizing the card
 */
@Composable
fun AnnouncementCard(
    title: String,
    description: String,
    buttonText: String,
    buttonOnClick: () -> Unit,
    modifier: Modifier = Modifier,
    previewImageVector: ImageVector? = null,
    @DrawableRes previewImageDrawable: Int? = null,
    announcementCardTokens: AnnouncementCardTokens? = null
) {
    val themeID =
        FluentTheme.themeID    //Adding This only for recomposition in case of Token Updates. Unused otherwise.
    val token = announcementCardTokens
        ?: FluentTheme.controlTokens.tokens[ControlTokens.ControlType.AnnouncementCardControlType] as AnnouncementCardTokens
    val announcementCardInfo = AnnouncementCardInfo()
    val textColor = token.textColor(announcementCardInfo = announcementCardInfo)
    val titleColor = token.titleColor(announcementCardInfo = announcementCardInfo)
    val descriptionTypography =
        token.descriptionTypography(announcementCardInfo = announcementCardInfo)
    val titleTypography = token.titleTypography(announcementCardInfo = announcementCardInfo)
    val previewTextSpacing = token.previewTextSPacing(announcementCardInfo = announcementCardInfo)
    val titleTextSpacing = token.titleTextSpacing(announcementCardInfo = announcementCardInfo)
    val textButtonSpacing = token.textButtonSpacing(announcementCardInfo = announcementCardInfo)
    val textHorizontalPadding =
        token.textHorizontalPadding(announcementCardInfo = announcementCardInfo)
    val cardPadding = token.cardPadding(announcementCardInfo = announcementCardInfo)
    val previewCornerRadius = token.previewCornerRadius(announcementCardInfo = announcementCardInfo)

    class CustomBasicCardTokens : BasicCardTokens() {

        @Composable
        override fun backgroundBrush(basicCardInfo: BasicCardInfo): Brush {
            return token.backgroundBrush(announcementCardInfo = announcementCardInfo)
        }

        @Composable
        override fun cornerRadius(basicCardInfo: BasicCardInfo): Dp {
            return token.cornerRadius(announcementCardInfo = announcementCardInfo)
        }

        @Composable
        override fun elevation(basicCardInfo: BasicCardInfo): Dp {
            return token.elevation(announcementCardInfo = announcementCardInfo)
        }

        @Composable
        override fun borderColor(basicCardInfo: BasicCardInfo): Brush {
            return token.borderColor(announcementCardInfo = announcementCardInfo)
        }

        @Composable
        override fun borderStrokeWidth(basicCardInfo: BasicCardInfo): Dp {
            return token.borderStrokeWidth(announcementCardInfo = announcementCardInfo)
        }
    }

    class CustomButtonTokens : ButtonTokens() {
        @Composable
        override fun textColor(buttonInfo: ButtonInfo): StateColor {
            return token.buttonTextColor(announcementCardInfo = announcementCardInfo)
        }
    }
    BasicCard(
        modifier = modifier,
        basicCardTokens = CustomBasicCardTokens() as BasicCardTokens
    ) {
        Column(
            modifier = Modifier
                .width(IntrinsicSize.Min)
                .padding(cardPadding)
                .semantics(mergeDescendants = true) {},
            horizontalAlignment = Alignment.CenterHorizontally,
            verticalArrangement = Arrangement.Center
        ) {
            Box(
                modifier = Modifier
                    .clip(RoundedCornerShape(previewCornerRadius))
            ) {
                if (previewImageDrawable != null) {
                    Image(
                        painterResource(id = previewImageDrawable), contentDescription = ""
                    )
                } else if (previewImageVector != null) {
                    Image(
                        imageVector = previewImageVector,
                        contentDescription = ""
                    )
                }
            }
            Spacer(
                modifier = Modifier
                    .fillMaxWidth()
                    .height(previewTextSpacing)
            )
            BasicText(
                modifier = Modifier.padding(textHorizontalPadding),
                text = title,
                style = titleTypography.merge(TextStyle(color = titleColor))
                    .merge(TextStyle(textAlign = TextAlign.Center))
            )
            Spacer(
                modifier = Modifier
                    .fillMaxWidth()
                    .height(titleTextSpacing)
            )
            BasicText(
                modifier = Modifier.padding(textHorizontalPadding),
                text = description,
                style = descriptionTypography.merge(TextStyle(color = textColor))
                    .merge(TextStyle(textAlign = TextAlign.Center))
            )
            Spacer(
                modifier = Modifier
                    .fillMaxWidth()
                    .height(textButtonSpacing)
            )
            Button(
                modifier = Modifier.fillMaxWidth(),
                text = buttonText,
                onClick = buttonOnClick,
                style = ButtonStyle.TextButton,
                size = ButtonSize.Large,
                buttonTokens = CustomButtonTokens()
            )
        }
    }
}
```

## File: src/main/java/com/microsoft/fluentui/tokenized/controls/BasicCard.kt
```kotlin
package com.microsoft.fluentui.tokenized.controls

import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.draw.shadow
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.ControlTokens
import com.microsoft.fluentui.theme.token.controlTokens.BasicCardInfo
import com.microsoft.fluentui.theme.token.controlTokens.BasicCardTokens
import com.microsoft.fluentui.theme.token.controlTokens.CardType

/**
 * Cards are flexible containers that group related content and actions together. They reveal more information upon interaction.
 * A Basic card is a card with an empty container and with radius and basic elevation or outline depending on the cardType.
 *
 * @param modifier Modifier for the card which is applied first in order
 * @param cardType defines the card type, whether Elevated or Outlined
 * @param basicCardTokens Optional tokens for customizing the card
 * @param content Content for the card
 */
@Composable
fun BasicCard(
    modifier: Modifier = Modifier,
    cardType: CardType = CardType.Elevated,
    basicCardTokens: BasicCardTokens? = null,
    content: @Composable () -> Unit
) {
    val themeID =
        FluentTheme.themeID    //Adding This only for recomposition in case of Token Updates. Unused otherwise.
    val token = basicCardTokens
        ?: FluentTheme.controlTokens.tokens[ControlTokens.ControlType.BasicCardControlType] as BasicCardTokens
    val cardInfo = BasicCardInfo(cardType)
    val cornerRadius = token.cornerRadius(basicCardInfo = cardInfo)
    val backgroundBrush = token.backgroundBrush(basicCardInfo = cardInfo)
    val elevation = token.elevation(basicCardInfo = cardInfo)
    val borderColor = token.borderColor(basicCardInfo = cardInfo)
    val borderStrokeWidth = token.borderStrokeWidth(basicCardInfo = cardInfo)
    val shape = RoundedCornerShape(cornerRadius)
    Box(
        modifier = modifier
            .shadow(elevation, shape, false)
            .background(
                backgroundBrush, shape
            )
            .border(
                borderStrokeWidth, borderColor, shape
            )
            .clip(shape)
    ) {
        content()
    }
}
```

## File: src/main/java/com/microsoft/fluentui/tokenized/controls/BasicChip.kt
```kotlin
package com.microsoft.fluentui.tokenized.controls

import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.interaction.MutableInteractionSource
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.text.BasicText
import androidx.compose.material.ripple.rememberRipple
import androidx.compose.runtime.Composable
import androidx.compose.runtime.remember
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.semantics.clearAndSetSemantics
import androidx.compose.ui.semantics.contentDescription
import androidx.compose.ui.text.TextStyle
import com.microsoft.fluentui.controls.R
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.ControlTokens
import com.microsoft.fluentui.theme.token.controlTokens.BasicChipInfo
import com.microsoft.fluentui.theme.token.controlTokens.BasicChipTokens

/**
 * [BasicChip] is a compact representations of entities(most commonly, people)that can be typed in, deleted or dragged easily
 * @param label Label for the chip
 * @param modifier Modifier for the chip
 * @param enabled Whether chip is enabled or disabled. Enabled by default.
 * @param selected Whether chip is selected or unselected. Unselected by default.
 * @param leadingAccessory Leading accessory for the chip
 * @param trailingAccessory Trailing accessory for the chip
 * @param onClick onClick action for chip
 * @param interactionSource Optional interactionSource
 * @param basicChipTokens Optional tokens for chip
 */
@Composable
fun BasicChip(
    label: String,
    modifier: Modifier = Modifier,
    enabled: Boolean = true,
    selected: Boolean = false,
    leadingAccessory: @Composable (() -> Unit)? = null,
    trailingAccessory: @Composable (() -> Unit)? = null,
    onClick: (() -> Unit)? = null,
    interactionSource: MutableInteractionSource = remember { MutableInteractionSource() },
    basicChipTokens: BasicChipTokens? = null
) {
    val themeID =
        FluentTheme.themeID    //Adding This only for recomposition in case of Token Updates. Unused otherwise.
    val token = basicChipTokens
        ?: FluentTheme.controlTokens.tokens[ControlTokens.ControlType.BasicChipControlType] as BasicChipTokens
    val basicChipInfo = BasicChipInfo()
    val backgroundColor =
        token.backgroundBrush(basicChipInfo)
            .getBrushByState(
                enabled = enabled, selected = selected, interactionSource = interactionSource
            )
    val textColor = token.textColor(basicChipInfo)
        .getColorByState(
            enabled = enabled, selected = selected, interactionSource = interactionSource
        )
    val typography = token.typography(basicChipInfo)
    val padding =
        token.padding(basicChipInfo)
    val cornerRadius =
        token.cornerRadius(basicChipInfo)
    val horizontalSpacing = token.horizontalSpacing(basicChipInfo)
    val selectedString = if (selected)
        LocalContext.current.resources.getString(R.string.fluentui_selected)
    else
        LocalContext.current.resources.getString(R.string.fluentui_not_selected)

    val enabledString = if (enabled)
        LocalContext.current.resources.getString(R.string.fluentui_enabled)
    else
        LocalContext.current.resources.getString(R.string.fluentui_disabled)
    Box(
        modifier = modifier
            .clip(RoundedCornerShape(cornerRadius))
            .background(backgroundColor)
            .then(if(onClick!=null){
                Modifier.clickable(
                    enabled = enabled,
                    onClick = onClick,
                    interactionSource = interactionSource,
                    indication = rememberRipple()
                )
            }else{
                Modifier
            })
            .clearAndSetSemantics {
                this.contentDescription = "$label $selectedString $enabledString"
            }
    )
    {
        Row(
            Modifier
                .padding(
                    padding
                ),
            horizontalArrangement = Arrangement.spacedBy(horizontalSpacing),
            verticalAlignment = Alignment.CenterVertically
        ) {
            if (leadingAccessory != null) {
                leadingAccessory()
            }
            BasicText(
                text = label,
                style = typography.merge(TextStyle(color = textColor))
            )
            if (trailingAccessory != null) {
                trailingAccessory()
            }
        }
    }
}
```

## File: src/main/java/com/microsoft/fluentui/tokenized/controls/Button.kt
```kotlin
package com.microsoft.fluentui.tokenized.controls

import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.interaction.MutableInteractionSource
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.text.BasicText
import androidx.compose.material.ripple.rememberRipple
import androidx.compose.runtime.Composable
import androidx.compose.runtime.remember
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.semantics.*
import androidx.compose.ui.text.AnnotatedString
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.ControlTokens.ControlType
import com.microsoft.fluentui.theme.token.Icon
import com.microsoft.fluentui.theme.token.controlTokens.ButtonInfo
import com.microsoft.fluentui.theme.token.controlTokens.ButtonSize
import com.microsoft.fluentui.theme.token.controlTokens.ButtonStyle
import com.microsoft.fluentui.theme.token.controlTokens.ButtonTokens

/**
 * API to create a button, containing icon as well as text.
 *
 * @param onClick OnClick behaviour for the button
 * @param modifier Optional modifier for Button
 * @param style Style of Button. Default: [ButtonStyle.Button]
 * @param size Size of Button. Default: [ButtonSize.Medium]
 * @param enabled Boolean for enabling/disabling button. Default: [true]
 * @param interactionSource Interaction Source to handle user interactions
 * @param icon ImageVector for Icon Content on buttton. Default: [null]
 * @param trailingIcon ImageVector for trailing Icon Content on buttton. Default: [null]
 * @param text String to be displayed as text on button. Default: [null]
 * @param contentDescription Content Description for Icon. Default: [null]
 * @param buttonTokens Tokens to customize appearance of button. Default: [null]
 */
@Composable
fun Button(
    onClick: () -> Unit,
    modifier: Modifier = Modifier,
    style: ButtonStyle = ButtonStyle.Button,
    size: ButtonSize = ButtonSize.Medium,
    enabled: Boolean = true,
    interactionSource: MutableInteractionSource = remember { MutableInteractionSource() },
    icon: ImageVector? = null,
    trailingIcon: ImageVector? = null,
    text: String? = null,
    contentDescription: String? = null,
    buttonTokens: ButtonTokens? = null
) {
    val themeID =
        FluentTheme.themeID    //Adding This only for recomposition in case of Token Updates. Unused otherwise.
    val token = buttonTokens ?: FluentTheme.controlTokens.tokens[ControlType.ButtonControlType] as ButtonTokens
    val buttonInfo = ButtonInfo(style, size)
    val clickAndSemanticsModifier = Modifier.clickable(
        interactionSource = interactionSource,
        indication = rememberRipple(),
        enabled = enabled,
        onClickLabel = null,
        role = Role.Button,
        onClick = onClick
    )
    val backgroundColor =
        token.backgroundBrush(buttonInfo = buttonInfo).getBrushByState(
            enabled = enabled,
            selected = false,
            interactionSource = interactionSource
        )
    val contentPadding = token.padding(buttonInfo)
    val iconSpacing = token.spacing(buttonInfo)
    val shape = RoundedCornerShape(token.cornerRadius(buttonInfo))
    val borders: List<BorderStroke> =
        token.borderStroke(buttonInfo = buttonInfo).getBorderStrokeByState(
            enabled = enabled,
            selected = false,
            interactionSource = interactionSource
        )

    var borderModifier: Modifier = Modifier
    var borderWidth = 0.dp
    for (border in borders) {
        borderWidth += border.width
        borderModifier = borderModifier.border(borderWidth, border.brush, shape)
    }

    Box(
        modifier
            .heightIn(min = token.fixedHeight(buttonInfo))
            .background(
                brush = backgroundColor,
                shape = shape
            )
            .clip(shape)
            .semantics(true) {
                editableText = AnnotatedString(text ?: "")
                this.contentDescription = contentDescription ?: ""
            }
            .then(clickAndSemanticsModifier)
            .then(borderModifier),
        propagateMinConstraints = true
    ) {
        Row(
            Modifier.padding(contentPadding),
            horizontalArrangement = Arrangement.spacedBy(
                iconSpacing,
                Alignment.CenterHorizontally
            ),
            verticalAlignment = Alignment.CenterVertically
        ) {

            if (icon != null)
                Icon(
                    imageVector = icon,
                    contentDescription = null,
                    modifier = Modifier
                        .size(
                            token.iconSize(buttonInfo = buttonInfo)
                        ),
                    tint = token.iconColor(buttonInfo = buttonInfo)
                        .getColorByState(
                            enabled = enabled,
                            selected = false,
                            interactionSource = interactionSource
                        )
                )

            if (text != null)
                BasicText(
                    text = text,
                    modifier = Modifier.weight(1f, fill = false).clearAndSetSemantics { },
                    style = token.typography(buttonInfo).merge(
                        TextStyle(
                            color = token.textColor(buttonInfo = buttonInfo)
                                .getColorByState(
                                    enabled = enabled,
                                    selected = false,
                                    interactionSource = interactionSource
                                )
                        )
                    ),
                    maxLines = 1,
                    overflow = TextOverflow.Ellipsis
                )

            if(trailingIcon != null){
                Icon(
                    imageVector = trailingIcon,
                    contentDescription = null,
                    modifier = Modifier
                        .size(
                            token.iconSize(buttonInfo = buttonInfo)
                        ),
                    tint = token.iconColor(buttonInfo = buttonInfo)
                        .getColorByState(
                            enabled = enabled,
                            selected = false,
                            interactionSource = interactionSource
                        )
                )
            }
        }
    }
}
```

## File: src/main/java/com/microsoft/fluentui/tokenized/controls/Checkbox.kt
```kotlin
package com.microsoft.fluentui.tokenized.controls

import androidx.compose.animation.AnimatedVisibility
import androidx.compose.animation.fadeIn
import androidx.compose.animation.fadeOut
import androidx.compose.foundation.*
import androidx.compose.foundation.interaction.MutableInteractionSource
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.selection.triStateToggleable
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Done
import androidx.compose.material.ripple.rememberRipple
import androidx.compose.runtime.Composable
import androidx.compose.runtime.remember
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.Shape
import androidx.compose.ui.semantics.Role
import androidx.compose.ui.semantics.clearAndSetSemantics
import androidx.compose.ui.state.ToggleableState
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.ControlTokens.ControlType
import com.microsoft.fluentui.theme.token.Icon
import com.microsoft.fluentui.theme.token.controlTokens.CheckBoxInfo
import com.microsoft.fluentui.theme.token.controlTokens.CheckBoxTokens

/**
 * API to create a checkbox. A checkbox is a type of button that lets the user choose between two opposite states,
 * actions, or values. A selected checkbox is considered on when it contains a checkmark and off when
 * it's empty. A checkbox is almost always followed by a title unless it appears in a checklist.
 *
 * @param onCheckedChanged Function to be invoked when checked state changes
 * @param modifier Optional Modifier for CheckBox
 * @param enabled Boolean for enabling/disabling CheckBox. Default: [true]
 * @param checked Boolean for checked state of control. Default: [false]
 * @param interactionSource Interaction source for User gesture Management.
 * @param checkBoxToken Tokens for customizing CheckBox design.
 */
@Composable
fun CheckBox(
    onCheckedChanged: ((Boolean) -> Unit),
    modifier: Modifier = Modifier,
    enabled: Boolean = true,
    checked: Boolean = false,
    interactionSource: MutableInteractionSource = remember { MutableInteractionSource() },
    checkBoxToken: CheckBoxTokens? = null
) {

    val themeID =
        FluentTheme.themeID    //Adding This only for recomposition in case of Token Updates. Unused otherwise.
    val token = checkBoxToken
        ?: FluentTheme.controlTokens.tokens[ControlType.CheckBoxControlType] as CheckBoxTokens
    val checkBoxInfo = CheckBoxInfo(checked)
    val toggleModifier =
        Modifier.triStateToggleable(
            state = ToggleableState(checked),
            enabled = enabled,
            onClick = { onCheckedChanged(!checked) },
            role = Role.Checkbox,
            interactionSource = interactionSource,
            indication = rememberRipple(
                bounded = false,
                radius = 24.dp
            )
        )

    val backgroundColor: Brush =
        token.backgroundBrush(checkBoxInfo = checkBoxInfo).getBrushByState(
            enabled = enabled,
            selected = checked,
            interactionSource = interactionSource
        )
    val iconColor: Color =
        token.iconColor(checkBoxInfo = checkBoxInfo).getColorByState(
            enabled = enabled,
            selected = checked,
            interactionSource = interactionSource
        )
    val shape: Shape = RoundedCornerShape(token.borderRadius(checkBoxInfo))

    val borders: List<BorderStroke> =
        token.borderStroke(checkBoxInfo = checkBoxInfo)
            .getBorderStrokeByState(
                enabled = enabled,
                selected = checked,
                interactionSource = interactionSource
            )
    var borderModifier: Modifier = Modifier
    var borderWidth = 0.dp
    for (border in borders) {
        borderWidth += border.width
        borderModifier = borderModifier.border(borderWidth, border.brush, shape)
    }

    Box(
        modifier = modifier.indication(interactionSource, null),
        contentAlignment = Alignment.Center
    ) {
        Spacer(
            modifier = Modifier
                .size(token.size(checkBoxInfo = checkBoxInfo))
                .clip(shape)
                .background(backgroundColor)
                .then(borderModifier)
                .then(toggleModifier)
        )
        AnimatedVisibility(checked, enter = fadeIn(), exit = fadeOut()) {
            Icon(
                Icons.Filled.Done,
                null,
                modifier = Modifier
                    .size(token.iconSize(checkBoxInfo = checkBoxInfo))
                    .focusable(false)
                    .clearAndSetSemantics {},
                tint = iconColor
            )
        }
    }
}
```

## File: src/main/java/com/microsoft/fluentui/tokenized/controls/Citation.kt
```kotlin
package com.microsoft.fluentui.tokenized.notification

import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.interaction.MutableInteractionSource
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.text.BasicText
import androidx.compose.material.ripple.rememberRipple
import androidx.compose.runtime.Composable
import androidx.compose.runtime.remember
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.semantics.Role
import androidx.compose.ui.text.ExperimentalTextApi
import androidx.compose.ui.text.PlatformTextStyle
import androidx.compose.ui.text.TextStyle
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.ControlTokens
import com.microsoft.fluentui.theme.token.controlTokens.CitationInfo
import com.microsoft.fluentui.theme.token.controlTokens.CitationTokens

/**
 * A citation is used to refer a certain text or a quotation from another source.
 * It contains a single text value, usually a number.
 * @param text text for the citation. Usually a number
 * @param onClick onClick method for citation. Usually to provide the reference information
 * @param modifier Optional modifier for the citation
 * @param citationTokens Optional tokens to customize appearance
 */
@OptIn(ExperimentalTextApi::class)
@Composable
fun Citation(
    text: String,
    onClick: (() -> Unit)? = null,
    modifier: Modifier = Modifier,
    citationTokens: CitationTokens? = null
) {
    val themeID =
        FluentTheme.themeID    //Adding This only for recomposition in case of Token Updates. Unused otherwise.
    val tokens = citationTokens
        ?: FluentTheme.controlTokens.tokens[ControlTokens.ControlType.CitationControlType] as CitationTokens
    val citationInfo = CitationInfo()
    val backgroundBrush = tokens.backgroundBrush(citationInfo = citationInfo)
    val cornerRadius = tokens.cornerRadius(citationInfo = citationInfo)
    val borderWidth = tokens.borderStrokeWidth(citationInfo = citationInfo)
    val borderBrush = tokens.borderBrush(citationInfo = citationInfo)
    val textColor = tokens.textColor(citationInfo = citationInfo)
    val typography = tokens.textTypography(citationInfo = citationInfo)
    val textPadding = tokens.textPadding(citationInfo = citationInfo)
    val shape = RoundedCornerShape(cornerRadius)
    Box(
        modifier = modifier
            .border(borderWidth, borderBrush, shape)
            .background(backgroundBrush, shape)
            .clip(shape)
            .then(
                if (onClick != null) {
                    Modifier.clickable(
                        interactionSource = remember { MutableInteractionSource() },
                        indication = rememberRipple(),
                        enabled = true,
                        onClickLabel = null,
                        role = Role.Button,
                        onClick = onClick
                    )
                } else {
                    Modifier
                }
            )
    ) {
        BasicText(
            modifier = Modifier.padding(textPadding),
            text = text,
            style = typography.merge(
                TextStyle(
                    platformStyle = PlatformTextStyle(
                        includeFontPadding = false
                    ), color = textColor
                )
            )
        )
    }
}
```

## File: src/main/java/com/microsoft/fluentui/tokenized/controls/FileCard.kt
```kotlin
package com.microsoft.fluentui.tokenized.controls

import androidx.annotation.DrawableRes
import androidx.compose.foundation.Image
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.interaction.MutableInteractionSource
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.text.BasicText
import androidx.compose.material.ripple.rememberRipple
import androidx.compose.runtime.Composable
import androidx.compose.runtime.remember
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.semantics.Role
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.unit.Dp
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.ControlTokens
import com.microsoft.fluentui.theme.token.FluentIcon
import com.microsoft.fluentui.theme.token.Icon
import com.microsoft.fluentui.theme.token.controlTokens.BasicCardInfo
import com.microsoft.fluentui.theme.token.controlTokens.BasicCardTokens
import com.microsoft.fluentui.theme.token.controlTokens.FileCardInfo
import com.microsoft.fluentui.theme.token.controlTokens.FileCardTokens

/**
 * Cards are flexible containers that group related content and actions together. They reveal more information upon interaction.
 * A File card is generally used to refer a document. The card is made of a preview image on the top and some text below.
 *
 * @param text Primary text of the Card
 * @param subText Secondary text of the card, usually a small description
 * @param modifier Modifier for the card
 * @param interactionSource Optional interaction source
 * @param onClick onClick for the card
 * @param previewImageVector Optional previewImage for the card
 * @param previewImageDrawable Optional previewImage for the card
 * @param textIcon Optional textIcon.
 * @param actionOverflowIcon Optional actionOverflowIcon. If not provided there will be no button on top of the preview Image.
 * @param fileCardTokens Optional tokens for customizing the card
 */
@Composable
fun FileCard(
    text: String,
    subText: String,
    modifier: Modifier = Modifier,
    interactionSource: MutableInteractionSource = remember { MutableInteractionSource() },
    onClick: (() -> Unit)? = null,
    previewImageVector: ImageVector? = null,
    @DrawableRes previewImageDrawable: Int? = null,
    textIcon: ImageVector,
    actionOverflowIcon: FluentIcon? = null,
    fileCardTokens: FileCardTokens? = null
) {
    val themeID =
        FluentTheme.themeID    //Adding This only for recomposition in case of Token Updates. Unused otherwise.
    val token = fileCardTokens
        ?: FluentTheme.controlTokens.tokens[ControlTokens.ControlType.FileCardControlType] as FileCardTokens
    val isPreviewAvailable = !(previewImageDrawable == null && previewImageVector == null)
    val fileCardInfo = FileCardInfo(isPreviewAvailable)
    val textColor = token.textColor(fileCardInfo = fileCardInfo)
    val subTextColor = token.subTextColor(fileCardInfo = fileCardInfo)
    val iconColor = token.iconColor(fileCardInfo = fileCardInfo)
    val actionOverFlowBackgroundColor =
        token.actionOverFlowBackgroundColor(fileCardInfo = fileCardInfo)
    val actionOverFlowIconColor = token.actionOverFlowIconColor(fileCardInfo = fileCardInfo)
    val iconSize = token.iconSize(fileCardInfo = fileCardInfo)
    val textTypography = token.textTypography(fileCardInfo = fileCardInfo)
    val subTextTypography = token.subTextTypography(fileCardInfo = fileCardInfo)
    val actionOverflowCornerRadius = token.actionOverflowCornerRadius(fileCardInfo = fileCardInfo)
    val actionOverflowIconSize = token.actionOverflowIconSize(fileCardInfo = fileCardInfo)
    val iconTextSpacing = token.iconTextSpacing(fileCardInfo = fileCardInfo)
    val textSubTextSpacing = token.textSubTextSpacing(fileCardInfo = fileCardInfo)
    val actionOverflowPadding = token.actionOverflowPadding(fileCardInfo = fileCardInfo)
    val textContainerPadding = token.textContainerPadding(fileCardInfo = fileCardInfo)

    class CustomBasicCardTokens : BasicCardTokens() {

        @Composable
        override fun backgroundBrush(basicCardInfo: BasicCardInfo): Brush {
            return token.backgroundBrush(fileCardInfo = fileCardInfo)
        }

        @Composable
        override fun cornerRadius(basicCardInfo: BasicCardInfo): Dp {
            return token.cornerRadius(fileCardInfo = fileCardInfo)
        }

        @Composable
        override fun elevation(basicCardInfo: BasicCardInfo): Dp {
            return token.elevation(fileCardInfo = fileCardInfo)
        }

        @Composable
        override fun borderColor(basicCardInfo: BasicCardInfo): Brush {
            return token.borderColor(fileCardInfo = fileCardInfo)
        }

        @Composable
        override fun borderStrokeWidth(basicCardInfo: BasicCardInfo): Dp {
            return token.borderStrokeWidth(fileCardInfo = fileCardInfo)
        }
    }
    BasicCard(
        modifier = modifier,
        basicCardTokens = CustomBasicCardTokens() as BasicCardTokens
    ) {
        Box(contentAlignment = Alignment.Center) {
            Column(
                modifier = Modifier
                    .width(IntrinsicSize.Min)
                    .testTag("Card")
                    .then(
                        if (onClick != null) Modifier.clickable(
                            interactionSource = interactionSource,
                            indication = rememberRipple(),
                            enabled = true,
                            onClick = onClick,
                            role = Role.Button
                        ) else Modifier
                    ),
                horizontalAlignment = Alignment.CenterHorizontally,
            ) {
                if (previewImageDrawable != null) {
                    Image(
                        painterResource(id = previewImageDrawable), contentDescription = null
                    )
                } else if (previewImageVector != null) {
                    Image(
                        imageVector = previewImageVector,
                        contentDescription = null
                    )
                }
                Row(
                    modifier = Modifier.padding(
                        textContainerPadding
                    ),
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Icon(
                        modifier = Modifier.size(iconSize),
                        icon = FluentIcon(textIcon),
                        tint = iconColor
                    )
                    Spacer(modifier = Modifier.width(iconTextSpacing))
                    Column {
                        BasicText(
                            text = text,
                            style = textTypography.merge(TextStyle(color = textColor))
                        )
                        Spacer(
                            modifier = Modifier
                                .fillMaxWidth()
                                .height(textSubTextSpacing)
                        )
                        BasicText(
                            text = subText,
                            style = subTextTypography.merge(TextStyle(color = subTextColor))
                        )
                    }
                }
            }
            if (isPreviewAvailable && actionOverflowIcon != null) {
                Box(
                    modifier = Modifier
                        .align(Alignment.TopEnd)
                        .padding(actionOverflowPadding)
                        .clip(RoundedCornerShape(actionOverflowCornerRadius))
                        .background(actionOverFlowBackgroundColor)
                        .clickable(
                            interactionSource = MutableInteractionSource(),
                            indication = rememberRipple(),
                            enabled = true,
                            onClick = actionOverflowIcon.onClick ?: {},
                            role = Role.Button
                        )
                ) {
                    Icon(
                        modifier = Modifier.size(actionOverflowIconSize),
                        icon = actionOverflowIcon,
                        tint = actionOverFlowIconColor,
                    )
                }
            }
        }
    }
}
```

## File: src/main/java/com/microsoft/fluentui/tokenized/controls/FloatingActionButton.kt
```kotlin
package com.microsoft.fluentui.tokenized.controls

import androidx.compose.animation.AnimatedVisibility
import androidx.compose.foundation.*
import androidx.compose.foundation.interaction.MutableInteractionSource
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.text.BasicText
import androidx.compose.runtime.Composable
import androidx.compose.runtime.remember
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.draw.shadow
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.semantics.Role
import androidx.compose.ui.semantics.clearAndSetSemantics
import androidx.compose.ui.semantics.contentDescription
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.ControlTokens.ControlType
import com.microsoft.fluentui.theme.token.Icon
import com.microsoft.fluentui.theme.token.controlTokens.FABInfo
import com.microsoft.fluentui.theme.token.controlTokens.FABSize
import com.microsoft.fluentui.theme.token.controlTokens.FABState
import com.microsoft.fluentui.theme.token.controlTokens.FABTokens

/**
 * API to create a Floating Action Button. This button has elevation and can be expanded and collapsed.
 * In expanded state, Icon + Text are displayed. In collapsed state, only icon is displayed.
 *
 * @param onClick OnClick behaviour for the button
 * @param modifier Optional Modifier for FAB
 * @param state State the FAB is supposed to be in. Default: [FABState.Expanded]
 * @param size Size of the FAB. Default: [FABSize.Large]
 * @param enabled Boolean for enabling/disabling FAB. Default: [true]
 * @param interactionSource Interaction Source for user interactions.
 * @param icon ImageVector for Icon to be displayed. Default: [null]
 * @param text String to be displayed. Default: [null]
 * @param fabTokens Tokens to customize design of FAB. Default: [null]
 */
@Composable
fun FloatingActionButton(
    onClick: () -> Unit,
    modifier: Modifier = Modifier,
    state: FABState = FABState.Expanded,
    size: FABSize = FABSize.Large,
    enabled: Boolean = true,
    interactionSource: MutableInteractionSource = remember { MutableInteractionSource() },
    icon: ImageVector? = null,
    text: String? = null,
    fabTokens: FABTokens? = null
) {
    if (icon == null && (text == null || text == ""))
        return

    val themeID =
        FluentTheme.themeID    //Adding This only for recomposition in case of Token Updates. Unused otherwise.
    val token = fabTokens
        ?: FluentTheme.controlTokens.tokens[ControlType.FloatingActionButtonControlType] as FABTokens

    val fabInfo = FABInfo(state, size)
    val clickAndSemanticsModifier = Modifier.clickable(
        interactionSource = interactionSource,
        indication = LocalIndication.current,
        enabled = enabled,
        onClickLabel = null,
        role = Role.Button,
        onClick = onClick
    )
    val isFabExpanded: Boolean =
        (text != null && text != "" && fabInfo.state == FABState.Expanded)
    val backgroundColor = token.backgroundBrush(fabInfo = fabInfo).getBrushByState(
        enabled = enabled,
        selected = false,
        interactionSource = interactionSource
    )
    val contentPadding = if (isFabExpanded) token.textPadding(fabInfo)
    else token.iconPadding(fabInfo)
    val iconSpacing = if (isFabExpanded) token.spacing(fabInfo) else 0.dp
    val shape = CircleShape
    val borders: List<BorderStroke> =
        token.borderStroke(fabInfo = fabInfo).getBorderStrokeByState(
            enabled = enabled,
            selected = false,
            interactionSource = interactionSource
        )

    var borderModifier: Modifier = Modifier
    var borderWidth = 0.dp
    for (border in borders) {
        borderWidth += border.width
        borderModifier = borderModifier.border(borderWidth, border.brush, shape)
    }

    Box(
        modifier
            .heightIn(min = token.fixedHeight(fabInfo))
            .defaultMinSize(minWidth = token.minWidth(fabInfo))
            .shadow(
                elevation = token
                    .elevation(fabInfo = fabInfo)
                    .getElevationByState(
                        enabled = enabled,
                        selected = false,
                        interactionSource = interactionSource
                    ),
                shape = CircleShape
            )
            .background(
                brush = backgroundColor,
                shape = shape
            )
            .clip(shape)
            .semantics(mergeDescendants = true) { contentDescription = text ?: "" }
            .then(clickAndSemanticsModifier)
            .then(borderModifier),
        propagateMinConstraints = true
    ) {
        Row(
            Modifier.padding(contentPadding),
            horizontalArrangement = Arrangement.spacedBy(
                iconSpacing,
                Alignment.CenterHorizontally
            ),
            verticalAlignment = Alignment.CenterVertically
        ) {

            if (icon != null)
                Icon(
                    imageVector = icon,
                    contentDescription = text,
                    modifier = Modifier
                        .size(
                            token.iconSize(fabInfo)
                        )
                        .clearAndSetSemantics { },
                    tint = token.iconColor(fabInfo = fabInfo).getColorByState(
                        enabled = enabled,
                        selected = false,
                        interactionSource = interactionSource
                    )
                )

            AnimatedVisibility(isFabExpanded) {
                BasicText(
                    text = text!!,
                    modifier = Modifier.clearAndSetSemantics { },
                    style = token.typography(fabInfo).merge(
                        TextStyle(
                            color = token.textColor(fabInfo = fabInfo).getColorByState(
                                enabled = enabled,
                                selected = false,
                                interactionSource = interactionSource
                            )
                        )
                    ),
                    maxLines = 1,
                    overflow = TextOverflow.Ellipsis
                )
            }
        }
    }
}
```

## File: src/main/java/com/microsoft/fluentui/tokenized/controls/Label.kt
```kotlin
package com.microsoft.fluentui.tokenized.controls

import androidx.compose.foundation.text.BasicText
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.style.TextOverflow
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.ControlTokens
import com.microsoft.fluentui.theme.token.FluentAliasTokens.TypographyTokens
import com.microsoft.fluentui.theme.token.controlTokens.ColorStyle
import com.microsoft.fluentui.theme.token.controlTokens.LabelInfo
import com.microsoft.fluentui.theme.token.controlTokens.LabelTokens

/**
 * A standard UI label consisting of a simple text.
 * @param text Label text
 * @param textStyle Text styling for the text. Default [TypographyTokens.Display]
 * @param colorStyle Color styling for the text. Default [ColorStyle.Primary]
 * @param textColorOverride Optional override for text color. Default is null. When set colorStyle is ignored. This param is deprecated and will be removed in future releases. use [style] to override text color
 * @param style Optional style for the text
 * @param overflow TextOverflow value. Default is [TextOverflow.Clip]
 * @param softWrap Whether the text should wrap when it reaches the end of the line. Default is true
 * @param maxLines Maximum number of lines to display. Default is Int.MAX_VALUE
 * @param minLines Minimum number of lines to display. Default is 1
 * @param modifier Optional modifier for Label
 * @param labelTokens Option tokens for label styling
 */
@Composable
fun Label(
    text: String,
    textStyle: TypographyTokens = TypographyTokens.Display,
    colorStyle: ColorStyle = ColorStyle.Primary,
    textColorOverride: Color? = null,
    style: TextStyle? = null,
    overflow: TextOverflow = TextOverflow.Clip,
    softWrap: Boolean = true,
    maxLines: Int = Int.MAX_VALUE,
    minLines: Int = 1,
    modifier: Modifier = Modifier,
    labelTokens: LabelTokens? = null
) {
    val themeID =
        FluentTheme.themeID    //Adding This only for recomposition in case of Token Updates. Unused otherwise.
    val tokens = labelTokens
        ?: FluentTheme.controlTokens.tokens[ControlTokens.ControlType.LabelControlType] as LabelTokens
    val labelInfo = LabelInfo(textStyle, colorStyle)
    val textStyle = tokens.typography(labelInfo = labelInfo)
    val textColor = textColorOverride ?: tokens.textColor(labelInfo = labelInfo)
    BasicText(
        modifier = modifier,
        text = text,
        style = textStyle.merge(TextStyle(color = textColor)).merge(style),
        overflow = overflow,
        softWrap = softWrap,
        maxLines = maxLines,
        minLines = minLines
    )
}
```

## File: src/main/java/com/microsoft/fluentui/tokenized/controls/RadioButton.kt
```kotlin
package com.microsoft.fluentui.tokenized.controls

import androidx.compose.animation.core.animateDpAsState
import androidx.compose.animation.core.tween
import androidx.compose.foundation.Canvas
import androidx.compose.foundation.interaction.MutableInteractionSource
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.wrapContentSize
import androidx.compose.foundation.selection.selectable
import androidx.compose.material.ripple.rememberRipple
import androidx.compose.runtime.Composable
import androidx.compose.runtime.remember
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.drawscope.Fill
import androidx.compose.ui.graphics.drawscope.Stroke
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.semantics.Role
import androidx.compose.ui.semantics.contentDescription
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.controls.R
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.ControlTokens
import com.microsoft.fluentui.theme.token.controlTokens.RadioButtonInfo
import com.microsoft.fluentui.theme.token.controlTokens.RadioButtonTokens

/**
 * API to create a Radio Button. A Radio selection lets user choose one option out of all values.
 * This API provides a single instance of radio button and not a group.
 *
 * @param onClick OnClick method to be invoked when clicked on the radio button
 * @param modifier Optional modifier for Radio Button
 * @param enabled Boolean for enabling/disabling Radio Button. Default: [true]
 * @param selected Boolean for setting selected state in radio Button. Default: [false]
 * @param interactionSource Interaction Source for user gesture management.
 * @param radioButtonToken Tokens for customizing Radio buttons
 */
@Composable
fun RadioButton(
    onClick: (() -> Unit),
    modifier: Modifier = Modifier,
    enabled: Boolean = true,
    selected: Boolean = false,
    interactionSource: MutableInteractionSource = remember { MutableInteractionSource() },
    radioButtonToken: RadioButtonTokens? = null
) {
    val themeID =
        FluentTheme.themeID    //Adding This only for recomposition in case of Token Updates. Unused otherwise.
    val token = radioButtonToken
        ?: FluentTheme.controlTokens.tokens[ControlTokens.ControlType.RadioButtonControlType] as RadioButtonTokens
    val radioButtonInfo = RadioButtonInfo(selected)
    val dotRadius = animateDpAsState(
        targetValue = if (selected) token.innerCircleRadius else 0.dp,
        animationSpec = tween(durationMillis = 100)
    )

    val selectableModifier = modifier.selectable(
        selected = selected,
        enabled = enabled,
        onClick = onClick,
        role = Role.RadioButton,
        interactionSource = interactionSource,
        indication = rememberRipple(
            bounded = false,
            radius = 24.dp
        )
    )

    val outerStrokeColor =
        token.backgroundBrush(radioButtonInfo = radioButtonInfo)
            .getBrushByState(
                enabled = enabled,
                selected = selected,
                interactionSource = interactionSource
            )
    val innerColor = token.iconColor(radioButtonInfo = radioButtonInfo)
        .getColorByState(
            enabled = enabled,
            selected = selected,
            interactionSource = interactionSource
        )

    val outerRadius = token.outerCircleRadius
    val strokeWidth = token.strokeWidthInwards

    val contentDesc = LocalContext.current.resources.getString(R.string.fluentui_radio_button)
    Canvas(
        modifier = Modifier
            .then(selectableModifier)
            .size(24.dp)
            .wrapContentSize(Alignment.Center)
            .semantics { contentDescription = contentDesc }
    ) {
        drawCircle(
            outerStrokeColor,
            (outerRadius - (strokeWidth / 2)).toPx(),
            style = Stroke(1.5.dp.toPx())
        )

        if (dotRadius.value > 0.dp) {
            drawCircle(innerColor, (dotRadius.value).toPx(), style = Fill)
        }
    }
}
```

## File: src/main/java/com/microsoft/fluentui/tokenized/controls/TextField.kt
```kotlin
package com.microsoft.fluentui.tokenized.controls

import androidx.compose.foundation.LocalIndication
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.interaction.MutableInteractionSource
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.text.BasicText
import androidx.compose.foundation.text.BasicTextField
import androidx.compose.foundation.text.KeyboardActions
import androidx.compose.foundation.text.KeyboardOptions
import androidx.compose.runtime.*
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.focus.FocusRequester
import androidx.compose.ui.focus.focusRequester
import androidx.compose.ui.focus.onFocusChanged
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalLayoutDirection
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.semantics.Role
import androidx.compose.ui.semantics.contentDescription
import androidx.compose.ui.semantics.disabled
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.semantics.stateDescription
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.input.ImeAction
import androidx.compose.ui.text.input.KeyboardType
import androidx.compose.ui.text.input.VisualTransformation
import androidx.compose.ui.text.style.TextDirection
import androidx.compose.ui.unit.LayoutDirection
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.core.R
import com.microsoft.fluentui.icons.SearchBarIcons
import com.microsoft.fluentui.icons.searchbaricons.Dismisscircle
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.ControlTokens
import com.microsoft.fluentui.theme.token.FluentIcon
import com.microsoft.fluentui.theme.token.Icon
import com.microsoft.fluentui.theme.token.controlTokens.DividerInfo
import com.microsoft.fluentui.theme.token.controlTokens.DividerTokens
import com.microsoft.fluentui.theme.token.controlTokens.TextFieldInfo
import com.microsoft.fluentui.theme.token.controlTokens.TextFieldTokens
import com.microsoft.fluentui.tokenized.divider.Divider

// Tests used for testing
const val TEXT_FIELD = "Fluent TEXT_FIELD"
const val TEXT_FIELD_ICON = "Fluent TEXT_FIELD_ICON"
const val TEXT_FIELD_LABEL = "Fluent TEXT_FIELD_LABEL"
const val TEXT_FIELD_HINT_TEXT = "Fluent TEXT_FIELD_HINT_TEXT"
const val TEXT_FIELD_ASSISTIVE_TEXT = "Fluent TEXT_FIELD_ASSISTIVE_TEXT"
const val TEXT_FIELD_SECONDARY_TEXT = "Fluent TEXT_FIELD_TRAILING_ACCESSORY_TEXT"

/**
 * API to create a customized TextField for users to edit text via software and hardware keyboard
 * which has support for label, assistive text, error strings.
 *
 * Whenever the user edits the text, onValueChange is called with the most up to date string
 * with which developer is expected to update their state.
 *
 * It is crucial that the value provided in the onValueChange is fed back into BasicTextField
 * in order to have the final state of the text being displayed.
 *
 * @param value Input String text to be shown in TextField
 * @param onValueChange The callback that is triggered when the input service updates the text.
 * An updated text comes as a parameter of the callback
 * @param modifier Optional modifier for the TextField
 * @param readOnly Boolean to indicate if the TextField is editable or not.
 * @param enabled Boolean to indicate if the TextField is enabled or not.
 * @param hintText Hint to be shown on TextField. Displayed when [value] is empty and TextField
 * doesn't have focus.
 * @param label String which acts as a description for the TextField.
 * @param assistiveText String which assists users with the TextField
 * @param trailingAccessoryText String to be placed towards the end of TextField as secondary text.
 * @param errorString String to describe the error. TextField goes in error mode if this is provided.
 * @param leadingRestIcon Icon which is displayed when the textField is in rest state.
 * @param leadingFocusIcon Icon which is displayed when the textField is in focus state.
 * @param leadingIconContentDescription String which acts as content description for leading icon.
 * @param trailingAccessoryIcon Icon which is displayed towards the end of textField and mainly
 * acts as dismiss icon.
 * @param keyboardOptions software keyboard options that contains configuration such as [KeyboardType] and [ImeAction].
 * @param keyboardActions when the input service emits an IME action, the corresponding callback is called.
 * Note that this IME action may be different from what you specified in [KeyboardOptions.imeAction].
 * @param visualTransformation he visual transformation filter for changing the visual representation
 * of the input. By default no visual transformation is applied.
 * @param textFieldTokens Optional Tokens to customize appearance of TextField.
 */
@Composable
fun TextField(
    value: String,
    onValueChange: ((String) -> Unit),
    modifier: Modifier = Modifier,
    readOnly: Boolean = false,
    enabled: Boolean = true,
    hintText: String? = null,
    label: String? = null,
    assistiveText: String? = null,
    trailingAccessoryText: String? = null,
    errorString: String? = null,
    leadingRestIcon: ImageVector? = null,
    leadingFocusIcon: ImageVector? = null,
    leadingIconContentDescription: String? = null,
    trailingAccessoryIcon: FluentIcon? = FluentIcon(
        SearchBarIcons.Dismisscircle,
        contentDescription = LocalContext.current.resources.getString(R.string.fluentui_clear_text)
    ),
    keyboardOptions: KeyboardOptions = KeyboardOptions(),
    keyboardActions: KeyboardActions = KeyboardActions(),
    visualTransformation: VisualTransformation = VisualTransformation.None,
    textFieldContentDescription: String? = null,
    decorationBox: (@Composable (innerTextField: @Composable () -> Unit) -> Unit)? = null,
    textFieldTokens: TextFieldTokens? = null
) {
    val themeID =
        FluentTheme.themeID    //Adding This only for recomposition in case of Token Updates. Unused otherwise.
    val token = textFieldTokens
        ?: (FluentTheme.controlTokens.tokens[ControlTokens.ControlType.TextFieldControlType] as TextFieldTokens)

    var isFocused: Boolean by rememberSaveable { mutableStateOf(false) }

    val textFieldInfo = TextFieldInfo(
        isStatusError = !errorString.isNullOrBlank(),
        hasIcon = (leadingRestIcon != null),
        isFocused = isFocused,
        textAvailable = value.isNotEmpty()
    )

    Column(modifier = modifier
        .background(token.backgroundBrush(textFieldInfo))
        .padding(token.leftRightPadding(textFieldInfo))) {
        if (!label.isNullOrBlank()) {
            Spacer(Modifier.requiredHeight(12.dp))
            BasicText(
                label,
                style = token.labelTypography(textFieldInfo).merge(
                    TextStyle(
                        color = token.labelColor(textFieldInfo)
                    )
                ),
                modifier = Modifier
                    .padding(token.labelPadding(textFieldInfo))
                    .testTag(TEXT_FIELD_LABEL)
            )
        }
        Row(verticalAlignment = Alignment.CenterVertically) {
            if (leadingRestIcon != null) {
                Icon(
                    if (isFocused && errorString.isNullOrBlank() && leadingFocusIcon != null)
                        leadingFocusIcon
                    else
                        leadingRestIcon,
                    leadingIconContentDescription,
                    modifier = Modifier
                        .size(token.leadingIconSize(textFieldInfo))
                        .testTag(TEXT_FIELD_ICON),
                    tint = token.leadingIconColor(textFieldInfo)
                )
                Spacer(Modifier.requiredWidth(16.dp))
            }
            Column(Modifier.weight(1F)) {
                Row(modifier = Modifier.background(
                    token
                        .textAreaBackgroundBrush(textFieldInfo)
                        .getBrushByState(
                            enabled = enabled,
                            selected = false,
                            interactionSource = remember { MutableInteractionSource() }
                        )
                ), verticalAlignment = Alignment.CenterVertically) {
                    BasicTextField(
                        value = value,
                        onValueChange = onValueChange,
                        modifier = Modifier
                            .semantics {
                                contentDescription = textFieldContentDescription ?: ""
                                if(readOnly){
                                    this.stateDescription = "Read-only."
                                    this.disabled()
                                }
                            }
                            .testTag(TEXT_FIELD)
                            .padding(vertical = 12.dp)
                            .weight(1F)
                            .onFocusChanged { state ->
                                isFocused = false
                                when {
                                    state.isFocused ->
                                        isFocused = true
                                }
                            },
                        readOnly = readOnly,
                        enabled = enabled,
                        singleLine = true,
                        keyboardOptions = keyboardOptions,
                        keyboardActions = keyboardActions,
                        visualTransformation = visualTransformation,
                        decorationBox = decorationBox ?: { innerTextField ->
                            if (value.isEmpty() && !hintText.isNullOrBlank()) {
                                Box(
                                    Modifier.fillMaxWidth()
                                ) {
                                    BasicText(
                                        hintText,
                                        modifier = Modifier.testTag(TEXT_FIELD_HINT_TEXT),
                                        style = token.hintTextTypography(textFieldInfo)
                                            .merge(
                                                TextStyle(
                                                    color = token.hintColor(textFieldInfo)
                                                )
                                            )
                                    )
                                }
                            }
                            innerTextField()
                        },
                        textStyle = token.inputTextTypography(textFieldInfo).merge(
                            TextStyle(
                                color = token.inputTextColor(textFieldInfo).getColorByState(
                                    enabled = enabled,
                                    selected = false,
                                    interactionSource = remember { MutableInteractionSource() }
                                ),
                                textDirection = if(LocalLayoutDirection.current == LayoutDirection.Ltr) TextDirection.Ltr else TextDirection.Rtl
                            )
                        ),
                        cursorBrush = token.cursorColor(textFieldInfo)
                    )
                    if (!trailingAccessoryText.isNullOrBlank()) {
                        Spacer(Modifier.requiredWidth(8.dp))
                        BasicText(
                            trailingAccessoryText,
                            modifier = Modifier
                                .padding(vertical = 12.dp)
                                .testTag(TEXT_FIELD_SECONDARY_TEXT),
                            style = token.trailingAccessoryTextTypography(textFieldInfo)
                                .merge(
                                    TextStyle(
                                        color = token.trailingAccessoryTextColor(
                                            textFieldInfo
                                        )
                                    )
                                )
                        )
                    }
                    if (enabled && value.isNotBlank() && trailingAccessoryIcon?.isIconAvailable() == true) {
                        Icon(
                            trailingAccessoryIcon,
                            Modifier
                                .clickable(
                                    interactionSource = remember { MutableInteractionSource() },
                                    indication = LocalIndication.current,
                                    enabled = true,
                                    onClickLabel = trailingAccessoryIcon.contentDescription,
                                    role = Role.Button
                                ) {
                                    if (trailingAccessoryIcon.onClick != null)
                                        trailingAccessoryIcon.onClick!!.invoke()
                                    else
                                        onValueChange("")
                                }
                                .padding(8.dp)
                                .size(token.trailingIconSize(textFieldInfo))
                        )
                    }
                }
                Divider(
                    height = token.strokeWidth(textFieldInfo),
                    dividerToken = object : DividerTokens() {
                        @Composable
                        override fun verticalPadding(dividerInfo: DividerInfo): PaddingValues {
                            return PaddingValues(0.dp)
                        }

                        @Composable
                        override fun dividerBrush(dividerInfo: DividerInfo): Brush =
                            token.dividerColor(textFieldInfo)
                    }
                )
            }
        }
        if (!assistiveText.isNullOrBlank() || !errorString.isNullOrBlank()) {
            BasicText(
                errorString ?: assistiveText!!,
                style = token.assistiveTextTypography(textFieldInfo).merge(
                    TextStyle(
                        color = token.assistiveTextColor(textFieldInfo)
                    )
                ),
                modifier = Modifier
                    .padding(token.assistiveTextPadding(textFieldInfo))
                    .testTag(TEXT_FIELD_ASSISTIVE_TEXT)
            )
        }
    }
}
```

## File: src/main/java/com/microsoft/fluentui/tokenized/controls/ToggleSwitch.kt
```kotlin
package com.microsoft.fluentui.tokenized.controls

import android.view.KeyEvent.KEYCODE_ENTER
import android.view.KeyEvent.KEYCODE_SPACE
import androidx.compose.animation.animateColorAsState
import androidx.compose.animation.core.TweenSpec
import androidx.compose.animation.core.animateDpAsState
import androidx.compose.animation.core.tween
import androidx.compose.foundation.background
import androidx.compose.foundation.gestures.Orientation
import androidx.compose.foundation.interaction.MutableInteractionSource
import androidx.compose.foundation.interaction.collectIsPressedAsState
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.selection.toggleable
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.material.ExperimentalMaterialApi
import androidx.compose.material.FractionalThreshold
import androidx.compose.material.rememberSwipeableState
import androidx.compose.material.ripple.rememberRipple
import androidx.compose.material.swipeable
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.draw.shadow
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.input.key.onKeyEvent
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.platform.LocalLayoutDirection
import androidx.compose.ui.semantics.Role
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.IntOffset
import androidx.compose.ui.unit.LayoutDirection
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.ControlTokens.ControlType
import com.microsoft.fluentui.theme.token.controlTokens.ToggleSwitchInfo
import com.microsoft.fluentui.theme.token.controlTokens.ToggleSwitchTokens
import kotlinx.coroutines.launch
import kotlin.math.roundToInt

/**
 * API to create a Toggle Switch. This switch toggles state on tap and swipe gestures.
 * The two states of toggle are mutually exclusive.
 *
 * @param onValueChange Function to be invoked when state of switch changes.
 * @param modifier Optional modifier for Toggle Switch.
 * @param enabledSwitch Boolean to enable/disable switch. Default: [true]
 * @param checkedState Boolean representing current state of switch. Default: [false]
 * @param interactionSource Interaction Source for user interactions.
 * @param switchTokens Tokens to customize Toggle Switch's design.
 */
@OptIn(ExperimentalMaterialApi::class)
@Composable
fun ToggleSwitch(
    modifier: Modifier = Modifier,
    onValueChange: ((Boolean) -> Unit),
    enabledSwitch: Boolean = true,
    checkedState: Boolean = false,
    interactionSource: MutableInteractionSource = remember { MutableInteractionSource() },
    switchTokens: ToggleSwitchTokens? = null
) {

    val themeID =
        FluentTheme.themeID    //Adding This only for recomposition in case of Token Updates. Unused otherwise.
    val token = switchTokens
        ?: FluentTheme.controlTokens.tokens[ControlType.ToggleSwitchControlType] as ToggleSwitchTokens
    val toggleSwitchInfo = ToggleSwitchInfo(checkedState)
    val backgroundColor: Color = animateColorAsState(
        targetValue =
        token.trackColor(switchInfo = toggleSwitchInfo).getColorByState(
            enabled = enabledSwitch,
            selected = checkedState,
            interactionSource = interactionSource
        ),
        animationSpec = tween(500)
    ).value
    val foregroundColor: Color =
        token.knobColor(switchInfo = toggleSwitchInfo).getColorByState(
            enabled = enabledSwitch,
            selected = checkedState,
            interactionSource = interactionSource
        )
    val elevation: Dp =
        token.elevation(switchInfo = toggleSwitchInfo)
            .getElevationByState(
                enabled = enabledSwitch,
                selected = checkedState,
                interactionSource = interactionSource
            )
    val padding: Dp = animateDpAsState(
        targetValue =
        if (interactionSource.collectIsPressedAsState().value)
            token.pressedPaddingTrack
        else
            token.restPaddingTrack
    ).value
    val knobMovementWidth: Dp = animateDpAsState(
        targetValue =
        if (interactionSource.collectIsPressedAsState().value)
            22.dp
        else
            23.dp
    ).value

    // Swipe Logic
    val minBound = with(LocalDensity.current) { padding.toPx() }
    val maxBound = with(LocalDensity.current) { knobMovementWidth.toPx() }
    val animationSpec = TweenSpec<Float>(durationMillis = 300)
    val swipeState =
        rememberSwipeableState(checkedState, animationSpec, confirmStateChange = { true })
    val isRtl = LocalLayoutDirection.current == LayoutDirection.Rtl

    val forceAnimationCheck = remember { mutableStateOf(false) }
    LaunchedEffect(checkedState, forceAnimationCheck.value) {
        if (checkedState != swipeState.currentValue) {
            swipeState.animateTo(checkedState)
        }
    }
    DisposableEffect(swipeState.currentValue) {
        if (checkedState != swipeState.currentValue) {
            onValueChange.invoke(swipeState.currentValue)
            forceAnimationCheck.value = !forceAnimationCheck.value
        }
        onDispose { }
    }

    // Toggle Logic
    val toggleModifier = Modifier.toggleable(
        value = toggleSwitchInfo.checked,
        enabled = enabledSwitch,
        role = Role.Switch,
        onValueChange = onValueChange,
        interactionSource = interactionSource,
        indication = rememberRipple()
    )
    val scope = rememberCoroutineScope()

    // UI Implementation
    Box(
        modifier = modifier
            .swipeable(
                state = swipeState,
                anchors = mapOf(minBound to false, maxBound to true),
                thresholds = { _, _ -> FractionalThreshold(0.5f) },
                orientation = Orientation.Horizontal,
                enabled = enabledSwitch,
                reverseDirection = isRtl,
                interactionSource = interactionSource,
                resistance = null
            )
            .width(token.fixedTrackWidth)
            .height(token.fixedTrackHeight)
            .clip(CircleShape)
            .background(backgroundColor)
            .then(toggleModifier)
            .onKeyEvent { keyEvent ->
                when (keyEvent.nativeKeyEvent.keyCode) {
                    KEYCODE_ENTER, KEYCODE_SPACE -> {
                        scope.launch { swipeState.animateTo(!swipeState.currentValue) }
                        true
                    }
                    else -> false
                }
            }, contentAlignment = Alignment.CenterStart
    ) {
        Spacer(modifier = Modifier
            .offset { IntOffset(swipeState.offset.value.roundToInt(), 0) }
            .shadow(elevation, CircleShape)
            .size(
                animateDpAsState(
                    targetValue =
                    if (interactionSource.collectIsPressedAsState().value)
                        token.pressedKnobDiameter
                    else
                        token.restKnobDiameter
                ).value
            )
            .clip(CircleShape)
            .background(foregroundColor)
        )
    }
}
```
