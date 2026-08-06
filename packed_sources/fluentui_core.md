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
src/main/java/com/microsoft/fluentui/compose/AnchoredDraggable.kt
src/main/java/com/microsoft/fluentui/compose/ModalPopup.kt
src/main/java/com/microsoft/fluentui/compose/Scaffold.kt
src/main/java/com/microsoft/fluentui/compose/Swipeable.kt
src/main/java/com/microsoft/fluentui/theme/FluentTheme.kt
src/main/java/com/microsoft/fluentui/theme/token/ControlTokens.kt
src/main/java/com/microsoft/fluentui/theme/token/controlTokens/AcrylicPaneTokens.kt
src/main/java/com/microsoft/fluentui/theme/token/controlTokens/ActionBarTokens.kt
src/main/java/com/microsoft/fluentui/theme/token/controlTokens/AnnouncementCardTokens.kt
src/main/java/com/microsoft/fluentui/theme/token/controlTokens/AppBarTokens.kt
src/main/java/com/microsoft/fluentui/theme/token/controlTokens/AvatarCarouselTokens.kt
src/main/java/com/microsoft/fluentui/theme/token/controlTokens/AvatarGroupTokens.kt
src/main/java/com/microsoft/fluentui/theme/token/controlTokens/AvatarTokens.kt
src/main/java/com/microsoft/fluentui/theme/token/controlTokens/BadgeTokens.kt
src/main/java/com/microsoft/fluentui/theme/token/controlTokens/BannerTokens.kt
src/main/java/com/microsoft/fluentui/theme/token/controlTokens/BasicCardTokens.kt
src/main/java/com/microsoft/fluentui/theme/token/controlTokens/BasicChipTokens.kt
src/main/java/com/microsoft/fluentui/theme/token/controlTokens/BottomSheetTokens.kt
src/main/java/com/microsoft/fluentui/theme/token/controlTokens/ButtonTokens.kt
src/main/java/com/microsoft/fluentui/theme/token/controlTokens/CardNudgeTokens.kt
src/main/java/com/microsoft/fluentui/theme/token/controlTokens/CheckBoxTokens.kt
src/main/java/com/microsoft/fluentui/theme/token/controlTokens/CircularProgressIndicatorTokens.kt
src/main/java/com/microsoft/fluentui/theme/token/controlTokens/CitationTokens.kt
src/main/java/com/microsoft/fluentui/theme/token/controlTokens/ContextualCommandBarTokens.kt
src/main/java/com/microsoft/fluentui/theme/token/controlTokens/DialogTokens.kt
src/main/java/com/microsoft/fluentui/theme/token/controlTokens/DividerTokens.kt
src/main/java/com/microsoft/fluentui/theme/token/controlTokens/DrawerTokens.kt
src/main/java/com/microsoft/fluentui/theme/token/controlTokens/FABTokens.kt
src/main/java/com/microsoft/fluentui/theme/token/controlTokens/FileCardTokens.kt
src/main/java/com/microsoft/fluentui/theme/token/controlTokens/LabelTokens.kt
src/main/java/com/microsoft/fluentui/theme/token/controlTokens/LinearProgressIndicatorTokens.kt
src/main/java/com/microsoft/fluentui/theme/token/controlTokens/ListItemTokens.kt
src/main/java/com/microsoft/fluentui/theme/token/controlTokens/MenuTokens.kt
src/main/java/com/microsoft/fluentui/theme/token/controlTokens/PeoplePickerTokens.kt
src/main/java/com/microsoft/fluentui/theme/token/controlTokens/PersonaChipTokens.kt
src/main/java/com/microsoft/fluentui/theme/token/controlTokens/PillBarTokens.kt
src/main/java/com/microsoft/fluentui/theme/token/controlTokens/PillButtonTokens.kt
src/main/java/com/microsoft/fluentui/theme/token/controlTokens/PillSwitchTokens.kt
src/main/java/com/microsoft/fluentui/theme/token/controlTokens/PillTabsTokens.kt
src/main/java/com/microsoft/fluentui/theme/token/controlTokens/ProgressTextTokens.kt
src/main/java/com/microsoft/fluentui/theme/token/controlTokens/RadioButtonTokens.kt
src/main/java/com/microsoft/fluentui/theme/token/controlTokens/SearchBarPersonaChipTokens.kt
src/main/java/com/microsoft/fluentui/theme/token/controlTokens/SearchBarTokens.kt
src/main/java/com/microsoft/fluentui/theme/token/controlTokens/ShimmerTokens.kt
src/main/java/com/microsoft/fluentui/theme/token/controlTokens/SideRailTokens.kt
src/main/java/com/microsoft/fluentui/theme/token/controlTokens/SnackbarTokens.kt
src/main/java/com/microsoft/fluentui/theme/token/controlTokens/StackableSnackbarTokens.kt
src/main/java/com/microsoft/fluentui/theme/token/controlTokens/TabBarTokens.kt
src/main/java/com/microsoft/fluentui/theme/token/controlTokens/TabItemTokens.kt
src/main/java/com/microsoft/fluentui/theme/token/controlTokens/TextFieldTokens.kt
src/main/java/com/microsoft/fluentui/theme/token/controlTokens/ToggleSwitchTokens.kt
src/main/java/com/microsoft/fluentui/theme/token/controlTokens/TooltipTokens.kt
src/main/java/com/microsoft/fluentui/theme/token/controlTokens/ViewPagerTokens.kt
src/main/java/com/microsoft/fluentui/theme/token/FluentAliasTokens.kt
src/main/java/com/microsoft/fluentui/theme/token/FluentBorder.kt
src/main/java/com/microsoft/fluentui/theme/token/FluentColor.kt
src/main/java/com/microsoft/fluentui/theme/token/FluentElevation.kt
src/main/java/com/microsoft/fluentui/theme/token/FluentGlobalTokens.kt
src/main/java/com/microsoft/fluentui/theme/token/FluentIcon.kt
src/main/java/com/microsoft/fluentui/theme/token/FluentStyle.kt
src/main/java/com/microsoft/fluentui/theme/token/TokenSet.kt
src/main/java/com/microsoft/fluentui/theming/FluentUIContextThemeWrapper.kt
src/main/java/com/microsoft/fluentui/util/AccessibilityUtils.kt
src/main/java/com/microsoft/fluentui/util/ColorProperty.kt
src/main/java/com/microsoft/fluentui/util/DisplayUtils.kt
src/main/java/com/microsoft/fluentui/util/FloatProperty.kt
src/main/java/com/microsoft/fluentui/util/TextAppearanceUtils.kt
src/main/java/com/microsoft/fluentui/util/ThemeUtils.kt
src/main/java/com/microsoft/fluentui/util/Utils.kt
src/main/java/com/microsoft/fluentui/util/ViewUtils.kt
src/main/java/com/microsoft/fluentui/view/BaseDividerItemDecoration.kt
src/main/java/com/microsoft/fluentui/view/MSRecyclerView.kt
src/main/java/com/microsoft/fluentui/view/TemplateView.kt
src/main/res/values/attrs.xml
src/main/res/values/colors.xml
src/main/res/values/dimens.xml
src/main/res/values/styles.xml
src/main/res/values/themes.xml
```

# Files

## File: src/main/java/com/microsoft/fluentui/compose/AnchoredDraggable.kt
````kotlin
/*
 * Copyright 2022 The Android Open Source Project
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

package com.microsoft.fluentui.compose

import android.annotation.SuppressLint
import androidx.compose.animation.core.AnimationSpec
import androidx.compose.animation.core.animate
import androidx.compose.foundation.MutatePriority
import androidx.compose.foundation.MutatorMutex
import androidx.compose.foundation.gestures.DragScope
import androidx.compose.foundation.gestures.DraggableState
import androidx.compose.foundation.gestures.Orientation
import androidx.compose.foundation.gestures.draggable
import androidx.compose.foundation.interaction.MutableInteractionSource
import androidx.compose.foundation.layout.offset
import androidx.compose.runtime.Stable
import androidx.compose.runtime.derivedStateOf
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableFloatStateOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.saveable.Saver
import androidx.compose.runtime.setValue
import androidx.compose.runtime.snapshotFlow
import androidx.compose.runtime.structuralEqualityPolicy
import androidx.compose.ui.Modifier
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.input.nestedscroll.NestedScrollConnection
import androidx.compose.ui.input.nestedscroll.NestedScrollSource
import androidx.compose.ui.unit.Velocity
import kotlin.math.abs
import kotlinx.coroutines.CancellationException
import kotlinx.coroutines.CoroutineStart
import kotlinx.coroutines.Job
import kotlinx.coroutines.cancel
import kotlinx.coroutines.coroutineScope
import kotlinx.coroutines.launch

/**
 * Structure that represents the anchors of a [AnchoredDraggableState].
 *
 * See the DraggableAnchors factory method to construct drag anchors using a default implementation.
 */
interface DraggableAnchors<T> {

    /**
     * Get the anchor position for an associated [value]
     *
     * @param value The value to look up
     *
     * @return The position of the anchor, or [Float.NaN] if the anchor does not exist
     */
    fun positionOf(value: T): Float

    /**
     * Whether there is an anchor position associated with the [value]
     *
     * @param value The value to look up
     *
     * @return true if there is an anchor for this value, false if there is no anchor for this value
     */
    fun hasAnchorFor(value: T): Boolean

    /**
     * Find the closest anchor to the [position].
     *
     * @param position The position to start searching from
     *
     * @return The closest anchor or null if the anchors are empty
     */
    fun closestAnchor(position: Float): T?

    /**
     * Find the closest anchor to the [position], in the specified direction.
     *
     * @param position The position to start searching from
     * @param searchUpwards Whether to search upwards from the current position or downwards
     *
     * @return The closest anchor or null if the anchors are empty
     */
    fun closestAnchor(position: Float, searchUpwards: Boolean): T?

    /**
     * The smallest anchor, or [Float.NEGATIVE_INFINITY] if the anchors are empty.
     */
    fun minAnchor(): Float

    /**
     * The biggest anchor, or [Float.POSITIVE_INFINITY] if the anchors are empty.
     */
    fun maxAnchor(): Float

    /**
     * The amount of anchors
     */
    val size: Int
}

/**
 * [DraggableAnchorsConfig] stores a mutable configuration anchors, comprised of values of [T] and
 * corresponding [Float] positions. This [DraggableAnchorsConfig] is used to construct an immutable
 * [DraggableAnchors] instance later on.
 */
class DraggableAnchorsConfig<T> {

    internal val anchors = mutableMapOf<T, Float>()

    /**
     * Set the anchor position for [this] anchor.
     *
     * @param position The anchor position.
     */
    @Suppress("BuilderSetStyle")
    infix fun T.at(position: Float) {
        anchors[this] = position
    }
}

/**
 * Create a new [DraggableAnchors] instance using a builder function.
 *
 * @param builder A function with a [DraggableAnchorsConfig] that offers APIs to configure anchors
 * @return A new [DraggableAnchors] instance with the anchor positions set by the `builder`
 * function.
 */
fun <T : Any> DraggableAnchors(
    builder: DraggableAnchorsConfig<T>.() -> Unit
): DraggableAnchors<T> = MapDraggableAnchors(DraggableAnchorsConfig<T>().apply(builder).anchors)

/**
 * Enable drag gestures between a set of predefined values.
 *
 * When a drag is detected, the offset of the [AnchoredDraggableState] will be updated with the drag
 * delta. You should use this offset to move your content accordingly (see [Modifier.offset]).
 * When the drag ends, the offset will be animated to one of the anchors and when that anchor is
 * reached, the value of the [AnchoredDraggableState] will also be updated to the value
 * corresponding to the new anchor.
 *
 * Dragging is constrained between the minimum and maximum anchors.
 *
 * @param state The associated [AnchoredDraggableState].
 * @param orientation The orientation in which the [anchoredDraggable] can be dragged.
 * @param enabled Whether this [anchoredDraggable] is enabled and should react to the user's input.
 * @param reverseDirection Whether to reverse the direction of the drag, so a top to bottom
 * drag will behave like bottom to top, and a left to right drag will behave like right to left.
 * @param interactionSource Optional [MutableInteractionSource] that will passed on to
 * the internal [Modifier.draggable].
 */
@Suppress("ModifierFactoryUnreferencedReceiver")
fun <T> Modifier.anchoredDraggable(
    state: AnchoredDraggableState<T>,
    orientation: Orientation,
    enabled: Boolean = true,
    reverseDirection: Boolean = false,
    interactionSource: MutableInteractionSource? = null
) = draggable(
    state = state.draggableState,
    orientation = orientation,
    enabled = enabled,
    interactionSource = interactionSource,
    reverseDirection = reverseDirection,
    startDragImmediately = state.isAnimationRunning,
    onDragStopped = { velocity -> launch { state.settle(velocity) } }
)

/**
 * Scope used for suspending anchored drag blocks. Allows to set [AnchoredDraggableState.offset] to
 * a new value.
 *
 * @see [AnchoredDraggableState.anchoredDrag] to learn how to start the anchored drag and get the
 * access to this scope.
 */
interface AnchoredDragScope {
    /**
     * Assign a new value for an offset value for [AnchoredDraggableState].
     *
     * @param newOffset new value for [AnchoredDraggableState.offset].
     * @param lastKnownVelocity last known velocity (if known)
     */
    fun dragTo(
        newOffset: Float,
        lastKnownVelocity: Float = 0f
    )
}

/**
 * State of the [anchoredDraggable] modifier.
 * Use the constructor overload with anchors if the anchors are defined in composition, or update
 * the anchors using [updateAnchors].
 *
 * This contains necessary information about any ongoing drag or animation and provides methods
 * to change the state either immediately or by starting an animation.
 *
 * @param initialValue The initial value of the state.
 * @param positionalThreshold The positional threshold, in px, to be used when calculating the
 * target state while a drag is in progress and when settling after the drag ends. This is the
 * distance from the start of a transition. It will be, depending on the direction of the
 * interaction, added or subtracted from/to the origin offset. It should always be a positive value.
 * @param velocityThreshold The velocity threshold (in px per second) that the end velocity has to
 * exceed in order to animate to the next state, even if the [positionalThreshold] has not been
 * reached.
 * @param animationSpec The default animation that will be used to animate to a new state.
 * @param confirmValueChange Optional callback invoked to confirm or veto a pending state change.
 */
@Stable
class AnchoredDraggableState<T>(
    initialValue: T,
    internal val positionalThreshold: (totalDistance: Float) -> Float,
    internal val velocityThreshold: () -> Float,
    val animationSpec: AnimationSpec<Float>,
    internal val confirmValueChange: (newValue: T) -> Boolean = { true }
) {

    /**
     * Construct an [AnchoredDraggableState] instance with anchors.
     *
     * @param initialValue The initial value of the state.
     * @param anchors The anchors of the state. Use [updateAnchors] to update the anchors later.
     * @param animationSpec The default animation that will be used to animate to a new state.
     * @param confirmValueChange Optional callback invoked to confirm or veto a pending state
     * change.
     * @param positionalThreshold The positional threshold, in px, to be used when calculating the
     * target state while a drag is in progress and when settling after the drag ends. This is the
     * distance from the start of a transition. It will be, depending on the direction of the
     * interaction, added or subtracted from/to the origin offset. It should always be a positive
     * value.
     * @param velocityThreshold The velocity threshold (in px per second) that the end velocity has
     * to exceed in order to animate to the next state, even if the [positionalThreshold] has not
     * been reached.
     */
    constructor(
        initialValue: T,
        anchors: DraggableAnchors<T>,
        positionalThreshold: (totalDistance: Float) -> Float,
        velocityThreshold: () -> Float,
        animationSpec: AnimationSpec<Float>,
        confirmValueChange: (newValue: T) -> Boolean = { true }
    ) : this(
        initialValue,
        positionalThreshold,
        velocityThreshold,
        animationSpec,
        confirmValueChange
    ) {
        this.anchors = anchors
        trySnapTo(initialValue)
    }

    private val dragMutex = MutatorMutex()
    internal var minBound = Float.NEGATIVE_INFINITY

    internal val draggableState = object : DraggableState {

        private val dragScope = object : DragScope {
            override fun dragBy(pixels: Float) {
                with(anchoredDragScope) {
                    dragTo(newOffsetForDelta(pixels))
                }
            }
        }

        override suspend fun drag(
            dragPriority: MutatePriority,
            block: suspend DragScope.() -> Unit
        ) {
            this@AnchoredDraggableState.anchoredDrag(dragPriority) {
                with(dragScope) { block() }
            }
        }

        override fun dispatchRawDelta(delta: Float) {
            this@AnchoredDraggableState.dispatchRawDelta(delta)
        }
    }

    /**
     * The current value of the [AnchoredDraggableState].
     */
    var currentValue: T by mutableStateOf(initialValue)
        private set

    /**
     * The target value. This is the closest value to the current offset, taking into account
     * positional thresholds. If no interactions like animations or drags are in progress, this
     * will be the current value.
     */
    val targetValue: T by derivedStateOf {
        dragTarget ?: run {
            val currentOffset = offset
            if (!currentOffset.isNaN()) {
                computeTarget(currentOffset, currentValue, velocity = 0f)
            } else currentValue
        }
    }

    /**
     * The closest value in the swipe direction from the current offset, not considering thresholds.
     * If an [anchoredDrag] is in progress, this will be the target of that anchoredDrag (if
     * specified).
     */
    internal val closestValue: T by derivedStateOf {
        dragTarget ?: run {
            val currentOffset = offset
            if (!currentOffset.isNaN()) {
                computeTargetWithoutThresholds(currentOffset, currentValue)
            } else currentValue
        }
    }

    /**
     * The current offset, or [Float.NaN] if it has not been initialized yet.
     *
     * The offset will be initialized when the anchors are first set through [updateAnchors].
     *
     * Strongly consider using [requireOffset] which will throw if the offset is read before it is
     * initialized. This helps catch issues early in your workflow.
     */
    var offset: Float by mutableFloatStateOf(Float.NaN)
        private set

    /**
     * Require the current offset.
     *
     * @see offset
     *
     * @throws IllegalStateException If the offset has not been initialized yet
     */
    fun requireOffset(): Float {
        check(!offset.isNaN()) {
            "The offset was read before being initialized. Did you access the offset in a phase " +
                    "before layout, like effects or composition?"
        }
        return offset
    }

    /*
It's a flag to indicate whether anchors are filled or not.
Useful as a flag to let expand(), open() to get to know whether anchors are filled or not
when launched for the very first time
 */
    var anchorsFilled: Boolean by mutableStateOf(false)

    /**
     * Whether an animation is currently in progress.
     */
    val isAnimationRunning: Boolean get() = dragTarget != null

    /**
     * The fraction of the progress going from [currentValue] to [closestValue], within [0f..1f]
     * bounds, or 1f if the [AnchoredDraggableState] is in a settled state.
     */
    /*@FloatRange(from = 0f, to = 1f)*/
    val progress: Float by derivedStateOf(structuralEqualityPolicy()) {
        val a = anchors.positionOf(currentValue)
        val b = anchors.positionOf(closestValue)
        val distance = abs(b - a)
        if (!distance.isNaN() && distance > 1e-6f) {
            val progress = (this.requireOffset() - a) / (b - a)
            // If we are very close to 0f or 1f, we round to the closest
            if (progress < 1e-6f) 0f else if (progress > 1 - 1e-6f) 1f else progress
        } else 1f
    }

    /**
     * The velocity of the last known animation. Gets reset to 0f when an animation completes
     * successfully, but does not get reset when an animation gets interrupted.
     * You can use this value to provide smooth reconciliation behavior when re-targeting an
     * animation.
     */
    var lastVelocity: Float by mutableFloatStateOf(0f)
        private set

    private var dragTarget: T? by mutableStateOf(null)

    var anchors: DraggableAnchors<T> by mutableStateOf(emptyDraggableAnchors())
        private set

    /**
     * Update the anchors. If there is no ongoing [anchoredDrag] operation, snap to the [newTarget],
     * otherwise restart the ongoing [anchoredDrag] operation (e.g. an animation) with the new
     * anchors.
     *
     * <b>If your anchors depend on the size of the layout, updateAnchors should be called in the
     * layout (placement) phase, e.g. through Modifier.onSizeChanged.</b> This ensures that the
     * state is set up within the same frame.
     * For static anchors, or anchors with different data dependencies, [updateAnchors] is safe to
     * be called from side effects or layout.
     *
     * @param newAnchors The new anchors.
     * @param newTarget The new target, by default the closest anchor or the current target if there
     * are no anchors.
     */
    fun updateAnchors(
        newAnchors: DraggableAnchors<T>,
        newTarget: T = if (!offset.isNaN()) {
            newAnchors.closestAnchor(offset) ?: targetValue
        } else targetValue
    ) {
        if (anchors != newAnchors) {
            anchors = newAnchors
            // Attempt to snap. If nobody is holding the lock, we can immediately update the offset.
            // If anybody is holding the lock, we send a signal to restart the ongoing work with the
            // updated anchors.
            val snapSuccessful = trySnapTo(newTarget)
            if (!snapSuccessful) {
                dragTarget = newTarget
            }
        }
        anchorsFilled = true
    }

    /**
     * Find the closest anchor, taking into account the [velocityThreshold] and
     * [positionalThreshold], and settle at it with an animation.
     *
     * If the [velocity] is lower than the [velocityThreshold], the closest anchor by distance and
     * [positionalThreshold] will be the target. If the [velocity] is higher than the
     * [velocityThreshold], the [positionalThreshold] will <b>not</b> be considered and the next
     * anchor in the direction indicated by the sign of the [velocity] will be the target.
     */
    suspend fun settle(velocity: Float) {
        val previousValue = this.currentValue
        val targetValue = computeTarget(
            offset = requireOffset(),
            currentValue = previousValue,
            velocity = velocity
        )
        if (confirmValueChange(targetValue)) {
            animateTo(targetValue, velocity)
        } else {
            // If the user vetoed the state change, rollback to the previous state.
            animateTo(previousValue, velocity)
        }
    }

    private fun computeTarget(
        offset: Float,
        currentValue: T,
        velocity: Float
    ): T {
        val currentAnchors = anchors
        val currentAnchorPosition = currentAnchors.positionOf(currentValue)
        val velocityThresholdPx = velocityThreshold()
        return if (currentAnchorPosition == offset || currentAnchorPosition.isNaN()) {
            currentValue
        } else if (currentAnchorPosition < offset) {
            // Swiping from lower to upper (positive).
            if (velocity >= velocityThresholdPx) {
                currentAnchors.closestAnchor(offset, true)!!
            } else {
                val upper = currentAnchors.closestAnchor(offset, true)!!
                val distance = abs(currentAnchors.positionOf(upper) - currentAnchorPosition)
                val relativeThreshold = abs(positionalThreshold(distance))
                val absoluteThreshold = abs(currentAnchorPosition + relativeThreshold)
                if (offset < absoluteThreshold) currentValue else upper
            }
        } else {
            // Swiping from upper to lower (negative).
            if (velocity <= -velocityThresholdPx) {
                currentAnchors.closestAnchor(offset, false)!!
            } else {
                val lower = currentAnchors.closestAnchor(offset, false)!!
                val distance = abs(currentAnchorPosition - currentAnchors.positionOf(lower))
                val relativeThreshold = abs(positionalThreshold(distance))
                val absoluteThreshold = abs(currentAnchorPosition - relativeThreshold)
                if (offset < 0) {
                    // For negative offsets, larger absolute thresholds are closer to lower anchors
                    // than smaller ones.
                    if (abs(offset) < absoluteThreshold) currentValue else lower
                } else {
                    if (offset > absoluteThreshold) currentValue else lower
                }
            }
        }
    }

    private fun computeTargetWithoutThresholds(
        offset: Float,
        currentValue: T,
    ): T {
        val currentAnchors = anchors
        val currentAnchor = currentAnchors.positionOf(currentValue)
        return if (currentAnchor == offset || currentAnchor.isNaN()) {
            currentValue
        } else if (currentAnchor < offset) {
            currentAnchors.closestAnchor(offset, true) ?: currentValue
        } else {
            currentAnchors.closestAnchor(offset, false) ?: currentValue
        }
    }

    private val anchoredDragScope: AnchoredDragScope = object : AnchoredDragScope {
        override fun dragTo(newOffset: Float, lastKnownVelocity: Float) {
            offset = newOffset
            lastVelocity = lastKnownVelocity
        }
    }

    /**
     * Call this function to take control of drag logic and perform anchored drag with the latest
     * anchors.
     *
     * All actions that change the [offset] of this [AnchoredDraggableState] must be performed
     * within an [anchoredDrag] block (even if they don't call any other methods on this object)
     * in order to guarantee that mutual exclusion is enforced.
     *
     * If [anchoredDrag] is called from elsewhere with the [dragPriority] higher or equal to ongoing
     * drag, the ongoing drag will be cancelled.
     *
     * <b>If the [anchors] change while the [block] is being executed, it will be cancelled and
     * re-executed with the latest anchors and target.</b> This allows you to target the correct
     * state.
     *
     * @param dragPriority of the drag operation
     * @param block perform anchored drag given the current anchor provided
     */
    suspend fun anchoredDrag(
        dragPriority: MutatePriority = MutatePriority.Default,
        block: suspend AnchoredDragScope.(anchors: DraggableAnchors<T>) -> Unit
    ) {
        try {
            dragMutex.mutate(dragPriority) {
                restartable(inputs = { anchors }) { latestAnchors ->
                    anchoredDragScope.block(latestAnchors)
                }
            }
        } finally {
            val closest = anchors.closestAnchor(offset)
            if (closest != null && abs(offset - anchors.positionOf(closest)) <= 0.5f) {
                currentValue = closest
            }
        }
    }

    /**
     * Call this function to take control of drag logic and perform anchored drag with the latest
     * anchors and target.
     *
     * All actions that change the [offset] of this [AnchoredDraggableState] must be performed
     * within an [anchoredDrag] block (even if they don't call any other methods on this object)
     * in order to guarantee that mutual exclusion is enforced.
     *
     * This overload allows the caller to hint the target value that this [anchoredDrag] is intended
     * to arrive to. This will set [AnchoredDraggableState.targetValue] to provided value so
     * consumers can reflect it in their UIs.
     *
     * <b>If the [anchors] or [AnchoredDraggableState.targetValue] change while the [block] is being
     * executed, it will be cancelled and re-executed with the latest anchors and target.</b> This
     * allows you to target the correct state.
     *
     * If [anchoredDrag] is called from elsewhere with the [dragPriority] higher or equal to ongoing
     * drag, the ongoing drag will be cancelled.
     *
     * @param targetValue hint the target value that this [anchoredDrag] is intended to arrive to
     * @param dragPriority of the drag operation
     * @param block perform anchored drag given the current anchor provided
     */
    suspend fun anchoredDrag(
        targetValue: T,
        dragPriority: MutatePriority = MutatePriority.Default,
        block: suspend AnchoredDragScope.(anchors: DraggableAnchors<T>, targetValue: T) -> Unit
    ) {
        if (anchors.hasAnchorFor(targetValue)) {
            try {
                dragMutex.mutate(dragPriority) {
                    dragTarget = targetValue
                    restartable(
                        inputs = { anchors to this@AnchoredDraggableState.targetValue }
                    ) { (latestAnchors, latestTarget) ->
                        anchoredDragScope.block(latestAnchors, latestTarget)
                    }
                }
            } finally {
                dragTarget = null
                val closest = anchors.closestAnchor(offset)
                if (closest != null && abs(offset - anchors.positionOf(closest)) <= 0.5f) {
                    currentValue = closest
                }
            }
        } else {
            // Todo: b/283467401, revisit this behavior
            currentValue = targetValue
        }
    }

    internal fun newOffsetForDelta(delta: Float) =
        ((if (offset.isNaN()) 0f else offset) + delta)
            .coerceIn(anchors.minAnchor(), anchors.maxAnchor())

    /**
     * Drag by the [delta], coerce it in the bounds and dispatch it to the [AnchoredDraggableState].
     *
     * @return The delta the consumed by the [AnchoredDraggableState]
     */
    fun dispatchRawDelta(delta: Float): Float {
        val newOffset = newOffsetForDelta(delta)
        val oldOffset = if (offset.isNaN()) 0f else offset
        offset = newOffset
        return newOffset - oldOffset
    }


    /**
     * Attempt to snap synchronously. Snapping can happen synchronously when there is no other drag
     * transaction like a drag or an animation is progress. If there is another interaction in
     * progress, the suspending [snapTo] overload needs to be used.
     *
     * @return true if the synchronous snap was successful, or false if we couldn't snap synchronous
     */
    private fun trySnapTo(targetValue: T): Boolean = dragMutex.tryMutate {
        with(anchoredDragScope) {
            val targetOffset = anchors.positionOf(targetValue)
            if (!targetOffset.isNaN()) {
                dragTo(targetOffset)
                dragTarget = null
            }
            currentValue = targetValue
        }
    }

    companion object {
        /**
         * The default [Saver] implementation for [AnchoredDraggableState].
         */
        fun <T : Any> Saver(
            animationSpec: AnimationSpec<Float>,
            positionalThreshold: (distance: Float) -> Float,
            velocityThreshold: () -> Float,
            confirmValueChange: (T) -> Boolean = { true },
        ) = Saver<AnchoredDraggableState<T>, T>(
            save = { it.currentValue },
            restore = {
                AnchoredDraggableState(
                    initialValue = it,
                    animationSpec = animationSpec,
                    confirmValueChange = confirmValueChange,
                    positionalThreshold = positionalThreshold,
                    velocityThreshold = velocityThreshold
                )
            }
        )
    }
}

/**
 * Snap to a [targetValue] without any animation.
 * If the [targetValue] is not in the set of anchors, the [AnchoredDraggableState.currentValue] will
 * be updated to the [targetValue] without updating the offset.
 *
 * @throws CancellationException if the interaction interrupted by another interaction like a
 * gesture interaction or another programmatic interaction like a [animateTo] or [snapTo] call.
 *
 * @param targetValue The target value of the animation
 */
suspend fun <T> AnchoredDraggableState<T>.snapTo(targetValue: T) {
    anchoredDrag(targetValue = targetValue) { anchors, latestTarget ->
        val targetOffset = anchors.positionOf(latestTarget)
        if (!targetOffset.isNaN()) dragTo(targetOffset)
    }
}

/**
 * Animate to a [targetValue].
 * If the [targetValue] is not in the set of anchors, the [AnchoredDraggableState.currentValue] will
 * be updated to the [targetValue] without updating the offset.
 *
 * @throws CancellationException if the interaction interrupted by another interaction like a
 * gesture interaction or another programmatic interaction like a [animateTo] or [snapTo] call.
 *
 * @param targetValue The target value of the animation
 * @param velocity The velocity the animation should start with
 */
suspend fun <T> AnchoredDraggableState<T>.animateTo(
    targetValue: T,
    velocity: Float = this.lastVelocity,
) {
    anchoredDrag(targetValue = targetValue) { anchors, latestTarget ->
        val targetOffset = anchors.positionOf(latestTarget)
        if (!targetOffset.isNaN()) {
            var prev = if (offset.isNaN()) 0f else offset
            animate(prev, targetOffset, velocity, animationSpec) { value, velocity ->
                // Our onDrag coerces the value within the bounds, but an animation may
                // overshoot, for example a spring animation or an overshooting interpolator
                // We respect the user's intention and allow the overshoot, but still use
                // DraggableState's drag for its mutex.
                dragTo(value, velocity)
                prev = value
            }
        }
    }
}

private class AnchoredDragFinishedSignal : CancellationException() {
    override fun fillInStackTrace(): Throwable {
        stackTrace = emptyArray()
        return this
    }
}

private suspend fun <I> restartable(inputs: () -> I, block: suspend (I) -> Unit) {
    try {
        coroutineScope {
            var previousDrag: Job? = null
            snapshotFlow(inputs)
                .collect { latestInputs ->
                    previousDrag?.apply {
                        cancel(AnchoredDragFinishedSignal())
                        join()
                    }
                    previousDrag = launch(start = CoroutineStart.UNDISPATCHED) {
                        block(latestInputs)
                        this@coroutineScope.cancel(AnchoredDragFinishedSignal())
                    }
                }
        }
    } catch (anchoredDragFinished: AnchoredDragFinishedSignal) {
        // Ignored
    }
}

val <T> AnchoredDraggableState<T>.PreUpPostDownNestedScrollConnection: NestedScrollConnection
    get() = object : NestedScrollConnection {
        override fun onPreScroll(available: Offset, source: NestedScrollSource): Offset {
            val delta = available.toFloat()
            return if (delta < 0 && source == NestedScrollSource.Drag) {
                dispatchRawDelta(delta).toOffset()
            } else {
                Offset.Zero
            }
        }

        override fun onPostScroll(
            consumed: Offset,
            available: Offset,
            source: NestedScrollSource
        ): Offset {
            return if (source == NestedScrollSource.Drag) {
                dispatchRawDelta(available.toFloat()).toOffset()
            } else {
                Offset.Zero
            }
        }

        override suspend fun onPreFling(available: Velocity): Velocity {
            val toFling = Offset(available.x, available.y).toFloat()
            return if (toFling < 0 && offset > minBound) {
                settle(velocity = toFling)
                // since we go to the anchor with tween settling, consume all for the best UX
                available
            } else {
                Velocity.Zero
            }
        }

        override suspend fun onPostFling(consumed: Velocity, available: Velocity): Velocity {
            settle(velocity = Offset(available.x, available.y).toFloat())
            return available
        }

        private fun Float.toOffset(): Offset = Offset(0f, this)

        private fun Offset.toFloat(): Float = this.y
    }

val <T> AnchoredDraggableState<T>.PostDownNestedScrollConnection: NestedScrollConnection
    get() = object : NestedScrollConnection {

        override fun onPostScroll(
            consumed: Offset,
            available: Offset,
            source: NestedScrollSource
        ): Offset {
            return if (source == NestedScrollSource.Drag && available.toFloat() > 0) {
                dispatchRawDelta(available.toFloat()).toOffset()
            } else {
                Offset.Zero
            }
        }

        override suspend fun onPostFling(consumed: Velocity, available: Velocity): Velocity {
            settle(velocity = Offset(available.x, available.y).toFloat())
            return available
        }

        private fun Float.toOffset(): Offset = Offset(0f, this)

        private fun Offset.toFloat(): Float = this.y
    }
val <T> AnchoredDraggableState<T>.NonDismissiblePostDownNestedScrollConnection: NestedScrollConnection
    get() = object : NestedScrollConnection {

        override fun onPreScroll(available: Offset, source: NestedScrollSource): Offset {
            val delta = available.toFloat()
            return if (delta < 0 && source == NestedScrollSource.Drag) {
                dispatchRawDelta(delta).toOffset()
            } else {
                Offset.Zero
            }
        }
        override fun onPostScroll(
            consumed: Offset,
            available: Offset,
            source: NestedScrollSource
        ): Offset {
            return if (source == NestedScrollSource.Drag && available.toFloat() < 0) {
                dispatchRawDelta(available.toFloat()).toOffset()
            } else {
                Offset.Zero
            }
        }

        override suspend fun onPostFling(consumed: Velocity, available: Velocity): Velocity {
            settle(velocity = Offset(available.x, available.y).toFloat())
            return available
        }

        private fun Float.toOffset(): Offset = Offset(0f, this)

        private fun Offset.toFloat(): Float = this.y
    }

val <T> AnchoredDraggableState<T>.NonDismissiblePreUpPostDownNestedScrollConnection: NestedScrollConnection
    get() = object : NestedScrollConnection {

        override fun onPreScroll(available: Offset, source: NestedScrollSource): Offset {
            val delta = available.toFloat()
            return if (delta < 0 && source == NestedScrollSource.Drag) {
                dispatchRawDelta(delta).toOffset()
            } else {
                Offset.Zero
            }
        }
        override fun onPostScroll(
            consumed: Offset,
            available: Offset,
            source: NestedScrollSource
        ): Offset {
            return if (source == NestedScrollSource.Drag && available.toFloat() < 0) {
                dispatchRawDelta(available.toFloat()).toOffset()
            } else {
                Offset.Zero
            }
        }

        override suspend fun onPreFling(available: Velocity): Velocity {
            val toFling = Offset(available.x, available.y).toFloat()
            return if (toFling < 0 && offset > minBound) {
                settle(velocity = toFling)
                // since we go to the anchor with tween settling, consume all for the best UX
                available
            } else {
                Velocity.Zero
            }
        }

        private fun Float.toOffset(): Offset = Offset(0f, this)

        private fun Offset.toFloat(): Float = this.y
    }

private fun <T> emptyDraggableAnchors() = MapDraggableAnchors<T>(emptyMap())

private class MapDraggableAnchors<T>(private val anchors: Map<T, Float>) : DraggableAnchors<T> {

    override fun positionOf(value: T): Float = anchors[value] ?: Float.NaN
    override fun hasAnchorFor(value: T) = anchors.containsKey(value)

    override fun closestAnchor(position: Float): T? = anchors.minByOrNull {
        abs(position - it.value)
    }?.key

    override fun closestAnchor(
        position: Float,
        searchUpwards: Boolean
    ): T? {
        return anchors.minByOrNull { (_, anchor) ->
            val delta = if (searchUpwards) anchor - position else position - anchor
            if (delta < 0) Float.POSITIVE_INFINITY else delta
        }?.key
    }

    override fun minAnchor() = anchors.values.minOrNull() ?: Float.NaN

    override fun maxAnchor() = anchors.values.maxOrNull() ?: Float.NaN

    override val size: Int
        get() = anchors.size

    override fun equals(other: Any?): Boolean {
        if (this === other) return true
        if (other !is MapDraggableAnchors<*>) return false

        return anchors == other.anchors
    }

    override fun hashCode() = 31 * anchors.hashCode()

    override fun toString() = "MapDraggableAnchors($anchors)"
}
````

## File: src/main/java/com/microsoft/fluentui/compose/ModalPopup.kt
````kotlin
package com.microsoft.fluentui.compose

import android.content.Context
import android.graphics.Outline
import android.graphics.PixelFormat
import android.graphics.Rect
import android.os.Build
import android.view.Gravity
import android.view.KeyEvent
import android.view.View
import android.view.ViewGroup
import android.view.ViewOutlineProvider
import android.view.WindowManager
import androidx.annotation.RequiresApi
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.WindowInsets
import androidx.compose.foundation.layout.captionBar
import androidx.compose.foundation.layout.displayCutout
import androidx.compose.foundation.layout.ime
import androidx.compose.foundation.layout.imePadding
import androidx.compose.foundation.layout.mandatorySystemGestures
import androidx.compose.foundation.layout.navigationBars
import androidx.compose.foundation.layout.statusBars
import androidx.compose.foundation.layout.systemBars
import androidx.compose.foundation.layout.tappableElement
import androidx.compose.foundation.layout.windowInsetsPadding
import androidx.compose.runtime.Composable
import androidx.compose.runtime.CompositionContext
import androidx.compose.runtime.DisposableEffect
import androidx.compose.runtime.derivedStateOf
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCompositionContext
import androidx.compose.runtime.rememberUpdatedState
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.alpha
import androidx.compose.ui.layout.Layout
import androidx.compose.ui.layout.LayoutCoordinates
import androidx.compose.ui.layout.onGloballyPositioned
import androidx.compose.ui.layout.onSizeChanged
import androidx.compose.ui.platform.AbstractComposeView
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.platform.LocalLayoutDirection
import androidx.compose.ui.platform.LocalView
import androidx.compose.ui.platform.ViewRootForInspector
import androidx.compose.ui.semantics.popup
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.unit.Density
import androidx.compose.ui.unit.IntSize
import androidx.compose.ui.unit.LayoutDirection
import androidx.compose.ui.unit.dp
import androidx.compose.ui.window.PopupProperties
import androidx.core.view.WindowInsetsCompat
import androidx.lifecycle.findViewTreeLifecycleOwner
import androidx.lifecycle.findViewTreeViewModelStoreOwner
import androidx.lifecycle.setViewTreeLifecycleOwner
import androidx.lifecycle.setViewTreeViewModelStoreOwner
import androidx.savedstate.findViewTreeSavedStateRegistryOwner
import androidx.savedstate.setViewTreeSavedStateRegistryOwner
import java.util.UUID

/**
 * Popup specific for modal bottom drawer.
 */
@Composable
fun ModalPopup(
    onDismissRequest: (() -> Unit)? = null,
    properties: PopupProperties = PopupProperties(
        focusable = true,
        dismissOnBackPress = true,
        dismissOnClickOutside = true
    ),
    windowInsetsType: Int = WindowInsetsCompat.Type.systemBars(),
    content: @Composable () -> Unit,
) {
    val view = LocalView.current
    val density = LocalDensity.current
    val layoutDirection = LocalLayoutDirection.current
    val parentComposition = rememberCompositionContext()
    val currentContent by rememberUpdatedState(content)
    val id = rememberSaveable { UUID.randomUUID() }
    val modalWindow = remember {
        ModalWindow(
            onDismissRequest = onDismissRequest,
            properties = properties,
            composeView = view,
            density = density,
            saveId = id
        ).apply {
            setCustomContent(parentComposition) {
                Box(
                    Modifier
                        .semantics { this.popup() }
                        // Get the size of the content
                        .onSizeChanged {
                            popupContentSize = it
                        }
                        // Hide the popup while we can't position it correctly
                        .alpha(if (canCalculatePosition) 1f else 0f)
                        .windowInsetsPadding(
                            convertWindowInsetsCompatTypeToWindowInsets(windowInsetsType)
                        )
                        .imePadding()
                ) {
                    currentContent()
                }
            }
        }
    }

    DisposableEffect(modalWindow) {
        modalWindow.show()
        modalWindow.updateParameters(
            onDismissRequest = onDismissRequest,
            properties = properties,
            layoutDirection = layoutDirection
        )
        onDispose {
            modalWindow.disposeComposition()
            modalWindow.dismiss()
        }
    }

    Layout(
        content = {},
        modifier = Modifier
            .onGloballyPositioned { childCoordinates ->
                val parentCoordinates = childCoordinates.parentLayoutCoordinates
                if (parentCoordinates != null) {
                    modalWindow.updateParentLayoutCoordinates(parentCoordinates)
                }
            }
    ) { _, _ ->
        modalWindow.parentLayoutDirection = layoutDirection
        layout(0, 0) {}
    }
}

@Composable
fun convertWindowInsetsCompatTypeToWindowInsets(windowInsetsCompatType: Int): WindowInsets {
    return when (windowInsetsCompatType) {
        WindowInsetsCompat.Type.statusBars() -> WindowInsets.statusBars
        WindowInsetsCompat.Type.navigationBars() -> WindowInsets.navigationBars
        WindowInsetsCompat.Type.systemBars() -> WindowInsets.systemBars
        WindowInsetsCompat.Type.ime() -> WindowInsets.ime
        WindowInsetsCompat.Type.tappableElement() -> WindowInsets.tappableElement
        WindowInsetsCompat.Type.displayCutout() -> WindowInsets.displayCutout
        WindowInsetsCompat.Type.captionBar() -> WindowInsets.captionBar
        WindowInsetsCompat.Type.mandatorySystemGestures() -> WindowInsets.mandatorySystemGestures
        else -> WindowInsets.systemBars
    }
}

/** Custom compose view for [BottomDrawer] */
private class ModalWindow(
    private var onDismissRequest: (() -> Unit)? = null,
    private var properties: PopupProperties,
    private val composeView: View,
    density: Density,
    saveId: UUID,
    private val popupLayoutHelper: PopupLayoutHelperImpl = if (Build.VERSION.SDK_INT >= 29) {
        PopupLayoutHelperImpl29()
    } else {
        PopupLayoutHelperImpl()
    }
) :
    AbstractComposeView(composeView.context),
    ViewRootForInspector {
    private val windowManager =
        composeView.context.getSystemService(Context.WINDOW_SERVICE) as WindowManager

    private val params: WindowManager.LayoutParams = createLayoutParams()
    var parentLayoutDirection: LayoutDirection = LayoutDirection.Ltr
    var popupContentSize: IntSize? by mutableStateOf(null)
    private var parentLayoutCoordinates: LayoutCoordinates? by mutableStateOf(null)
    val canCalculatePosition by derivedStateOf {
        parentLayoutCoordinates != null && popupContentSize != null
    }

    override val subCompositionView: AbstractComposeView get() = this

    init {
        id = android.R.id.content
        // Set up view owners
        this.setViewTreeLifecycleOwner(composeView.findViewTreeLifecycleOwner())
        this.setViewTreeViewModelStoreOwner(composeView.findViewTreeViewModelStoreOwner())
        setViewTreeSavedStateRegistryOwner(composeView.findViewTreeSavedStateRegistryOwner())
        setTag(androidx.compose.ui.R.id.compose_view_saveable_id_tag, "Popup:$saveId")
        // Enable children to draw their shadow by not clipping them
        clipChildren = false
        with(density) { elevation = 8.dp.toPx() }
        outlineProvider = object : ViewOutlineProvider() {
            override fun getOutline(view: View, result: Outline) {
                result.setRect(0, 0, view.width, view.height)
                result.alpha = 0f
            }
        }
    }

    private var content: @Composable () -> Unit by mutableStateOf({})

    override var shouldCreateCompositionOnAttachedToWindow: Boolean = false
        private set

    fun show() {
        windowManager.addView(this, params)
    }

    fun setCustomContent(
        parent: CompositionContext? = null,
        content: @Composable () -> Unit
    ) {
        setParentCompositionContext(parent)
        this.content = content
        shouldCreateCompositionOnAttachedToWindow = true
    }

    @Composable
    override fun Content() {
        content()
    }

    private fun focusable(isFocusable: Boolean) = applyNewFlags(
        if (!isFocusable) {
            params.flags or WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE
        } else {
            params.flags and (WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE.inv())
        }
    )

    private fun applyNewFlags(flags: Int) {
        params.flags = flags
        popupLayoutHelper.updateViewLayout(windowManager, this, params)
    }

    fun updateParameters(
        onDismissRequest: (() -> Unit)?,
        properties: PopupProperties,
        layoutDirection: LayoutDirection
    ) {
        this.onDismissRequest = onDismissRequest
        if (properties.usePlatformDefaultWidth && !this.properties.usePlatformDefaultWidth) {
            params.width = WindowManager.LayoutParams.WRAP_CONTENT
            params.height = WindowManager.LayoutParams.WRAP_CONTENT
            popupLayoutHelper.updateViewLayout(windowManager, this, params)
        }
        this.properties = properties
        focusable(properties.focusable)
        superSetLayoutDirection(layoutDirection)
    }

    fun updateParentLayoutCoordinates(parentLayoutCoordinates: LayoutCoordinates) {
        this.parentLayoutCoordinates = parentLayoutCoordinates
    }

    fun dismiss() {
        this.setViewTreeLifecycleOwner(null)
        setViewTreeSavedStateRegistryOwner(null)
        windowManager.removeViewImmediate(this)
    }

    override fun setLayoutDirection(layoutDirection: Int) {
        // Do nothing.
    }

    override fun dispatchKeyEvent(event: KeyEvent): Boolean {
        if (event.keyCode == KeyEvent.KEYCODE_BACK && properties.dismissOnBackPress) {
            if (keyDispatcherState == null) {
                return super.dispatchKeyEvent(event)
            }
            val state = keyDispatcherState
            if (event.action == KeyEvent.ACTION_DOWN && event.repeatCount == 0) {
                state?.startTracking(event, this)
                return true
            } else if (event.action == KeyEvent.ACTION_UP) {
                if (state != null && state.isTracking(event) && !event.isCanceled) {
                    onDismissRequest?.invoke()
                    return true
                }
            }
        }
        return super.dispatchKeyEvent(event)
    }

    fun superSetLayoutDirection(layoutDirection: LayoutDirection) {
        val direction = when (layoutDirection) {
            LayoutDirection.Ltr -> android.util.LayoutDirection.LTR
            LayoutDirection.Rtl -> android.util.LayoutDirection.RTL
        }
        super.setLayoutDirection(direction)
    }

    private fun createLayoutParams(): WindowManager.LayoutParams {
        return WindowManager.LayoutParams().apply {
            // Position bottom sheet from the bottom of the screen
            gravity = Gravity.BOTTOM or Gravity.START
            // Application panel window
            type = WindowManager.LayoutParams.TYPE_APPLICATION_PANEL
            // Fill up the entire app view
            width = WindowManager.LayoutParams.MATCH_PARENT
            // for build versions less than or equal to S_V2, set the height to wrap content
            height = if (Build.VERSION.SDK_INT <= Build.VERSION_CODES.S_V2)
                WindowManager.LayoutParams.WRAP_CONTENT
            else
                WindowManager.LayoutParams.MATCH_PARENT

            // Format of screen pixels
            format = PixelFormat.TRANSLUCENT
            // Title used as fallback for a11y services
            // TODO: Provide bottom sheet window resource
            title = composeView.context.resources.getString(
                androidx.compose.ui.R.string.default_popup_window_title
            )
            // Get the Window token from the parent view
            token = composeView.applicationWindowToken

            // Flags specific to modal bottom sheet.
            flags = flags and (
                    WindowManager.LayoutParams.FLAG_IGNORE_CHEEK_PRESSES or
                            WindowManager.LayoutParams.FLAG_ALT_FOCUSABLE_IM
                    ).inv()

            flags = if (Build.VERSION.SDK_INT <= Build.VERSION_CODES.S_V2) {
                flags
            } else flags or WindowManager.LayoutParams.FLAG_LAYOUT_NO_LIMITS
        }
    }
}

private open class PopupLayoutHelperImpl {

    open fun setGestureExclusionRects(composeView: View, width: Int, height: Int) {
        //For Android versions below API 29, it’s not necessary to explicitly exclude the entire screen from system gestures.
        // The skeleton method is defined to keep consistency in the two objects.
    }

    fun updateViewLayout(
        windowManager: WindowManager,
        popupView: View,
        params: ViewGroup.LayoutParams
    ) {
        windowManager.updateViewLayout(popupView, params)
    }
}

@RequiresApi(29) // android.view.View#setSystemGestureExclusionRects call requires API 29 and above
private class PopupLayoutHelperImpl29 : PopupLayoutHelperImpl() {
    override fun setGestureExclusionRects(
        composeView: View,
        width: Int,
        height: Int
    ) { // We need to explicitly specify to exclude the entire screen from system gestures
        composeView.systemGestureExclusionRects = mutableListOf(
            Rect(
                0,
                0,
                width,
                height
            )
        )
    }
}
````

## File: src/main/java/com/microsoft/fluentui/compose/Scaffold.kt
````kotlin
/*
 * Copyright 2021 The Android Open Source Project
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

package com.microsoft.fluentui.compose

import androidx.compose.foundation.layout.*
import androidx.compose.runtime.Composable
import androidx.compose.runtime.CompositionLocalProvider
import androidx.compose.runtime.Immutable
import androidx.compose.runtime.staticCompositionLocalOf
import androidx.compose.ui.Modifier
import androidx.compose.ui.layout.SubcomposeLayout
import androidx.compose.ui.unit.Constraints
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.IntSize
import androidx.compose.ui.unit.LayoutDirection
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.offset

/**
 *
 * Scaffold implements the basic visual layout structure.
 *
 * This component provides API to put together several compose components to construct your
 * screen, by ensuring proper layout strategy for them and collecting necessary data so these
 * components will work together correctly.
 *
 * @param modifier the [Modifier] to be applied to this scaffold
 * @param topBar top app bar of the screen, typically a [SmallTopAppBar]
 * @param bottomBar bottom bar of the screen, typically a [NavigationBar]
 * @param snackbar component to host [Snackbar]s that are pushed to be shown.
 * @param floatingActionButton Main action button of the screen, typically a [FloatingActionButton]
 * @param floatingActionButtonPosition position of the FAB on the screen. See [FabPosition].
 * @param contentWindowInsets window insets to be passed to [content] slot via [PaddingValues]
 * params. Scaffold will take the insets into account from the top/bottom only if the [topBar]/
 * [bottomBar] are not present, as the scaffold expect [topBar]/[bottomBar] to handle insets
 * instead
 * @param content content of the screen. The lambda receives a [PaddingValues] that should be
 * applied to the content root via [Modifier.padding] and [Modifier.consumeWindowInsets] to
 * properly offset top and bottom bars. If using [Modifier.verticalScroll], apply this modifier to
 * the child of the scroll, and not on the scroll itself.
 */
@Composable
fun Scaffold(
    modifier: Modifier = Modifier,
    topBar: @Composable () -> Unit = {},
    bottomBar: @Composable () -> Unit = {},
    sideBar: @Composable () -> Unit = {},
    snackbar: @Composable () -> Unit = {},
    floatingActionButton: @Composable () -> Unit = {},
    floatingActionButtonPosition: FabPosition = FabPosition.End,
    contentWindowInsets: WindowInsets = WindowInsets.systemBars,
    content: @Composable (PaddingValues) -> Unit
) {
    Box(modifier = modifier) {
        ScaffoldLayout(
            fabPosition = floatingActionButtonPosition,
            topBar = topBar,
            bottomBar = bottomBar,
            content = content,
            snackbar = snackbar,
            contentWindowInsets = contentWindowInsets,
            fab = floatingActionButton,
            sideBar = sideBar
        )
    }
}

/**
 * Layout for a [Scaffold]'s content.
 *
 * @param fabPosition [FabPosition] for the FAB (if present)
 * @param topBar the content to place at the top of the [Scaffold], typically a [SmallTopAppBar]
 * @param content the main 'body' of the [Scaffold]
 * @param snackbar the [Snackbar] displayed on top of the [content]
 * @param fab the [FloatingActionButton] displayed on top of the [content], below the [snackbar]
 * and above the [bottomBar]
 * @param bottomBar the content to place at the bottom of the [Scaffold], on top of the
 * [content], typically a [NavigationBar].
 */
@Composable
private fun ScaffoldLayout(
    fabPosition: FabPosition,
    topBar: @Composable () -> Unit,
    content: @Composable (PaddingValues) -> Unit,
    snackbar: @Composable () -> Unit,
    fab: @Composable () -> Unit,
    contentWindowInsets: WindowInsets,
    bottomBar: @Composable () -> Unit,
    sideBar: @Composable () -> Unit

) {
    SubcomposeLayout { constraints ->
        val layoutWidth = constraints.maxWidth
        val layoutHeight = constraints.maxHeight

        val looseConstraints = constraints.copy(minWidth = 0, minHeight = 0)

        layout(layoutWidth, layoutHeight) {
            val sideBarPlaceables = subcompose(ScaffoldLayoutContent.SideBar, sideBar).map {
                it.measure(looseConstraints)
            }
            val sideBarWidth = sideBarPlaceables.maxByOrNull { it.width }?.width ?: 0

            val topBarPlaceables = subcompose(ScaffoldLayoutContent.TopBar, topBar).map {
                it.measure(Constraints(maxWidth = layoutWidth-sideBarWidth, maxHeight = layoutHeight))
            }
            val topBarHeight = topBarPlaceables.maxByOrNull { it.height }?.height ?: 0

            val snackbarPlaceables = subcompose(ScaffoldLayoutContent.Snackbar, snackbar).map {
                // respect only bottom and horizontal for snackbar and fab
                val leftInset = contentWindowInsets
                    .getLeft(this@SubcomposeLayout, layoutDirection)
                val rightInset = contentWindowInsets
                    .getRight(this@SubcomposeLayout, layoutDirection)
                val bottomInset = contentWindowInsets.getBottom(this@SubcomposeLayout)
                // offset the snackbar constraints by the insets values
                it.measure(
                    looseConstraints.offset(
                        -leftInset - rightInset,
                        -bottomInset
                    )
                )
            }

            val snackbarHeight = snackbarPlaceables.maxByOrNull { it.height }?.height ?: 0
            val snackbarWidth = snackbarPlaceables.maxByOrNull { it.width }?.width ?: 0

            val fabPlaceables =
                subcompose(ScaffoldLayoutContent.Fab, fab).mapNotNull { measurable ->
                    // respect only bottom and horizontal for snackbar and fab
                    val leftInset =
                        contentWindowInsets.getLeft(this@SubcomposeLayout, layoutDirection)
                    val rightInset =
                        contentWindowInsets.getRight(this@SubcomposeLayout, layoutDirection)
                    val bottomInset = contentWindowInsets.getBottom(this@SubcomposeLayout)
                    measurable.measure(
                        looseConstraints.offset(
                            -leftInset - rightInset,
                            -bottomInset
                        )
                    )
                        .takeIf { it.height != 0 && it.width != 0 }
                }

            val fabPlacement = if (fabPlaceables.isNotEmpty()) {
                val fabWidth = fabPlaceables.maxByOrNull { it.width }!!.width
                val fabHeight = fabPlaceables.maxByOrNull { it.height }!!.height
                // FAB distance from the left of the layout, taking into account LTR / RTL
                val fabLeftOffset = if (fabPosition == FabPosition.End) {
                    if (layoutDirection == LayoutDirection.Ltr) {
                        layoutWidth - FabSpacing.roundToPx() - fabWidth
                    } else {
                        FabSpacing.roundToPx()
                    }
                } else {
                    (layoutWidth - fabWidth) / 2
                }

                FabPlacement(
                    left = fabLeftOffset,
                    width = fabWidth,
                    height = fabHeight
                )
            } else {
                null
            }

            val bottomBarPlaceables = subcompose(ScaffoldLayoutContent.BottomBar) {
                CompositionLocalProvider(
                    LocalFabPlacement provides fabPlacement,
                    content = bottomBar
                )
            }.map { it.measure(Constraints(maxWidth = layoutWidth-sideBarWidth, maxHeight = layoutHeight)) }

            val bottomBarHeight = bottomBarPlaceables.maxByOrNull { it.height }?.height
            val fabOffsetFromBottom = fabPlacement?.let {
                if (bottomBarHeight == null) {
                    it.height + FabSpacing.roundToPx() +
                            contentWindowInsets.getBottom(this@SubcomposeLayout)
                } else {
                    // Total height is the bottom bar height + the FAB height + the padding
                    // between the FAB and bottom bar
                    bottomBarHeight + it.height + FabSpacing.roundToPx()
                }
            }

            val snackbarOffsetFromBottom = if (snackbarHeight != 0) {
                snackbarHeight +
                        (fabOffsetFromBottom ?: bottomBarHeight
                        ?: contentWindowInsets.getBottom(this@SubcomposeLayout))
            } else {
                0
            }

            val bodyContentPlaceables = subcompose(ScaffoldLayoutContent.MainContent) {
                val insets = contentWindowInsets.asPaddingValues(this@SubcomposeLayout)
                val innerPadding = PaddingValues(
                    top =
                    if (topBarPlaceables.isEmpty()) {
                        insets.calculateTopPadding()
                    } else {
                        topBarHeight.toDp()
                    },
                    bottom =
                    if (bottomBarPlaceables.isEmpty() || bottomBarHeight == null) {
                        insets.calculateBottomPadding()
                    } else {
                        bottomBarHeight.toDp()
                    },
                    start = if (sideBarPlaceables.isEmpty()) {

                        insets.calculateStartPadding((this@SubcomposeLayout).layoutDirection)
                    } else {
                        sideBarWidth.toDp()
                    },
                    end = insets.calculateEndPadding((this@SubcomposeLayout).layoutDirection)
                )
                content(innerPadding)
            }.map { it.measure(looseConstraints) }

            // Placing to control drawing order to match default elevation of each placeable

            bodyContentPlaceables.forEach {
                it.placeRelative(0, 0)
            }
            topBarPlaceables.forEach {
                it.placeRelative(sideBarWidth, 0)
            }
            sideBarPlaceables.forEach {
                it.placeRelative(0,0)
            }
            snackbarPlaceables.forEach {
                it.placeRelative(
                    (layoutWidth - snackbarWidth) / 2 +
                            contentWindowInsets.getLeft(this@SubcomposeLayout, layoutDirection),
                    layoutHeight - snackbarOffsetFromBottom
                )
            }
            // The bottom bar is always at the bottom of the layout
            bottomBarPlaceables.forEach {
                it.placeRelative(sideBarWidth, layoutHeight - (bottomBarHeight ?: 0))
            }
            // Explicitly not using placeRelative here as `leftOffset` already accounts for RTL
            fabPlacement?.let { placement ->
                fabPlaceables.forEach {
                    it.place(placement.left, layoutHeight - fabOffsetFromBottom!!)
                }
            }
        }
    }
}

/**
 * The possible positions for a [FloatingActionButton] attached to a [Scaffold].
 */
@JvmInline
value class FabPosition internal constructor(@Suppress("unused") private val value: Int) {
    companion object {
        /**
         * Position FAB at the bottom of the screen in the center, above the [NavigationBar] (if it
         * exists)
         */
        val Center = FabPosition(0)

        /**
         * Position FAB at the bottom of the screen at the end, above the [NavigationBar] (if it
         * exists)
         */
        val End = FabPosition(1)
    }

    override fun toString(): String {
        return when (this) {
            Center -> "FabPosition.Center"
            else -> "FabPosition.End"
        }
    }
}

/**
 * Placement information for a [FloatingActionButton] inside a [Scaffold].
 *
 * @property left the FAB's offset from the left edge of the bottom bar, already adjusted for RTL
 * support
 * @property width the width of the FAB
 * @property height the height of the FAB
 */
@Immutable
internal class FabPlacement(
    val left: Int,
    val width: Int,
    val height: Int
)

/**
 * CompositionLocal containing a [FabPlacement] that is used to calculate the FAB bottom offset.
 */
internal val LocalFabPlacement = staticCompositionLocalOf<FabPlacement?> { null }

// FAB spacing above the bottom bar / bottom of the Scaffold
private val FabSpacing = 16.dp

private enum class ScaffoldLayoutContent { TopBar, MainContent, Snackbar, Fab, BottomBar, SideBar }
````

## File: src/main/java/com/microsoft/fluentui/compose/Swipeable.kt
````kotlin
/*
 * Copyright 2020 The Android Open Source Project
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

package com.microsoft.fluentui.compose

import android.annotation.SuppressLint
import androidx.compose.animation.core.Animatable
import androidx.compose.animation.core.AnimationSpec
import androidx.compose.animation.core.SpringSpec
import androidx.compose.foundation.gestures.DraggableState
import androidx.compose.foundation.gestures.Orientation
import androidx.compose.foundation.gestures.draggable
import androidx.compose.foundation.interaction.MutableInteractionSource
import androidx.compose.material.rememberSwipeableState
import androidx.compose.material.swipeable
import androidx.compose.runtime.*
import androidx.compose.runtime.saveable.Saver
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.ui.Modifier
import androidx.compose.ui.composed
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.input.nestedscroll.NestedScrollConnection
import androidx.compose.ui.input.nestedscroll.NestedScrollSource
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.platform.debugInspectorInfo
import androidx.compose.ui.unit.Density
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.Velocity
import androidx.compose.ui.unit.dp
import androidx.compose.ui.util.lerp
import com.microsoft.fluentui.compose.SwipeableDefaults.AnimationSpec
import com.microsoft.fluentui.compose.SwipeableDefaults.StandardResistanceFactor
import com.microsoft.fluentui.compose.SwipeableDefaults.VelocityThreshold
import com.microsoft.fluentui.compose.SwipeableDefaults.resistanceConfig
import kotlinx.coroutines.CancellationException
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.filter
import kotlinx.coroutines.flow.take
import kotlinx.coroutines.launch
import kotlin.math.PI
import kotlin.math.abs
import kotlin.math.sign
import kotlin.math.sin

/**
 * State of the [swipeable] modifier.
 *
 * This contains necessary information about any ongoing swipe or animation and provides methods
 * to change the state either immediately or by starting an animation. To create and remember a
 * [SwipeableState] with the default animation clock, use [rememberSwipeableState].
 *
 * @param initialValue The initial value of the state.
 * @param animationSpec The default animation that will be used to animate to a new state.
 * @param confirmStateChange Optional callback invoked to confirm or veto a pending state change.
 */
open class SwipeableState<T>(
        initialValue: T,
        internal val animationSpec: AnimationSpec<Float> = AnimationSpec,
        val confirmStateChange: (newValue: T) -> Boolean = { true }
) {
    /**
     * The current value of the state.
     *
     * If no swipe or animation is in progress, this corresponds to the anchor at which the
     * [swipeable] is currently settled. If a swipe or animation is in progress, this corresponds
     * the last anchor at which the [swipeable] was settled before the swipe or animation started.
     */
    var currentValue: T by mutableStateOf(initialValue)
        private set
    /*
    It's a flag to indicate whether anchors are filled or not.
    Useful as a flag to let expand(), open() to get to know whether anchors are filled or not
    when launched for the very first time
     */
    var anchorsFilled: Boolean by mutableStateOf(false)
    /**
     * Whether the state is currently animating.
     */
    var isAnimationRunning: Boolean by mutableStateOf(false)
        private set

    /**
     * The current position (in pixels) of the [swipeable].
     *
     * You should use this state to offset your content accordingly. The recommended way is to
     * use `Modifier.offsetPx`. This includes the resistance by default, if resistance is enabled.
     */
    val offset: State<Float> get() = offsetState

    /**
     * The amount by which the [swipeable] has been swiped past its bounds.
     */
    val overflow: State<Float> get() = overflowState

    // Use `Float.NaN` as a placeholder while the state is uninitialised.
    private val offsetState = mutableStateOf(0f)
    private val overflowState = mutableStateOf(0f)

    // the source of truth for the "real"(non ui) position
    // basically position in bounds + overflow
    private val absoluteOffset = mutableStateOf(0f)

    // current animation target, if animating, otherwise null
    private val animationTarget = mutableStateOf<Float?>(null)

    var anchors by mutableStateOf(emptyMap<Float, T>())

    private val latestNonEmptyAnchorsFlow: Flow<Map<Float, T>> =
            snapshotFlow { anchors }
                    .filter { it.isNotEmpty() }
                    .take(1)

    internal var minBound = Float.NEGATIVE_INFINITY
    internal var maxBound = Float.POSITIVE_INFINITY

    internal fun ensureInit(newAnchors: Map<Float, T>) {
        if (anchors.isEmpty()) {
            // need to do initial synchronization synchronously :(
            val initialOffset = newAnchors.getOffset(currentValue)
            requireNotNull(initialOffset) {
                "The initial value must have an associated anchor."
            }
            offsetState.value = initialOffset
            absoluteOffset.value = initialOffset
        }
    }

    internal suspend fun processNewAnchors(
            oldAnchors: Map<Float, T>,
            newAnchors: Map<Float, T>
    ) {
        if (oldAnchors.isEmpty()) {
            // If this is the first time that we receive anchors, then we need to initialise
            // the state so we snap to the offset associated to the initial value.
            minBound = newAnchors.keys.minOrNull()!!
            maxBound = newAnchors.keys.maxOrNull()!!
            val initialOffset = newAnchors.getOffset(currentValue)
            requireNotNull(initialOffset) {
                "The initial value must have an associated anchor."
            }
            snapInternalToOffset(initialOffset)
        } else if (newAnchors != oldAnchors) {
            // If we have received new anchors, then the offset of the current value might
            // have changed, so we need to animate to the new offset. If the current value
            // has been removed from the anchors then we animate to the closest anchor
            // instead. Note that this stops any ongoing animation.
            minBound = Float.NEGATIVE_INFINITY
            maxBound = Float.POSITIVE_INFINITY
            val animationTargetValue = animationTarget.value
            // if we're in the animation already, let's find it a new home
            val targetOffset = if (animationTargetValue != null) {
                // first, try to map old state to the new state
                val oldState = oldAnchors[animationTargetValue]
                val newState = newAnchors.getOffset(oldState)
                // return new state if exists, or find the closes one among new anchors
                newState ?: newAnchors.keys.minByOrNull { abs(it - animationTargetValue) }!!
            } else {
                // we're not animating, proceed by finding the new anchors for an old value
                val actualOldValue = oldAnchors[offset.value]
                val value = if (actualOldValue == currentValue) currentValue else actualOldValue
                newAnchors.getOffset(value) ?: newAnchors
                        .keys.minByOrNull { abs(it - offset.value) }!!
            }
            try {
                animateInternalToOffset(targetOffset, animationSpec)
            } catch (c: CancellationException) {
                // If the animation was interrupted for any reason, snap as a last resort.
                snapInternalToOffset(targetOffset)
            } finally {
                currentValue = newAnchors.getValue(targetOffset)
                minBound = newAnchors.keys.minOrNull()!!
                maxBound = newAnchors.keys.maxOrNull()!!
            }
        }
    }

    internal var thresholds: (Float, Float) -> Float by mutableStateOf({ _, _ -> 0f })

    internal var velocityThreshold by mutableStateOf(0f)

    internal var resistance: ResistanceConfig? by mutableStateOf(null)

    internal val draggableState = DraggableState {
        val newAbsolute = absoluteOffset.value + it
        val clamped = newAbsolute.coerceIn(minBound, maxBound)
        val overflow = newAbsolute - clamped
        val resistanceDelta = resistance?.computeResistance(overflow) ?: 0f
        offsetState.value = clamped + resistanceDelta
        overflowState.value = overflow
        absoluteOffset.value = newAbsolute
    }

    private suspend fun snapInternalToOffset(target: Float) {
        draggableState.drag {
            dragBy(target - absoluteOffset.value)
        }
    }

    private suspend fun animateInternalToOffset(target: Float, spec: AnimationSpec<Float>) {
        draggableState.drag {
            var prevValue = absoluteOffset.value
            animationTarget.value = target
            isAnimationRunning = true
            try {
                Animatable(prevValue).animateTo(target, spec) {
                    dragBy(this.value - prevValue)
                    prevValue = this.value
                }
            } finally {
                animationTarget.value = null
                isAnimationRunning = false
            }
        }
    }

    /**
     * The target value of the state.
     *
     * If a swipe is in progress, this is the value that the [swipeable] would animate to if the
     * swipe finished. If an animation is running, this is the target value of that animation.
     * Finally, if no swipe or animation is in progress, this is the same as the [currentValue].
     */
    val targetValue: T
        get() {
            // TODO(calintat): Track current velocity (b/149549482) and use that here.
            val target = animationTarget.value ?: computeTarget(
                    offset = offset.value,
                    lastValue = anchors.getOffset(currentValue) ?: offset.value,
                    anchors = anchors.keys,
                    thresholds = thresholds,
                    velocity = 0f,
                    velocityThreshold = Float.POSITIVE_INFINITY
            )
            return anchors[target] ?: currentValue
        }

    /**
     * Information about the ongoing swipe or animation, if any. See [SwipeProgress] for details.
     *
     * If no swipe or animation is in progress, this returns `SwipeProgress(value, value, 1f)`.
     */
    val progress: SwipeProgress<T>
        get() {
            val bounds = findBounds(offset.value, anchors.keys)
            val from: T
            val to: T
            val fraction: Float
            when (bounds.size) {
                0 -> {
                    from = currentValue
                    to = currentValue
                    fraction = 1f
                }
                1 -> {
                    from = anchors.getValue(bounds[0])
                    to = anchors.getValue(bounds[0])
                    fraction = 1f
                }
                else -> {
                    val (a, b) =
                            if (direction > 0f) {
                                bounds[0] to bounds[1]
                            } else {
                                bounds[1] to bounds[0]
                            }
                    from = anchors.getValue(a)
                    to = anchors.getValue(b)
                    fraction = (offset.value - a) / (b - a)
                }
            }
            return SwipeProgress(from, to, fraction)
        }

    /**
     * The direction in which the [swipeable] is moving, relative to the current [currentValue].
     *
     * This will be either 1f if it is is moving from left to right or top to bottom, -1f if it is
     * moving from right to left or bottom to top, or 0f if no swipe or animation is in progress.
     */
    val direction: Float
        get() = anchors.getOffset(currentValue)?.let { sign(offset.value - it) } ?: 0f

    /**
     * Set the state without any animation and suspend until it's set
     *
     * @param targetValue The new target value to set [currentValue] to.
     */
    suspend fun snapTo(targetValue: T) {
        latestNonEmptyAnchorsFlow.collect { anchors ->
            val targetOffset = anchors.getOffset(targetValue)
            requireNotNull(targetOffset) {
                "The target value must have an associated anchor."
            }
            snapInternalToOffset(targetOffset)
            currentValue = targetValue
        }
    }

    /**
     * Set the state to the target value by starting an animation.
     *
     * @param targetValue The new value to animate to.
     * @param anim The animation that will be used to animate to the new value.
     */
    suspend fun animateTo(targetValue: T, anim: AnimationSpec<Float> = animationSpec) {
        latestNonEmptyAnchorsFlow.collect { anchors ->
            try {
                val targetOffset = anchors.getOffset(targetValue)
                requireNotNull(targetOffset) {
                    "The target value must have an associated anchor."
                }
                animateInternalToOffset(targetOffset, anim)
            } finally {
                val endOffset = absoluteOffset.value
                val endValue = anchors
                        // fighting rounding error once again, anchor should be as close as 0.5 pixels
                        .filterKeys { anchorOffset -> abs(anchorOffset - endOffset) < 0.5f }
                        .values.firstOrNull() ?: currentValue
                currentValue = endValue
            }
        }
    }

    /**
     * Perform fling with settling to one of the anchors which is determined by the given
     * [velocity]. Fling with settling [swipeable] will always consume all the velocity provided
     * since it will settle at the anchor.
     *
     * In general cases, [swipeable] flings by itself when being swiped. This method is to be
     * used for nested scroll logic that wraps the [swipeable]. In nested scroll developer may
     * want to trigger settling fling when the child scroll container reaches the bound.
     *
     * @param velocity velocity to fling and settle with
     *
     * @return the reason fling ended
     */
    suspend fun performFling(velocity: Float) {
        latestNonEmptyAnchorsFlow.collect { anchors ->
            val lastAnchor = anchors.getOffset(currentValue)!!
            val targetValue = computeTarget(
                    offset = offset.value,
                    lastValue = lastAnchor,
                    anchors = anchors.keys,
                    thresholds = thresholds,
                    velocity = velocity,
                    velocityThreshold = velocityThreshold
            )
            val targetState = anchors[targetValue]
            if (targetState != null && confirmStateChange(targetState)) animateTo(targetState)
            // If the user vetoed the state change, rollback to the previous state.
            else animateInternalToOffset(lastAnchor, animationSpec)
        }
    }

    /**
     * Force [swipeable] to consume drag delta provided from outside of the regular [swipeable]
     * gesture flow.
     *
     * Note: This method performs generic drag and it won't settle to any particular anchor, *
     * leaving swipeable in between anchors. When done dragging, [performFling] must be
     * called as well to ensure swipeable will settle at the anchor.
     *
     * In general cases, [swipeable] drags by itself when being swiped. This method is to be
     * used for nested scroll logic that wraps the [swipeable]. In nested scroll developer may
     * want to force drag when the child scroll container reaches the bound.
     *
     * @param delta delta in pixels to drag by
     *
     * @return the amount of [delta] consumed
     */
    fun performDrag(delta: Float): Float {
        val potentiallyConsumed = absoluteOffset.value + delta
        val clamped = potentiallyConsumed.coerceIn(minBound, maxBound)
        val deltaToConsume = clamped - absoluteOffset.value
        if (abs(deltaToConsume) > 0) {
            draggableState.dispatchRawDelta(deltaToConsume)
        }
        return deltaToConsume
    }

    companion object {
        /**
         * The default [Saver] implementation for [SwipeableState].
         */
        fun <T : Any> Saver(
                animationSpec: AnimationSpec<Float>,
                confirmStateChange: (T) -> Boolean
        ) = Saver<SwipeableState<T>, T>(
                save = { it.currentValue },
                restore = { SwipeableState(it, animationSpec, confirmStateChange) }
        )
    }
}

/**
 * Collects information about the ongoing swipe or animation in [swipeable].
 *
 * To access this information, use [SwipeableState.progress].
 *
 * @param from The state corresponding to the anchor we are moving away from.
 * @param to The state corresponding to the anchor we are moving towards.
 * @param fraction The fraction that the current position represents between [from] and [to].
 * Must be between `0` and `1`.
 */
@Immutable
class SwipeProgress<T>(
        val from: T,
        val to: T,
        /*@FloatRange(from = 0.0, to = 1.0)*/
        val fraction: Float
) {
    override fun equals(other: Any?): Boolean {
        if (this === other) return true
        if (other !is SwipeProgress<*>) return false

        if (from != other.from) return false
        if (to != other.to) return false
        if (fraction != other.fraction) return false

        return true
    }

    override fun hashCode(): Int {
        var result = from?.hashCode() ?: 0
        result = 31 * result + (to?.hashCode() ?: 0)
        result = 31 * result + fraction.hashCode()
        return result
    }

    override fun toString(): String {
        return "SwipeProgress(from=$from, to=$to, fraction=$fraction)"
    }
}

/**
 * Create and [remember] a [SwipeableState] with the default animation clock.
 *
 * @param initialValue The initial value of the state.
 * @param animationSpec The default animation that will be used to animate to a new state.
 * @param confirmStateChange Optional callback invoked to confirm or veto a pending state change.
 */
@Composable
fun <T : Any> rememberSwipeableState(
        initialValue: T,
        animationSpec: AnimationSpec<Float> = AnimationSpec,
        confirmStateChange: (newValue: T) -> Boolean = { true }
): SwipeableState<T> {
    return rememberSaveable(
            saver = SwipeableState.Saver(
                    animationSpec = animationSpec,
                    confirmStateChange = confirmStateChange
            )
    ) {
        SwipeableState(
                initialValue = initialValue,
                animationSpec = animationSpec,
                confirmStateChange = confirmStateChange
        )
    }
}

/**
 * Create and [remember] a [SwipeableState] which is kept in sync with another state, i.e.:
 *  1. Whenever the [value] changes, the [SwipeableState] will be animated to that new value.
 *  2. Whenever the value of the [SwipeableState] changes (e.g. after a swipe), the owner of the
 *  [value] will be notified to update their state to the new value of the [SwipeableState] by
 *  invoking [onValueChange]. If the owner does not update their state to the provided value for
 *  some reason, then the [SwipeableState] will perform a rollback to the previous, correct value.
 */
@Composable
internal fun <T : Any> rememberSwipeableStateFor(
        value: T,
        onValueChange: (T) -> Unit,
        animationSpec: AnimationSpec<Float> = AnimationSpec
): SwipeableState<T> {
    val swipeableState = remember {
        SwipeableState(
                initialValue = value,
                animationSpec = animationSpec,
                confirmStateChange = { true }
        )
    }
    val forceAnimationCheck = remember { mutableStateOf(false) }
    LaunchedEffect(value, forceAnimationCheck.value) {
        if (value != swipeableState.currentValue) {
            swipeableState.animateTo(value)
        }
    }
    DisposableEffect(swipeableState.currentValue) {
        if (value != swipeableState.currentValue) {
            onValueChange(swipeableState.currentValue)
            forceAnimationCheck.value = !forceAnimationCheck.value
        }
        onDispose { }
    }
    return swipeableState
}

/**
 * Enable swipe gestures between a set of predefined states.
 *
 * To use this, you must provide a map of anchors (in pixels) to states (of type [T]).
 * Note that this map cannot be empty and cannot have two anchors mapped to the same state.
 *
 * When a swipe is detected, the offset of the [SwipeableState] will be updated with the swipe
 * delta. You should use this offset to move your content accordingly (see `Modifier.offsetPx`).
 * When the swipe ends, the offset will be animated to one of the anchors and when that anchor is
 * reached, the value of the [SwipeableState] will also be updated to the state corresponding to
 * the new anchor. The target anchor is calculated based on the provided positional [thresholds].
 *
 * Swiping is constrained between the minimum and maximum anchors. If the user attempts to swipe
 * past these bounds, a resistance effect will be applied by default. The amount of resistance at
 * each edge is specified by the [resistance] config. To disable all resistance, set it to `null`.
 *
 * For an example of a [swipeable] with three states, see:
 *
 *
 * @param T The type of the state.
 * @param state The state of the [swipeable].
 * @param anchors Pairs of anchors and states, used to map anchors to states and vice versa.
 * @param thresholds Specifies where the thresholds between the states are. The thresholds will be
 * used to determine which state to animate to when swiping stops. This is represented as a lambda
 * that takes two states and returns the threshold between them in the form of a [ThresholdConfig].
 * Note that the order of the states corresponds to the swipe direction.
 * @param orientation The orientation in which the [swipeable] can be swiped.
 * @param enabled Whether this [swipeable] is enabled and should react to the user's input.
 * @param reverseDirection Whether to reverse the direction of the swipe, so a top to bottom
 * swipe will behave like bottom to top, and a left to right swipe will behave like right to left.
 * @param interactionSource Optional [MutableInteractionSource] that will passed on to
 * the internal [Modifier.draggable].
 * @param resistance Controls how much resistance will be applied when swiping past the bounds.
 * @param velocityThreshold The threshold (in dp per second) that the end velocity has to exceed
 * in order to animate to the next state, even if the positional [thresholds] have not been reached.
 */
@SuppressLint("ModifierFactoryUnreferencedReceiver")
fun <T> Modifier.swipeable(
        state: SwipeableState<T>,
        anchors: Map<Float, T>,
        orientation: Orientation,
        enabled: Boolean = true,
        reverseDirection: Boolean = false,
        interactionSource: MutableInteractionSource? = null,
        thresholds: (from: T, to: T) -> ThresholdConfig = { _, _ -> FixedThreshold(56.dp) },
        resistance: ResistanceConfig? = resistanceConfig(anchors.keys),
        velocityThreshold: Dp = VelocityThreshold
) = composed(
        inspectorInfo = debugInspectorInfo {
            name = "swipeable"
            properties["state"] = state
            properties["anchors"] = anchors
            properties["orientation"] = orientation
            properties["enabled"] = enabled
            properties["reverseDirection"] = reverseDirection
            properties["interactionSource"] = interactionSource
            properties["thresholds"] = thresholds
            properties["resistance"] = resistance
            properties["velocityThreshold"] = velocityThreshold
        }
) {
    require(anchors.isNotEmpty()) {
        "You must have at least one anchor."
    }
    require(anchors.values.distinct().count() == anchors.size) {
        "You cannot have two anchors mapped to the same state."
    }
    val density = LocalDensity.current
    state.ensureInit(anchors)
    LaunchedEffect(anchors, state) {
        val oldAnchors = state.anchors
        state.anchors = anchors
        state.resistance = resistance
        state.thresholds = { a, b ->
            val from = anchors.getValue(a)
            val to = anchors.getValue(b)
            with(thresholds(from, to)) { density.computeThreshold(a, b) }
        }
        with(density) {
            state.velocityThreshold = velocityThreshold.toPx()
        }
        state.processNewAnchors(oldAnchors, anchors)
        state.anchorsFilled = true
    }

    Modifier.draggable(
            orientation = orientation,
            enabled = enabled,
            reverseDirection = reverseDirection,
            interactionSource = interactionSource,
            startDragImmediately = state.isAnimationRunning,
            onDragStopped = { velocity -> launch { state.performFling(velocity) } },
            state = state.draggableState
    )
}

/**
 * Interface to compute a threshold between two anchors/states in a [swipeable].
 *
 * To define a [ThresholdConfig], consider using [FixedThreshold] and [FractionalThreshold].
 */
@Stable
interface ThresholdConfig {
    /**
     * Compute the value of the threshold (in pixels), once the values of the anchors are known.
     */
    fun Density.computeThreshold(fromValue: Float, toValue: Float): Float
}

/**
 * A fixed threshold will be at an [offset] away from the first anchor.
 *
 * @param offset The offset (in dp) that the threshold will be at.
 */
@Immutable
data class FixedThreshold(private val offset: Dp) : ThresholdConfig {
    override fun Density.computeThreshold(fromValue: Float, toValue: Float): Float {
        return fromValue + offset.toPx() * sign(toValue - fromValue)
    }
}

/**
 * A fractional threshold will be at a [fraction] of the way between the two anchors.
 *
 * @param fraction The fraction (between 0 and 1) that the threshold will be at.
 */
@Immutable
data class FractionalThreshold(
        /*@FloatRange(from = 0.0, to = 1.0)*/
        private val fraction: Float
) : ThresholdConfig {
    override fun Density.computeThreshold(fromValue: Float, toValue: Float): Float {
        return lerp(fromValue, toValue, fraction)
    }
}

/**
 * Specifies how resistance is calculated in [swipeable].
 *
 * There are two things needed to calculate resistance: the resistance basis determines how much
 * overflow will be consumed to achieve maximum resistance, and the resistance factor determines
 * the amount of resistance (the larger the resistance factor, the stronger the resistance).
 *
 * The resistance basis is usually either the size of the component which [swipeable] is applied
 * to, or the distance between the minimum and maximum anchors. For a constructor in which the
 * resistance basis defaults to the latter, consider using [resistanceConfig].
 *
 * You may specify different resistance factors for each bound. Consider using one of the default
 * resistance factors in [SwipeableDefaults]: `StandardResistanceFactor` to convey that the user
 * has run out of things to see, and `StiffResistanceFactor` to convey that the user cannot swipe
 * this right now. Also, you can set either factor to 0 to disable resistance at that bound.
 *
 * @param basis Specifies the maximum amount of overflow that will be consumed. Must be positive.
 * @param factorAtMin The factor by which to scale the resistance at the minimum bound.
 * Must not be negative.
 * @param factorAtMax The factor by which to scale the resistance at the maximum bound.
 * Must not be negative.
 */
@Immutable
class ResistanceConfig(
        /*@FloatRange(from = 0.0, fromInclusive = false)*/
        val basis: Float,
        /*@FloatRange(from = 0.0)*/
        val factorAtMin: Float = StandardResistanceFactor,
        /*@FloatRange(from = 0.0)*/
        val factorAtMax: Float = StandardResistanceFactor
) {
    fun computeResistance(overflow: Float): Float {
        val factor = if (overflow < 0) factorAtMin else factorAtMax
        if (factor == 0f) return 0f
        val progress = (overflow / basis).coerceIn(-1f, 1f)
        return basis / factor * sin(progress * PI.toFloat() / 2)
    }

    override fun equals(other: Any?): Boolean {
        if (this === other) return true
        if (other !is ResistanceConfig) return false

        if (basis != other.basis) return false
        if (factorAtMin != other.factorAtMin) return false
        if (factorAtMax != other.factorAtMax) return false

        return true
    }

    override fun hashCode(): Int {
        var result = basis.hashCode()
        result = 31 * result + factorAtMin.hashCode()
        result = 31 * result + factorAtMax.hashCode()
        return result
    }

    override fun toString(): String {
        return "ResistanceConfig(basis=$basis, factorAtMin=$factorAtMin, factorAtMax=$factorAtMax)"
    }
}

/**
 *  Given an offset x and a set of anchors, return a list of anchors:
 *   1. [ ] if the set of anchors is empty,
 *   2. [ x' ] if x is equal to one of the anchors, accounting for a small rounding error, where x'
 *      is x rounded to the exact value of the matching anchor,
 *   3. [ min ] if min is the minimum anchor and x < min,
 *   4. [ max ] if max is the maximum anchor and x > max, or
 *   5. [ a , b ] if a and b are anchors such that a < x < b and b - a is minimal.
 */
private fun findBounds(
        offset: Float,
        anchors: Set<Float>
): List<Float> {
    // Find the anchors the target lies between with a little bit of rounding error.
    val a = anchors.filter { it <= offset + 0.001 }.maxOrNull()
    val b = anchors.filter { it >= offset - 0.001 }.minOrNull()

    return when {
        a == null ->
            // case 1 or 3
            listOfNotNull(b)
        b == null ->
            // case 4
            listOf(a)
        a == b ->
            // case 2
            // Can't return offset itself here since it might not be exactly equal
            // to the anchor, despite being considered an exact match.
            listOf(a)
        else ->
            // case 5
            listOf(a, b)
    }
}

private fun computeTarget(
        offset: Float,
        lastValue: Float,
        anchors: Set<Float>,
        thresholds: (Float, Float) -> Float,
        velocity: Float,
        velocityThreshold: Float
): Float {
    val bounds = findBounds(offset, anchors)
    return when (bounds.size) {
        0 -> lastValue
        1 -> bounds[0]
        else -> {
            val lower = bounds[0]
            val upper = bounds[1]
            if (lastValue <= offset) {
                // Swiping from lower to upper (positive).
                if (velocity >= velocityThreshold) {
                    return upper
                } else {
                    val threshold = thresholds(lower, upper)
                    if (offset < threshold) lower else upper
                }
            } else {
                // Swiping from upper to lower (negative).
                if (velocity <= -velocityThreshold) {
                    return lower
                } else {
                    val threshold = thresholds(upper, lower)
                    if (offset > threshold) upper else lower
                }
            }
        }
    }
}

private fun <T> Map<Float, T>.getOffset(state: T): Float? {
    return entries.firstOrNull { it.value == state }?.key
}

/**
 * Contains useful defaults for [swipeable] and [SwipeableState].
 */
object SwipeableDefaults {
    /**
     * The default animation used by [SwipeableState].
     */
    val AnimationSpec = SpringSpec<Float>()

    /**
     * The default velocity threshold (1.8 dp per millisecond) used by [swipeable].
     */
    val VelocityThreshold = 125.dp

    /**
     * A stiff resistance factor which indicates that swiping isn't available right now.
     */
    const val StiffResistanceFactor = 20f

    /**
     * A standard resistance factor which indicates that the user has run out of things to see.
     */
    const val StandardResistanceFactor = 10f

    /**
     * The default resistance config used by [swipeable].
     *
     * This returns `null` if there is one anchor. If there are at least two anchors, it returns
     * a [ResistanceConfig] with the resistance basis equal to the distance between the two bounds.
     */
    fun resistanceConfig(
            anchors: Set<Float>,
            factorAtMin: Float = StandardResistanceFactor,
            factorAtMax: Float = StandardResistanceFactor
    ): ResistanceConfig? {
        return if (anchors.size <= 1) {
            null
        } else {
            val basis = anchors.maxOrNull()!! - anchors.minOrNull()!!
            ResistanceConfig(basis, factorAtMin, factorAtMax)
        }
    }
}
//TODO revisit to check if this become "public" from material. If so then rely directly on material API.
val <T> SwipeableState<T>.PreUpPostDownNestedScrollConnection: NestedScrollConnection
    get() = object : NestedScrollConnection {
        override fun onPreScroll(available: Offset, source: NestedScrollSource): Offset {
            val delta = available.toFloat()
            return if (delta < 0 && source == NestedScrollSource.Drag) {
                performDrag(delta).toOffset()
            } else {
                Offset.Zero
            }
        }

        override fun onPostScroll(
                consumed: Offset,
                available: Offset,
                source: NestedScrollSource
        ): Offset {
            return if (source == NestedScrollSource.Drag) {
                performDrag(available.toFloat()).toOffset()
            } else {
                Offset.Zero
            }
        }

        override suspend fun onPreFling(available: Velocity): Velocity {
            val toFling = Offset(available.x, available.y).toFloat()
            return if (toFling < 0 && offset.value > minBound) {
                performFling(velocity = toFling)
                // since we go to the anchor with tween settling, consume all for the best UX
                available
            } else {
                Velocity.Zero
            }
        }

        override suspend fun onPostFling(consumed: Velocity, available: Velocity): Velocity {
            performFling(velocity = Offset(available.x, available.y).toFloat())
            return available
        }

        private fun Float.toOffset(): Offset = Offset(0f, this)

        private fun Offset.toFloat(): Float = this.y
    }

val <T> SwipeableState<T>.PostDownNestedScrollConnection: NestedScrollConnection
    get() = object : NestedScrollConnection {

        override fun onPostScroll(
            consumed: Offset,
            available: Offset,
            source: NestedScrollSource
        ): Offset {
            return if (source == NestedScrollSource.Drag && available.toFloat() > 0) {
                performDrag(available.toFloat()).toOffset()
            } else {
                Offset.Zero
            }
        }

        override suspend fun onPostFling(consumed: Velocity, available: Velocity): Velocity {
            performFling(velocity = Offset(available.x, available.y).toFloat())
            return available
        }

        private fun Float.toOffset(): Offset = Offset(0f, this)

        private fun Offset.toFloat(): Float = this.y
    }
val <T> SwipeableState<T>.NonDismissiblePostDownNestedScrollConnection: NestedScrollConnection
    get() = object : NestedScrollConnection {

        override fun onPreScroll(available: Offset, source: NestedScrollSource): Offset {
            val delta = available.toFloat()
            return if (delta < 0 && source == NestedScrollSource.Drag) {
                performDrag(delta).toOffset()
            } else {
                Offset.Zero
            }
        }
        override fun onPostScroll(
            consumed: Offset,
            available: Offset,
            source: NestedScrollSource
        ): Offset {
            return if (source == NestedScrollSource.Drag && available.toFloat() < 0) {
                performDrag(available.toFloat()).toOffset()
            } else {
                Offset.Zero
            }
        }

        override suspend fun onPostFling(consumed: Velocity, available: Velocity): Velocity {
            performFling(velocity = Offset(available.x, available.y).toFloat())
            return available
        }

        private fun Float.toOffset(): Offset = Offset(0f, this)

        private fun Offset.toFloat(): Float = this.y
    }

val <T> SwipeableState<T>.NonDismissiblePreUpPostDownNestedScrollConnection: NestedScrollConnection
    get() = object : NestedScrollConnection {

        override fun onPreScroll(available: Offset, source: NestedScrollSource): Offset {
            val delta = available.toFloat()
            return if (delta < 0 && source == NestedScrollSource.Drag) {
                performDrag(delta).toOffset()
            } else {
                Offset.Zero
            }
        }
        override fun onPostScroll(
            consumed: Offset,
            available: Offset,
            source: NestedScrollSource
        ): Offset {
            return if (source == NestedScrollSource.Drag && available.toFloat() < 0) {
                performDrag(available.toFloat()).toOffset()
            } else {
                Offset.Zero
            }
        }

        override suspend fun onPreFling(available: Velocity): Velocity {
            val toFling = Offset(available.x, available.y).toFloat()
            return if (toFling < 0 && offset.value > minBound) {
                performFling(velocity = toFling)
                // since we go to the anchor with tween settling, consume all for the best UX
                available
            } else {
                Velocity.Zero
            }
        }

        private fun Float.toOffset(): Offset = Offset(0f, this)

        private fun Offset.toFloat(): Float = this.y
    }
````

## File: src/main/java/com/microsoft/fluentui/theme/FluentTheme.kt
````kotlin
package com.microsoft.fluentui.theme

import androidx.compose.runtime.*
import androidx.compose.runtime.livedata.observeAsState
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.microsoft.fluentui.theme.token.*

enum class ThemeMode {
    Light,
    Dark,
    Auto
}

internal val LocalThemeMode = compositionLocalOf { ThemeMode.Auto }
internal val LocalThemeID = compositionLocalOf { 1 }

/**
 * FluentTheme function is a entry point for UI created using Fluent Control. Provide your UI Logic
 * as content to FluentTheme function. This way it provide a scope where its parameter aliasTokens,
 * controlTokens and themeMode would be applicable. Internal UI part could wrap again itself to FluentTheme
 * to get different values for that scope.
 *
 * If the aliasTokens, controlTokens is not provided then Fluent Control uses SDK provided
 * [AliasTokens], [ControlTokens] values. This could be updated at runtime by using [FluentTheme]
 * object to provide new theme at runtime.
 *
 * If explicit aliasTokens & controlTokens is provided then [FluentTheme] will not trigger any
 * update for the Fluent Control.
 *
 * @param aliasTokens AliasTokens provide tokens having semantic meaning.
 * @param controlTokens ControlTokens provide control tokens for all Fluent control, which is used by FLuent Control
 * when explicit token is not provided to it.
 * @param themeMode It define mode to be picked from [ThemeMode.Light] for light theme,
 * [ThemeMode.Dark] for Dark theme, [ThemeMode.Auto] for system driven theme. Default is [ThemeMode.Auto]
 *
 */
@Composable
fun FluentTheme(
    aliasTokens: IAliasTokens? = null,
    controlTokens: IControlTokens? = null,
    themeMode: ThemeMode? = null,
    content: @Composable () -> Unit
) {
    val appAliasTokens by FluentTheme.observeAliasToken(initial = AliasTokens())
    val appControlTokens by FluentTheme.observeControlToken(initial = ControlTokens())
    val appThemeMode by FluentTheme.observeThemeMode(initial = ThemeMode.Auto)
    val appThemeID by FluentTheme.observeThemeID(initial = 1)

    CompositionLocalProvider(
        LocalAliasTokens provides (aliasTokens ?: appAliasTokens),
        LocalControlTokens provides (controlTokens ?: appControlTokens),
        LocalThemeMode provides (themeMode ?: appThemeMode),
        LocalThemeID provides appThemeID
    ) {
        content()
    }
}

/**
 * FluentTheme singleton class to update theme across the app.
 */
object FluentTheme : ViewModel() {
    /**
     * Provide AliasTokens in use across app
     */
    val aliasTokens: IAliasTokens
        @Composable
        @ReadOnlyComposable
        get() = LocalAliasTokens.current

    /**
     * Provide ControlTokens in use across app in FluentTheme scope where explicit values is not provided to it.
     */
    val controlTokens: IControlTokens
        @Composable
        @ReadOnlyComposable
        get() = LocalControlTokens.current

    /**
     * Provide themeMode in use across app in FluentTheme scope where explicit values is not provided to it.
     */
    val themeMode: ThemeMode
        @Composable
        @ReadOnlyComposable
        get() = LocalThemeMode.current


    val themeID: Int
        @Composable
        @ReadOnlyComposable
        get() = LocalThemeID.current

    private var aliasTokens_: MutableLiveData<IAliasTokens> = MutableLiveData(AliasTokens())
    private var controlTokens_: MutableLiveData<IControlTokens> = MutableLiveData(ControlTokens())
    private var themeMode_: MutableLiveData<ThemeMode> = MutableLiveData(ThemeMode.Auto)
    private var themeID_: MutableLiveData<Int> = MutableLiveData(1)

    /**
     * Update aliasTokens across all FluentTheme scope where explicit values is not provided to it.
     */
    fun updateAliasTokens(overrideAliasTokens: IAliasTokens) {
        aliasTokens_.value = overrideAliasTokens
        updateThemeID()
    }

    /**
     * Update controlTokens across all FluentTheme scope where explicit values is not provided to it.
     */
    fun updateControlTokens(overrideControlTokens: IControlTokens) {
        controlTokens_.value = overrideControlTokens
        updateThemeID()
    }

    /**
     * Update themeMode across all FluentTheme scope where explicit values is not provided to it.
     */
    fun updateThemeMode(overrideThemeMode: ThemeMode) {
        themeMode_.value = overrideThemeMode
        updateThemeID()
    }

    /*
     * Update ThemeID for a new combination of AliasTokens, ControlTokens and ThemeMode.
     */
    private fun updateThemeID() {
        themeID_.value = themeID_.value?.plus(1)
    }

    @Composable
    internal fun observeAliasToken(initial: IAliasTokens): State<IAliasTokens> {
        return this.aliasTokens_.observeAsState(initial)
    }

    @Composable
    internal fun observeControlToken(initial: IControlTokens): State<IControlTokens> {
        return this.controlTokens_.observeAsState(initial)
    }

    @Composable
    internal fun observeThemeMode(initial: ThemeMode): State<ThemeMode> {
        return this.themeMode_.observeAsState(initial = initial)
    }

    @Composable
    internal fun observeThemeID(initial: Int): State<Int> {
        return this.themeID_.observeAsState(initial = initial)
    }
}
````

## File: src/main/java/com/microsoft/fluentui/theme/token/ControlTokens.kt
````kotlin
//
//  Copyright (c) Microsoft Corporation. All rights reserved.
//  Licensed under the MIT License.
//

package com.microsoft.fluentui.theme.token

import androidx.compose.runtime.compositionLocalOf
import com.microsoft.fluentui.theme.token.controlTokens.*
import java.util.ResourceBundle.Control

interface ControlInfo

interface IType

interface IControlToken

interface IControlTokens {
    /**
     * Token set contains control token for each control used in scope of FluentTheme composable to support theming.
     */
    val tokens: TokenSet<IType, IControlToken>
    fun updateToken(type: IType, updatedToken: IControlToken): IControlTokens {
        tokens[type] = updatedToken
        return this
    }
}

object UndefinedControlToken: IControlToken

/**
 * Extend the ControlToken to add token for custom control or providing new token to existing Fluent Control. *
 */
open class ControlTokens : IControlTokens {
    enum class ControlType : IType {
        AcrylicPaneControlType,
        ActionBarControlType,
        AnnouncementCardControlType,
        AppBarControlType,
        AvatarControlType,
        AvatarCarouselControlType,
        AvatarGroupControlType,
        BadgeControlType,
        BannerControlType,
        BasicCardControlType,
        BasicChipControlType,
        BottomSheetControlType,
        ButtonControlType,
        CardNudgeControlType,
        CheckBoxControlType,
        CircularProgressIndicatorControlType,
        CitationControlType,
        ContextualCommandBarControlType,
        DialogControlType,
        DrawerControlType,
        DividerControlType,
        FileCardControlType,
        FloatingActionButtonControlType,
        LabelControlType,
        LinearProgressIndicatorControlType,
        ListItemControlType,
        MenuControlType,
        PeoplePickerControlType,
        PersonaChipControlType,
        PillButtonControlType,
        PillBarControlType,
        PillSwitchControlType,
        PillTabsControlType,
        ProgressTextControlType,
        RadioButtonControlType,
        SearchBarPersonaChipControlType,
        SearchBarControlType,
        ShimmerControlType,
        SideRailControlType,
        SnackbarControlType,
        StackableSnackbarControlType,
        TabBarControlType,
        TabItemControlType,
        TextFieldControlType,
        ToggleSwitchControlType,
        TooltipControlType,
        ViewPagerControlType
    }

    override val tokens: TokenSet<IType, IControlToken> by lazy {
        TokenSet { type ->
            when (type) {
                ControlType.AcrylicPaneControlType -> AcrylicPaneTokens()
                ControlType.ActionBarControlType -> ActionBarTokens()
                ControlType.AnnouncementCardControlType -> AnnouncementCardTokens()
                ControlType.AppBarControlType -> AppBarTokens()
                ControlType.AvatarControlType -> AvatarTokens()
                ControlType.AvatarCarouselControlType -> AvatarCarouselTokens()
                ControlType.AvatarGroupControlType -> AvatarGroupTokens()
                ControlType.BadgeControlType -> BadgeTokens()
                ControlType.BannerControlType -> BannerTokens()
                ControlType.BasicCardControlType -> BasicCardTokens()
                ControlType.BasicChipControlType -> BasicChipTokens()
                ControlType.BottomSheetControlType -> BottomSheetTokens()
                ControlType.ButtonControlType -> ButtonTokens()
                ControlType.CardNudgeControlType -> CardNudgeTokens()
                ControlType.CheckBoxControlType -> CheckBoxTokens()
                ControlType.CircularProgressIndicatorControlType -> CircularProgressIndicatorTokens()
                ControlType.CitationControlType -> CitationTokens()
                ControlType.ContextualCommandBarControlType -> ContextualCommandBarTokens()
                ControlType.DialogControlType -> DialogTokens()
                ControlType.DrawerControlType -> DrawerTokens()
                ControlType.DividerControlType -> DividerTokens()
                ControlType.FileCardControlType -> FileCardTokens()
                ControlType.FloatingActionButtonControlType -> FABTokens()
                ControlType.LabelControlType -> LabelTokens()
                ControlType.LinearProgressIndicatorControlType -> LinearProgressIndicatorTokens()
                ControlType.ListItemControlType -> ListItemTokens()
                ControlType.MenuControlType -> MenuTokens()
                ControlType.PersonaChipControlType -> PersonaChipTokens()
                ControlType.PeoplePickerControlType -> PeoplePickerTokens()
                ControlType.PillButtonControlType -> PillButtonTokens()
                ControlType.PillBarControlType -> PillBarTokens()
                ControlType.PillSwitchControlType -> PillSwitchTokens()
                ControlType.PillTabsControlType -> PillTabsTokens()
                ControlType.ProgressTextControlType -> ProgressTextTokens()
                ControlType.RadioButtonControlType -> RadioButtonTokens()
                ControlType.SearchBarPersonaChipControlType -> SearchBarPersonaChipTokens()
                ControlType.SearchBarControlType -> SearchBarTokens()
                ControlType.ShimmerControlType -> ShimmerTokens()
                ControlType.SideRailControlType -> SideRailTokens()
                ControlType.SnackbarControlType -> SnackBarTokens()
                ControlType.StackableSnackbarControlType -> StackableSnackBarTokens()
                ControlType.TabBarControlType -> TabBarTokens()
                ControlType.TabItemControlType -> TabItemTokens()
                ControlType.TextFieldControlType -> TextFieldTokens()
                ControlType.ToggleSwitchControlType -> ToggleSwitchTokens()
                ControlType.TooltipControlType -> TooltipTokens()
                ControlType.ViewPagerControlType -> ViewPagerTokens()
                else -> {
                    UndefinedControlToken
                }
            }
        }
    }
}

internal val LocalControlTokens = compositionLocalOf<IControlTokens> { ControlTokens() }
````

## File: src/main/java/com/microsoft/fluentui/theme/token/controlTokens/AcrylicPaneTokens.kt
````kotlin
package com.microsoft.fluentui.theme.token.controlTokens


import android.os.Parcelable
import androidx.compose.runtime.Composable
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.TileMode
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.ThemeMode
import com.microsoft.fluentui.theme.token.ControlInfo
import com.microsoft.fluentui.theme.token.FluentAliasTokens
import com.microsoft.fluentui.theme.token.FluentColor
import com.microsoft.fluentui.theme.token.FluentStyle
import com.microsoft.fluentui.theme.token.IControlToken
import kotlinx.parcelize.Parcelize

enum class AcrylicPaneOrientation {
    TOP,
    BOTTOM,
    CENTER
}

open class AcrylicPaneInfo(
    val style: FluentStyle = FluentStyle.Neutral,
    val orientation: AcrylicPaneOrientation = AcrylicPaneOrientation.BOTTOM
) : ControlInfo

@Parcelize
open class AcrylicPaneTokens : IControlToken, Parcelable {
    companion object {
        const val DEFAULT_BLUR_RADIUS = 60 // Default value, can be overridden by theme
    }

    @Composable
    open fun acrylicPaneGradient(acrylicPaneInfo: AcrylicPaneInfo): Brush {
        val startColor: Color = FluentColor(
            light = FluentTheme.aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background5].value(
                ThemeMode.Light
            ),
            dark = FluentTheme.aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background5].value(
                ThemeMode.Dark
            )
        ).value(FluentTheme.themeMode)
        when (acrylicPaneInfo.orientation) {
            AcrylicPaneOrientation.TOP -> return Brush.verticalGradient(
                colors = listOf(
                    startColor,
                    startColor.copy(alpha = 0.5f),
                    startColor.copy(alpha = 0.0f),
                ),
                tileMode = TileMode.Decal
            )

            AcrylicPaneOrientation.CENTER -> return Brush.verticalGradient(
                colors = listOf(
                    startColor.copy(alpha = 0.0f),
                    startColor,
                    startColor.copy(alpha = 0.0f),
                ),
                tileMode = TileMode.Decal
            )

            AcrylicPaneOrientation.BOTTOM -> return Brush.verticalGradient(
                colors = listOf(
                    startColor.copy(alpha = 0.0f),
                    startColor.copy(alpha = 0.5f),
                    startColor
                ),
                tileMode = TileMode.Decal
            )
        }
    }

    @Composable
    open fun acrylicPaneBlurRadius(acrylicPaneInfo: AcrylicPaneInfo): Int {
        return DEFAULT_BLUR_RADIUS // Need blur tokens
    }
}
````

## File: src/main/java/com/microsoft/fluentui/theme/token/controlTokens/ActionBarTokens.kt
````kotlin
package com.microsoft.fluentui.theme.token.controlTokens

import android.os.Parcelable
import androidx.compose.runtime.Composable
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.unit.Dp
import com.microsoft.fluentui.theme.FluentTheme.aliasTokens
import com.microsoft.fluentui.theme.FluentTheme.themeMode
import com.microsoft.fluentui.theme.token.ControlInfo
import com.microsoft.fluentui.theme.token.FluentAliasTokens
import com.microsoft.fluentui.theme.token.FluentGlobalTokens
import com.microsoft.fluentui.theme.token.IControlToken

import kotlinx.parcelize.Parcelize

enum class ACTIONBARTYPE {
    BASIC,
    ICON,
    CAROUSEL
}

open class ActionBarInfo: ControlInfo

@Parcelize
open class ActionBarTokens : IControlToken, Parcelable {

    @Composable
    open fun actionBarHeight(actionBarInfo: ActionBarInfo): Dp {
        return FluentGlobalTokens.SizeTokens.Size480.value
    }

    @Composable
    open fun actionBarColor(actionBarInfo: ActionBarInfo): Color {
        return aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundOnColor].value(
            themeMode = themeMode
        )
    }
}
````

## File: src/main/java/com/microsoft/fluentui/theme/token/controlTokens/AnnouncementCardTokens.kt
````kotlin
package com.microsoft.fluentui.theme.token.controlTokens

import android.os.Parcelable
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.runtime.Composable
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.FluentAliasTokens
import com.microsoft.fluentui.theme.token.FluentGlobalTokens
import com.microsoft.fluentui.theme.token.IControlToken
import com.microsoft.fluentui.theme.token.StateColor
import kotlinx.parcelize.Parcelize

open class AnnouncementCardInfo(
    val cardType: CardType = CardType.Elevated
)

@Parcelize
open class AnnouncementCardTokens : IControlToken, Parcelable {

    @Composable
    open fun backgroundBrush(announcementCardInfo: AnnouncementCardInfo): Brush {
        return SolidColor(
            FluentTheme.aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background2].value(
                themeMode = FluentTheme.themeMode
            )
        )
    }

    @Composable
    open fun textColor(announcementCardInfo: AnnouncementCardInfo): Color {
        return FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground2].value(
            themeMode = FluentTheme.themeMode
        )
    }

    @Composable
    open fun titleColor(announcementCardInfo: AnnouncementCardInfo): Color {
        return FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value(
            themeMode = FluentTheme.themeMode
        )
    }

    @Composable
    open fun titleTypography(announcementCardInfo: AnnouncementCardInfo): TextStyle {
        return FluentTheme.aliasTokens.typography[FluentAliasTokens.TypographyTokens.Body1Strong]
    }

    @Composable
    open fun descriptionTypography(announcementCardInfo: AnnouncementCardInfo): TextStyle {
        return FluentTheme.aliasTokens.typography[FluentAliasTokens.TypographyTokens.Body2]
    }

    @Composable
    open fun previewTextSPacing(announcementCardInfo: AnnouncementCardInfo): Dp {
        return FluentGlobalTokens.SizeTokens.Size160.value
    }

    @Composable
    open fun titleTextSpacing(announcementCardInfo: AnnouncementCardInfo): Dp {
        return FluentGlobalTokens.SizeTokens.Size40.value
    }

    @Composable
    open fun textButtonSpacing(announcementCardInfo: AnnouncementCardInfo): Dp {
        return FluentGlobalTokens.SizeTokens.Size40.value
    }

    @Composable
    open fun textHorizontalPadding(announcementCardInfo: AnnouncementCardInfo): PaddingValues {
        return PaddingValues(horizontal = FluentGlobalTokens.SizeTokens.Size80.value)
    }

    @Composable
    open fun cardPadding(announcementCardInfo: AnnouncementCardInfo): PaddingValues {
        return PaddingValues(all = FluentGlobalTokens.SizeTokens.Size80.value)
    }

    @Composable
    open fun previewCornerRadius(announcementCardInfo: AnnouncementCardInfo): Dp {
        return FluentGlobalTokens.CornerRadiusTokens.CornerRadius40.value
    }

    @Composable
    open fun cornerRadius(announcementCardInfo: AnnouncementCardInfo): Dp {
        return FluentGlobalTokens.CornerRadiusTokens.CornerRadius80.value
    }

    @Composable
    open fun elevation(announcementCardInfo: AnnouncementCardInfo): Dp {
        return when (announcementCardInfo.cardType) {
            CardType.Elevated -> FluentGlobalTokens.ShadowTokens.Shadow64.value
            CardType.Outlined -> 0.dp
        }
    }

    @Composable
    open fun borderColor(announcementCardInfo: AnnouncementCardInfo): Brush {
        return SolidColor(
            FluentTheme.aliasTokens.neutralStrokeColor[FluentAliasTokens.NeutralStrokeColorTokens.Stroke1].value(
                themeMode = FluentTheme.themeMode
            )
        )
    }

    @Composable
    open fun borderStrokeWidth(announcementCardInfo: AnnouncementCardInfo): Dp {
        return FluentGlobalTokens.StrokeWidthTokens.StrokeWidth05.value
    }

    @Composable
    open fun buttonTextColor(announcementCardInfo: AnnouncementCardInfo): StateColor {
        return StateColor(
            rest = FluentTheme.aliasTokens.brandForegroundColor[FluentAliasTokens.BrandForegroundColorTokens.BrandForeground1].value(
                themeMode = FluentTheme.themeMode
            ),
            pressed = FluentTheme.aliasTokens.brandForegroundColor[FluentAliasTokens.BrandForegroundColorTokens.BrandForeground1Pressed].value(
                themeMode = FluentTheme.themeMode
            ),
            selected = FluentTheme.aliasTokens.brandForegroundColor[FluentAliasTokens.BrandForegroundColorTokens.BrandForeground1Selected].value(
                themeMode = FluentTheme.themeMode
            ),
            focused = FluentTheme.aliasTokens.brandForegroundColor[FluentAliasTokens.BrandForegroundColorTokens.BrandForeground1].value(
                themeMode = FluentTheme.themeMode
            ),
            disabled = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundDisable1].value(
                themeMode = FluentTheme.themeMode
            )
        )
    }
}
````

## File: src/main/java/com/microsoft/fluentui/theme/token/controlTokens/AppBarTokens.kt
````kotlin
package com.microsoft.fluentui.theme.token.controlTokens

import android.os.Parcelable
import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.isSystemInDarkTheme
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.runtime.Composable
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.DpOffset
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.ThemeMode
import com.microsoft.fluentui.theme.token.ControlInfo
import com.microsoft.fluentui.theme.token.FluentAliasTokens
import com.microsoft.fluentui.theme.token.FluentColor
import com.microsoft.fluentui.theme.token.FluentGlobalTokens
import com.microsoft.fluentui.theme.token.FluentStyle
import com.microsoft.fluentui.theme.token.IControlToken
import kotlinx.parcelize.Parcelize

enum class AppBarSize {
    Large,
    Medium,
    Small
}

open class TooltipControls(
    var enableTitleTooltip: Boolean = false,
    var enableSubtitleTooltip: Boolean = false,
    var enableNavigationIconTooltip: Boolean = false
) {}

open class AppBarInfo(
    val style: FluentStyle = FluentStyle.Neutral,
    val appBarSize: AppBarSize = AppBarSize.Medium
) : ControlInfo

@Parcelize
open class AppBarTokens : IControlToken, Parcelable {

    @Composable
    open fun backgroundBrush(info: AppBarInfo): Brush {
        return SolidColor(
            when (info.style) {
                FluentStyle.Neutral ->
                    FluentTheme.aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background3].value(
                        themeMode = FluentTheme.themeMode
                    )

                FluentStyle.Brand ->
                    FluentColor(
                        light = FluentTheme.aliasTokens.brandBackgroundColor[FluentAliasTokens.BrandBackgroundColorTokens.BrandBackground1].value(
                            ThemeMode.Light
                        ),
                        dark = FluentTheme.aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background3].value(
                            ThemeMode.Dark
                        )
                    ).value(themeMode = FluentTheme.themeMode)
            }
        )
    }

    @Composable
    open fun navigationIconColor(info: AppBarInfo): Color {
        return when (info.style) {
            FluentStyle.Neutral ->
                FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground2].value(
                    themeMode = FluentTheme.themeMode
                )

            FluentStyle.Brand ->
                FluentColor(
                    light = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundOnColor].value(
                        ThemeMode.Light
                    ),
                    dark = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground2].value(
                        ThemeMode.Dark
                    )
                ).value(themeMode = FluentTheme.themeMode)
        }
    }

    @Composable
    open fun navigationIconRippleColor(): Color {
        return Color.Unspecified
    }

    @Composable
    open fun titleIconColor(info: AppBarInfo): Color {
        return when (info.style) {
            FluentStyle.Neutral ->
                FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value(
                    themeMode = FluentTheme.themeMode
                )

            FluentStyle.Brand ->
                FluentColor(
                    light = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundOnColor].value(
                        ThemeMode.Light
                    ),
                    dark = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value(
                        ThemeMode.Dark
                    )
                ).value(themeMode = FluentTheme.themeMode)
        }
    }

    @Composable
    open fun subtitleIconColor(info: AppBarInfo): Color {
        return when (info.style) {
            FluentStyle.Neutral ->
                FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground2].value(
                    themeMode = FluentTheme.themeMode
                )

            FluentStyle.Brand ->
                FluentColor(
                    light = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundOnColor].value(
                        ThemeMode.Light
                    ),
                    dark = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground2].value(
                        ThemeMode.Dark
                    )
                ).value(themeMode = FluentTheme.themeMode)
        }
    }

    @Composable
    open fun titleTextColor(info: AppBarInfo): Color {
        return when (info.style) {
            FluentStyle.Neutral ->
                FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value(
                    themeMode = FluentTheme.themeMode
                )

            FluentStyle.Brand ->
                FluentColor(
                    light = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundOnColor].value(
                        ThemeMode.Light
                    ),
                    dark = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value(
                        ThemeMode.Dark
                    )
                ).value(themeMode = FluentTheme.themeMode)
        }
    }

    @Composable
    open fun tooltipVisibilityControls(info: AppBarInfo): TooltipControls {
        return TooltipControls(
            enableTitleTooltip = false,
            enableSubtitleTooltip = false,
            enableNavigationIconTooltip = false
        )
    }

    @Composable
    open fun tooltipTextStyle(info: AppBarInfo): TextStyle {
        return FluentTheme.aliasTokens.typography[FluentAliasTokens.TypographyTokens.Body2].merge(
            TextStyle(
                color = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundLightStatic].value(
                    themeMode = FluentTheme.themeMode
                )
            )
        )
    }

    @Composable
    open fun tooltipBackgroundBrush(info: AppBarInfo): Brush {
        return SolidColor(
            FluentTheme.aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.BackgroundDarkStatic].value(
                themeMode = FluentTheme.themeMode
            )
        )
    }

    @Composable
    open fun tooltipCornerRadius(info: AppBarInfo): Dp {
        return FluentGlobalTokens.CornerRadiusTokens.CornerRadius80.value
    }

    @Composable
    open fun tooltipRippleColor(info: AppBarInfo): Color {
        return Color.Unspecified
    }

    @Composable
    open fun tooltipOffset(info: AppBarInfo): DpOffset {
        return DpOffset(x = 0.dp, y = 0.dp)
    }

    @Composable
    open fun tooltipTimeout(info: AppBarInfo): Long {
        return 2000L // Default timeout for tooltip in milliseconds
    }

    @Composable
    open fun subtitleTextColor(info: AppBarInfo): Color {
        return when (info.style) {
            FluentStyle.Neutral ->
                FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground2].value(
                    themeMode = FluentTheme.themeMode
                )

            FluentStyle.Brand ->
                FluentColor(
                    light = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundOnColor].value(
                        ThemeMode.Light
                    ),
                    dark = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground2].value(
                        ThemeMode.Dark
                    )
                ).value(themeMode = FluentTheme.themeMode)
        }
    }

    @Composable
    open fun titleTypography(info: AppBarInfo): TextStyle {
        return when (info.appBarSize) {
            AppBarSize.Large -> FluentTheme.aliasTokens.typography[FluentAliasTokens.TypographyTokens.Title1]
            AppBarSize.Medium -> FluentTheme.aliasTokens.typography[FluentAliasTokens.TypographyTokens.Title2]
            AppBarSize.Small -> FluentTheme.aliasTokens.typography[FluentAliasTokens.TypographyTokens.Body1Strong]
        }
    }

    @Composable
    open fun subtitleTypography(info: AppBarInfo): TextStyle {
        return FluentTheme.aliasTokens.typography[FluentAliasTokens.TypographyTokens.Caption1]
    }

    @Composable
    fun leftIconSize(info: AppBarInfo): Dp {
        return FluentGlobalTokens.IconSizeTokens.IconSize240.value
    }

    @Composable
    fun titleIconSize(info: AppBarInfo): Dp {
        return when (info.appBarSize) {
            AppBarSize.Small -> FluentGlobalTokens.IconSizeTokens.IconSize160.value
            else -> 0.dp
        }
    }

    @Composable
    fun subtitleIconSize(info: AppBarInfo): Dp {
        return when (info.appBarSize) {
            AppBarSize.Small -> FluentGlobalTokens.IconSizeTokens.IconSize120.value
            AppBarSize.Medium -> FluentGlobalTokens.IconSizeTokens.IconSize120.value
            else -> 0.dp
        }
    }

    @Composable
    open fun navigationIconPadding(info: AppBarInfo): PaddingValues {
        return when (info.appBarSize) {
            AppBarSize.Large -> PaddingValues(16.dp)
            AppBarSize.Medium -> PaddingValues(16.dp)
            AppBarSize.Small -> PaddingValues(16.dp)
        }
    }

    @Composable
    open fun textPadding(info: AppBarInfo): PaddingValues {
        return when (info.appBarSize) {
            AppBarSize.Large -> PaddingValues(start = 12.dp)
            AppBarSize.Medium -> PaddingValues(start = 8.dp)
            AppBarSize.Small -> PaddingValues(start = 8.dp)
        }
    }

    @Composable
    open fun borderStroke(info: AppBarInfo): BorderStroke {
        return when (info.style) {
            FluentStyle.Neutral ->
                if (FluentTheme.themeMode == ThemeMode.Dark || (FluentTheme.themeMode == ThemeMode.Auto && isSystemInDarkTheme())) {
                    BorderStroke(
                        FluentGlobalTokens.StrokeWidthTokens.StrokeWidthNone.value,
                        Color.Unspecified
                    )
                } else {
                    BorderStroke(
                        FluentGlobalTokens.StrokeWidthTokens.StrokeWidth05.value,
                        FluentTheme.aliasTokens.neutralStrokeColor[FluentAliasTokens.NeutralStrokeColorTokens.Stroke2].value()
                    )
                }

            else -> BorderStroke(
                FluentGlobalTokens.StrokeWidthTokens.StrokeWidthNone.value,
                Color.Unspecified
            )
        }
    }

    @Composable
    open fun height(info: AppBarInfo): Dp {
        return 40.dp
    }
}
````

## File: src/main/java/com/microsoft/fluentui/theme/token/controlTokens/AvatarCarouselTokens.kt
````kotlin
package com.microsoft.fluentui.theme.token.controlTokens

import android.os.Parcelable
import androidx.compose.runtime.Composable
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.unit.Dp
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.*
import kotlinx.parcelize.Parcelize

enum class AvatarCarouselSize {
    Small,
    Large
}

open class AvatarCarouselInfo(
    val size: AvatarCarouselSize = AvatarCarouselSize.Small
) : ControlInfo

@Parcelize
open class AvatarCarouselTokens : IControlToken, Parcelable {
    @Composable
    open fun avatarSize(avatarCarouselInfo: AvatarCarouselInfo): AvatarSize {
        return when (avatarCarouselInfo.size) {
            AvatarCarouselSize.Small -> AvatarSize.Size56
            AvatarCarouselSize.Large -> AvatarSize.Size72
        }
    }

    @Composable
    open fun backgroundBrush(avatarCarouselInfo: AvatarCarouselInfo): StateBrush {
        return StateBrush(
            rest = SolidColor(
                FluentTheme.aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background1].value(
                    themeMode = FluentTheme.themeMode
                )
            ),
            pressed = SolidColor(
                FluentTheme.aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background1Pressed].value(
                    themeMode = FluentTheme.themeMode
                )
            ),
            disabled = SolidColor(
                FluentTheme.aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background1].value(
                    themeMode = FluentTheme.themeMode
                )
            )
        )
    }

    @Composable
    open fun textColor(avatarCarouselInfo: AvatarCarouselInfo): StateColor {
        return StateColor(
            rest = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value(
                themeMode = FluentTheme.themeMode
            ),
            pressed = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value(
                themeMode = FluentTheme.themeMode
            ),
            disabled = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundDisable1].value(
                themeMode = FluentTheme.themeMode
            )
        )
    }

    @Composable
    open fun subTextColor(avatarCarouselInfo: AvatarCarouselInfo): StateColor {
        return StateColor(
            rest = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground2].value(
                themeMode = FluentTheme.themeMode
            ),
            pressed = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground2].value(
                themeMode = FluentTheme.themeMode
            ),
            disabled = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundDisable1].value(
                themeMode = FluentTheme.themeMode
            )
        )
    }

    @Composable
    open fun textTypography(avatarCarouselInfo: AvatarCarouselInfo): TextStyle {
        return when (avatarCarouselInfo.size) {
            AvatarCarouselSize.Small -> FluentTheme.aliasTokens.typography[FluentAliasTokens.TypographyTokens.Caption1]
            AvatarCarouselSize.Large -> FluentTheme.aliasTokens.typography[FluentAliasTokens.TypographyTokens.Body2]
        }
    }

    @Composable
    open fun subTextTypography(avatarCarouselInfo: AvatarCarouselInfo): TextStyle {
        return when (avatarCarouselInfo.size) {
            AvatarCarouselSize.Small -> FluentTheme.aliasTokens.typography[FluentAliasTokens.TypographyTokens.Caption1]
            AvatarCarouselSize.Large -> FluentTheme.aliasTokens.typography[FluentAliasTokens.TypographyTokens.Caption1]
        }
    }

    @Composable
    open fun padding(avatarCarouselInfo: AvatarCarouselInfo): Dp {
        return when (avatarCarouselInfo.size) {
            AvatarCarouselSize.Small -> FluentGlobalTokens.SizeTokens.Size160.value
            AvatarCarouselSize.Large -> FluentGlobalTokens.SizeTokens.Size80.value
        }
    }
}
````

## File: src/main/java/com/microsoft/fluentui/theme/token/controlTokens/AvatarGroupTokens.kt
````kotlin
package com.microsoft.fluentui.theme.token.controlTokens

import android.os.Parcelable
import androidx.compose.runtime.Composable
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.microsoft.fluentui.theme.token.ControlInfo
import com.microsoft.fluentui.theme.token.FluentGlobalTokens
import com.microsoft.fluentui.theme.token.IControlToken
import kotlinx.parcelize.Parcelize

enum class AvatarGroupStyle {
    Stack,
    Pile,
    Pie
}

open class AvatarGroupInfo(
    val size: AvatarSize = AvatarSize.Size32,
    val style: AvatarGroupStyle = AvatarGroupStyle.Stack
) : ControlInfo

@Parcelize
open class AvatarGroupTokens : IControlToken, Parcelable {

    @Composable
    open fun avatarSize(avatarGroupInfo: AvatarGroupInfo): Dp {
        return when (avatarGroupInfo.size) {
            AvatarSize.Size16 -> 16.dp
            AvatarSize.Size20 -> 24.dp
            AvatarSize.Size24 -> 24.dp
            AvatarSize.Size32 -> 32.dp
            AvatarSize.Size40 -> 40.dp
            AvatarSize.Size56 -> 56.dp
            AvatarSize.Size72 -> 72.dp
        }
    }

    @Composable
    open fun fontInfo(avatarInfo: AvatarInfo): TextStyle {
        return when (avatarInfo.size) {
            AvatarSize.Size16 -> TextStyle(
                fontSize = 9.sp,
                lineHeight = 12.sp,
                fontWeight = FluentGlobalTokens.FontWeightTokens.Regular.value
            )
            AvatarSize.Size20 -> TextStyle(
                fontSize = 9.sp,
                lineHeight = 12.sp,
                fontWeight = FluentGlobalTokens.FontWeightTokens.Regular.value
            )
            AvatarSize.Size24 -> TextStyle(
                fontSize = FluentGlobalTokens.FontSizeTokens.Size100.value,
                lineHeight = FluentGlobalTokens.LineHeightTokens.Size100.value,
                fontWeight = FluentGlobalTokens.FontWeightTokens.Regular.value
            )
            AvatarSize.Size32 -> TextStyle(
                fontSize = FluentGlobalTokens.FontSizeTokens.Size200.value,
                lineHeight = FluentGlobalTokens.LineHeightTokens.Size200.value,
                fontWeight = FluentGlobalTokens.FontWeightTokens.Regular.value
            )
            AvatarSize.Size40 -> TextStyle(
                fontSize = FluentGlobalTokens.FontSizeTokens.Size300.value,
                lineHeight = FluentGlobalTokens.LineHeightTokens.Size300.value,
                fontWeight = FluentGlobalTokens.FontWeightTokens.Regular.value
            )
            AvatarSize.Size56 -> TextStyle(
                fontSize = FluentGlobalTokens.FontSizeTokens.Size500.value,
                lineHeight = FluentGlobalTokens.LineHeightTokens.Size500.value,
                fontWeight = FluentGlobalTokens.FontWeightTokens.Medium.value
            )
            AvatarSize.Size72 -> TextStyle(
                fontSize = FluentGlobalTokens.FontSizeTokens.Size700.value,
                lineHeight = FluentGlobalTokens.LineHeightTokens.Size700.value,
                fontWeight = FluentGlobalTokens.FontWeightTokens.Medium.value
            )
        }
    }

    @Composable
    open fun spacing(avatarGroupInfo: AvatarGroupInfo, isActive: Boolean): Dp {
        return when (avatarGroupInfo.style) {
            AvatarGroupStyle.Stack -> when (avatarGroupInfo.size) {
                AvatarSize.Size16 -> if (isActive) 0.dp else (-2).dp
                AvatarSize.Size20 -> if (isActive) 0.dp else (-2).dp
                AvatarSize.Size24 -> if (isActive) 0.dp else (-2).dp
                AvatarSize.Size32 -> if (isActive) (-4).dp else (-4).dp
                AvatarSize.Size40 -> if (isActive) (-4).dp else (-8).dp
                AvatarSize.Size56 -> if (isActive) (-8).dp else (-12).dp
                AvatarSize.Size72 -> if (isActive) (-6).dp else (-12).dp
            }

            AvatarGroupStyle.Pile -> when (avatarGroupInfo.size) {
                AvatarSize.Size16 -> FluentGlobalTokens.SizeTokens.Size40
                    .value
                AvatarSize.Size20 -> FluentGlobalTokens.SizeTokens.Size40
                    .value
                AvatarSize.Size24 -> FluentGlobalTokens.SizeTokens.Size40
                    .value
                AvatarSize.Size32 -> FluentGlobalTokens.SizeTokens.Size80
                    .value
                AvatarSize.Size40 -> FluentGlobalTokens.SizeTokens.Size80
                    .value
                AvatarSize.Size56 -> FluentGlobalTokens.SizeTokens.Size80
                    .value
                AvatarSize.Size72 -> FluentGlobalTokens.SizeTokens.Size80
                    .value
            }

            AvatarGroupStyle.Pie -> 0.dp
        }
    }

    @Composable
    open fun pilePadding(avatarGroupInfo: AvatarGroupInfo): Dp {
        return when (avatarGroupInfo.size) {
            AvatarSize.Size16 -> FluentGlobalTokens.SizeTokens.Size40
                .value
            AvatarSize.Size20 -> FluentGlobalTokens.SizeTokens.Size20
                .value
            AvatarSize.Size24 -> FluentGlobalTokens.SizeTokens.Size20
                .value
            AvatarSize.Size32 -> FluentGlobalTokens.SizeTokens.Size20
                .value
            AvatarSize.Size40 -> FluentGlobalTokens.SizeTokens.Size20
                .value
            AvatarSize.Size56 -> FluentGlobalTokens.SizeTokens.Size40
                .value
            AvatarSize.Size72 -> FluentGlobalTokens.SizeTokens.Size80
                .value
        }
    }

    @Composable
    open fun avatarSize(avatarInfo: AvatarInfo): Dp {
        return when (avatarInfo.size) {
            AvatarSize.Size16 -> FluentGlobalTokens.IconSizeTokens.IconSize120.value
            AvatarSize.Size20 -> FluentGlobalTokens.IconSizeTokens.IconSize160.value
            AvatarSize.Size24 -> FluentGlobalTokens.IconSizeTokens.IconSize160.value
            AvatarSize.Size32 -> FluentGlobalTokens.IconSizeTokens.IconSize200.value
            AvatarSize.Size40 -> FluentGlobalTokens.IconSizeTokens.IconSize240.value
            AvatarSize.Size56 -> FluentGlobalTokens.IconSizeTokens.IconSize280.value
            AvatarSize.Size72 -> FluentGlobalTokens.IconSizeTokens.IconSize480.value
        }
    }
}
````

## File: src/main/java/com/microsoft/fluentui/theme/token/controlTokens/AvatarTokens.kt
````kotlin
package com.microsoft.fluentui.theme.token.controlTokens

import android.os.Parcelable
import androidx.compose.foundation.BorderStroke
import androidx.compose.runtime.Composable
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.ColorFilter
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.DpOffset
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.microsoft.fluentui.icons.AvatarIcons
import com.microsoft.fluentui.icons.avataricons.Icon
import com.microsoft.fluentui.icons.avataricons.Presence
import com.microsoft.fluentui.icons.avataricons.icon.Anonymous
import com.microsoft.fluentui.icons.avataricons.icon.Standard
import com.microsoft.fluentui.icons.avataricons.icon.anonymous.*
import com.microsoft.fluentui.icons.avataricons.icon.standard.*
import com.microsoft.fluentui.icons.avataricons.presence.*
import com.microsoft.fluentui.icons.avataricons.presence.available.Large
import com.microsoft.fluentui.icons.avataricons.presence.available.Medium
import com.microsoft.fluentui.icons.avataricons.presence.available.Small
import com.microsoft.fluentui.icons.avataricons.presence.available.large.Dark
import com.microsoft.fluentui.icons.avataricons.presence.available.large.Light
import com.microsoft.fluentui.icons.avataricons.presence.available.medium.Dark
import com.microsoft.fluentui.icons.avataricons.presence.available.medium.Light
import com.microsoft.fluentui.icons.avataricons.presence.available.small.Dark
import com.microsoft.fluentui.icons.avataricons.presence.available.small.Light
import com.microsoft.fluentui.icons.avataricons.presence.availableoof.Large
import com.microsoft.fluentui.icons.avataricons.presence.availableoof.Medium
import com.microsoft.fluentui.icons.avataricons.presence.availableoof.Small
import com.microsoft.fluentui.icons.avataricons.presence.availableoof.large.Dark
import com.microsoft.fluentui.icons.avataricons.presence.availableoof.large.Light
import com.microsoft.fluentui.icons.avataricons.presence.availableoof.medium.Dark
import com.microsoft.fluentui.icons.avataricons.presence.availableoof.medium.Light
import com.microsoft.fluentui.icons.avataricons.presence.availableoof.small.Dark
import com.microsoft.fluentui.icons.avataricons.presence.availableoof.small.Light
import com.microsoft.fluentui.icons.avataricons.presence.away.Large
import com.microsoft.fluentui.icons.avataricons.presence.away.Medium
import com.microsoft.fluentui.icons.avataricons.presence.away.Small
import com.microsoft.fluentui.icons.avataricons.presence.away.large.Dark
import com.microsoft.fluentui.icons.avataricons.presence.away.large.Light
import com.microsoft.fluentui.icons.avataricons.presence.away.medium.Dark
import com.microsoft.fluentui.icons.avataricons.presence.away.medium.Light
import com.microsoft.fluentui.icons.avataricons.presence.away.small.Dark
import com.microsoft.fluentui.icons.avataricons.presence.away.small.Light
import com.microsoft.fluentui.icons.avataricons.presence.awayoof.Large
import com.microsoft.fluentui.icons.avataricons.presence.awayoof.Medium
import com.microsoft.fluentui.icons.avataricons.presence.awayoof.Small
import com.microsoft.fluentui.icons.avataricons.presence.awayoof.large.Dark
import com.microsoft.fluentui.icons.avataricons.presence.awayoof.large.Light
import com.microsoft.fluentui.icons.avataricons.presence.awayoof.medium.Dark
import com.microsoft.fluentui.icons.avataricons.presence.awayoof.medium.Light
import com.microsoft.fluentui.icons.avataricons.presence.awayoof.small.Dark
import com.microsoft.fluentui.icons.avataricons.presence.awayoof.small.Light
import com.microsoft.fluentui.icons.avataricons.presence.blocked.Large
import com.microsoft.fluentui.icons.avataricons.presence.blocked.Medium
import com.microsoft.fluentui.icons.avataricons.presence.blocked.Small
import com.microsoft.fluentui.icons.avataricons.presence.blocked.large.Dark
import com.microsoft.fluentui.icons.avataricons.presence.blocked.large.Light
import com.microsoft.fluentui.icons.avataricons.presence.blocked.medium.Dark
import com.microsoft.fluentui.icons.avataricons.presence.blocked.medium.Light
import com.microsoft.fluentui.icons.avataricons.presence.blocked.small.Dark
import com.microsoft.fluentui.icons.avataricons.presence.blocked.small.Light
import com.microsoft.fluentui.icons.avataricons.presence.busy.Large
import com.microsoft.fluentui.icons.avataricons.presence.busy.Medium
import com.microsoft.fluentui.icons.avataricons.presence.busy.Small
import com.microsoft.fluentui.icons.avataricons.presence.busy.large.Dark
import com.microsoft.fluentui.icons.avataricons.presence.busy.large.Light
import com.microsoft.fluentui.icons.avataricons.presence.busy.medium.Dark
import com.microsoft.fluentui.icons.avataricons.presence.busy.medium.Light
import com.microsoft.fluentui.icons.avataricons.presence.busy.small.Dark
import com.microsoft.fluentui.icons.avataricons.presence.busy.small.Light
import com.microsoft.fluentui.icons.avataricons.presence.busyoof.Large
import com.microsoft.fluentui.icons.avataricons.presence.busyoof.Medium
import com.microsoft.fluentui.icons.avataricons.presence.busyoof.Small
import com.microsoft.fluentui.icons.avataricons.presence.busyoof.large.Dark
import com.microsoft.fluentui.icons.avataricons.presence.busyoof.large.Light
import com.microsoft.fluentui.icons.avataricons.presence.busyoof.medium.Dark
import com.microsoft.fluentui.icons.avataricons.presence.busyoof.medium.Light
import com.microsoft.fluentui.icons.avataricons.presence.busyoof.small.Dark
import com.microsoft.fluentui.icons.avataricons.presence.busyoof.small.Light
import com.microsoft.fluentui.icons.avataricons.presence.dnd.Large
import com.microsoft.fluentui.icons.avataricons.presence.dnd.Medium
import com.microsoft.fluentui.icons.avataricons.presence.dnd.Small
import com.microsoft.fluentui.icons.avataricons.presence.dnd.large.Dark
import com.microsoft.fluentui.icons.avataricons.presence.dnd.large.Light
import com.microsoft.fluentui.icons.avataricons.presence.dnd.medium.Dark
import com.microsoft.fluentui.icons.avataricons.presence.dnd.medium.Light
import com.microsoft.fluentui.icons.avataricons.presence.dnd.small.Dark
import com.microsoft.fluentui.icons.avataricons.presence.dnd.small.Light
import com.microsoft.fluentui.icons.avataricons.presence.dndoof.Large
import com.microsoft.fluentui.icons.avataricons.presence.dndoof.Medium
import com.microsoft.fluentui.icons.avataricons.presence.dndoof.Small
import com.microsoft.fluentui.icons.avataricons.presence.dndoof.large.Dark
import com.microsoft.fluentui.icons.avataricons.presence.dndoof.large.Light
import com.microsoft.fluentui.icons.avataricons.presence.dndoof.medium.Dark
import com.microsoft.fluentui.icons.avataricons.presence.dndoof.medium.Light
import com.microsoft.fluentui.icons.avataricons.presence.dndoof.small.Dark
import com.microsoft.fluentui.icons.avataricons.presence.dndoof.small.Light
import com.microsoft.fluentui.icons.avataricons.presence.offline.Large
import com.microsoft.fluentui.icons.avataricons.presence.offline.Medium
import com.microsoft.fluentui.icons.avataricons.presence.offline.Small
import com.microsoft.fluentui.icons.avataricons.presence.offline.large.Dark
import com.microsoft.fluentui.icons.avataricons.presence.offline.large.Light
import com.microsoft.fluentui.icons.avataricons.presence.offline.medium.Dark
import com.microsoft.fluentui.icons.avataricons.presence.offline.medium.Light
import com.microsoft.fluentui.icons.avataricons.presence.offline.small.Dark
import com.microsoft.fluentui.icons.avataricons.presence.offline.small.Light
import com.microsoft.fluentui.icons.avataricons.presence.oof.Large
import com.microsoft.fluentui.icons.avataricons.presence.oof.Medium
import com.microsoft.fluentui.icons.avataricons.presence.oof.Small
import com.microsoft.fluentui.icons.avataricons.presence.oof.large.Dark
import com.microsoft.fluentui.icons.avataricons.presence.oof.large.Light
import com.microsoft.fluentui.icons.avataricons.presence.oof.medium.Dark
import com.microsoft.fluentui.icons.avataricons.presence.oof.medium.Light
import com.microsoft.fluentui.icons.avataricons.presence.oof.small.Dark
import com.microsoft.fluentui.icons.avataricons.presence.oof.small.Light
import com.microsoft.fluentui.icons.avataricons.presence.unknown.Large
import com.microsoft.fluentui.icons.avataricons.presence.unknown.Medium
import com.microsoft.fluentui.icons.avataricons.presence.unknown.Small
import com.microsoft.fluentui.icons.avataricons.presence.unknown.large.Dark
import com.microsoft.fluentui.icons.avataricons.presence.unknown.large.Light
import com.microsoft.fluentui.icons.avataricons.presence.unknown.medium.Dark
import com.microsoft.fluentui.icons.avataricons.presence.unknown.medium.Light
import com.microsoft.fluentui.icons.avataricons.presence.unknown.small.Dark
import com.microsoft.fluentui.icons.avataricons.presence.unknown.small.Light
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.FluentTheme.aliasTokens
import com.microsoft.fluentui.theme.FluentTheme.themeMode
import com.microsoft.fluentui.theme.token.*
import kotlinx.parcelize.Parcelize
import kotlin.math.abs

enum class AvatarType {
    Person,
    Group,
    Overflow
}

enum class AvatarSize {
    Size16,
    Size20,
    Size24,
    Size32,
    Size40,
    Size56,
    Size72
}

enum class AvatarStatus {
    Available,
    Away,
    Busy,
    DND,
    Blocked,
    Unknown,
    Offline
}

enum class AvatarStyle {
    Standard,
    StandardInverted,
    Anonymous,
    AnonymousAccent
}

enum class ActivityRingSize {
    Size16,
    Size20,
    Size24,
    Size32,
    Size40,
    Size56,
    Size72
}

enum class CutoutStyle {
    Square,
    Circle
}

open class AvatarInfo(
    val size: AvatarSize = AvatarSize.Size40,
    val type: AvatarType = AvatarType.Person,
    val active: Boolean = false,
    val status: AvatarStatus = AvatarStatus.Available,
    val isOOO: Boolean = false,
    val isImageAvailable: Boolean = false,
    val hasValidInitials: Boolean = false,
    val calculatedColorKey: String = "",
    val cutoutStyle: CutoutStyle = CutoutStyle.Circle
) : ControlInfo

@Parcelize
open class AvatarTokens(private val activityRingToken: ActivityRingsToken = ActivityRingsToken()) :
    IControlToken, Parcelable {

    @Composable
    open fun avatarStyle(avatarInfo: AvatarInfo): AvatarStyle {
        return AvatarStyle.Standard
    }

    @Composable
    open fun fontTypography(avatarInfo: AvatarInfo): TextStyle {
        return when (avatarInfo.size) {
            AvatarSize.Size16 -> TextStyle(
                fontSize = 9.sp,
                lineHeight = 12.sp,
                fontWeight = FluentGlobalTokens.FontWeightTokens.Regular.value
            )

            AvatarSize.Size20 -> TextStyle(
                fontSize = 9.sp,
                lineHeight = 12.sp,
                fontWeight = FluentGlobalTokens.FontWeightTokens.Regular.value
            )

            AvatarSize.Size24 -> TextStyle(
                fontSize = FluentGlobalTokens.FontSizeTokens.Size100.value,
                lineHeight = FluentGlobalTokens.LineHeightTokens.Size100.value,
                fontWeight = FluentGlobalTokens.FontWeightTokens.Regular.value
            )

            AvatarSize.Size32 -> TextStyle(
                fontSize = FluentGlobalTokens.FontSizeTokens.Size200.value,
                lineHeight = FluentGlobalTokens.LineHeightTokens.Size200.value,
                fontWeight = FluentGlobalTokens.FontWeightTokens.Regular.value
            )

            AvatarSize.Size40 -> TextStyle(
                fontSize = FluentGlobalTokens.FontSizeTokens.Size300.value,
                lineHeight = FluentGlobalTokens.LineHeightTokens.Size300.value,
                fontWeight = FluentGlobalTokens.FontWeightTokens.Regular.value
            )

            AvatarSize.Size56 -> TextStyle(
                fontSize = FluentGlobalTokens.FontSizeTokens.Size500.value,
                lineHeight = FluentGlobalTokens.LineHeightTokens.Size500.value,
                fontWeight = FluentGlobalTokens.FontWeightTokens.Medium.value
            )

            AvatarSize.Size72 -> TextStyle(
                fontSize = FluentGlobalTokens.FontSizeTokens.Size700.value,
                lineHeight = FluentGlobalTokens.LineHeightTokens.Size700.value,
                fontWeight = FluentGlobalTokens.FontWeightTokens.Medium.value
            )
        }
    }

    @Composable
    open fun avatarSize(avatarInfo: AvatarInfo): Dp {
        return when (avatarInfo.size) {
            AvatarSize.Size16 -> 16.dp
            AvatarSize.Size20 -> 24.dp
            AvatarSize.Size24 -> 24.dp
            AvatarSize.Size32 -> 32.dp
            AvatarSize.Size40 -> 40.dp
            AvatarSize.Size56 -> 56.dp
            AvatarSize.Size72 -> 72.dp
        }
    }

    @Composable
    open fun icon(avatarInfo: AvatarInfo): ImageVector {
        return when (avatarStyle(avatarInfo)) {
            AvatarStyle.Standard, AvatarStyle.StandardInverted -> when (avatarInfo.size) {
                AvatarSize.Size16 -> AvatarIcons.Icon.Standard.Xsmall
                AvatarSize.Size20 -> AvatarIcons.Icon.Standard.Small
                AvatarSize.Size24 -> AvatarIcons.Icon.Standard.Small
                AvatarSize.Size32 -> AvatarIcons.Icon.Standard.Medium
                AvatarSize.Size40 -> AvatarIcons.Icon.Standard.Large
                AvatarSize.Size56 -> AvatarIcons.Icon.Standard.Xlarge
                AvatarSize.Size72 -> AvatarIcons.Icon.Standard.Xxlarge
            }

            AvatarStyle.Anonymous, AvatarStyle.AnonymousAccent -> when (avatarInfo.size) {
                AvatarSize.Size16 -> AvatarIcons.Icon.Anonymous.Xsmall
                AvatarSize.Size20 -> AvatarIcons.Icon.Anonymous.Small
                AvatarSize.Size24 -> AvatarIcons.Icon.Anonymous.Small
                AvatarSize.Size32 -> AvatarIcons.Icon.Anonymous.Medium
                AvatarSize.Size40 -> AvatarIcons.Icon.Anonymous.Large
                AvatarSize.Size56 -> AvatarIcons.Icon.Anonymous.Xlarge
                AvatarSize.Size72 -> AvatarIcons.Icon.Anonymous.Xxlarge
            }
        }
    }

    @Composable
    open fun foregroundColor(avatarInfo: AvatarInfo): Color {
        return if (avatarInfo.isImageAvailable || avatarInfo.hasValidInitials) {
            FluentColor(
                light = calculatedColor(
                    avatarInfo.calculatedColorKey, FluentGlobalTokens.SharedColorsTokens.Shade30
                ), dark = calculatedColor(
                    avatarInfo.calculatedColorKey, FluentGlobalTokens.SharedColorsTokens.Tint40
                )
            ).value(
                themeMode = themeMode
            )
        } else if (avatarInfo.type == AvatarType.Overflow) {
            aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground2].value(
                themeMode = themeMode
            )
        } else {
            when (avatarStyle(avatarInfo)) {
                AvatarStyle.Standard -> aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundOnColor].value(
                    themeMode = themeMode
                )

                AvatarStyle.StandardInverted -> aliasTokens.brandForegroundColor[FluentAliasTokens.BrandForegroundColorTokens.BrandForeground1].value(
                    themeMode = themeMode
                )

                AvatarStyle.Anonymous -> aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground2].value(
                    themeMode = themeMode
                )

                AvatarStyle.AnonymousAccent -> aliasTokens.brandForegroundColor[FluentAliasTokens.BrandForegroundColorTokens.BrandForeground1].value(
                    themeMode = themeMode
                )
            }
        }
    }

    @Composable
    open fun backgroundBrush(avatarInfo: AvatarInfo): Brush {
        return SolidColor(
            if (avatarInfo.isImageAvailable || avatarInfo.hasValidInitials) {
                FluentColor(
                    light = calculatedColor(
                        avatarInfo.calculatedColorKey, FluentGlobalTokens.SharedColorsTokens.Tint40
                    ), dark = calculatedColor(
                        avatarInfo.calculatedColorKey, FluentGlobalTokens.SharedColorsTokens.Shade30
                    )
                ).value(
                    themeMode = themeMode
                )
            } else if (avatarInfo.type == AvatarType.Overflow) {
                aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background5].value(
                    themeMode = themeMode
                )
            } else {
                when (avatarStyle(avatarInfo)) {
                    AvatarStyle.Standard -> aliasTokens.brandBackgroundColor[FluentAliasTokens.BrandBackgroundColorTokens.BrandBackground1].value(
                        themeMode = themeMode
                    )

                    AvatarStyle.StandardInverted -> aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background1].value(
                        themeMode = themeMode
                    )

                    AvatarStyle.Anonymous -> aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background5].value(
                        themeMode = themeMode
                    )

                    AvatarStyle.AnonymousAccent -> aliasTokens.brandBackgroundColor[FluentAliasTokens.BrandBackgroundColorTokens.BrandBackgroundTint].value(
                        themeMode = themeMode
                    )
                }
            }
        )
    }

    @Composable
    open fun presenceIcon(avatarInfo: AvatarInfo): FluentIcon {
        return when (avatarInfo.status) {
            AvatarStatus.Available -> when (avatarInfo.size) {
                AvatarSize.Size16 -> FluentIcon()
                AvatarSize.Size20 -> FluentIcon(
                    light = if (avatarInfo.isOOO) AvatarIcons.Presence.Availableoof.Small.Light else AvatarIcons.Presence.Available.Small.Light,
                    dark = if (avatarInfo.isOOO) AvatarIcons.Presence.Availableoof.Small.Dark else AvatarIcons.Presence.Available.Small.Dark
                )

                AvatarSize.Size24 -> FluentIcon(
                    light = if (avatarInfo.isOOO) AvatarIcons.Presence.Availableoof.Small.Light else AvatarIcons.Presence.Available.Small.Light,
                    dark = if (avatarInfo.isOOO) AvatarIcons.Presence.Availableoof.Small.Dark else AvatarIcons.Presence.Available.Small.Dark
                )

                AvatarSize.Size32 -> FluentIcon(
                    light = if (avatarInfo.isOOO) AvatarIcons.Presence.Availableoof.Small.Light else AvatarIcons.Presence.Available.Small.Light,
                    dark = if (avatarInfo.isOOO) AvatarIcons.Presence.Availableoof.Small.Dark else AvatarIcons.Presence.Available.Small.Dark
                )

                AvatarSize.Size40 -> FluentIcon(
                    light = if (avatarInfo.isOOO) AvatarIcons.Presence.Availableoof.Medium.Light else AvatarIcons.Presence.Available.Medium.Light,
                    dark = if (avatarInfo.isOOO) AvatarIcons.Presence.Availableoof.Medium.Dark else AvatarIcons.Presence.Available.Medium.Dark
                )

                AvatarSize.Size56 -> FluentIcon(
                    light = if (avatarInfo.isOOO) AvatarIcons.Presence.Availableoof.Medium.Light else AvatarIcons.Presence.Available.Medium.Light,
                    dark = if (avatarInfo.isOOO) AvatarIcons.Presence.Availableoof.Medium.Dark else AvatarIcons.Presence.Available.Medium.Dark
                )

                AvatarSize.Size72 -> FluentIcon(
                    light = if (avatarInfo.isOOO) AvatarIcons.Presence.Availableoof.Large.Light else AvatarIcons.Presence.Available.Large.Light,
                    dark = if (avatarInfo.isOOO) AvatarIcons.Presence.Availableoof.Large.Dark else AvatarIcons.Presence.Available.Large.Dark
                )
            }

            AvatarStatus.Busy -> when (avatarInfo.size) {
                AvatarSize.Size16 -> FluentIcon()
                AvatarSize.Size20 -> FluentIcon(
                    light = if (avatarInfo.isOOO) AvatarIcons.Presence.Busyoof.Small.Light else AvatarIcons.Presence.Busy.Small.Light,
                    dark = if (avatarInfo.isOOO) AvatarIcons.Presence.Busyoof.Small.Dark else AvatarIcons.Presence.Busy.Small.Dark
                )

                AvatarSize.Size24 -> FluentIcon(
                    light = if (avatarInfo.isOOO) AvatarIcons.Presence.Busyoof.Small.Light else AvatarIcons.Presence.Busy.Small.Light,
                    dark = if (avatarInfo.isOOO) AvatarIcons.Presence.Busyoof.Small.Dark else AvatarIcons.Presence.Busy.Small.Dark
                )

                AvatarSize.Size32 -> FluentIcon(
                    light = if (avatarInfo.isOOO) AvatarIcons.Presence.Busyoof.Small.Light else AvatarIcons.Presence.Busy.Small.Light,
                    dark = if (avatarInfo.isOOO) AvatarIcons.Presence.Busyoof.Small.Dark else AvatarIcons.Presence.Busy.Small.Dark
                )

                AvatarSize.Size40 -> FluentIcon(
                    light = if (avatarInfo.isOOO) AvatarIcons.Presence.Busyoof.Medium.Light else AvatarIcons.Presence.Busy.Medium.Light,
                    dark = if (avatarInfo.isOOO) AvatarIcons.Presence.Busyoof.Medium.Dark else AvatarIcons.Presence.Busy.Medium.Dark
                )

                AvatarSize.Size56 -> FluentIcon(
                    light = if (avatarInfo.isOOO) AvatarIcons.Presence.Busyoof.Medium.Light else AvatarIcons.Presence.Busy.Medium.Light,
                    dark = if (avatarInfo.isOOO) AvatarIcons.Presence.Busyoof.Medium.Dark else AvatarIcons.Presence.Busy.Medium.Dark
                )

                AvatarSize.Size72 -> FluentIcon(
                    light = if (avatarInfo.isOOO) AvatarIcons.Presence.Busyoof.Large.Light else AvatarIcons.Presence.Busy.Large.Light,
                    dark = if (avatarInfo.isOOO) AvatarIcons.Presence.Busyoof.Large.Dark else AvatarIcons.Presence.Busy.Large.Dark
                )
            }

            AvatarStatus.Away -> when (avatarInfo.size) {
                AvatarSize.Size16 -> FluentIcon()
                AvatarSize.Size20 -> FluentIcon(
                    light = if (avatarInfo.isOOO) AvatarIcons.Presence.Awayoof.Small.Light else AvatarIcons.Presence.Away.Small.Light,
                    dark = if (avatarInfo.isOOO) AvatarIcons.Presence.Awayoof.Small.Dark else AvatarIcons.Presence.Away.Small.Dark
                )

                AvatarSize.Size24 -> FluentIcon(
                    light = if (avatarInfo.isOOO) AvatarIcons.Presence.Awayoof.Small.Light else AvatarIcons.Presence.Away.Small.Light,
                    dark = if (avatarInfo.isOOO) AvatarIcons.Presence.Awayoof.Small.Dark else AvatarIcons.Presence.Away.Small.Dark
                )

                AvatarSize.Size32 -> FluentIcon(
                    light = if (avatarInfo.isOOO) AvatarIcons.Presence.Awayoof.Small.Light else AvatarIcons.Presence.Away.Small.Light,
                    dark = if (avatarInfo.isOOO) AvatarIcons.Presence.Awayoof.Small.Dark else AvatarIcons.Presence.Away.Small.Dark
                )

                AvatarSize.Size40 -> FluentIcon(
                    light = if (avatarInfo.isOOO) AvatarIcons.Presence.Awayoof.Medium.Light else AvatarIcons.Presence.Away.Medium.Light,
                    dark = if (avatarInfo.isOOO) AvatarIcons.Presence.Awayoof.Medium.Dark else AvatarIcons.Presence.Away.Medium.Dark
                )

                AvatarSize.Size56 -> FluentIcon(
                    light = if (avatarInfo.isOOO) AvatarIcons.Presence.Awayoof.Medium.Light else AvatarIcons.Presence.Away.Medium.Light,
                    dark = if (avatarInfo.isOOO) AvatarIcons.Presence.Awayoof.Medium.Dark else AvatarIcons.Presence.Away.Medium.Dark
                )

                AvatarSize.Size72 -> FluentIcon(
                    light = if (avatarInfo.isOOO) AvatarIcons.Presence.Awayoof.Large.Light else AvatarIcons.Presence.Away.Large.Light,
                    dark = if (avatarInfo.isOOO) AvatarIcons.Presence.Awayoof.Large.Dark else AvatarIcons.Presence.Away.Large.Dark
                )
            }

            AvatarStatus.DND -> when (avatarInfo.size) {
                AvatarSize.Size16 -> FluentIcon()
                AvatarSize.Size20 -> FluentIcon(
                    light = if (avatarInfo.isOOO) AvatarIcons.Presence.Dndoof.Small.Light else AvatarIcons.Presence.Dnd.Small.Light,
                    dark = if (avatarInfo.isOOO) AvatarIcons.Presence.Dndoof.Small.Dark else AvatarIcons.Presence.Dnd.Small.Dark
                )

                AvatarSize.Size24 -> FluentIcon(
                    light = if (avatarInfo.isOOO) AvatarIcons.Presence.Dndoof.Small.Light else AvatarIcons.Presence.Dnd.Small.Light,
                    dark = if (avatarInfo.isOOO) AvatarIcons.Presence.Dndoof.Small.Dark else AvatarIcons.Presence.Dnd.Small.Dark
                )

                AvatarSize.Size32 -> FluentIcon(
                    light = if (avatarInfo.isOOO) AvatarIcons.Presence.Dndoof.Small.Light else AvatarIcons.Presence.Dnd.Small.Light,
                    dark = if (avatarInfo.isOOO) AvatarIcons.Presence.Dndoof.Small.Dark else AvatarIcons.Presence.Dnd.Small.Dark
                )

                AvatarSize.Size40 -> FluentIcon(
                    light = if (avatarInfo.isOOO) AvatarIcons.Presence.Dndoof.Medium.Light else AvatarIcons.Presence.Dnd.Medium.Light,
                    dark = if (avatarInfo.isOOO) AvatarIcons.Presence.Dndoof.Medium.Dark else AvatarIcons.Presence.Dnd.Medium.Dark
                )

                AvatarSize.Size56 -> FluentIcon(
                    light = if (avatarInfo.isOOO) AvatarIcons.Presence.Dndoof.Medium.Light else AvatarIcons.Presence.Dnd.Medium.Light,
                    dark = if (avatarInfo.isOOO) AvatarIcons.Presence.Dndoof.Medium.Dark else AvatarIcons.Presence.Dnd.Medium.Dark
                )

                AvatarSize.Size72 -> FluentIcon(
                    light = if (avatarInfo.isOOO) AvatarIcons.Presence.Dndoof.Large.Light else AvatarIcons.Presence.Dnd.Large.Light,
                    dark = if (avatarInfo.isOOO) AvatarIcons.Presence.Dndoof.Large.Dark else AvatarIcons.Presence.Dnd.Large.Dark
                )
            }

            AvatarStatus.Unknown -> when (avatarInfo.size) {
                AvatarSize.Size16 -> FluentIcon()
                AvatarSize.Size20 -> FluentIcon(
                    light = if (avatarInfo.isOOO) AvatarIcons.Presence.Oof.Small.Light else AvatarIcons.Presence.Unknown.Small.Light,
                    dark = if (avatarInfo.isOOO) AvatarIcons.Presence.Oof.Small.Dark else AvatarIcons.Presence.Unknown.Small.Dark
                )

                AvatarSize.Size24 -> FluentIcon(
                    light = if (avatarInfo.isOOO) AvatarIcons.Presence.Oof.Small.Light else AvatarIcons.Presence.Unknown.Small.Light,
                    dark = if (avatarInfo.isOOO) AvatarIcons.Presence.Oof.Small.Dark else AvatarIcons.Presence.Unknown.Small.Dark
                )

                AvatarSize.Size32 -> FluentIcon(
                    light = if (avatarInfo.isOOO) AvatarIcons.Presence.Oof.Small.Light else AvatarIcons.Presence.Unknown.Small.Light,
                    dark = if (avatarInfo.isOOO) AvatarIcons.Presence.Oof.Small.Dark else AvatarIcons.Presence.Unknown.Small.Dark
                )

                AvatarSize.Size40 -> FluentIcon(
                    light = if (avatarInfo.isOOO) AvatarIcons.Presence.Oof.Medium.Light else AvatarIcons.Presence.Unknown.Medium.Light,
                    dark = if (avatarInfo.isOOO) AvatarIcons.Presence.Oof.Medium.Dark else AvatarIcons.Presence.Unknown.Medium.Dark
                )

                AvatarSize.Size56 -> FluentIcon(
                    light = if (avatarInfo.isOOO) AvatarIcons.Presence.Oof.Medium.Light else AvatarIcons.Presence.Unknown.Medium.Light,
                    dark = if (avatarInfo.isOOO) AvatarIcons.Presence.Oof.Medium.Dark else AvatarIcons.Presence.Unknown.Medium.Dark
                )

                AvatarSize.Size72 -> FluentIcon(
                    light = if (avatarInfo.isOOO) AvatarIcons.Presence.Oof.Large.Light else AvatarIcons.Presence.Unknown.Large.Light,
                    dark = if (avatarInfo.isOOO) AvatarIcons.Presence.Oof.Large.Dark else AvatarIcons.Presence.Unknown.Large.Dark
                )
            }

            AvatarStatus.Blocked -> when (avatarInfo.size) {
                AvatarSize.Size16 -> FluentIcon()
                AvatarSize.Size20 -> FluentIcon(
                    light = if (avatarInfo.isOOO) AvatarIcons.Presence.Oof.Small.Light else AvatarIcons.Presence.Blocked.Small.Light,
                    dark = if (avatarInfo.isOOO) AvatarIcons.Presence.Oof.Small.Dark else AvatarIcons.Presence.Blocked.Small.Dark
                )

                AvatarSize.Size24 -> FluentIcon(
                    light = if (avatarInfo.isOOO) AvatarIcons.Presence.Oof.Small.Light else AvatarIcons.Presence.Blocked.Small.Light,
                    dark = if (avatarInfo.isOOO) AvatarIcons.Presence.Oof.Small.Dark else AvatarIcons.Presence.Blocked.Small.Dark
                )

                AvatarSize.Size32 -> FluentIcon(
                    light = if (avatarInfo.isOOO) AvatarIcons.Presence.Oof.Small.Light else AvatarIcons.Presence.Blocked.Small.Light,
                    dark = if (avatarInfo.isOOO) AvatarIcons.Presence.Oof.Small.Dark else AvatarIcons.Presence.Blocked.Small.Dark
                )

                AvatarSize.Size40 -> FluentIcon(
                    light = if (avatarInfo.isOOO) AvatarIcons.Presence.Oof.Medium.Light else AvatarIcons.Presence.Blocked.Medium.Light,
                    dark = if (avatarInfo.isOOO) AvatarIcons.Presence.Oof.Medium.Dark else AvatarIcons.Presence.Blocked.Medium.Dark
                )

                AvatarSize.Size56 -> FluentIcon(
                    light = if (avatarInfo.isOOO) AvatarIcons.Presence.Oof.Medium.Light else AvatarIcons.Presence.Blocked.Medium.Light,
                    dark = if (avatarInfo.isOOO) AvatarIcons.Presence.Oof.Medium.Dark else AvatarIcons.Presence.Blocked.Medium.Dark
                )

                AvatarSize.Size72 -> FluentIcon(
                    light = if (avatarInfo.isOOO) AvatarIcons.Presence.Oof.Large.Light else AvatarIcons.Presence.Blocked.Large.Light,
                    dark = if (avatarInfo.isOOO) AvatarIcons.Presence.Oof.Large.Dark else AvatarIcons.Presence.Blocked.Large.Dark
                )
            }

            AvatarStatus.Offline -> when (avatarInfo.size) {
                AvatarSize.Size16 -> FluentIcon()
                AvatarSize.Size20 -> FluentIcon(
                    light = if (avatarInfo.isOOO) AvatarIcons.Presence.Oof.Small.Light else AvatarIcons.Presence.Offline.Small.Light,
                    dark = if (avatarInfo.isOOO) AvatarIcons.Presence.Oof.Small.Dark else AvatarIcons.Presence.Offline.Small.Dark
                )

                AvatarSize.Size24 -> FluentIcon(
                    light = if (avatarInfo.isOOO) AvatarIcons.Presence.Oof.Small.Light else AvatarIcons.Presence.Offline.Small.Light,
                    dark = if (avatarInfo.isOOO) AvatarIcons.Presence.Oof.Small.Dark else AvatarIcons.Presence.Offline.Small.Dark
                )

                AvatarSize.Size32 -> FluentIcon(
                    light = if (avatarInfo.isOOO) AvatarIcons.Presence.Oof.Small.Light else AvatarIcons.Presence.Offline.Small.Light,
                    dark = if (avatarInfo.isOOO) AvatarIcons.Presence.Oof.Small.Dark else AvatarIcons.Presence.Offline.Small.Dark
                )

                AvatarSize.Size40 -> FluentIcon(
                    light = if (avatarInfo.isOOO) AvatarIcons.Presence.Oof.Medium.Light else AvatarIcons.Presence.Offline.Medium.Light,
                    dark = if (avatarInfo.isOOO) AvatarIcons.Presence.Oof.Medium.Dark else AvatarIcons.Presence.Offline.Medium.Dark
                )

                AvatarSize.Size56 -> FluentIcon(
                    light = if (avatarInfo.isOOO) AvatarIcons.Presence.Oof.Medium.Light else AvatarIcons.Presence.Offline.Medium.Light,
                    dark = if (avatarInfo.isOOO) AvatarIcons.Presence.Oof.Medium.Dark else AvatarIcons.Presence.Offline.Medium.Dark
                )

                AvatarSize.Size72 -> FluentIcon(
                    light = if (avatarInfo.isOOO) AvatarIcons.Presence.Oof.Large.Light else AvatarIcons.Presence.Offline.Large.Light,
                    dark = if (avatarInfo.isOOO) AvatarIcons.Presence.Oof.Large.Dark else AvatarIcons.Presence.Offline.Large.Dark
                )
            }
        }
    }

    @Composable
    open fun unreadDotBorderStroke(avatarInfo: AvatarInfo): BorderStroke {
        return BorderStroke(
            FluentGlobalTokens.StrokeWidthTokens.StrokeWidth20.value,
            aliasTokens.neutralStrokeColor[FluentAliasTokens.NeutralStrokeColorTokens.StrokeFocus1].value(
                themeMode = themeMode
            )
        )
    }

    @Composable
    open fun unreadDotBackgroundBrush(avatarInfo: AvatarInfo): Brush {
        return SolidColor(
            aliasTokens.brandBackgroundColor[FluentAliasTokens.BrandBackgroundColorTokens.BrandBackground1].value(
                themeMode = themeMode
            )
        )
    }

    @Composable
    open fun unreadDotSize(avatarInfo: AvatarInfo): Dp {
        return when (avatarInfo.size) {
            AvatarSize.Size16 -> 8.dp
            AvatarSize.Size20 -> 8.dp
            AvatarSize.Size24 -> 8.dp
            AvatarSize.Size32 -> 10.dp
            AvatarSize.Size40 -> 12.dp
            AvatarSize.Size56 -> 14.dp
            AvatarSize.Size72 -> 16.dp
        }
    }

    @Composable
    open fun unreadDotOffset(avatarInfo: AvatarInfo): DpOffset {
       return when(avatarInfo.size) {
              AvatarSize.Size16 -> DpOffset(4.dp, (0).dp)
              AvatarSize.Size20 -> DpOffset(4.dp, (-2).dp)
              AvatarSize.Size24 -> DpOffset(4.dp, (-3).dp)
              AvatarSize.Size32 -> DpOffset(4.dp, (-3).dp)
              AvatarSize.Size40 -> DpOffset(4.dp, (-3).dp)
              AvatarSize.Size56 -> DpOffset(4.dp, (-4).dp)
              AvatarSize.Size72 -> DpOffset(4.dp, (-5).dp)
       }
    }

    @Composable
    open fun presenceOffset(avatarInfo: AvatarInfo): DpOffset {
        return when (avatarInfo.size) {
            AvatarSize.Size16 -> DpOffset(0.dp, 0.dp)
            AvatarSize.Size20 -> DpOffset(0.dp, (-3).dp)
            AvatarSize.Size24 -> DpOffset((-1).dp, (-1).dp)
            AvatarSize.Size32 -> DpOffset(0.dp, 0.dp)
            AvatarSize.Size40 -> DpOffset(0.dp, 0.dp)
            AvatarSize.Size56 -> DpOffset((-2).dp, 2.dp)
            AvatarSize.Size72 -> DpOffset((-3).dp, 3.dp)
        }
    }

    @Composable
    open fun cornerRadius(avatarInfo: AvatarInfo): Dp {
        return when (avatarInfo.size) {
            AvatarSize.Size16 -> FluentGlobalTokens.CornerRadiusTokens.CornerRadius20.value
            AvatarSize.Size20 -> FluentGlobalTokens.CornerRadiusTokens.CornerRadius40.value
            AvatarSize.Size24 -> FluentGlobalTokens.CornerRadiusTokens.CornerRadius40.value
            AvatarSize.Size32 -> FluentGlobalTokens.CornerRadiusTokens.CornerRadius40.value
            AvatarSize.Size40 -> FluentGlobalTokens.CornerRadiusTokens.CornerRadius80.value
            AvatarSize.Size56 -> FluentGlobalTokens.CornerRadiusTokens.CornerRadius80.value
            AvatarSize.Size72 -> FluentGlobalTokens.CornerRadiusTokens.CornerRadius120.value
        }
    }

    @Composable
    open fun borderStroke(avatarInfo: AvatarInfo): List<BorderStroke> {
        val glowColor: Color = if (avatarInfo.isImageAvailable || avatarInfo.hasValidInitials) {
            FluentColor(
                light = calculatedColor(
                    avatarInfo.calculatedColorKey, FluentGlobalTokens.SharedColorsTokens.Primary
                ), dark = calculatedColor(
                    avatarInfo.calculatedColorKey, FluentGlobalTokens.SharedColorsTokens.Tint30
                )
            ).value(
                themeMode = themeMode
            )
        } else if (avatarInfo.type == AvatarType.Overflow) {
            aliasTokens.neutralStrokeColor[FluentAliasTokens.NeutralStrokeColorTokens.Stroke1].value(
                themeMode = themeMode
            )
        } else {
            when (avatarStyle(avatarInfo)) {
                AvatarStyle.Standard, AvatarStyle.StandardInverted, AvatarStyle.AnonymousAccent -> aliasTokens.brandStroke[FluentAliasTokens.BrandStrokeColorTokens.BrandStroke1].value(
                    themeMode = themeMode
                )

                AvatarStyle.Anonymous -> aliasTokens.neutralStrokeColor[FluentAliasTokens.NeutralStrokeColorTokens.Stroke1].value(
                    themeMode = themeMode
                )
            }
        }

        return if (avatarInfo.active) when (avatarInfo.size) {
            AvatarSize.Size16 -> activityRingToken.activeBorderStroke(
                ActivityRingSize.Size16, glowColor
            )

            AvatarSize.Size20 -> activityRingToken.activeBorderStroke(
                ActivityRingSize.Size20, glowColor
            )

            AvatarSize.Size24 -> activityRingToken.activeBorderStroke(
                ActivityRingSize.Size24, glowColor
            )

            AvatarSize.Size32 -> activityRingToken.activeBorderStroke(
                ActivityRingSize.Size32, glowColor
            )

            AvatarSize.Size40 -> activityRingToken.activeBorderStroke(
                ActivityRingSize.Size40, glowColor
            )

            AvatarSize.Size56 -> activityRingToken.activeBorderStroke(
                ActivityRingSize.Size56, glowColor
            )

            AvatarSize.Size72 -> activityRingToken.activeBorderStroke(
                ActivityRingSize.Size72, glowColor
            )
        }
        else when (avatarInfo.size) {
            AvatarSize.Size16 -> activityRingToken.inactiveBorderStroke(ActivityRingSize.Size16)
            AvatarSize.Size20 -> activityRingToken.inactiveBorderStroke(ActivityRingSize.Size20)
            AvatarSize.Size24 -> activityRingToken.inactiveBorderStroke(ActivityRingSize.Size24)
            AvatarSize.Size32 -> activityRingToken.inactiveBorderStroke(ActivityRingSize.Size32)
            AvatarSize.Size40 -> activityRingToken.inactiveBorderStroke(ActivityRingSize.Size40)
            AvatarSize.Size56 -> activityRingToken.inactiveBorderStroke(ActivityRingSize.Size56)
            AvatarSize.Size72 -> activityRingToken.inactiveBorderStroke(ActivityRingSize.Size72)
        }
    }

    @Composable
    open fun cutoutColorFilter(avatarInfo: AvatarInfo): ColorFilter? {
        return null
    }
    
    @Composable
    open fun cutoutCornerRadius(avatarInfo: AvatarInfo): Dp {
        return when (avatarInfo.cutoutStyle) {
            CutoutStyle.Circle -> FluentGlobalTokens.CornerRadiusTokens.CornerRadiusCircle.value
            CutoutStyle.Square -> FluentGlobalTokens.CornerRadiusTokens.CornerRadius40.value
        }
    }

    @Composable
    open fun cutoutBackgroundColor(avatarInfo: AvatarInfo): Color {
        return aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background5].value(
            themeMode = themeMode
        )
    }

    @Composable
    open fun cutoutBorderColor(avatarInfo: AvatarInfo): Color {
        return aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background1].value(
            themeMode = themeMode
        )
    }

    @Composable
    open fun cutoutIconSize(avatarInfo: AvatarInfo): Dp {
        return when (avatarInfo.size) {
            AvatarSize.Size16, AvatarSize.Size20, AvatarSize.Size24, AvatarSize.Size32, AvatarSize.Size72 -> 0.dp
            AvatarSize.Size40 -> FluentGlobalTokens.IconSizeTokens.IconSize160.value
            AvatarSize.Size56 -> FluentGlobalTokens.IconSizeTokens.IconSize240.value
        }
    }

    @Composable
    private fun calculatedColor(
        avatarString: String, token: FluentGlobalTokens.SharedColorsTokens
    ): Color {
        val colors = listOf(
            FluentGlobalTokens.SharedColorSets.DarkRed,
            FluentGlobalTokens.SharedColorSets.Cranberry,
            FluentGlobalTokens.SharedColorSets.Red,
            FluentGlobalTokens.SharedColorSets.Pumpkin,
            FluentGlobalTokens.SharedColorSets.Peach,
            FluentGlobalTokens.SharedColorSets.Marigold,
            FluentGlobalTokens.SharedColorSets.Gold,
            FluentGlobalTokens.SharedColorSets.Brass,
            FluentGlobalTokens.SharedColorSets.Brown,
            FluentGlobalTokens.SharedColorSets.Forest,
            FluentGlobalTokens.SharedColorSets.Seafoam,
            FluentGlobalTokens.SharedColorSets.DarkGreen,
            FluentGlobalTokens.SharedColorSets.LightTeal,
            FluentGlobalTokens.SharedColorSets.Teal,
            FluentGlobalTokens.SharedColorSets.Steel,
            FluentGlobalTokens.SharedColorSets.Blue,
            FluentGlobalTokens.SharedColorSets.RoyalBlue,
            FluentGlobalTokens.SharedColorSets.Cornflower,
            FluentGlobalTokens.SharedColorSets.Navy,
            FluentGlobalTokens.SharedColorSets.Lavender,
            FluentGlobalTokens.SharedColorSets.Purple,
            FluentGlobalTokens.SharedColorSets.Grape,
            FluentGlobalTokens.SharedColorSets.Lilac,
            FluentGlobalTokens.SharedColorSets.Pink,
            FluentGlobalTokens.SharedColorSets.Magenta,
            FluentGlobalTokens.SharedColorSets.Plum,
            FluentGlobalTokens.SharedColorSets.Beige,
            FluentGlobalTokens.SharedColorSets.Mink,
            FluentGlobalTokens.SharedColorSets.Platinum,
            FluentGlobalTokens.SharedColorSets.Anchor
        )

        when (token) {
            FluentGlobalTokens.SharedColorsTokens.Primary -> {
                return colors[abs(avatarString.hashCode()) % colors.size].primary
            }

            FluentGlobalTokens.SharedColorsTokens.Tint10 -> {
                return colors[abs(avatarString.hashCode()) % colors.size].tint10
            }

            FluentGlobalTokens.SharedColorsTokens.Tint20 -> {
                return colors[abs(avatarString.hashCode()) % colors.size].tint20
            }

            FluentGlobalTokens.SharedColorsTokens.Tint30 -> {
                return colors[abs(avatarString.hashCode()) % colors.size].tint30
            }

            FluentGlobalTokens.SharedColorsTokens.Tint40 -> {
                return colors[abs(avatarString.hashCode()) % colors.size].tint40
            }

            FluentGlobalTokens.SharedColorsTokens.Tint50 -> {
                return colors[abs(avatarString.hashCode()) % colors.size].tint50
            }

            FluentGlobalTokens.SharedColorsTokens.Tint60 -> {
                return colors[abs(avatarString.hashCode()) % colors.size].tint60
            }

            FluentGlobalTokens.SharedColorsTokens.Shade10 -> {
                return colors[abs(avatarString.hashCode()) % colors.size].shade10
            }

            FluentGlobalTokens.SharedColorsTokens.Shade20 -> {
                return colors[abs(avatarString.hashCode()) % colors.size].shade20
            }

            FluentGlobalTokens.SharedColorsTokens.Shade30 -> {
                return colors[abs(avatarString.hashCode()) % colors.size].shade30
            }

            FluentGlobalTokens.SharedColorsTokens.Shade40 -> {
                return colors[abs(avatarString.hashCode()) % colors.size].shade40
            }

            FluentGlobalTokens.SharedColorsTokens.Shade50 -> {
                return colors[abs(avatarString.hashCode()) % colors.size].shade50
            }
        }
    }
}

@Parcelize
open class ActivityRingsToken : Parcelable {
    @Composable
    open fun inactiveBorderStroke(activityRingSize: ActivityRingSize): List<BorderStroke> {
        return when (activityRingSize) {
            ActivityRingSize.Size16 -> listOf(
                BorderStroke(
                    FluentGlobalTokens.StrokeWidthTokens.StrokeWidth15.value,
                    aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background1].value(
                        themeMode = themeMode
                    )
                )
            )

            ActivityRingSize.Size20 -> listOf(
                BorderStroke(
                    FluentGlobalTokens.StrokeWidthTokens.StrokeWidth20.value,
                    aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background1].value(
                        themeMode = themeMode
                    )
                )
            )

            ActivityRingSize.Size24 -> listOf(
                BorderStroke(
                    FluentGlobalTokens.StrokeWidthTokens.StrokeWidth20.value,
                    aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background1].value(
                        themeMode = themeMode
                    )
                )
            )

            ActivityRingSize.Size32 -> listOf(
                BorderStroke(
                    FluentGlobalTokens.StrokeWidthTokens.StrokeWidth20.value,
                    aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background1].value(
                        themeMode = themeMode
                    )
                )
            )

            ActivityRingSize.Size40 -> listOf(
                BorderStroke(
                    FluentGlobalTokens.StrokeWidthTokens.StrokeWidth20.value,
                    aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background1].value(
                        themeMode = themeMode
                    )
                )
            )

            ActivityRingSize.Size56 -> listOf(
                BorderStroke(
                    FluentGlobalTokens.StrokeWidthTokens.StrokeWidth20.value,
                    aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background1].value(
                        themeMode = themeMode
                    )
                )
            )

            ActivityRingSize.Size72 -> listOf(
                BorderStroke(
                    FluentGlobalTokens.StrokeWidthTokens.StrokeWidth40.value,
                    aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background1].value(
                        themeMode = themeMode
                    )
                )
            )
        }
    }

    @Composable
    open fun activeBorderStroke(
        activityRingSize: ActivityRingSize, glowColor: Color
    ): List<BorderStroke> {
        return when (activityRingSize) {
            ActivityRingSize.Size16 -> listOf(
                BorderStroke(
                    FluentGlobalTokens.StrokeWidthTokens.StrokeWidth15.value,
                    aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background1].value(
                        themeMode = themeMode
                    )
                ), BorderStroke(
                    FluentGlobalTokens.StrokeWidthTokens.StrokeWidth15.value, glowColor
                ), BorderStroke(
                    FluentGlobalTokens.StrokeWidthTokens.StrokeWidth15.value,
                    aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background1].value(
                        themeMode = themeMode
                    )
                )
            )

            ActivityRingSize.Size20 -> listOf(
                BorderStroke(
                    FluentGlobalTokens.StrokeWidthTokens.StrokeWidth20.value,
                    aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background1].value(
                        themeMode = themeMode
                    )
                ), BorderStroke(
                    FluentGlobalTokens.StrokeWidthTokens.StrokeWidth15.value, glowColor
                ), BorderStroke(
                    FluentGlobalTokens.StrokeWidthTokens.StrokeWidth20.value,
                    aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background1].value(
                        themeMode = themeMode
                    )
                )
            )

            ActivityRingSize.Size24 -> listOf(
                BorderStroke(
                    FluentGlobalTokens.StrokeWidthTokens.StrokeWidth20.value,
                    aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background1].value(
                        themeMode = themeMode
                    )
                ), BorderStroke(
                    FluentGlobalTokens.StrokeWidthTokens.StrokeWidth20.value, glowColor
                ), BorderStroke(
                    FluentGlobalTokens.StrokeWidthTokens.StrokeWidth20.value,
                    aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background1].value(
                        themeMode = themeMode
                    )
                )
            )

            ActivityRingSize.Size32 -> listOf(
                BorderStroke(
                    FluentGlobalTokens.StrokeWidthTokens.StrokeWidth20.value,
                    aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background1].value(
                        themeMode = themeMode
                    )
                ), BorderStroke(
                    FluentGlobalTokens.StrokeWidthTokens.StrokeWidth20.value, glowColor
                ), BorderStroke(
                    FluentGlobalTokens.StrokeWidthTokens.StrokeWidth20.value,
                    aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background1].value(
                        themeMode = themeMode
                    )
                )
            )

            ActivityRingSize.Size40 -> listOf(
                BorderStroke(
                    FluentGlobalTokens.StrokeWidthTokens.StrokeWidth20.value,
                    aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background1].value(
                        themeMode = themeMode
                    )
                ), BorderStroke(
                    FluentGlobalTokens.StrokeWidthTokens.StrokeWidth20.value, glowColor
                ), BorderStroke(
                    FluentGlobalTokens.StrokeWidthTokens.StrokeWidth20.value,
                    aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background1].value(
                        themeMode = themeMode
                    )
                )
            )

            ActivityRingSize.Size56 -> listOf(
                BorderStroke(
                    FluentGlobalTokens.StrokeWidthTokens.StrokeWidth20.value,
                    aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background1].value(
                        themeMode = themeMode
                    )
                ), BorderStroke(
                    FluentGlobalTokens.StrokeWidthTokens.StrokeWidth20.value, glowColor
                ), BorderStroke(
                    FluentGlobalTokens.StrokeWidthTokens.StrokeWidth20.value,
                    aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background1].value(
                        themeMode = themeMode
                    )
                )
            )

            ActivityRingSize.Size72 -> listOf(
                BorderStroke(
                    FluentGlobalTokens.StrokeWidthTokens.StrokeWidth40.value,
                    aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background1].value(
                        themeMode = themeMode
                    )
                ), BorderStroke(
                    FluentGlobalTokens.StrokeWidthTokens.StrokeWidth40.value, glowColor
                ), BorderStroke(
                    FluentGlobalTokens.StrokeWidthTokens.StrokeWidth40.value,
                    aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background1].value(
                        themeMode = themeMode
                    )
                )
            )
        }
    }
}
````

## File: src/main/java/com/microsoft/fluentui/theme/token/controlTokens/BadgeTokens.kt
````kotlin
package com.microsoft.fluentui.theme.token.controlTokens

import android.os.Parcelable
import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.runtime.Composable
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.ControlInfo
import com.microsoft.fluentui.theme.token.FluentAliasTokens
import com.microsoft.fluentui.theme.token.FluentGlobalTokens
import com.microsoft.fluentui.theme.token.IControlToken
import kotlinx.parcelize.Parcelize

enum class BadgeType {
    Character,
    List
}

open class BadgeInfo(val type: BadgeType) : ControlInfo

@Parcelize
open class BadgeTokens : IControlToken, Parcelable {

    @Composable
    open fun backgroundBrush(badgeInfo: BadgeInfo): Brush {
        return SolidColor(FluentTheme.aliasTokens.errorAndStatusColor[FluentAliasTokens.ErrorAndStatusColorTokens.DangerBackground2].value())
    }

    @Composable
    open fun textColor(badgeInfo: BadgeInfo): Color {
        return FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundLightStatic].value()
    }

    @Composable
    open fun typography(badgeInfo: BadgeInfo): TextStyle {
        return when (badgeInfo.type) {
            BadgeType.Character -> FluentTheme.aliasTokens.typography[FluentAliasTokens.TypographyTokens.Caption2]
            BadgeType.List -> FluentTheme.aliasTokens.typography[FluentAliasTokens.TypographyTokens.Caption1Strong]
        }
    }

    @Composable
    open fun padding(badgeInfo: BadgeInfo): PaddingValues {
        return when (badgeInfo.type) {
            BadgeType.Character -> PaddingValues(
                horizontal = FluentGlobalTokens.SizeTokens.Size60.value + borderStroke(
                    badgeInfo
                ).width
            )

            BadgeType.List -> PaddingValues(
                start = FluentGlobalTokens.SizeTokens.Size80.value + borderStroke(
                    badgeInfo
                ).width,
                end = FluentGlobalTokens.SizeTokens.Size80.value + borderStroke(
                    badgeInfo
                ).width,
                top = 3.dp + borderStroke(badgeInfo).width,
                bottom = 3.dp + borderStroke(badgeInfo).width
            )
        }
    }

    @Composable
    open fun borderStroke(badgeInfo: BadgeInfo): BorderStroke {
        return BorderStroke(
            FluentGlobalTokens.StrokeWidthTokens.StrokeWidth20.value,
            FluentTheme.aliasTokens.neutralStrokeColor[FluentAliasTokens.NeutralStrokeColorTokens.StrokeFocus1].value()
        )
    }

    @Composable
    open fun cornerRadius(badgeInfo: BadgeInfo): Dp = 100.dp
}
````

## File: src/main/java/com/microsoft/fluentui/theme/token/controlTokens/BannerTokens.kt
````kotlin
package com.microsoft.fluentui.theme.token.controlTokens

import android.os.Parcelable
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.runtime.Composable
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.theme.FluentTheme.aliasTokens
import com.microsoft.fluentui.theme.token.ControlInfo
import com.microsoft.fluentui.theme.token.FluentAliasTokens
import com.microsoft.fluentui.theme.token.IControlToken
import kotlinx.parcelize.Parcelize

open class BannerInfo(
    val isAccessoryButtonEnabled: Boolean = false
) : ControlInfo

@Parcelize
open class BannerTokens : IControlToken, Parcelable {

    @Composable
    open fun backgroundColor(bannerInfo: BannerInfo): Brush {
        return SolidColor(aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background4].value())
    }

    @Composable
    open fun textColor(bannerInfo: BannerInfo): Color {
        return aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value()
    }

    @Composable
    open fun actionIconColor(bannerInfo: BannerInfo): Color {
        return aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground2].value()
    }

    @Composable
    open fun leadingIconColor(bannerInfo: BannerInfo): Color {
        return aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground2].value()
    }

    @Composable
    open fun actionButtonColor(bannerInfo: BannerInfo): Color {
        return aliasTokens.brandForegroundColor[FluentAliasTokens.BrandForegroundColorTokens.BrandForeground1].value()
    }

    @Composable
    open fun leadingIconSize(bannerInfo: BannerInfo): Dp = 24.dp

    @Composable
    open fun actionIconSize(bannerInfo: BannerInfo): Dp = 20.dp

    @Composable
    open fun padding(bannerInfo: BannerInfo): PaddingValues =
        bannerInfo.isAccessoryButtonEnabled.let {
            if (it) {
                PaddingValues(horizontal = 16.dp, vertical = 8.dp)
            } else {
                PaddingValues(horizontal = 16.dp, vertical = 12.dp)
            }
        }

    @Composable
    open fun textTypography(bannerInfo: BannerInfo): TextStyle {
        return aliasTokens.typography[FluentAliasTokens.TypographyTokens.Body2]
    }

    @Composable
    open fun actionButtonTextTypography(bannerInfo: BannerInfo): TextStyle {
        return aliasTokens.typography[FluentAliasTokens.TypographyTokens.Body2Strong]
    }

    @Composable
    open fun leadingIconAndTextSpacing(bannerInfo: BannerInfo): Dp = 12.dp

    @Composable
    open fun textAndActionButtonSpacing(bannerInfo: BannerInfo): Dp = 12.dp

    @Composable
    open fun accessoryActionButtonsSpacing(bannerInfo: BannerInfo): Dp = 24.dp

    @Composable
    open fun textAndAccessoryButtonSpacing(bannerInfo: BannerInfo): Dp = 8.dp
}
````

## File: src/main/java/com/microsoft/fluentui/theme/token/controlTokens/BasicCardTokens.kt
````kotlin
package com.microsoft.fluentui.theme.token.controlTokens

import android.os.Parcelable
import androidx.compose.runtime.Composable
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.ControlInfo
import com.microsoft.fluentui.theme.token.FluentAliasTokens
import com.microsoft.fluentui.theme.token.FluentGlobalTokens
import com.microsoft.fluentui.theme.token.IControlToken
import kotlinx.parcelize.Parcelize

enum class CardType {
    Elevated,
    Outlined
}

open class BasicCardInfo(val cardType: CardType = CardType.Elevated) :
    ControlInfo

@Parcelize
open class BasicCardTokens : IControlToken, Parcelable {

    @Composable
    open fun backgroundBrush(basicCardInfo: BasicCardInfo): Brush {
        return SolidColor(
            FluentTheme.aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background2].value(
                themeMode = FluentTheme.themeMode
            )
        )
    }

    @Composable
    open fun cornerRadius(basicCardInfo: BasicCardInfo): Dp {
        return FluentGlobalTokens.CornerRadiusTokens.CornerRadius120.value
    }

    @Composable
    open fun elevation(basicCardInfo: BasicCardInfo): Dp {
        return when (basicCardInfo.cardType) {
            CardType.Elevated -> FluentGlobalTokens.ShadowTokens.Shadow02.value
            CardType.Outlined -> 0.dp
        }
    }

    @Composable
    open fun borderColor(basicCardInfo: BasicCardInfo): Brush {
        return SolidColor(
            FluentTheme.aliasTokens.neutralStrokeColor[FluentAliasTokens.NeutralStrokeColorTokens.Stroke1].value(
                themeMode = FluentTheme.themeMode
            )
        )
    }

    @Composable
    open fun borderStrokeWidth(basicCardInfo: BasicCardInfo): Dp {
        return FluentGlobalTokens.StrokeWidthTokens.StrokeWidth05.value
    }
}
````

## File: src/main/java/com/microsoft/fluentui/theme/token/controlTokens/BasicChipTokens.kt
````kotlin
package com.microsoft.fluentui.theme.token.controlTokens

import android.os.Parcelable
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.runtime.Composable
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.unit.Dp
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.ControlInfo
import com.microsoft.fluentui.theme.token.FluentAliasTokens
import com.microsoft.fluentui.theme.token.FluentGlobalTokens
import com.microsoft.fluentui.theme.token.IControlToken
import com.microsoft.fluentui.theme.token.StateBrush
import com.microsoft.fluentui.theme.token.StateColor
import kotlinx.android.parcel.Parcelize

open class BasicChipInfo : ControlInfo

@Parcelize
open class BasicChipTokens : IControlToken, Parcelable {

    @Composable
    open fun backgroundBrush(basicChipInfo: BasicChipInfo): StateBrush {
        return StateBrush(
            rest = SolidColor(
                FluentTheme.aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background5].value(
                    themeMode = FluentTheme.themeMode
                )
            ),
            selected = SolidColor(
                FluentTheme.aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background5Selected].value(
                    themeMode = FluentTheme.themeMode
                )
            ),
            disabled = SolidColor(
                FluentTheme.aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.BackgroundDisabled].value(
                    themeMode = FluentTheme.themeMode
                )
            )
        )
    }

    @Composable
    open fun textColor(basicChipInfo: BasicChipInfo): StateColor {

        return StateColor(
            rest = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground2].value(
                themeMode = FluentTheme.themeMode
            ),
            selected = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value(
                themeMode = FluentTheme.themeMode
            ),
            disabled = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundDisable1].value(
                themeMode = FluentTheme.themeMode
            )
        )
    }

    @Composable
    open fun cornerRadius(basicChipInfo: BasicChipInfo): Dp {
        return FluentGlobalTokens.CornerRadiusTokens.CornerRadius80.value
    }

    @Composable
    open fun typography(basicChipInfo: BasicChipInfo): TextStyle {
        return FluentTheme.aliasTokens.typography[FluentAliasTokens.TypographyTokens.Body2]
    }

    @Composable
    open fun padding(basicChipInfo: BasicChipInfo): PaddingValues {
        return PaddingValues(
            horizontal = FluentGlobalTokens.SizeTokens.Size120.value,
            vertical = FluentGlobalTokens.SizeTokens.Size80.value
        )
    }

    @Composable
    open fun horizontalSpacing(basicChipInfo: BasicChipInfo): Dp {
        return FluentGlobalTokens.SizeTokens.Size80.value
    }
}
````

## File: src/main/java/com/microsoft/fluentui/theme/token/controlTokens/BottomSheetTokens.kt
````kotlin
package com.microsoft.fluentui.theme.token.controlTokens

import android.os.Parcelable
import androidx.compose.runtime.Composable
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.unit.Dp
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.ControlInfo
import com.microsoft.fluentui.theme.token.FluentAliasTokens
import com.microsoft.fluentui.theme.token.FluentGlobalTokens
import com.microsoft.fluentui.theme.token.IControlToken
import kotlinx.parcelize.Parcelize

open class BottomSheetInfo : ControlInfo

data class SheetAccessibilityAnnouncement(
    var expandedToShown: String = "",
    var expandedToCollapsed: String = "Bottom Sheet Collapsed",
    var shownToExpanded: String = "Bottom Sheet Expanded",
    var shownToCollapsed: String = "Bottom Sheet Collapsed",
    var collapsedToExpanded: String = "Bottom Sheet Expanded",
    var collapsedToShown: String = "Bottom Sheet Opened",
)

@Parcelize
open class BottomSheetTokens : IControlToken, Parcelable {
    @Composable
    open fun backgroundBrush(bottomSheetInfo: BottomSheetInfo): Brush =
        SolidColor(
            FluentTheme.aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background2].value(
                themeMode = FluentTheme.themeMode
            )
        )

    @Composable
    open fun handleColor(bottomSheetInfo: BottomSheetInfo): Color =
        FluentTheme.aliasTokens.neutralStrokeColor[FluentAliasTokens.NeutralStrokeColorTokens.Stroke1].value(
            themeMode = FluentTheme.themeMode
        )

    @Composable
    open fun elevation(bottomSheetInfo: BottomSheetInfo): Dp =
        FluentGlobalTokens.ShadowTokens.Shadow02.value

    @Composable
    open fun cornerRadius(bottomSheetInfo: BottomSheetInfo): Dp =
        FluentGlobalTokens.CornerRadiusTokens.CornerRadius120.value

    @Composable
    open fun scrimColor(bottomSheetInfo: BottomSheetInfo): Color =
        FluentGlobalTokens.NeutralColorTokens.Black.value

    @Composable
    open fun scrimOpacity(bottomSheetInfo: BottomSheetInfo): Float = 0.32F

    @Composable
    open fun maxLandscapeWidth (bottomSheetInfo: BottomSheetInfo): Float = 1F

    open fun additionalOffset (bottomSheetInfo: BottomSheetInfo): Int = 0
}
````

## File: src/main/java/com/microsoft/fluentui/theme/token/controlTokens/ButtonTokens.kt
````kotlin
//
//  Copyright (c) Microsoft Corporation. All rights reserved.
//  Licensed under the MIT License.
//

package com.microsoft.fluentui.theme.token.controlTokens

import android.os.Parcelable
import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.runtime.Composable
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.theme.FluentTheme.aliasTokens
import com.microsoft.fluentui.theme.FluentTheme.themeMode
import com.microsoft.fluentui.theme.token.*
import kotlinx.parcelize.Parcelize

enum class ButtonStyle {
    Button,
    OutlinedButton,
    TextButton
}

enum class ButtonSize {
    Small,
    Medium,
    Large
}

open class ButtonInfo(
    val style: ButtonStyle = ButtonStyle.Button,
    val size: ButtonSize = ButtonSize.Medium
) : ControlInfo

@Parcelize
open class ButtonTokens : IControlToken, Parcelable {

    @Composable
    open fun iconColor(buttonInfo: ButtonInfo): StateColor {
        return when (buttonInfo.style) {
            ButtonStyle.Button ->
                StateColor(
                    rest = aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundOnColor].value(
                        themeMode = themeMode
                    ),
                    pressed = aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundOnColor].value(
                        themeMode = themeMode
                    ),
                    selected = aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundOnColor].value(
                        themeMode = themeMode
                    ),
                    focused = aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundOnColor].value(
                        themeMode = themeMode
                    ),
                    disabled = aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundDisable1].value(
                        themeMode = themeMode
                    )
                )

            ButtonStyle.OutlinedButton, ButtonStyle.TextButton ->
                StateColor(
                    rest = aliasTokens.brandForegroundColor[FluentAliasTokens.BrandForegroundColorTokens.BrandForeground1].value(
                        themeMode = themeMode
                    ),
                    pressed = aliasTokens.brandForegroundColor[FluentAliasTokens.BrandForegroundColorTokens.BrandForeground1Pressed].value(
                        themeMode = themeMode
                    ),
                    selected = aliasTokens.brandForegroundColor[FluentAliasTokens.BrandForegroundColorTokens.BrandForeground1Selected].value(
                        themeMode = themeMode
                    ),
                    focused = aliasTokens.brandForegroundColor[FluentAliasTokens.BrandForegroundColorTokens.BrandForeground1].value(
                        themeMode = themeMode
                    ),
                    disabled = aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundDisable1].value(
                        themeMode = themeMode
                    )
                )
        }
    }

    @Composable
    open fun trailingIconColor(buttonInfo: ButtonInfo): StateColor {
        return when (buttonInfo.style) {
            ButtonStyle.Button ->
                StateColor(
                    rest = aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundOnColor].value(
                        themeMode = themeMode
                    ),
                    pressed = aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundOnColor].value(
                        themeMode = themeMode
                    ),
                    selected = aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundOnColor].value(
                        themeMode = themeMode
                    ),
                    focused = aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundOnColor].value(
                        themeMode = themeMode
                    ),
                    disabled = aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundDisable1].value(
                        themeMode = themeMode
                    )
                )

            ButtonStyle.OutlinedButton, ButtonStyle.TextButton ->
                StateColor(
                    rest = aliasTokens.brandForegroundColor[FluentAliasTokens.BrandForegroundColorTokens.BrandForeground1].value(
                        themeMode = themeMode
                    ),
                    pressed = aliasTokens.brandForegroundColor[FluentAliasTokens.BrandForegroundColorTokens.BrandForeground1Pressed].value(
                        themeMode = themeMode
                    ),
                    selected = aliasTokens.brandForegroundColor[FluentAliasTokens.BrandForegroundColorTokens.BrandForeground1Selected].value(
                        themeMode = themeMode
                    ),
                    focused = aliasTokens.brandForegroundColor[FluentAliasTokens.BrandForegroundColorTokens.BrandForeground1].value(
                        themeMode = themeMode
                    ),
                    disabled = aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundDisable1].value(
                        themeMode = themeMode
                    )
                )
        }
    }

    @Composable
    open fun textColor(buttonInfo: ButtonInfo): StateColor {
        return when (buttonInfo.style) {
            ButtonStyle.Button -> StateColor(
                rest = aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundOnColor].value(
                    themeMode = themeMode
                ),
                pressed = aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundOnColor].value(
                    themeMode = themeMode
                ),
                selected = aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundOnColor].value(
                    themeMode = themeMode
                ),
                focused = aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundOnColor].value(
                    themeMode = themeMode
                ),
                disabled = aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundDisable1].value(
                    themeMode = themeMode
                )
            )
            ButtonStyle.OutlinedButton, ButtonStyle.TextButton ->
                StateColor(
                    rest = aliasTokens.brandForegroundColor[FluentAliasTokens.BrandForegroundColorTokens.BrandForeground1].value(
                        themeMode = themeMode
                    ),
                    pressed = aliasTokens.brandForegroundColor[FluentAliasTokens.BrandForegroundColorTokens.BrandForeground1Pressed].value(
                        themeMode = themeMode
                    ),
                    selected = aliasTokens.brandForegroundColor[FluentAliasTokens.BrandForegroundColorTokens.BrandForeground1Selected].value(
                        themeMode = themeMode
                    ),
                    focused = aliasTokens.brandForegroundColor[FluentAliasTokens.BrandForegroundColorTokens.BrandForeground1].value(
                        themeMode = themeMode
                    ),
                    disabled = aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundDisable1].value(
                        themeMode = themeMode
                    )
                )
        }
    }

    @Composable
    open fun backgroundBrush(buttonInfo: ButtonInfo): StateBrush {
        return when (buttonInfo.style) {
            ButtonStyle.Button ->
                StateBrush(
                    rest = SolidColor(
                        aliasTokens.brandBackgroundColor[FluentAliasTokens.BrandBackgroundColorTokens.BrandBackground1].value(
                            themeMode = themeMode
                        )
                    ),
                    pressed = SolidColor(
                        aliasTokens.brandBackgroundColor[FluentAliasTokens.BrandBackgroundColorTokens.BrandBackground1Pressed].value(
                            themeMode = themeMode
                        )
                    ),
                    selected = SolidColor(
                        aliasTokens.brandBackgroundColor[FluentAliasTokens.BrandBackgroundColorTokens.BrandBackground1Selected].value(
                            themeMode = themeMode
                        )
                    ),
                    focused = SolidColor(
                        aliasTokens.brandBackgroundColor[FluentAliasTokens.BrandBackgroundColorTokens.BrandBackground1].value(
                            themeMode = themeMode
                        )
                    ),
                    disabled = SolidColor(
                        aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background5].value(
                            themeMode = themeMode
                        )
                    )
                )
            ButtonStyle.OutlinedButton -> StateBrush()
            ButtonStyle.TextButton -> StateBrush()
        }
    }

    @Composable
    open fun borderStroke(buttonInfo: ButtonInfo): StateBorderStroke {
        return when (buttonInfo.style) {
            ButtonStyle.Button, ButtonStyle.TextButton -> StateBorderStroke(
                focused = listOf(
                    BorderStroke(
                        FluentGlobalTokens.StrokeWidthTokens.StrokeWidth20.value,
                        aliasTokens.neutralStrokeColor[FluentAliasTokens.NeutralStrokeColorTokens.StrokeFocus2].value(
                            themeMode = themeMode
                        )
                    ),
                    BorderStroke(
                        FluentGlobalTokens.StrokeWidthTokens.StrokeWidth15.value,
                        aliasTokens.neutralStrokeColor[FluentAliasTokens.NeutralStrokeColorTokens.StrokeFocus1].value(
                            themeMode = themeMode
                        )
                    )
                )
            )

            ButtonStyle.OutlinedButton -> StateBorderStroke(
                pressed = listOf(
                    BorderStroke(
                        FluentGlobalTokens.StrokeWidthTokens.StrokeWidth15.value,
                        aliasTokens.brandStroke[FluentAliasTokens.BrandStrokeColorTokens.BrandStroke1Pressed].value(
                            themeMode = themeMode
                        )
                    )
                ),
                rest = listOf(
                    BorderStroke(
                        FluentGlobalTokens.StrokeWidthTokens.StrokeWidth15.value,
                        aliasTokens.brandStroke[FluentAliasTokens.BrandStrokeColorTokens.BrandStroke1].value(
                            themeMode = themeMode
                        )
                    )
                ),
                disabled = listOf(
                    BorderStroke(
                        FluentGlobalTokens.StrokeWidthTokens.StrokeWidth15.value,
                        aliasTokens.neutralStrokeColor[FluentAliasTokens.NeutralStrokeColorTokens.StrokeDisabled].value(
                            themeMode = themeMode
                        )
                    )
                ),
                focused = listOf(
                    BorderStroke(
                        FluentGlobalTokens.StrokeWidthTokens.StrokeWidth20.value,
                        aliasTokens.neutralStrokeColor[FluentAliasTokens.NeutralStrokeColorTokens.StrokeFocus2].value(
                            themeMode = themeMode
                        )
                    ),
                    BorderStroke(
                        FluentGlobalTokens.StrokeWidthTokens.StrokeWidth15.value,
                        aliasTokens.neutralStrokeColor[FluentAliasTokens.NeutralStrokeColorTokens.StrokeFocus1].value(
                            themeMode = themeMode
                        )
                    )
                )
            )
        }
    }

    @Composable
    open fun cornerRadius(buttonInfo: ButtonInfo): Dp {
        return when (buttonInfo.size) {
            ButtonSize.Small -> FluentGlobalTokens.CornerRadiusTokens.CornerRadius80.value
            ButtonSize.Medium -> FluentGlobalTokens.CornerRadiusTokens.CornerRadius40.value
            ButtonSize.Large -> FluentGlobalTokens.CornerRadiusTokens.CornerRadius40.value
        }
    }

    @Composable
    open fun iconSize(buttonInfo: ButtonInfo): Dp {
        return when (buttonInfo.style) {
            ButtonStyle.Button, ButtonStyle.TextButton, ButtonStyle.OutlinedButton ->
                when (buttonInfo.size) {
                    ButtonSize.Small -> FluentGlobalTokens.IconSizeTokens.IconSize160.value
                    ButtonSize.Medium -> FluentGlobalTokens.IconSizeTokens.IconSize200.value
                    ButtonSize.Large -> FluentGlobalTokens.IconSizeTokens.IconSize200.value
                }
        }
    }

    @Composable
    open fun trailingIconSize(buttonInfo: ButtonInfo): Dp {
        return when (buttonInfo.style) {
            ButtonStyle.Button, ButtonStyle.TextButton, ButtonStyle.OutlinedButton ->
                when (buttonInfo.size) {
                    ButtonSize.Small -> FluentGlobalTokens.IconSizeTokens.IconSize160.value
                    ButtonSize.Medium -> FluentGlobalTokens.IconSizeTokens.IconSize200.value
                    ButtonSize.Large -> FluentGlobalTokens.IconSizeTokens.IconSize200.value
                }
        }
    }

    @Composable
    open fun typography(buttonInfo: ButtonInfo): TextStyle {
        return when (buttonInfo.size) {
            ButtonSize.Small -> aliasTokens.typography[FluentAliasTokens.TypographyTokens.Body2Strong]
            ButtonSize.Medium -> aliasTokens.typography[FluentAliasTokens.TypographyTokens.Body2Strong]
            ButtonSize.Large -> aliasTokens.typography[FluentAliasTokens.TypographyTokens.Body1Strong]
        }
    }

    @Composable
    open fun padding(buttonInfo: ButtonInfo): PaddingValues {
        return when (buttonInfo.size) {
            ButtonSize.Small ->
                PaddingValues(
                    horizontal = FluentGlobalTokens.SizeTokens.Size80.value,
                    vertical = FluentGlobalTokens.SizeTokens.Size40.value
                )
            ButtonSize.Medium -> PaddingValues(
                horizontal = FluentGlobalTokens.SizeTokens.Size120.value,
                vertical = FluentGlobalTokens.SizeTokens.Size80.value
            )
            ButtonSize.Large -> PaddingValues(
                horizontal = FluentGlobalTokens.SizeTokens.Size200.value,
                vertical = FluentGlobalTokens.SizeTokens.Size120.value
            )
        }
    }

    @Composable
    open fun spacing(buttonInfo: ButtonInfo): Dp {
        return when (buttonInfo.size) {
            ButtonSize.Small -> FluentGlobalTokens.SizeTokens.Size40.value
            ButtonSize.Medium -> FluentGlobalTokens.SizeTokens.Size80.value
            ButtonSize.Large -> FluentGlobalTokens.SizeTokens.Size80.value
        }
    }

    @Composable
    open fun fixedHeight(buttonInfo: ButtonInfo): Dp {
        return when (buttonInfo.size) {
            ButtonSize.Small -> 28.dp
            ButtonSize.Medium -> 36.dp
            ButtonSize.Large -> 48.dp
        }
    }
}
````

## File: src/main/java/com/microsoft/fluentui/theme/token/controlTokens/CardNudgeTokens.kt
````kotlin
package com.microsoft.fluentui.theme.token.controlTokens

import android.os.Parcelable
import androidx.compose.runtime.Composable
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.theme.FluentTheme.aliasTokens
import com.microsoft.fluentui.theme.token.ControlInfo
import com.microsoft.fluentui.theme.token.FluentAliasTokens
import com.microsoft.fluentui.theme.token.FluentGlobalTokens
import com.microsoft.fluentui.theme.token.IControlToken
import kotlinx.parcelize.Parcelize

open class CardNudgeInfo : ControlInfo


@Parcelize
open class CardNudgeTokens : IControlToken, Parcelable {

    @Composable
    open fun backgroundBrush(cardNudgeInfo: CardNudgeInfo): Brush {
        return SolidColor(aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.CanvasBackground].value())
    }

    @Composable
    open fun iconColor(cardNudgeInfo: CardNudgeInfo): Color {
        return aliasTokens.brandForegroundColor[FluentAliasTokens.BrandForegroundColorTokens.BrandForegroundTint].value()
    }

    @Composable
    open fun dismissIconColor(cardNudgeInfo: CardNudgeInfo): Color {
        return aliasTokens.brandForegroundColor[FluentAliasTokens.BrandForegroundColorTokens.BrandForegroundTint].value()
    }

    @Composable
    open fun accentColor(cardNudgeInfo: CardNudgeInfo): Color {
        return aliasTokens.brandForegroundColor[FluentAliasTokens.BrandForegroundColorTokens.BrandForeground1].value()
    }

    @Composable
    open fun iconBackgroundBrush(cardNudgeInfo: CardNudgeInfo): Brush {
        return SolidColor(aliasTokens.brandBackgroundColor[FluentAliasTokens.BrandBackgroundColorTokens.BrandBackgroundTint].value())
    }

    @Composable
    open fun titleTypography(cardNudgeInfo: CardNudgeInfo): TextStyle {
        return aliasTokens.typography[FluentAliasTokens.TypographyTokens.Body2Strong].merge(
            TextStyle(
                color = aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value()
            )
        )
    }

    @Composable
    open fun accentTypography(cardNudgeInfo: CardNudgeInfo): TextStyle {
        return aliasTokens.typography[FluentAliasTokens.TypographyTokens.Caption1].merge(
            TextStyle(
                color = aliasTokens.brandForegroundColor[FluentAliasTokens.BrandForegroundColorTokens.BrandForeground1].value()
            )
        )
    }

    @Composable
    open fun subtitleTypography(cardNudgeInfo: CardNudgeInfo): TextStyle {
        return aliasTokens.typography[FluentAliasTokens.TypographyTokens.Caption1].merge(
            TextStyle(
                color = aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground2].value()
            )
        )
    }

    @Composable
    open fun borderStrokeColor(cardNudgeInfo: CardNudgeInfo): Color =
        aliasTokens.neutralStrokeColor[FluentAliasTokens.NeutralStrokeColorTokens.Stroke2].value()

    @Composable
    open fun borderSize(cardNudgeInfo: CardNudgeInfo): Dp =
        FluentGlobalTokens.StrokeWidthTokens.StrokeWidth10.value

    @Composable
    open fun iconSize(cardNudgeInfo: CardNudgeInfo): Dp = 24.dp

    @Composable
    open fun iconBackgroundSize(cardNudgeInfo: CardNudgeInfo): Dp = 40.dp

    @Composable
    open fun dismissIconSize(cardNudgeInfo: CardNudgeInfo): Dp = 20.dp

}
````

## File: src/main/java/com/microsoft/fluentui/theme/token/controlTokens/CheckBoxTokens.kt
````kotlin
package com.microsoft.fluentui.theme.token.controlTokens

import android.os.Parcelable
import androidx.compose.foundation.BorderStroke
import androidx.compose.runtime.Composable
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.theme.FluentTheme.aliasTokens
import com.microsoft.fluentui.theme.FluentTheme.themeMode
import com.microsoft.fluentui.theme.token.*
import kotlinx.parcelize.IgnoredOnParcel
import kotlinx.parcelize.Parcelize

open class CheckBoxInfo(
    val checked: Boolean = false,
) : ControlInfo

@Parcelize
open class CheckBoxTokens : IControlToken, Parcelable {

    @Composable
    open fun backgroundBrush(checkBoxInfo: CheckBoxInfo): StateBrush {
        return StateBrush(
            selected = SolidColor(
                aliasTokens.brandBackgroundColor[FluentAliasTokens.BrandBackgroundColorTokens.BrandBackground1].value(
                    themeMode = themeMode
                )
            ),
            selectedDisabled = SolidColor(
                aliasTokens.brandBackgroundColor[FluentAliasTokens.BrandBackgroundColorTokens.BrandBackgroundDisabled].value(
                    themeMode = themeMode
                )
            )
        )
    }

    @Composable
    open fun iconColor(checkBoxInfo: CheckBoxInfo): StateColor {
        return StateColor(
            selected = aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundOnColor].value(
                themeMode = themeMode
            ),
            selectedDisabled = aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundOnColor].value(
                themeMode = themeMode
            )
        )
    }

    @Composable
    open fun borderStroke(checkBoxInfo: CheckBoxInfo): StateBorderStroke {
        return StateBorderStroke(
            rest = listOf(
                BorderStroke(
                    1.5.dp,
                    aliasTokens.neutralStrokeColor[FluentAliasTokens.NeutralStrokeColorTokens.StrokeAccessible].value(
                        themeMode = themeMode
                    )
                )
            ),
            pressed = listOf(
                BorderStroke(
                    1.5.dp,
                    aliasTokens.neutralStrokeColor[FluentAliasTokens.NeutralStrokeColorTokens.StrokeAccessible].value(
                        themeMode = themeMode
                    )
                )
            ),
            focused = listOf(
                BorderStroke(
                    1.5.dp,
                    aliasTokens.neutralStrokeColor[FluentAliasTokens.NeutralStrokeColorTokens.StrokeAccessible].value(
                        themeMode = themeMode
                    )
                )
            ),
            selectedFocused = listOf(
                BorderStroke(
                    1.5.dp,
                    aliasTokens.neutralStrokeColor[FluentAliasTokens.NeutralStrokeColorTokens.StrokeAccessible].value(
                        themeMode = themeMode
                    )
                )
            ),
            disabled = listOf(
                BorderStroke(
                    1.5.dp,
                    aliasTokens.neutralStrokeColor[FluentAliasTokens.NeutralStrokeColorTokens.StrokeDisabled].value(
                        themeMode = themeMode
                    )
                )
            )
        )
    }

    @Composable
    open fun size(checkBoxInfo: CheckBoxInfo): Dp{
        return 20.dp
    }

    @Composable
    open fun iconSize(checkBoxInfo: CheckBoxInfo): Dp{
        return 12.dp
    }

    @Composable
    open fun borderRadius(checkBoxInfo: CheckBoxInfo): Dp{
        return 4.dp
    }
}
````

## File: src/main/java/com/microsoft/fluentui/theme/token/controlTokens/CircularProgressIndicatorTokens.kt
````kotlin
package com.microsoft.fluentui.theme.token.controlTokens

import android.os.Parcelable
import androidx.compose.runtime.Composable
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.*
import kotlinx.parcelize.Parcelize

enum class CircularProgressIndicatorSize {
    XXSmall,
    XSmall,
    Medium,
    Large,
    XLarge
}

open class CircularProgressIndicatorInfo(
    val circularProgressIndicatorSize: CircularProgressIndicatorSize = CircularProgressIndicatorSize.XSmall,
    val style: FluentStyle = FluentStyle.Neutral
) : ControlInfo

@Parcelize
open class CircularProgressIndicatorTokens : IControlToken, Parcelable {

    @Composable
    open fun size(circularProgressIndicatorInfo: CircularProgressIndicatorInfo): Dp {
        return when (circularProgressIndicatorInfo.circularProgressIndicatorSize) {
            CircularProgressIndicatorSize.XXSmall -> FluentGlobalTokens.IconSizeTokens.IconSize120.value
            CircularProgressIndicatorSize.XSmall -> FluentGlobalTokens.IconSizeTokens.IconSize160.value
            CircularProgressIndicatorSize.Medium -> FluentGlobalTokens.IconSizeTokens.IconSize240.value
            CircularProgressIndicatorSize.Large -> 32.dp
            CircularProgressIndicatorSize.XLarge -> FluentGlobalTokens.IconSizeTokens.IconSize400.value
        }
    }

    @Composable
    open fun strokeWidth(circularProgressIndicatorInfo: CircularProgressIndicatorInfo): Dp {
        return when (circularProgressIndicatorInfo.circularProgressIndicatorSize) {
            CircularProgressIndicatorSize.XXSmall -> FluentGlobalTokens.StrokeWidthTokens.StrokeWidth10
                .value
            CircularProgressIndicatorSize.XSmall -> FluentGlobalTokens.StrokeWidthTokens.StrokeWidth10
                .value
            CircularProgressIndicatorSize.Medium -> FluentGlobalTokens.StrokeWidthTokens.StrokeWidth20
                .value
            CircularProgressIndicatorSize.Large -> FluentGlobalTokens.StrokeWidthTokens.StrokeWidth30.value
            CircularProgressIndicatorSize.XLarge -> FluentGlobalTokens.StrokeWidthTokens.StrokeWidth40
                .value
        }
    }

    @Composable
    open fun brush(circularProgressIndicatorInfo: CircularProgressIndicatorInfo): Brush {
        return SolidColor(
            if (circularProgressIndicatorInfo.style == FluentStyle.Neutral) {
                FluentColor(
                    light = FluentGlobalTokens.NeutralColorTokens.Grey56.value,
                    dark = FluentGlobalTokens.NeutralColorTokens.Grey72.value
                ).value(
                    themeMode = FluentTheme.themeMode
                )
            } else {
                FluentTheme.aliasTokens.brandBackgroundColor[FluentAliasTokens.BrandBackgroundColorTokens.BrandBackground1].value(
                    themeMode = FluentTheme.themeMode
                )
            }
        )
    }
}
````

## File: src/main/java/com/microsoft/fluentui/theme/token/controlTokens/CitationTokens.kt
````kotlin
package com.microsoft.fluentui.theme.token.controlTokens

import android.os.Parcelable
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.runtime.Composable
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.unit.Dp
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.ControlInfo
import com.microsoft.fluentui.theme.token.FluentAliasTokens
import com.microsoft.fluentui.theme.token.FluentGlobalTokens
import com.microsoft.fluentui.theme.token.IControlToken
import kotlinx.parcelize.Parcelize

open class CitationInfo : ControlInfo

@Parcelize
open class CitationTokens : IControlToken, Parcelable {

    @Composable
    open fun backgroundBrush(citationInfo: CitationInfo): Brush {
        return SolidColor(
            FluentTheme.aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background1].value(
                themeMode = FluentTheme.themeMode
            )
        )
    }

    @Composable
    open fun cornerRadius(citationInfo: CitationInfo): Dp {
        return FluentGlobalTokens.CornerRadiusTokens.CornerRadius40.value
    }

    @Composable
    open fun borderBrush(citationInfo: CitationInfo): Brush {
        return SolidColor(
            FluentTheme.aliasTokens.neutralStrokeColor[FluentAliasTokens.NeutralStrokeColorTokens.Stroke2].value(
                themeMode = FluentTheme.themeMode
            )
        )
    }

    @Composable
    open fun borderStrokeWidth(citationInfo: CitationInfo): Dp {
        return FluentGlobalTokens.StrokeWidthTokens.StrokeWidth10.value
    }

    @Composable
    open fun textColor(citationInfo: CitationInfo): Color {
        return FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground2].value(
            themeMode = FluentTheme.themeMode
        )
    }

    @Composable
    open fun textTypography(citationInfo: CitationInfo): TextStyle {
        return FluentTheme.aliasTokens.typography[FluentAliasTokens.TypographyTokens.Caption2]
    }

    @Composable
    open fun textPadding(citationInfo: CitationInfo): PaddingValues {
        return PaddingValues(
            horizontal = FluentGlobalTokens.SizeTokens.Size40.value,
            vertical = FluentGlobalTokens.SizeTokens.Size20.value
        )
    }
}
````

## File: src/main/java/com/microsoft/fluentui/theme/token/controlTokens/ContextualCommandBarTokens.kt
````kotlin
package com.microsoft.fluentui.theme.token.controlTokens

import android.os.Parcelable
import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.runtime.Composable
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.theme.FluentTheme.aliasTokens
import com.microsoft.fluentui.theme.FluentTheme.themeMode
import com.microsoft.fluentui.theme.ThemeMode
import com.microsoft.fluentui.theme.token.*
import kotlinx.parcelize.Parcelize

open class ContextualCommandBarInfo : ControlInfo

@Parcelize
open class ContextualCommandBarTokens : IControlToken, Parcelable {

    @Composable
    open fun actionButtonBackgroundBrush(contextualCommandBarInfo: ContextualCommandBarInfo): Brush {
        return SolidColor(
            aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background2].value(
                themeMode = themeMode
            )
        )
    }

    @Composable
    open fun actionButtonIconColor(contextualCommandBarInfo: ContextualCommandBarInfo): Color {
        return aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value(
            themeMode = themeMode
        )
    }

    @Composable
    open fun actionButtonIconPadding(contextualCommandBarInfo: ContextualCommandBarInfo): PaddingValues {
        return PaddingValues(
            horizontal = FluentGlobalTokens.SizeTokens.Size120.value,
            vertical = FluentGlobalTokens.SizeTokens.Size160.value
        )
    }

    @Composable
    open fun actionButtonGradient(contextualCommandBarInfo: ContextualCommandBarInfo): List<Color> {
        return listOf(
            aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background2].value(
                themeMode = themeMode
            ).copy(alpha = 0.0F),
            aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background2].value(
                themeMode = themeMode
            ).copy(alpha = 1.0F)
        )
    }

    open fun actionButtonGradientWidth(contextualCommandBarInfo: ContextualCommandBarInfo): Dp {
        return 16.dp
    }

    @Composable
    open fun contextualCommandBarBackgroundBrush(contextualCommandBarInfo: ContextualCommandBarInfo): Brush {
        return SolidColor(
            aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background2].value(
                themeMode = themeMode
            )
        )
    }

    @Composable
    open fun itemBorderRadius(contextualCommandBarInfo: ContextualCommandBarInfo): Dp {
        return FluentGlobalTokens.CornerRadiusTokens.CornerRadiusNone.value
    }

    @Composable
    open fun groupBorderRadius(contextualCommandBarInfo: ContextualCommandBarInfo): Dp {
        return FluentGlobalTokens.CornerRadiusTokens.CornerRadius120.value
    }

    @Composable
    open fun buttonSpacing(contextualCommandBarInfo: ContextualCommandBarInfo): Dp {
        return FluentGlobalTokens.SizeTokens.Size20.value
    }

    @Composable
    open fun buttonPadding(contextualCommandBarInfo: ContextualCommandBarInfo): Dp {
        return 8.dp
    }

    @Composable
    open fun buttonMinWidth(contextualCommandBarInfo: ContextualCommandBarInfo): Dp {
        return 44.dp
    }

    @Composable
    open fun groupSpacing(contextualCommandBarInfo: ContextualCommandBarInfo): Dp {
        return FluentGlobalTokens.SizeTokens.Size160.value
    }

    @Composable
    open fun iconSize(contextualCommandBarInfo: ContextualCommandBarInfo): Dp {
        return FluentGlobalTokens.IconSizeTokens.IconSize240.value
    }

    @Composable
    open fun iconVerticalPadding(contextualCommandBarInfo: ContextualCommandBarInfo): Dp {
        return FluentGlobalTokens.SizeTokens.Size80.value
    }

    @Composable
    open fun typography(contextualCommandBarInfo: ContextualCommandBarInfo): TextStyle {
        return aliasTokens.typography[FluentAliasTokens.TypographyTokens.Body2Strong]
    }

    @Composable
    open fun itemIconHorizontalPadding(contextualCommandBarInfo: ContextualCommandBarInfo): Dp {
        return 10.dp
    }

    @Composable
    open fun groupIconHorizontalPadding(contextualCommandBarInfo: ContextualCommandBarInfo): Dp {
        return 12.dp
    }

    @Composable
    open fun buttonBackgroundBrush(contextualCommandBarInfo: ContextualCommandBarInfo): StateBrush {
        return StateBrush(
            rest = SolidColor(
                aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background5].value(
                    themeMode = themeMode
                )
            ),
            pressed = SolidColor(
                aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background5Pressed].value(
                    themeMode = themeMode
                )
            ),
            focused = SolidColor(
                aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background5].value(
                    themeMode = themeMode
                )
            ),
            selected = SolidColor(
                FluentColor(
                    light = aliasTokens.brandBackgroundColor[FluentAliasTokens.BrandBackgroundColorTokens.BrandBackgroundTint].value(
                        themeMode = ThemeMode.Light
                    ),
                    dark = aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background5Selected].value(
                        themeMode = ThemeMode.Dark
                    )
                ).value(themeMode = themeMode)
            ),
            selectedFocused = SolidColor(
                FluentColor(
                    light = aliasTokens.brandBackgroundColor[FluentAliasTokens.BrandBackgroundColorTokens.BrandBackgroundTint].value(
                        themeMode = ThemeMode.Light
                    ),
                    dark = aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background5Selected].value(
                        themeMode = ThemeMode.Dark
                    )
                ).value(themeMode = themeMode)
            ),
            disabled = SolidColor(
                aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background5].value(
                    themeMode = themeMode
                )
            )
        )
    }

    @Composable
    open fun iconColor(contextualCommandBarInfo: ContextualCommandBarInfo): StateColor {
        return StateColor(
            rest = aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value(
                themeMode = themeMode
            ),
            pressed = aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value(
                themeMode = themeMode
            ),
            focused = aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value(
                themeMode = themeMode
            ),
            selected = FluentColor(
                light = aliasTokens.brandForegroundColor[FluentAliasTokens.BrandForegroundColorTokens.BrandForegroundTint].value(
                    themeMode = ThemeMode.Light
                ),
                dark = aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value(
                    themeMode = ThemeMode.Dark
                )
            ).value(
                themeMode = themeMode
            ),
            selectedFocused = FluentColor(
                light = aliasTokens.brandForegroundColor[FluentAliasTokens.BrandForegroundColorTokens.BrandForegroundTint].value(
                    themeMode = ThemeMode.Light
                ),
                dark = aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value(
                    themeMode = ThemeMode.Dark
                )
            ).value(
                themeMode = themeMode
            ),
            disabled = aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundDisable1].value(
                themeMode = themeMode
            )
        )
    }

    @Composable
    open fun focusStroke(contextualCommandBarInfo: ContextualCommandBarInfo): List<BorderStroke> {
        return listOf(
            BorderStroke(
                2.dp,
                aliasTokens.neutralStrokeColor[FluentAliasTokens.NeutralStrokeColorTokens.StrokeFocus2].value(
                    themeMode
                )
            ),
            BorderStroke(
                3.dp,
                aliasTokens.neutralStrokeColor[FluentAliasTokens.NeutralStrokeColorTokens.StrokeFocus1].value(
                    themeMode
                )
            )
        )
    }
}
````

## File: src/main/java/com/microsoft/fluentui/theme/token/controlTokens/DialogTokens.kt
````kotlin
package com.microsoft.fluentui.theme.token.controlTokens

import android.os.Parcelable
import androidx.compose.runtime.Composable
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.unit.Dp
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.ControlInfo
import com.microsoft.fluentui.theme.token.FluentAliasTokens
import com.microsoft.fluentui.theme.token.FluentGlobalTokens
import com.microsoft.fluentui.theme.token.IControlToken
import kotlinx.parcelize.Parcelize

open class DialogInfo : ControlInfo

@Parcelize
open class DialogTokens : IControlToken, Parcelable {
    @Composable
    open fun backgroundBrush(dialogInfo: DialogInfo): Brush {
        return SolidColor(
            FluentTheme.aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background2].value(
                themeMode = FluentTheme.themeMode
            )
        )
    }

    @Composable
    open fun cornerRadius(dialogInfo: DialogInfo): Dp {
        return FluentGlobalTokens.CornerRadiusTokens.CornerRadius120.value
    }

    @Composable
    open fun elevation(dialogInfo: DialogInfo): Dp {
        return FluentGlobalTokens.ShadowTokens.Shadow04.value
    }

    @Composable
    open fun borderBrush(dialogInfo: DialogInfo): Brush {
        return SolidColor(
            FluentTheme.aliasTokens.neutralStrokeColor[FluentAliasTokens.NeutralStrokeColorTokens.Stroke1].value(
                themeMode = FluentTheme.themeMode
            )
        )
    }

    @Composable
    open fun borderStrokeWidth(dialogInfo: DialogInfo): Dp {
        return FluentGlobalTokens.StrokeWidthTokens.StrokeWidth05.value
    }
}
````

## File: src/main/java/com/microsoft/fluentui/theme/token/controlTokens/DividerTokens.kt
````kotlin
package com.microsoft.fluentui.theme.token.controlTokens

import android.os.Parcelable
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.runtime.Composable
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.ControlInfo
import com.microsoft.fluentui.theme.token.FluentAliasTokens
import com.microsoft.fluentui.theme.token.IControlToken
import kotlinx.parcelize.Parcelize

open class DividerInfo : ControlInfo

@Parcelize
open class DividerTokens : IControlToken, Parcelable {
    @Composable
    open fun backgroundBrush(dividerInfo: DividerInfo): Brush {
        return SolidColor(
            FluentTheme.aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background1].value(
                FluentTheme.themeMode
            )
        )
    }

    @Composable
    open fun dividerBrush(dividerInfo: DividerInfo): Brush {
        return SolidColor(
            FluentTheme.aliasTokens.neutralStrokeColor[FluentAliasTokens.NeutralStrokeColorTokens.Stroke2].value(
                themeMode = FluentTheme.themeMode
            )
        )
    }

    @Composable
    open fun verticalPadding(dividerInfo: DividerInfo): PaddingValues {
        return PaddingValues(vertical = 8.dp)
    }

    @Composable
    open fun startIndent(dividerInfo: DividerInfo): Dp = 0.dp
}
````

## File: src/main/java/com/microsoft/fluentui/theme/token/controlTokens/DrawerTokens.kt
````kotlin
package com.microsoft.fluentui.theme.token.controlTokens

import android.os.Parcelable
import androidx.compose.runtime.Composable
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.unit.Dp
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.ControlInfo
import com.microsoft.fluentui.theme.token.FluentAliasTokens
import com.microsoft.fluentui.theme.token.FluentGlobalTokens
import com.microsoft.fluentui.theme.token.IControlToken
import kotlinx.parcelize.Parcelize

/**
 * Possible values of [BehaviorType].
 */
enum class BehaviorType {
    TOP, BOTTOM, LEFT_SLIDE_OVER, RIGHT_SLIDE_OVER, BOTTOM_SLIDE_OVER
}

open class DrawerInfo(val type: BehaviorType = BehaviorType.LEFT_SLIDE_OVER) : ControlInfo

data class DrawerAccessibilityAnnouncement(
    var opened: String = "Drawer Opened",
    var closed: String = "Drawer Closed",
)

@Parcelize
open class DrawerTokens : IControlToken, Parcelable {
    @Composable
    open fun backgroundBrush(drawerInfo: DrawerInfo): Brush =
        SolidColor(
            FluentTheme.aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background2].value(
                themeMode = FluentTheme.themeMode
            )
        )

    @Composable
    open fun handleColor(drawerInfo: DrawerInfo): Color =
        FluentTheme.aliasTokens.neutralStrokeColor[FluentAliasTokens.NeutralStrokeColorTokens.Stroke1].value(
            themeMode = FluentTheme.themeMode
        )

    @Composable
    open fun elevation(drawerInfo: DrawerInfo): Dp = FluentGlobalTokens.ShadowTokens.Shadow02.value

    @Composable
    open fun borderRadius(drawerInfo: DrawerInfo): Dp {
        return when (drawerInfo.type) {
            BehaviorType.TOP, BehaviorType.BOTTOM, BehaviorType.BOTTOM_SLIDE_OVER -> FluentGlobalTokens.CornerRadiusTokens.CornerRadius120
                .value
            BehaviorType.LEFT_SLIDE_OVER, BehaviorType.RIGHT_SLIDE_OVER -> FluentGlobalTokens.CornerRadiusTokens.CornerRadiusNone
                .value
        }
    }

    @Composable
    open fun scrimColor(drawerInfo: DrawerInfo): Color =
        FluentGlobalTokens.NeutralColorTokens.Black.value

    @Composable
    open fun scrimOpacity(drawerInfo: DrawerInfo): Float = 0.32F
}
````

## File: src/main/java/com/microsoft/fluentui/theme/token/controlTokens/FABTokens.kt
````kotlin
//
//  Copyright (c) Microsoft Corporation. All rights reserved.
//  Licensed under the MIT License.
//

package com.microsoft.fluentui.theme.token.controlTokens

import android.os.Parcelable
import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.runtime.Composable
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.theme.FluentTheme.aliasTokens
import com.microsoft.fluentui.theme.FluentTheme.themeMode
import com.microsoft.fluentui.theme.token.*
import kotlinx.parcelize.Parcelize

enum class FABState {
    Expanded,
    Collapsed
}

enum class FABSize {
    Small,
    Large
}

open class FABInfo(
    val state: FABState = FABState.Expanded,
    val size: FABSize = FABSize.Large
) : ControlInfo

@Parcelize
open class FABTokens : IControlToken, Parcelable {

    @Composable
    open fun iconColor(fabInfo: FABInfo): StateColor {
        return StateColor(
            rest = aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundOnColor].value(
                themeMode = themeMode
            ),
            pressed = aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundOnColor].value(
                themeMode = themeMode
            ),
            focused = aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundOnColor].value(
                themeMode = themeMode
            ),
            disabled = aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundDisable1].value(
                themeMode = themeMode
            )
        )
    }

    @Composable
    open fun textColor(fabInfo: FABInfo): StateColor {
        return StateColor(
            rest = aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundOnColor].value(
                themeMode = themeMode
            ),
            pressed = aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundOnColor].value(
                themeMode = themeMode
            ),
            focused = aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundOnColor].value(
                themeMode = themeMode
            ),
            disabled = aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundDisable1].value(
                themeMode = themeMode
            )
        )
    }

    @Composable
    open fun backgroundBrush(fabInfo: FABInfo): StateBrush {
        return StateBrush(
            rest = SolidColor(
                aliasTokens.brandBackgroundColor[FluentAliasTokens.BrandBackgroundColorTokens.BrandBackground1].value(
                    themeMode = themeMode
                )
            ),
            pressed = SolidColor(
                aliasTokens.brandBackgroundColor[FluentAliasTokens.BrandBackgroundColorTokens.BrandBackground1Pressed].value(
                    themeMode = themeMode
                )
            ),
            selected = SolidColor(
                aliasTokens.brandBackgroundColor[FluentAliasTokens.BrandBackgroundColorTokens.BrandBackground1Selected].value(
                    themeMode = themeMode
                )
            ),
            focused = SolidColor(
                aliasTokens.brandBackgroundColor[FluentAliasTokens.BrandBackgroundColorTokens.BrandBackground1].value(
                    themeMode = themeMode
                )
            ),
            disabled = SolidColor(
                aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background5].value(
                    themeMode = themeMode
                )
            )
        )
    }

    @Composable
    open fun borderStroke(fabInfo: FABInfo): StateBorderStroke {
        return StateBorderStroke(
            focused = listOf(
                BorderStroke(
                    FluentGlobalTokens.StrokeWidthTokens.StrokeWidth20.value,
                    aliasTokens.neutralStrokeColor[FluentAliasTokens.NeutralStrokeColorTokens.StrokeFocus2].value(
                        themeMode = themeMode
                    )
                ),
                BorderStroke(
                    FluentGlobalTokens.StrokeWidthTokens.StrokeWidth15.value,
                    aliasTokens.neutralStrokeColor[FluentAliasTokens.NeutralStrokeColorTokens.StrokeFocus1].value(
                        themeMode = themeMode
                    )
                )
            )
        )
    }

    @Composable
    open fun iconSize(fabInfo: FABInfo): Dp {
        return when (fabInfo.size) {
            FABSize.Small -> FluentGlobalTokens.IconSizeTokens.IconSize200.value
            FABSize.Large -> FluentGlobalTokens.IconSizeTokens.IconSize240.value
        }
    }

    @Composable
    open fun typography(fabInfo: FABInfo): TextStyle {
        return when (fabInfo.size) {
            FABSize.Small -> aliasTokens.typography[FluentAliasTokens.TypographyTokens.Body2Strong]
            FABSize.Large -> aliasTokens.typography[FluentAliasTokens.TypographyTokens.Body1Strong]
        }
    }

    @Composable
    open fun iconPadding(fabInfo: FABInfo): PaddingValues {
        return when (fabInfo.size) {
            FABSize.Small ->
                PaddingValues(
                    horizontal = FluentGlobalTokens.SizeTokens.Size120.value,
                    vertical = FluentGlobalTokens.SizeTokens.Size120.value
                )
            FABSize.Large ->
                PaddingValues(
                    horizontal = FluentGlobalTokens.SizeTokens.Size160.value,
                    vertical = FluentGlobalTokens.SizeTokens.Size160.value,
                )
        }
    }

    @Composable
    open fun textPadding(fabInfo: FABInfo): PaddingValues {
        return when (fabInfo.size) {
            FABSize.Small ->
                PaddingValues(
                    top = FluentGlobalTokens.SizeTokens.Size120.value,
                    bottom = FluentGlobalTokens.SizeTokens.Size120.value,
                    start = FluentGlobalTokens.SizeTokens.Size120.value,
                    end = FluentGlobalTokens.SizeTokens.Size160.value
                )
            FABSize.Large ->
                PaddingValues(
                    top = FluentGlobalTokens.SizeTokens.Size160.value,
                    bottom = FluentGlobalTokens.SizeTokens.Size160.value,
                    start = FluentGlobalTokens.SizeTokens.Size160.value,
                    end = FluentGlobalTokens.SizeTokens.Size200.value
                )
        }
    }

    @Composable
    open fun spacing(fabInfo: FABInfo): Dp {
        return when (fabInfo.size) {
            FABSize.Small -> FluentGlobalTokens.SizeTokens.Size80.value
            FABSize.Large -> FluentGlobalTokens.SizeTokens.Size80.value
        }
    }

    @Composable
    open fun fixedHeight(fabInfo: FABInfo): Dp {
        return when (fabInfo.size) {
            FABSize.Small -> 44.dp
            FABSize.Large -> 56.dp
        }
    }

    @Composable
    open fun minWidth(fabInfo: FABInfo): Dp {
        return when (fabInfo.size) {
            FABSize.Small -> 44.dp
            FABSize.Large -> 56.dp
        }
    }

    @Composable
    open fun elevation(fabInfo: FABInfo): StateElevation {
        return StateElevation(
            rest = FluentGlobalTokens.ShadowTokens.Shadow08.value,
            pressed = FluentGlobalTokens.ShadowTokens.Shadow02.value,
            selected = FluentGlobalTokens.ShadowTokens.Shadow02.value,
            focused = FluentGlobalTokens.ShadowTokens.Shadow02.value,
            disabled = FluentGlobalTokens.ShadowTokens.Shadow02.value
        )
    }
}
````

## File: src/main/java/com/microsoft/fluentui/theme/token/controlTokens/FileCardTokens.kt
````kotlin
package com.microsoft.fluentui.theme.token.controlTokens

import android.os.Parcelable
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.runtime.Composable
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.FluentAliasTokens
import com.microsoft.fluentui.theme.token.FluentGlobalTokens
import com.microsoft.fluentui.theme.token.IControlToken
import kotlinx.parcelize.Parcelize

open class FileCardInfo(
    val isPreviewAvailable: Boolean = true,
    val cardType: CardType = CardType.Elevated
)

@Parcelize
open class FileCardTokens : IControlToken, Parcelable {

    @Composable
    open fun backgroundBrush(fileCardInfo: FileCardInfo): Brush {
        return SolidColor(
            FluentTheme.aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background2].value(
                themeMode = FluentTheme.themeMode
            )
        )
    }

    @Composable
    open fun cornerRadius(fileCardInfo: FileCardInfo): Dp {
        return FluentGlobalTokens.CornerRadiusTokens.CornerRadius120.value
    }

    @Composable
    open fun elevation(fileCardInfo: FileCardInfo): Dp {
        return when (fileCardInfo.cardType) {
            CardType.Elevated -> FluentGlobalTokens.ShadowTokens.Shadow02.value
            CardType.Outlined -> 0.dp
        }
    }

    @Composable
    open fun borderColor(fileCardInfo: FileCardInfo): Brush {
        return SolidColor(
            FluentTheme.aliasTokens.neutralStrokeColor[FluentAliasTokens.NeutralStrokeColorTokens.Stroke1].value(
                themeMode = FluentTheme.themeMode
            )
        )
    }

    @Composable
    open fun borderStrokeWidth(fileCardInfo: FileCardInfo): Dp {
        return FluentGlobalTokens.StrokeWidthTokens.StrokeWidth05.value
    }

    @Composable
    open fun iconColor(fileCardInfo: FileCardInfo): Color {
        return FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground2].value(
            themeMode = FluentTheme.themeMode
        )
    }

    @Composable
    open fun textColor(fileCardInfo: FileCardInfo): Color {
        return FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value(
            themeMode = FluentTheme.themeMode
        )
    }

    @Composable
    open fun subTextColor(fileCardInfo: FileCardInfo): Color {
        return FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground2].value(
            themeMode = FluentTheme.themeMode
        )
    }

    @Composable
    open fun actionOverFlowBackgroundColor(fileCardInfo: FileCardInfo): Brush {
        return SolidColor(
            FluentTheme.aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background3].value(
                themeMode = FluentTheme.themeMode
            )
        )

    }

    @Composable
    open fun actionOverFlowIconColor(fileCardInfo: FileCardInfo): Color {
        return FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground2].value(
            themeMode = FluentTheme.themeMode
        )
    }

    @Composable
    open fun iconSize(fileCardInfo: FileCardInfo): Dp {
        return FluentGlobalTokens.IconSizeTokens.IconSize240.value
    }

    @Composable
    open fun textTypography(fileCardInfo: FileCardInfo): TextStyle {
        return FluentTheme.aliasTokens.typography[FluentAliasTokens.TypographyTokens.Body2]
    }

    @Composable
    open fun subTextTypography(fileCardInfo: FileCardInfo): TextStyle {
        return FluentTheme.aliasTokens.typography[FluentAliasTokens.TypographyTokens.Caption1]
    }

    @Composable
    open fun actionOverflowCornerRadius(fileCardInfo: FileCardInfo): Dp {
        return FluentGlobalTokens.CornerRadiusTokens.CornerRadius40.value
    }

    @Composable
    open fun actionOverflowIconSize(fileCardInfo: FileCardInfo): Dp {
        return FluentGlobalTokens.IconSizeTokens.IconSize240.value
    }

    @Composable
    open fun iconTextSpacing(fileCardInfo: FileCardInfo): Dp {
        return FluentGlobalTokens.SizeTokens.Size120.value
    }

    @Composable
    open fun textSubTextSpacing(fileCardInfo: FileCardInfo): Dp {
        return 0.dp
    }

    @Composable
    open fun actionOverflowPadding(fileCardInfo: FileCardInfo): PaddingValues {
        return PaddingValues(
            top = FluentGlobalTokens.SizeTokens.Size80.value,
            end = FluentGlobalTokens.SizeTokens.Size80.value
        )
    }

    @Composable
    open fun textContainerPadding(fileCardInfo: FileCardInfo): PaddingValues {
        return PaddingValues(all = FluentGlobalTokens.SizeTokens.Size120.value)
    }
}
````

## File: src/main/java/com/microsoft/fluentui/theme/token/controlTokens/LabelTokens.kt
````kotlin
package com.microsoft.fluentui.theme.token.controlTokens

import android.os.Parcelable
import androidx.compose.runtime.Composable
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.TextStyle
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.ControlInfo
import com.microsoft.fluentui.theme.token.FluentAliasTokens
import com.microsoft.fluentui.theme.token.FluentAliasTokens.TypographyTokens
import com.microsoft.fluentui.theme.token.IControlToken
import kotlinx.parcelize.Parcelize

enum class ColorStyle {
    Primary,
    Secondary,
    White,
    Brand,
    Error
}

open class LabelInfo(
    val labelType: TypographyTokens,
    val colorStyle: ColorStyle
) : ControlInfo

@Parcelize
open class LabelTokens : IControlToken, Parcelable {
    @Composable
    fun typography(labelInfo: LabelInfo): TextStyle {
        return when (labelInfo.labelType) {
            TypographyTokens.Display -> FluentTheme.aliasTokens.typography[TypographyTokens.Display]

            TypographyTokens.LargeTitle -> FluentTheme.aliasTokens.typography[TypographyTokens.LargeTitle]

            TypographyTokens.Title1 -> FluentTheme.aliasTokens.typography[TypographyTokens.Title1]

            TypographyTokens.Title2 -> FluentTheme.aliasTokens.typography[TypographyTokens.Title2]

            TypographyTokens.Title3 -> FluentTheme.aliasTokens.typography[TypographyTokens.Title3]

            TypographyTokens.Body1Strong -> FluentTheme.aliasTokens.typography[TypographyTokens.Body1Strong]

            TypographyTokens.Body1 -> FluentTheme.aliasTokens.typography[TypographyTokens.Body1]

            TypographyTokens.Body2Strong -> FluentTheme.aliasTokens.typography[TypographyTokens.Body2Strong]

            TypographyTokens.Body2 -> FluentTheme.aliasTokens.typography[TypographyTokens.Body2]

            TypographyTokens.Caption1Strong -> FluentTheme.aliasTokens.typography[TypographyTokens.Caption1Strong]

            TypographyTokens.Caption1 -> FluentTheme.aliasTokens.typography[TypographyTokens.Caption1]

            TypographyTokens.Caption2 -> FluentTheme.aliasTokens.typography[TypographyTokens.Caption2]

        }
    }

    @Composable
    fun textColor(labelInfo: LabelInfo): Color {
        return when (labelInfo.colorStyle) {
            ColorStyle.Primary -> FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value(
                themeMode = FluentTheme.themeMode
            )
            ColorStyle.Secondary -> FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground2].value(
                themeMode = FluentTheme.themeMode
            )
            ColorStyle.White -> FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundLightStatic].value(
                themeMode = FluentTheme.themeMode
            )
            ColorStyle.Brand -> FluentTheme.aliasTokens.brandForegroundColor[FluentAliasTokens.BrandForegroundColorTokens.BrandForeground1].value(
                themeMode = FluentTheme.themeMode
            )
            ColorStyle.Error -> FluentTheme.aliasTokens.errorAndStatusColor[FluentAliasTokens.ErrorAndStatusColorTokens.DangerForeground1].value(
                themeMode = FluentTheme.themeMode
            )
        }
    }
}
````

## File: src/main/java/com/microsoft/fluentui/theme/token/controlTokens/LinearProgressIndicatorTokens.kt
````kotlin
package com.microsoft.fluentui.theme.token.controlTokens

import android.os.Parcelable
import androidx.compose.runtime.Composable
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.unit.Dp
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.ControlInfo
import com.microsoft.fluentui.theme.token.FluentAliasTokens
import com.microsoft.fluentui.theme.token.FluentGlobalTokens
import com.microsoft.fluentui.theme.token.IControlToken
import kotlinx.parcelize.Parcelize

enum class LinearProgressIndicatorHeight {
    XXXSmall
}

open class LinearProgressIndicatorInfo(
    val linearProgressIndicatorHeight: LinearProgressIndicatorHeight = LinearProgressIndicatorHeight.XXXSmall,
) : ControlInfo

@Parcelize
open class LinearProgressIndicatorTokens : IControlToken, Parcelable {

    @Composable
    open fun strokeWidth(linearProgressIndicatorInfo: LinearProgressIndicatorInfo): Dp {
        return when (linearProgressIndicatorInfo.linearProgressIndicatorHeight) {
            LinearProgressIndicatorHeight.XXXSmall -> FluentGlobalTokens.StrokeWidthTokens.StrokeWidth20
                .value
        }
    }

    @Composable
    open fun backgroundColor(linearProgressIndicatorInfo: LinearProgressIndicatorInfo): Color {
        return FluentTheme.aliasTokens.neutralStrokeColor[FluentAliasTokens.NeutralStrokeColorTokens.Stroke1].value(
            themeMode = FluentTheme.themeMode
        )
    }

    @Composable
    open fun color(linearProgressIndicatorInfo: LinearProgressIndicatorInfo): Color {
        return FluentTheme.aliasTokens.brandBackgroundColor[FluentAliasTokens.BrandBackgroundColorTokens.BrandBackground1].value(
            themeMode = FluentTheme.themeMode
        )
    }

}
````

## File: src/main/java/com/microsoft/fluentui/theme/token/controlTokens/ListItemTokens.kt
````kotlin
package com.microsoft.fluentui.theme.token.controlTokens

import android.os.Parcelable
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.ControlInfo
import com.microsoft.fluentui.theme.token.FluentAliasTokens
import com.microsoft.fluentui.theme.token.FluentAliasTokens.BrandForegroundColorTokens.BrandForeground1
import com.microsoft.fluentui.theme.token.FluentAliasTokens.BrandForegroundColorTokens.BrandForegroundDisabled1
import com.microsoft.fluentui.theme.token.FluentAliasTokens.NeutralBackgroundColorTokens.Background1
import com.microsoft.fluentui.theme.token.FluentAliasTokens.NeutralBackgroundColorTokens.Background1Pressed
import com.microsoft.fluentui.theme.token.FluentAliasTokens.NeutralForegroundColorTokens.Foreground1
import com.microsoft.fluentui.theme.token.FluentAliasTokens.NeutralForegroundColorTokens.Foreground2
import com.microsoft.fluentui.theme.token.FluentAliasTokens.NeutralForegroundColorTokens.Foreground3
import com.microsoft.fluentui.theme.token.FluentAliasTokens.NeutralForegroundColorTokens.ForegroundDisable1
import com.microsoft.fluentui.theme.token.FluentAliasTokens.NeutralStrokeColorTokens.Stroke2
import com.microsoft.fluentui.theme.token.FluentAliasTokens.TypographyTokens.Body1Strong
import com.microsoft.fluentui.theme.token.FluentAliasTokens.TypographyTokens.Body2
import com.microsoft.fluentui.theme.token.FluentAliasTokens.TypographyTokens.Body2Strong
import com.microsoft.fluentui.theme.token.FluentAliasTokens.TypographyTokens.Caption1
import com.microsoft.fluentui.theme.token.FluentAliasTokens.TypographyTokens.Caption1Strong
import com.microsoft.fluentui.theme.token.FluentColor
import com.microsoft.fluentui.theme.token.FluentGlobalTokens
import com.microsoft.fluentui.theme.token.FluentGlobalTokens.StrokeWidthTokens.StrokeWidth15
import com.microsoft.fluentui.theme.token.IControlToken
import com.microsoft.fluentui.theme.token.StateBrush
import com.microsoft.fluentui.theme.token.StateColor
import com.microsoft.fluentui.theme.token.controlTokens.ListItemType.OneLine
import com.microsoft.fluentui.theme.token.controlTokens.ListItemType.SectionDescription
import com.microsoft.fluentui.theme.token.controlTokens.ListItemType.SectionHeader
import com.microsoft.fluentui.theme.token.controlTokens.ListItemType.ThreeLine
import com.microsoft.fluentui.theme.token.controlTokens.ListItemType.TwoLine
import com.microsoft.fluentui.theme.token.controlTokens.SectionHeaderStyle.Bold
import com.microsoft.fluentui.theme.token.controlTokens.SectionHeaderStyle.Subtle
import com.microsoft.fluentui.theme.token.controlTokens.TextPlacement.Bottom
import com.microsoft.fluentui.theme.token.controlTokens.TextPlacement.Top
import kotlinx.parcelize.Parcelize

enum class ListItemType {
    OneLine,
    TwoLine,
    ThreeLine,
    SectionHeader,
    SectionDescription
}

enum class SectionHeaderStyle {
    Bold,
    Subtle
}

enum class BorderInset {
    None,
    Medium,
    Large,
    XXLarge,
    XXXXLarge,
    XXXXXXLarge
}

enum class BorderType {
    NoBorder,
    Top,
    Bottom,
    TopBottom
}

enum class TextPlacement {
    Top,
    Bottom
}

enum class ListItemTextAlignment {
    Regular,
    Centered
}

open class ListItemInfo(
    val style: SectionHeaderStyle = Bold,
    val listItemType: ListItemType = OneLine,
    val borderInset: BorderInset = BorderInset.None,
    val placement: TextPlacement = Top,
    val horizontalSpacing: FluentGlobalTokens.SizeTokens = FluentGlobalTokens.SizeTokens.Size120,
    val verticalSpacing: FluentGlobalTokens.SizeTokens = FluentGlobalTokens.SizeTokens.Size120,
    val unreadDot: Boolean = false
) : ControlInfo

@Parcelize
open class ListItemTokens : IControlToken, Parcelable {
    @Composable
    open fun backgroundBrush(listItemInfo: ListItemInfo): StateBrush {
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
            )
        )
    }

    @Composable
    open fun borderColor(listItemInfo: ListItemInfo): StateColor {
        return StateColor(
            rest = FluentTheme.aliasTokens.neutralStrokeColor[Stroke2].value(
                themeMode = FluentTheme.themeMode
            ),
            pressed = FluentTheme.aliasTokens.neutralStrokeColor[Stroke2].value(
                themeMode = FluentTheme.themeMode
            )
        )
    }

    @Composable
    open fun iconColor(listItemInfo: ListItemInfo): StateColor {
        return StateColor(
            rest = FluentTheme.aliasTokens.neutralForegroundColor[Foreground3].value(
                themeMode = FluentTheme.themeMode
            ),
            disabled = FluentTheme.aliasTokens.neutralForegroundColor[ForegroundDisable1].value(
                themeMode = FluentTheme.themeMode
            ),
        )
    }

    @Composable
    open fun cellHeight(listItemInfo: ListItemInfo): Dp {
        return when (listItemInfo.listItemType) {
            OneLine -> 48.dp
            TwoLine -> 68.dp
            ThreeLine -> 88.dp
            SectionHeader -> 48.dp
            SectionDescription -> 64.dp
        }
    }

    @Composable
    open fun unreadDotColor(listItemInfo: ListItemInfo): Color {
        return FluentTheme.aliasTokens.brandBackgroundColor[FluentAliasTokens.BrandBackgroundColorTokens.BrandBackground1].value(
            FluentTheme.themeMode
        )
    }

    @Composable
    open fun padding(listItemInfo: ListItemInfo): PaddingValues {
        return PaddingValues(
            start = listItemInfo.horizontalSpacing.value,
            end = listItemInfo.horizontalSpacing.value,
            top = listItemInfo.verticalSpacing.value,
            bottom = listItemInfo.verticalSpacing.value
        )
    }

    @Composable
    open fun borderSize(listItemInfo: ListItemInfo): Dp {
        return StrokeWidth15.value
    }

    @Composable
    open fun chevronTint(listItemInfo: ListItemInfo): Color {
        return FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground3].value(
            FluentTheme.themeMode
        )
    }

    @Composable
    open fun borderInset(listItemInfo: ListItemInfo): Dp {
        return when (listItemInfo.borderInset) {
            BorderInset.None -> 0.dp
            BorderInset.Medium -> 16.dp
            BorderInset.Large -> 56.dp
            BorderInset.XXLarge -> 68.dp
            BorderInset.XXXXLarge -> 72.dp
            BorderInset.XXXXXXLarge -> 108.dp
        }
    }

    @Composable
    open fun descriptionPlacement(listItemInfo: ListItemInfo): Alignment.Vertical {
        return when (listItemInfo.placement) {
            Top -> Alignment.Top
            Bottom -> Alignment.Bottom
        }
    }

    @Composable
    open fun primaryTextColor(listItemInfo: ListItemInfo): StateColor {
        return StateColor(
            rest = FluentTheme.aliasTokens.neutralForegroundColor[Foreground1].value(
                themeMode = FluentTheme.themeMode
            ),
            disabled = FluentTheme.aliasTokens.neutralForegroundColor[ForegroundDisable1].value(
                themeMode = FluentTheme.themeMode
            ),
            pressed = FluentTheme.aliasTokens.neutralForegroundColor[Foreground1].value(
                themeMode = FluentTheme.themeMode
            ),
            focused = FluentTheme.aliasTokens.neutralForegroundColor[Foreground1].value(
                themeMode = FluentTheme.themeMode
            )
        )
    }

    @Composable
    open fun subTextColor(listItemInfo: ListItemInfo): StateColor {
        return StateColor(
            rest = FluentTheme.aliasTokens.neutralForegroundColor[Foreground2].value(
                themeMode = FluentTheme.themeMode
            ),
            disabled = FluentTheme.aliasTokens.neutralForegroundColor[ForegroundDisable1].value(
                themeMode = FluentTheme.themeMode
            ),
            pressed = FluentTheme.aliasTokens.neutralForegroundColor[Foreground2].value(
                themeMode = FluentTheme.themeMode
            ),
            focused = FluentTheme.aliasTokens.neutralForegroundColor[Foreground2].value(
                themeMode = FluentTheme.themeMode
            )
        )
    }

    @Composable
    open fun secondarySubTextColor(listItemInfo: ListItemInfo): StateColor {
        return StateColor(
            rest = FluentTheme.aliasTokens.neutralForegroundColor[Foreground2].value(
                themeMode = FluentTheme.themeMode
            ),
            disabled = FluentTheme.aliasTokens.neutralForegroundColor[ForegroundDisable1].value(
                themeMode = FluentTheme.themeMode
            ),
            pressed = FluentTheme.aliasTokens.neutralForegroundColor[Foreground2].value(
                themeMode = FluentTheme.themeMode
            ),
            focused = FluentTheme.aliasTokens.neutralForegroundColor[Foreground2].value(
                themeMode = FluentTheme.themeMode
            )
        )
    }

    @Composable
    open fun actionTextColor(listItemInfo: ListItemInfo): StateColor {
        return StateColor(
            rest = FluentTheme.aliasTokens.brandForegroundColor[BrandForeground1].value(
                themeMode = FluentTheme.themeMode
            ),
            disabled = FluentTheme.aliasTokens.brandForegroundColor[BrandForegroundDisabled1].value(
                themeMode = FluentTheme.themeMode
            ),
            pressed = FluentTheme.aliasTokens.brandForegroundColor[BrandForeground1].value(
                themeMode = FluentTheme.themeMode
            ),
            focused = FluentTheme.aliasTokens.brandForegroundColor[BrandForeground1].value(
                themeMode = FluentTheme.themeMode
            )
        )
    }

    @Composable
    open fun descriptionTextColor(listItemInfo: ListItemInfo): StateColor {
        return StateColor(
            rest = FluentTheme.aliasTokens.neutralForegroundColor[Foreground3].value(
                themeMode = FluentTheme.themeMode
            ),
            disabled = FluentTheme.aliasTokens.neutralForegroundColor[ForegroundDisable1].value(
                themeMode = FluentTheme.themeMode
            ),
            pressed = FluentTheme.aliasTokens.neutralForegroundColor[Foreground3].value(
                themeMode = FluentTheme.themeMode
            ),
            focused = FluentTheme.aliasTokens.neutralForegroundColor[Foreground3].value(
                themeMode = FluentTheme.themeMode
            )
        )
    }

    @Composable
    open fun rippleColor(listItemInfo: ListItemInfo): Color {
        return FluentColor(
            light = FluentGlobalTokens.NeutralColorTokens.Black.value,
            dark = FluentGlobalTokens.NeutralColorTokens.White.value
        ).value(
            FluentTheme.themeMode
        )
    }

    @Composable
    open fun primaryTextTypography(listItemInfo: ListItemInfo): TextStyle {
        return if (listItemInfo.unreadDot) {
            FluentTheme.aliasTokens.typography[FluentAliasTokens.TypographyTokens.Body1Strong]
        } else {
            FluentTheme.aliasTokens.typography[FluentAliasTokens.TypographyTokens.Body1]
        }
    }

    @Composable
    open fun subTextTypography(listItemInfo: ListItemInfo): TextStyle {
        return FluentTheme.aliasTokens.typography[Body2]
    }

    @Composable
    open fun secondarySubTextTypography(listItemInfo: ListItemInfo): TextStyle {
        return FluentTheme.aliasTokens.typography[Caption1]
    }

    @Composable
    open fun actionTextTypography(listItemInfo: ListItemInfo): TextStyle {
        return FluentTheme.aliasTokens.typography[Caption1Strong]
    }

    @Composable
    open fun descriptionTextTypography(listItemInfo: ListItemInfo): TextStyle {
        return FluentTheme.aliasTokens.typography[Caption1]
    }

    @Composable
    open fun sectionHeaderPrimaryTextTypography(listItemInfo: ListItemInfo): TextStyle {
        return when (listItemInfo.style) {
            Bold -> {
                FluentTheme.aliasTokens.typography[Body1Strong]
            }

            Subtle -> {
                FluentTheme.aliasTokens.typography[Caption1]
            }
        }
    }

    @Composable
    open fun sectionHeaderActionTextTypography(listItemInfo: ListItemInfo): TextStyle {
        return when (listItemInfo.style) {
            Bold -> {
                FluentTheme.aliasTokens.typography[Body2Strong]
            }

            Subtle -> {
                FluentTheme.aliasTokens.typography[Caption1Strong]
            }
        }
    }

    @Composable
    open fun textAccessoryContentTextSpacing(listItemInfo: ListItemInfo): Dp {
        return FluentGlobalTokens.SizeTokens.Size40.value
    }

    @Composable
    open fun textOverflow(listItemInfo: ListItemInfo): TextOverflow {
        return TextOverflow.Ellipsis
    }
}
````

## File: src/main/java/com/microsoft/fluentui/theme/token/controlTokens/MenuTokens.kt
````kotlin
package com.microsoft.fluentui.theme.token.controlTokens

import android.os.Parcelable
import androidx.compose.runtime.Composable
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.ControlInfo
import com.microsoft.fluentui.theme.token.FluentAliasTokens
import com.microsoft.fluentui.theme.token.FluentGlobalTokens
import com.microsoft.fluentui.theme.token.IControlToken
import kotlinx.parcelize.Parcelize

open class MenuInfo : ControlInfo

@Parcelize
open class MenuTokens : IControlToken, Parcelable {

    @Composable
    open fun backgroundBrush(menuInfo: MenuInfo): Brush =
        SolidColor(
            FluentTheme.aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background2].value(
                themeMode = FluentTheme.themeMode
            )
        )

    @Composable
    open fun cornerRadius(menuInfo: MenuInfo): Dp =
        FluentGlobalTokens.CornerRadiusTokens.CornerRadius80.value

    open fun elevation(menuInfo: MenuInfo): Dp =
        FluentGlobalTokens.ShadowTokens.Shadow08.value

    open fun bottomMargin(menuInfo: MenuInfo): Dp =
        FluentGlobalTokens.SizeTokens.Size160.value

    open fun sideMargin(menuInfo: MenuInfo): Dp =
        FluentGlobalTokens.SizeTokens.Size160.value
}
````

## File: src/main/java/com/microsoft/fluentui/theme/token/controlTokens/PeoplePickerTokens.kt
````kotlin
package com.microsoft.fluentui.theme.token.controlTokens

import androidx.compose.runtime.Composable
import androidx.compose.ui.unit.Dp
import com.microsoft.fluentui.theme.token.FluentGlobalTokens
import kotlinx.parcelize.Parcelize

open class PeoplePickerInfo() : TextFieldInfo()

@Parcelize
open class PeoplePickerTokens : TextFieldTokens() {

    @Composable
    open fun chipHorizontalSpacing(peoplePickerInfo: PeoplePickerInfo): Dp {
        return FluentGlobalTokens.SizeTokens.Size80.value
    }

    @Composable
    open fun chipVerticalSpacing(peoplePickerInfo: PeoplePickerInfo): Dp {
        return FluentGlobalTokens.SizeTokens.Size40.value
    }
}
````

## File: src/main/java/com/microsoft/fluentui/theme/token/controlTokens/PersonaChipTokens.kt
````kotlin
package com.microsoft.fluentui.theme.token.controlTokens

import android.os.Parcelable
import androidx.compose.runtime.Composable
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.unit.Dp
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.*
import com.microsoft.fluentui.theme.token.FluentAliasTokens.BrandBackgroundColorTokens.BrandBackground1
import com.microsoft.fluentui.theme.token.FluentAliasTokens.BrandBackgroundColorTokens.BrandBackgroundTint
import com.microsoft.fluentui.theme.token.FluentAliasTokens.BrandForegroundColorTokens.BrandForegroundTint
import com.microsoft.fluentui.theme.token.FluentAliasTokens.ErrorAndStatusColorTokens.*
import com.microsoft.fluentui.theme.token.FluentAliasTokens.NeutralBackgroundColorTokens.Background5
import com.microsoft.fluentui.theme.token.FluentAliasTokens.NeutralBackgroundColorTokens.Background5Selected
import com.microsoft.fluentui.theme.token.FluentAliasTokens.NeutralForegroundColorTokens.*
import com.microsoft.fluentui.theme.token.controlTokens.PersonaChipSize.Medium
import com.microsoft.fluentui.theme.token.controlTokens.PersonaChipSize.Small
import kotlinx.parcelize.Parcelize

enum class PersonaChipStyle {
    Neutral,
    Brand,
    Danger,
    SevereWarning,
    Warning,
    Success
}

enum class PersonaChipSize {
    Small,
    Medium
}

abstract class PersonaChipControlInfo : ControlInfo {
    abstract val size: PersonaChipSize
    abstract val enabled: Boolean
}

open class PersonaChipInfo(
    val style: PersonaChipStyle = PersonaChipStyle.Neutral,
    override val enabled: Boolean = true,
    override val size: PersonaChipSize = Small
) : PersonaChipControlInfo()

@Parcelize
open class PersonaChipTokens : IControlToken, Parcelable {

    @Composable
    open fun backgroundBrush(personaChipInfo: PersonaChipControlInfo): StateBrush {
        personaChipInfo as PersonaChipInfo
        when (personaChipInfo.style) {
            PersonaChipStyle.Neutral -> return StateBrush(
                rest = SolidColor(
                    FluentTheme.aliasTokens.neutralBackgroundColor[Background5].value(
                        themeMode = FluentTheme.themeMode
                    )
                ),
                selected = SolidColor(
                    FluentTheme.aliasTokens.neutralBackgroundColor[Background5Selected].value(
                        themeMode = FluentTheme.themeMode
                    )
                ),
                disabled = SolidColor(
                    FluentTheme.aliasTokens.neutralBackgroundColor[Background5].value(
                        themeMode = FluentTheme.themeMode
                    )
                )
            )
            PersonaChipStyle.Brand -> return StateBrush(
                rest = SolidColor(
                    FluentTheme.aliasTokens.brandBackgroundColor[BrandBackgroundTint].value(
                        themeMode = FluentTheme.themeMode
                    )
                ),
                selected = SolidColor(
                    FluentTheme.aliasTokens.brandBackgroundColor[BrandBackground1].value(
                        themeMode = FluentTheme.themeMode
                    )
                ),
                disabled = SolidColor(
                    FluentTheme.aliasTokens.neutralBackgroundColor[Background5].value(
                        themeMode = FluentTheme.themeMode
                    )
                )
            )
            PersonaChipStyle.Danger -> return StateBrush(
                rest = SolidColor(
                    FluentTheme.aliasTokens.errorAndStatusColor[DangerBackground1].value(
                        themeMode = FluentTheme.themeMode
                    )
                ),
                selected = SolidColor(
                    FluentTheme.aliasTokens.errorAndStatusColor[DangerBackground2].value(
                        themeMode = FluentTheme.themeMode
                    )
                )
            )
            PersonaChipStyle.SevereWarning -> return StateBrush(
                rest = SolidColor(
                    FluentTheme.aliasTokens.errorAndStatusColor[SevereBackground1].value(
                        themeMode = FluentTheme.themeMode
                    )
                ),
                selected = SolidColor(
                    FluentTheme.aliasTokens.errorAndStatusColor[SevereBackground2].value(
                        themeMode = FluentTheme.themeMode
                    )
                )
            )
            PersonaChipStyle.Warning -> return StateBrush(
                rest = SolidColor(
                    FluentTheme.aliasTokens.errorAndStatusColor[WarningBackground1].value(
                        themeMode = FluentTheme.themeMode
                    )
                ),
                selected = SolidColor(
                    FluentTheme.aliasTokens.errorAndStatusColor[WarningBackground2].value(
                        themeMode = FluentTheme.themeMode
                    )
                )
            )
            PersonaChipStyle.Success -> return StateBrush(
                rest = SolidColor(
                    FluentTheme.aliasTokens.errorAndStatusColor[SuccessBackground1].value(
                        themeMode = FluentTheme.themeMode
                    )
                ),
                selected = SolidColor(
                    FluentTheme.aliasTokens.errorAndStatusColor[SuccessBackground2].value(
                        themeMode = FluentTheme.themeMode
                    )
                )
            )
        }
    }

    @Composable
    open fun textColor(personaChipInfo: PersonaChipControlInfo): StateColor {

        personaChipInfo as PersonaChipInfo
        when (personaChipInfo.style) {
            PersonaChipStyle.Neutral -> return StateColor(
                rest = FluentTheme.aliasTokens.neutralForegroundColor[Foreground2].value(
                    themeMode = FluentTheme.themeMode
                ),
                selected = FluentTheme.aliasTokens.neutralForegroundColor[Foreground1].value(
                    themeMode = FluentTheme.themeMode
                ),
                disabled = FluentTheme.aliasTokens.neutralForegroundColor[ForegroundDisable1].value(
                    themeMode = FluentTheme.themeMode
                )
            )
            PersonaChipStyle.Brand -> return StateColor(
                rest = FluentTheme.aliasTokens.brandForegroundColor[BrandForegroundTint].value(
                    themeMode = FluentTheme.themeMode
                ),
                selected = FluentTheme.aliasTokens.neutralForegroundColor[ForegroundOnColor].value(
                    themeMode = FluentTheme.themeMode
                ),
                disabled = FluentTheme.aliasTokens.neutralForegroundColor[ForegroundDisable1].value(
                    themeMode = FluentTheme.themeMode
                )
            )
            PersonaChipStyle.Danger -> return StateColor(
                rest = FluentTheme.aliasTokens.errorAndStatusColor[DangerForeground1].value(
                    themeMode = FluentTheme.themeMode
                ),
                selected = FluentTheme.aliasTokens.neutralForegroundColor[ForegroundLightStatic].value(
                    themeMode = FluentTheme.themeMode
                )
            )
            PersonaChipStyle.SevereWarning -> return StateColor(
                rest = FluentTheme.aliasTokens.errorAndStatusColor[SevereForeground1].value(
                    themeMode = FluentTheme.themeMode
                ),
                selected = FluentTheme.aliasTokens.neutralForegroundColor[ForegroundLightStatic].value(
                    themeMode = FluentTheme.themeMode
                )
            )
            PersonaChipStyle.Warning -> return StateColor(
                rest = FluentTheme.aliasTokens.errorAndStatusColor[WarningForeground1].value(
                    themeMode = FluentTheme.themeMode
                ),
                selected = FluentTheme.aliasTokens.neutralForegroundColor[ForegroundDarkStatic].value(
                    themeMode = FluentTheme.themeMode
                )
            )
            PersonaChipStyle.Success -> return StateColor(
                rest = FluentTheme.aliasTokens.errorAndStatusColor[SuccessForeground1].value(
                    themeMode = FluentTheme.themeMode
                ),
                selected = FluentTheme.aliasTokens.neutralForegroundColor[ForegroundLightStatic].value(
                    themeMode = FluentTheme.themeMode
                )
            )
        }
    }

    @Composable
    open fun cornerRadius(personaChipInfo: PersonaChipControlInfo): Dp {
        return when (personaChipInfo.size) {
            Small -> FluentGlobalTokens.CornerRadiusTokens.CornerRadius20.value
            Medium -> FluentGlobalTokens.CornerRadiusTokens.CornerRadius40.value
        }
    }

    @Composable
    open fun typography(personaChipInfo: PersonaChipControlInfo): TextStyle {
        return when (personaChipInfo.size) {
            Small -> FluentTheme.aliasTokens.typography[FluentAliasTokens.TypographyTokens.Caption1]
            Medium -> FluentTheme.aliasTokens.typography[FluentAliasTokens.TypographyTokens.Body2]
        }
    }

    @Composable
    open fun verticalPadding(personaChipInfo: PersonaChipControlInfo): Dp {
        return when (personaChipInfo.size) {
            Small -> FluentGlobalTokens.SizeTokens.Size20.value
            Medium -> FluentGlobalTokens.SizeTokens.Size20.value
        }
    }

    @Composable
    open fun horizontalPadding(personaChipInfo: PersonaChipControlInfo): Dp {
        return when (personaChipInfo.size) {
            Small -> FluentGlobalTokens.SizeTokens.Size40.value
            Medium -> FluentGlobalTokens.SizeTokens.Size80.value
        }
    }

    @Composable
    open fun avatarToTextSpacing(personaChipInfo: PersonaChipControlInfo): Dp {
        return FluentGlobalTokens.SizeTokens.Size80.value
    }

    @Composable
    open fun avatarSize(personaChipInfo: PersonaChipControlInfo): AvatarSize {
        return AvatarSize.Size16
    }
}
````

## File: src/main/java/com/microsoft/fluentui/theme/token/controlTokens/PillBarTokens.kt
````kotlin
package com.microsoft.fluentui.theme.token.controlTokens

import android.os.Parcelable
import androidx.compose.runtime.Composable
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.unit.Dp
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.ThemeMode
import com.microsoft.fluentui.theme.token.*
import kotlinx.parcelize.Parcelize

open class PillBarInfo(
    val style: FluentStyle = FluentStyle.Neutral
) : ControlInfo

@Parcelize
open class PillBarTokens : IControlToken, Parcelable {

    @Composable
    open fun backgroundBrush(pillBarInfo: PillBarInfo): Brush {
        return when (pillBarInfo.style) {
            FluentStyle.Neutral -> SolidColor(
                FluentTheme.aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background3].value(
                    FluentTheme.themeMode
                )
            )
            FluentStyle.Brand -> SolidColor(
                FluentColor(
                    light = FluentTheme.aliasTokens.brandBackgroundColor[FluentAliasTokens.BrandBackgroundColorTokens.BrandBackground1].value(
                        ThemeMode.Light
                    ),
                    dark = FluentTheme.aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background3].value(
                        ThemeMode.Dark
                    )
                ).value(FluentTheme.themeMode)
            )
        }
    }

    @Composable
    open fun padding(pillBarInfo: PillBarInfo): Dp =
        FluentGlobalTokens.SizeTokens.Size160.value
}
````

## File: src/main/java/com/microsoft/fluentui/theme/token/controlTokens/PillButtonTokens.kt
````kotlin
package com.microsoft.fluentui.theme.token.controlTokens

import android.os.Parcelable
import androidx.compose.foundation.BorderStroke
import androidx.compose.runtime.Composable
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.ThemeMode
import com.microsoft.fluentui.theme.token.*
import kotlinx.parcelize.Parcelize

open class PillButtonInfo(
    val style: FluentStyle = FluentStyle.Neutral,
    val enabled: Boolean = true,
    val selected: Boolean = false
) : ControlInfo

@Parcelize
open class PillButtonTokens : IControlToken, Parcelable {

    @Composable
    open fun minHeight(pillButtonInfo: PillButtonInfo): Dp = 32.dp

    @Composable
    open fun verticalPadding(pillButtonInfo: PillButtonInfo): Dp =
        FluentGlobalTokens.SizeTokens.Size60.value

    @Composable
    open fun iconSize(pillButtonInfo: PillButtonInfo): Dp =
        FluentGlobalTokens.IconSizeTokens.IconSize200.value

    @Composable
    open fun backgroundBrush(pillButtonInfo: PillButtonInfo): StateBrush {
        when (pillButtonInfo.style) {
            FluentStyle.Neutral -> return StateBrush(
                rest = SolidColor(
                    FluentTheme.aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background5].value(
                        themeMode = FluentTheme.themeMode
                    )
                ),
                pressed = SolidColor(
                    FluentTheme.aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background5Pressed].value(
                        themeMode = FluentTheme.themeMode
                    )
                ),
                selected = SolidColor(
                    FluentTheme.aliasTokens.brandBackgroundColor[FluentAliasTokens.BrandBackgroundColorTokens.BrandBackground1].value(
                        themeMode = FluentTheme.themeMode
                    )
                ),
                selectedPressed = SolidColor(
                    FluentTheme.aliasTokens.brandBackgroundColor[FluentAliasTokens.BrandBackgroundColorTokens.BrandBackground1].value(
                        themeMode = FluentTheme.themeMode
                    )
                ),
                selectedDisabled = SolidColor(
                    FluentTheme.aliasTokens.brandBackgroundColor[FluentAliasTokens.BrandBackgroundColorTokens.BrandBackground1].value(
                        themeMode = FluentTheme.themeMode
                    )
                ),
                focused = SolidColor(
                    FluentTheme.aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background5Selected].value(
                        themeMode = FluentTheme.themeMode
                    )
                ),
                disabled = SolidColor(
                    FluentTheme.aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background5].value(
                        themeMode = FluentTheme.themeMode
                    )
                )
            )
            FluentStyle.Brand -> return StateBrush(
                rest = SolidColor(
                    FluentColor(
                        light = FluentTheme.aliasTokens.brandBackgroundColor[FluentAliasTokens.BrandBackgroundColorTokens.BrandBackground2].value(
                            ThemeMode.Light
                        ),
                        dark = FluentTheme.aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background5].value(
                            ThemeMode.Dark
                        )
                    ).value(FluentTheme.themeMode)
                ),

                pressed = SolidColor(
                    FluentColor(
                        light = FluentTheme.aliasTokens.brandBackgroundColor[FluentAliasTokens.BrandBackgroundColorTokens.BrandBackground2Pressed].value(
                            ThemeMode.Light
                        ),
                        dark = FluentTheme.aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background5Pressed].value(
                            ThemeMode.Dark
                        )
                    ).value(FluentTheme.themeMode)
                ),

                selected = SolidColor(
                    FluentColor(
                        light = FluentTheme.aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background1].value(
                            ThemeMode.Light
                        ),
                        dark = FluentTheme.aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background5Selected].value(
                            ThemeMode.Dark
                        )
                    ).value(FluentTheme.themeMode)
                ),

                selectedPressed = SolidColor(
                    FluentColor(
                        light = FluentTheme.aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background1].value(
                            ThemeMode.Light
                        ),
                        dark = FluentTheme.aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background5Pressed].value(
                            ThemeMode.Dark
                        )
                    ).value(FluentTheme.themeMode)
                ),

                selectedDisabled = SolidColor(
                    FluentColor(
                        light = FluentTheme.aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background1].value(
                            ThemeMode.Light
                        ),
                        dark = FluentTheme.aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background5Selected].value(
                            ThemeMode.Dark
                        )
                    ).value(FluentTheme.themeMode)
                ),

                focused = SolidColor(
                    FluentColor(
                        light = FluentTheme.aliasTokens.brandBackgroundColor[FluentAliasTokens.BrandBackgroundColorTokens.BrandBackground2Selected].value(
                            ThemeMode.Light
                        ),
                        dark = FluentTheme.aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background5Selected].value(
                            ThemeMode.Dark
                        )
                    ).value(FluentTheme.themeMode)
                ),

                disabled = SolidColor(
                    FluentColor(
                        light = FluentTheme.aliasTokens.brandBackgroundColor[FluentAliasTokens.BrandBackgroundColorTokens.BrandBackground2].value(
                            ThemeMode.Light
                        ),
                        dark = FluentTheme.aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background5].value(
                            ThemeMode.Dark
                        )
                    ).value(FluentTheme.themeMode)
                )
            )
        }
    }

    @Composable
    open fun borderColor(pillButtonInfo: PillButtonInfo): Color{
        return Color.Transparent
    }

    @Composable
    open fun borderWidth(pillButtonInfo: PillButtonInfo): Dp {
        return 0.dp
    }
    @Composable
    open fun iconColor(pillButtonInfo: PillButtonInfo): StateColor {
        when (pillButtonInfo.style) {
            FluentStyle.Neutral -> return StateColor(
                rest = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground3].value(
                    themeMode = FluentTheme.themeMode
                ),
                pressed = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground3].value(
                    themeMode = FluentTheme.themeMode
                ),
                selected = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundOnColor].value(
                    themeMode = FluentTheme.themeMode
                ),
                selectedPressed = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundOnColor].value(
                    themeMode = FluentTheme.themeMode
                ),
                selectedDisabled = FluentTheme.aliasTokens.brandForegroundColor[FluentAliasTokens.BrandForegroundColorTokens.BrandForegroundDisabled1].value(
                    themeMode = FluentTheme.themeMode
                ),
                focused = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground3].value(
                    themeMode = FluentTheme.themeMode
                ),
                disabled = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundDisable1].value(
                    themeMode = FluentTheme.themeMode
                )
            )
            FluentStyle.Brand -> return StateColor(
                rest = FluentColor(
                    light = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundOnColor].value(
                        ThemeMode.Light
                    ),
                    dark = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground3].value(
                        ThemeMode.Dark
                    )
                ).value(FluentTheme.themeMode),

                pressed = FluentColor(
                    light = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundOnColor].value(
                        ThemeMode.Light
                    ),
                    dark = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground3].value(
                        ThemeMode.Dark
                    )
                ).value(FluentTheme.themeMode),

                selected = FluentColor(
                    light = FluentTheme.aliasTokens.brandForegroundColor[FluentAliasTokens.BrandForegroundColorTokens.BrandForeground1].value(
                        ThemeMode.Light
                    ),
                    dark = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value(
                        ThemeMode.Dark
                    )
                ).value(FluentTheme.themeMode),

                selectedPressed = FluentColor(
                    light = FluentTheme.aliasTokens.brandForegroundColor[FluentAliasTokens.BrandForegroundColorTokens.BrandForeground1Pressed].value(
                        ThemeMode.Light
                    ),
                    dark = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value(
                        ThemeMode.Dark
                    )
                ).value(FluentTheme.themeMode),

                selectedDisabled = FluentColor(
                    light = FluentTheme.aliasTokens.brandForegroundColor[FluentAliasTokens.BrandForegroundColorTokens.BrandForegroundDisabled2].value(
                        ThemeMode.Light
                    ),
                    dark = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundDisable2].value(
                        ThemeMode.Dark
                    )
                ).value(FluentTheme.themeMode),

                focused = FluentColor(
                    light = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundOnColor].value(
                        ThemeMode.Light
                    ),
                    dark = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground3].value(
                        ThemeMode.Dark
                    )
                ).value(FluentTheme.themeMode),

                disabled = FluentColor(
                    light = FluentTheme.aliasTokens.brandForegroundColor[FluentAliasTokens.BrandForegroundColorTokens.BrandForegroundDisabled1].value(
                        ThemeMode.Light
                    ),
                    dark = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundDisable1].value(
                        ThemeMode.Dark
                    )
                ).value(FluentTheme.themeMode)
            )
        }
    }

    @Composable
    open fun textColor(pillButtonInfo: PillButtonInfo): StateColor {
        when (pillButtonInfo.style) {
            FluentStyle.Neutral -> return StateColor(
                rest = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground2].value(
                    themeMode = FluentTheme.themeMode
                ),
                pressed = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value(
                    themeMode = FluentTheme.themeMode
                ),
                selected = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundOnColor].value(
                    themeMode = FluentTheme.themeMode
                ),
                selectedPressed = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundOnColor].value(
                    themeMode = FluentTheme.themeMode
                ),
                selectedDisabled = FluentTheme.aliasTokens.brandForegroundColor[FluentAliasTokens.BrandForegroundColorTokens.BrandForegroundDisabled1].value(
                    themeMode = FluentTheme.themeMode
                ),
                focused = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value(
                    themeMode = FluentTheme.themeMode
                ),
                disabled = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundDisable1].value(
                    themeMode = FluentTheme.themeMode
                )
            )
            FluentStyle.Brand -> return StateColor(
                rest = FluentColor(
                    light = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundOnColor].value(
                        ThemeMode.Light
                    ),
                    dark = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground2].value(
                        ThemeMode.Dark
                    )
                ).value(FluentTheme.themeMode),

                pressed = FluentColor(
                    light = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundOnColor].value(
                        ThemeMode.Light
                    ),
                    dark = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value(
                        ThemeMode.Dark
                    )
                ).value(FluentTheme.themeMode),

                selected = FluentColor(
                    light = FluentTheme.aliasTokens.brandForegroundColor[FluentAliasTokens.BrandForegroundColorTokens.BrandForeground1].value(
                        ThemeMode.Light
                    ),
                    dark = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value(
                        ThemeMode.Dark
                    )
                ).value(FluentTheme.themeMode),

                selectedPressed = FluentColor(
                    light = FluentTheme.aliasTokens.brandForegroundColor[FluentAliasTokens.BrandForegroundColorTokens.BrandForeground1Pressed].value(
                        ThemeMode.Light
                    ),
                    dark = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value(
                        ThemeMode.Dark
                    )
                ).value(FluentTheme.themeMode),

                selectedDisabled = FluentColor(
                    light = FluentTheme.aliasTokens.brandForegroundColor[FluentAliasTokens.BrandForegroundColorTokens.BrandForegroundDisabled2].value(
                        ThemeMode.Light
                    ),
                    dark = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundDisable2].value(
                        ThemeMode.Dark
                    )
                ).value(FluentTheme.themeMode),

                focused = FluentColor(
                    light = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundOnColor].value(
                        ThemeMode.Light
                    ),
                    dark = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value(
                        ThemeMode.Dark
                    )
                ).value(FluentTheme.themeMode),

                disabled = FluentColor(
                    light = FluentTheme.aliasTokens.brandForegroundColor[FluentAliasTokens.BrandForegroundColorTokens.BrandForegroundDisabled1].value(
                        ThemeMode.Light
                    ),
                    dark = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundDisable1].value(
                        ThemeMode.Dark
                    )
                ).value(FluentTheme.themeMode)
            )
        }
    }

    @Composable
    open fun typography(pillButtonInfo: PillButtonInfo): TextStyle {
        return FluentTheme.aliasTokens.typography[FluentAliasTokens.TypographyTokens.Body2]
    }

    @Composable
    open fun focusStroke(pillButtonInfo: PillButtonInfo): List<BorderStroke> {
        return listOf(
            BorderStroke(
                2.dp,
                FluentTheme.aliasTokens.neutralStrokeColor[FluentAliasTokens.NeutralStrokeColorTokens.StrokeFocus2].value(
                    FluentTheme.themeMode
                )
            ),
            BorderStroke(
                3.dp,
                FluentTheme.aliasTokens.neutralStrokeColor[FluentAliasTokens.NeutralStrokeColorTokens.StrokeFocus1].value(
                    FluentTheme.themeMode
                )
            )
        )
    }

    @Composable
    open fun notificationDotColor(pillButtonInfo: PillButtonInfo): StateColor {
        return when (pillButtonInfo.style) {
            FluentStyle.Neutral -> StateColor(
                rest = FluentColor(
                    light = FluentTheme.aliasTokens.brandForegroundColor[FluentAliasTokens.BrandForegroundColorTokens.BrandForeground1].value(
                        themeMode = ThemeMode.Light
                    ),
                    dark = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value(
                        themeMode = ThemeMode.Dark
                    )
                ).value(),
                pressed = FluentColor(
                    light = FluentTheme.aliasTokens.brandForegroundColor[FluentAliasTokens.BrandForegroundColorTokens.BrandForeground1].value(
                        themeMode = ThemeMode.Light
                    ),
                    dark = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value(
                        themeMode = ThemeMode.Dark
                    )
                ).value(),
                selected = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundOnColor].value(
                    themeMode = FluentTheme.themeMode
                ),
                selectedPressed = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundOnColor].value(
                    themeMode = FluentTheme.themeMode
                ),
                selectedDisabled = FluentTheme.aliasTokens.brandForegroundColor[FluentAliasTokens.BrandForegroundColorTokens.BrandForegroundDisabled1].value(
                    themeMode = FluentTheme.themeMode
                ),
                focused = FluentColor(
                    light = FluentTheme.aliasTokens.brandForegroundColor[FluentAliasTokens.BrandForegroundColorTokens.BrandForeground1].value(
                        themeMode = ThemeMode.Light
                    ),
                    dark = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value(
                        themeMode = ThemeMode.Dark
                    )
                ).value(),
                disabled = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundDisable1].value(
                    themeMode = FluentTheme.themeMode
                )
            )
            FluentStyle.Brand -> StateColor(
                rest = FluentColor(
                    light = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundOnColor].value(
                        themeMode = ThemeMode.Light
                    ),
                    dark = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value(
                        themeMode = ThemeMode.Dark
                    )
                ).value(),
                pressed = FluentColor(
                    light = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundOnColor].value(
                        themeMode = ThemeMode.Light
                    ),
                    dark = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value(
                        themeMode = ThemeMode.Dark
                    )
                ).value(),
                selected = FluentColor(
                    light = FluentTheme.aliasTokens.brandForegroundColor[FluentAliasTokens.BrandForegroundColorTokens.BrandForeground1].value(
                        themeMode = ThemeMode.Light
                    ),
                    dark = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value(
                        themeMode = ThemeMode.Dark
                    )
                ).value(),
                selectedPressed = FluentColor(
                    light = FluentTheme.aliasTokens.brandForegroundColor[FluentAliasTokens.BrandForegroundColorTokens.BrandForeground1Pressed].value(
                        themeMode = ThemeMode.Light
                    ),
                    dark = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value(
                        themeMode = ThemeMode.Dark
                    )
                ).value(),
                selectedDisabled = FluentColor(
                    light = FluentTheme.aliasTokens.brandForegroundColor[FluentAliasTokens.BrandForegroundColorTokens.BrandForegroundDisabled2].value(
                        themeMode = ThemeMode.Light
                    ),
                    dark = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundDisable2].value(
                        themeMode = ThemeMode.Dark
                    )
                ).value(),
                focused = FluentColor(
                    light = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundOnColor].value(
                        themeMode = ThemeMode.Light
                    ),
                    dark = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value(
                        themeMode = ThemeMode.Dark
                    )
                ).value(),
                disabled = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundDisable1].value(
                    themeMode = FluentTheme.themeMode
                )
            )
        }
    }

    @Composable
    open fun iconSpace(pillButtonInfo: PillButtonInfo): Dp {
        return FluentGlobalTokens.SizeTokens.Size20.value
    }

    @Composable
    open fun horizontalMargin(pillButtonInfo: PillButtonInfo): Dp {
        return FluentGlobalTokens.SizeTokens.Size160.value
    }

}
````

## File: src/main/java/com/microsoft/fluentui/theme/token/controlTokens/PillSwitchTokens.kt
````kotlin
package com.microsoft.fluentui.theme.token.controlTokens

import android.os.Parcelable
import androidx.compose.runtime.Composable
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.ThemeMode
import com.microsoft.fluentui.theme.token.ControlInfo
import com.microsoft.fluentui.theme.token.FluentAliasTokens
import com.microsoft.fluentui.theme.token.FluentColor
import com.microsoft.fluentui.theme.token.FluentStyle
import kotlinx.parcelize.Parcelize

open class PillSwitchInfo(
    val style: FluentStyle = FluentStyle.Neutral
) : ControlInfo

@Parcelize
open class PillSwitchTokens : PillBarTokens(), Parcelable {

    @Composable
    open fun backgroundBrush(pillSwitchInfo: PillSwitchInfo): Brush {
        return when (pillSwitchInfo.style) {
            FluentStyle.Neutral -> SolidColor(
                FluentTheme.aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background5].value(
                    FluentTheme.themeMode
                )
            )
            FluentStyle.Brand -> SolidColor(
                FluentColor(
                    light = FluentTheme.aliasTokens.brandBackgroundColor[FluentAliasTokens.BrandBackgroundColorTokens.BrandBackground2].value(
                        ThemeMode.Light
                    ),
                    dark = FluentTheme.aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background5].value(
                        ThemeMode.Dark
                    )
                ).value(FluentTheme.themeMode)
            )
        }
    }

    @Composable
    open fun pillSwitchRowPadding(pillSwitchInfo: PillSwitchInfo): Dp {
        return when (pillSwitchInfo.style) {
            FluentStyle.Neutral -> 16.dp
            FluentStyle.Brand -> 16.dp
        }
    }
}
````

## File: src/main/java/com/microsoft/fluentui/theme/token/controlTokens/PillTabsTokens.kt
````kotlin
package com.microsoft.fluentui.theme.token.controlTokens

import android.os.Parcelable
import androidx.compose.runtime.Composable
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.SolidColor
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.ThemeMode
import com.microsoft.fluentui.theme.token.ControlInfo
import com.microsoft.fluentui.theme.token.FluentAliasTokens
import com.microsoft.fluentui.theme.token.FluentColor
import com.microsoft.fluentui.theme.token.FluentStyle
import kotlinx.parcelize.Parcelize

open class PillTabsInfo(
    val style: FluentStyle = FluentStyle.Neutral
) : ControlInfo

@Parcelize
open class PillTabsTokens : PillBarTokens(), Parcelable {

    @Composable
    open fun backgroundBrush(pillTabsInfo: PillTabsInfo): Brush {
        return SolidColor(
            when (pillTabsInfo.style) {
                FluentStyle.Neutral -> FluentColor(
                    light = FluentTheme.aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background3].value(
                        ThemeMode.Light
                    ),
                    dark = Color.Unspecified
                ).value(FluentTheme.themeMode)
                FluentStyle.Brand -> FluentColor(
                    light = FluentTheme.aliasTokens.brandBackgroundColor[FluentAliasTokens.BrandBackgroundColorTokens.BrandBackground1].value(
                        ThemeMode.Light
                    ),
                    dark = Color.Unspecified
                ).value(FluentTheme.themeMode)
            }
        )
    }

    @Composable
    open fun trackBackgroundBrush(pillTabsInfo: PillTabsInfo): Brush {
        return SolidColor(
            when (pillTabsInfo.style) {
                FluentStyle.Neutral -> FluentTheme.aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background5].value(
                    FluentTheme.themeMode
                )
                FluentStyle.Brand -> FluentColor(
                    light = FluentTheme.aliasTokens.brandBackgroundColor[FluentAliasTokens.BrandBackgroundColorTokens.BrandBackground2].value(
                        ThemeMode.Light
                    ),
                    dark = FluentTheme.aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background5].value(
                        ThemeMode.Dark
                    )
                ).value(FluentTheme.themeMode)
            }
        )
    }
}
````

## File: src/main/java/com/microsoft/fluentui/theme/token/controlTokens/ProgressTextTokens.kt
````kotlin
package com.microsoft.fluentui.theme.token.controlTokens

import android.os.Parcelable
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.runtime.Composable
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.unit.Dp
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.ControlInfo
import com.microsoft.fluentui.theme.token.FluentAliasTokens
import com.microsoft.fluentui.theme.token.FluentGlobalTokens
import com.microsoft.fluentui.theme.token.IControlToken
import kotlinx.parcelize.Parcelize

open class ProgressTextInfo(val progress: Float) : ControlInfo

@Parcelize
open class ProgressTextTokens : IControlToken, Parcelable {

    @Composable
    open fun backgroundBrush(progressTextInfo: ProgressTextInfo): Brush {
        return SolidColor(
            FluentTheme.aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background2].value(
                themeMode = FluentTheme.themeMode
            )
        )
    }

    @Composable
    open fun borderWidth(progressTextInfo: ProgressTextInfo): Dp {
        return FluentGlobalTokens.StrokeWidthTokens.StrokeWidth10
            .value
    }

    @Composable
    open fun padding(progressTextInfo: ProgressTextInfo): PaddingValues {
        return PaddingValues(
            horizontal = FluentGlobalTokens.SizeTokens.Size160.value,
            vertical = FluentGlobalTokens.SizeTokens.Size120.value
        )
    }

    @Composable
    open fun iconTextSpacing(progressTextInfo: ProgressTextInfo): Dp {
        return FluentGlobalTokens.SizeTokens.Size80.value
    }

    @Composable
    open fun borderColor(progressTextInfo: ProgressTextInfo): Color {
        return FluentTheme.aliasTokens.neutralStrokeColor[FluentAliasTokens.NeutralStrokeColorTokens.StrokeDisabled].value(
            themeMode = FluentTheme.themeMode
        )
    }

    @Composable
    open fun typography(progressTextInfo: ProgressTextInfo): TextStyle {
        return FluentTheme.aliasTokens.typography[FluentAliasTokens.TypographyTokens.Body1]
    }

    @Composable
    open fun textColor(progressTextInfo: ProgressTextInfo): Color {
        return FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value(
            themeMode = FluentTheme.themeMode
        )
    }

    @Composable
    open fun iconSize(progressTextInfo: ProgressTextInfo): Dp {
        return FluentGlobalTokens.IconSizeTokens.IconSize240.value
    }

    @Composable
    open fun iconColor(progressTextInfo: ProgressTextInfo): Color {
        return FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground2].value(
            themeMode = FluentTheme.themeMode
        )
    }

    @Composable
    open fun progressbarHeight(progressTextInfo: ProgressTextInfo): Dp {
        return FluentGlobalTokens.StrokeWidthTokens.StrokeWidth40.value
    }

    @Composable
    open fun progressbarBackgroundColor(progressTextInfo: ProgressTextInfo): Color {
        return FluentTheme.aliasTokens.neutralStrokeColor[FluentAliasTokens.NeutralStrokeColorTokens.StrokeDisabled].value(
            themeMode = FluentTheme.themeMode
        )
    }

    @Composable
    open fun progressbarBrush(progressTextInfo: ProgressTextInfo): Brush {
        return SolidColor(
            FluentTheme.aliasTokens.brandBackgroundColor[FluentAliasTokens.BrandBackgroundColorTokens.BrandBackground1].value(
                themeMode = FluentTheme.themeMode
            )
        )
    }
}
````

## File: src/main/java/com/microsoft/fluentui/theme/token/controlTokens/RadioButtonTokens.kt
````kotlin
package com.microsoft.fluentui.theme.token.controlTokens

import android.os.Parcelable
import androidx.compose.runtime.Composable
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.theme.FluentTheme.aliasTokens
import com.microsoft.fluentui.theme.FluentTheme.themeMode
import com.microsoft.fluentui.theme.token.*
import kotlinx.parcelize.IgnoredOnParcel
import kotlinx.parcelize.Parcelize

open class RadioButtonInfo(
    val selected: Boolean = false,
) : ControlInfo

@Parcelize
open class RadioButtonTokens : IControlToken, Parcelable {

    @IgnoredOnParcel
    open var innerCircleRadius = 5.dp

    @IgnoredOnParcel
    open var outerCircleRadius = 10.dp

    @IgnoredOnParcel
    open var strokeWidthInwards = 1.5.dp

    @Composable
    open fun backgroundBrush(radioButtonInfo: RadioButtonInfo): StateBrush {
        return StateBrush(
            rest = SolidColor(
                aliasTokens.neutralStrokeColor[FluentAliasTokens.NeutralStrokeColorTokens.StrokeAccessible].value(
                    themeMode = themeMode
                )
            ),
            focused = SolidColor(
                aliasTokens.neutralStrokeColor[FluentAliasTokens.NeutralStrokeColorTokens.StrokeAccessible].value(
                    themeMode = themeMode
                )
            ),
            selectedFocused = SolidColor(
                aliasTokens.brandBackgroundColor[FluentAliasTokens.BrandBackgroundColorTokens.BrandBackground1].value(
                    themeMode = themeMode
                )
            ),
            selected = SolidColor(
                aliasTokens.brandBackgroundColor[FluentAliasTokens.BrandBackgroundColorTokens.BrandBackground1].value(
                    themeMode = themeMode
                )
            ),
            selectedPressed = SolidColor(
                aliasTokens.brandBackgroundColor[FluentAliasTokens.BrandBackgroundColorTokens.BrandBackground1].value(
                    themeMode = themeMode
                )
            ),
            pressed = SolidColor(
                aliasTokens.brandBackgroundColor[FluentAliasTokens.BrandBackgroundColorTokens.BrandBackground1].value(
                    themeMode = themeMode
                )
            ),
            selectedDisabled = SolidColor(
                aliasTokens.brandBackgroundColor[FluentAliasTokens.BrandBackgroundColorTokens.BrandBackgroundDisabled].value(
                    themeMode = themeMode
                )
            ),
            disabled = SolidColor(
                aliasTokens.neutralStrokeColor[FluentAliasTokens.NeutralStrokeColorTokens.StrokeDisabled].value(
                    themeMode = themeMode
                )
            )
        )
    }

    @Composable
    open fun iconColor(radioButtonInfo: RadioButtonInfo): StateColor {
        return StateColor(
            selected = aliasTokens.brandForegroundColor[FluentAliasTokens.BrandForegroundColorTokens.BrandForeground1].value(
                themeMode = themeMode
            ),
            selectedFocused = aliasTokens.brandForegroundColor[FluentAliasTokens.BrandForegroundColorTokens.BrandForeground1].value(
                themeMode = themeMode
            ),
            selectedPressed = aliasTokens.brandForegroundColor[FluentAliasTokens.BrandForegroundColorTokens.BrandForeground1].value(
                themeMode = themeMode
            ),
            selectedDisabled = aliasTokens.brandForegroundColor[FluentAliasTokens.BrandForegroundColorTokens.BrandForegroundDisabled2].value(
                themeMode = themeMode
            )
        )
    }
}
````

## File: src/main/java/com/microsoft/fluentui/theme/token/controlTokens/SearchBarPersonaChipTokens.kt
````kotlin
package com.microsoft.fluentui.theme.token.controlTokens

import androidx.compose.runtime.Composable
import androidx.compose.ui.graphics.SolidColor
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.FluentAliasTokens
import com.microsoft.fluentui.theme.token.FluentStyle
import com.microsoft.fluentui.theme.token.StateBrush
import com.microsoft.fluentui.theme.token.StateColor
import kotlinx.parcelize.Parcelize

open class SearchBarPersonaChipInfo(
    val style: FluentStyle = FluentStyle.Neutral,
    override val enabled: Boolean = true,
    override val size: PersonaChipSize = PersonaChipSize.Small
) : PersonaChipControlInfo()

@Parcelize
open class SearchBarPersonaChipTokens : PersonaChipTokens() {
    @Composable
    override fun backgroundBrush(personaChipInfo: PersonaChipControlInfo): StateBrush {
        personaChipInfo as SearchBarPersonaChipInfo
        when (personaChipInfo.style) {
            FluentStyle.Neutral -> return StateBrush(
                rest = SolidColor(
                    FluentTheme.aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background6].value(
                        themeMode = FluentTheme.themeMode
                    )
                ),
                selected = SolidColor(
                    FluentTheme.aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.BackgroundInverted].value(
                        themeMode = FluentTheme.themeMode
                    )
                ),
                disabled = SolidColor(
                    FluentTheme.aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background6].value(
                        themeMode = FluentTheme.themeMode
                    )
                )
            )
            FluentStyle.Brand -> return StateBrush(
                rest = SolidColor(
                    FluentTheme.aliasTokens.brandBackgroundColor[FluentAliasTokens.BrandBackgroundColorTokens.BrandBackground3].value(
                        themeMode = FluentTheme.themeMode
                    )
                ),
                selected = SolidColor(
                    FluentTheme.aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background1].value(
                        themeMode = FluentTheme.themeMode
                    )
                ),
                disabled = SolidColor(
                    FluentTheme.aliasTokens.brandBackgroundColor[FluentAliasTokens.BrandBackgroundColorTokens.BrandBackground3].value(
                        themeMode = FluentTheme.themeMode
                    )
                )
            )
        }
    }

    @Composable
    override fun textColor(personaChipInfo: PersonaChipControlInfo): StateColor {
        personaChipInfo as SearchBarPersonaChipInfo
        when (personaChipInfo.style) {
            FluentStyle.Neutral -> return StateColor(
                rest = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value(
                    themeMode = FluentTheme.themeMode
                ),
                selected = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundOnColor].value(
                    themeMode = FluentTheme.themeMode
                ),
                disabled = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundDisable2].value(
                    themeMode = FluentTheme.themeMode
                )
            )
            FluentStyle.Brand -> return StateColor(
                rest = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundOnColor].value(
                    themeMode = FluentTheme.themeMode
                ),
                selected = FluentTheme.aliasTokens.brandForegroundColor[FluentAliasTokens.BrandForegroundColorTokens.BrandForeground1].value(
                    themeMode = FluentTheme.themeMode
                ),
                disabled = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundDisable1].value(
                    themeMode = FluentTheme.themeMode
                )
            )
        }
    }
}
````

## File: src/main/java/com/microsoft/fluentui/theme/token/controlTokens/SearchBarTokens.kt
````kotlin
package com.microsoft.fluentui.theme.token.controlTokens

import android.os.Parcelable
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.runtime.Composable
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.DefaultShadowColor
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.ThemeMode
import com.microsoft.fluentui.theme.token.*
import kotlinx.parcelize.Parcelize

open class SearchBarInfo(
    val style: FluentStyle
) : ControlInfo

@Parcelize
open class SearchBarTokens : IControlToken, Parcelable {

    @Composable
    open fun inputBackgroundBrush(searchBarInfo: SearchBarInfo): Brush {
        return SolidColor(
            when (searchBarInfo.style) {
                FluentStyle.Neutral ->
                    FluentTheme.aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background5].value(
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

    @Composable
    open fun backgroundBrush(searchBarInfo: SearchBarInfo): Brush {
        return SolidColor(
            when (searchBarInfo.style) {
                FluentStyle.Neutral ->
                    FluentTheme.aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background3].value(
                        themeMode = FluentTheme.themeMode
                    )

                FluentStyle.Brand ->
                    FluentColor(
                        light = FluentTheme.aliasTokens.brandBackgroundColor[FluentAliasTokens.BrandBackgroundColorTokens.BrandBackground1].value(
                            ThemeMode.Light
                        ),
                        dark = FluentTheme.aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background3].value(
                            ThemeMode.Dark
                        )
                    ).value(themeMode = FluentTheme.themeMode)
            }
        )
    }

    @Composable
    open fun textColor(searchBarInfo: SearchBarInfo): Color {
        return when (searchBarInfo.style) {
            FluentStyle.Neutral ->
                FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground3].value(
                    themeMode = FluentTheme.themeMode
                )
            FluentStyle.Brand ->
                FluentColor(
                    light = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundOnColor].value(
                        ThemeMode.Light
                    ),
                    dark = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground3].value(
                        ThemeMode.Dark
                    )
                ).value(themeMode = FluentTheme.themeMode)
        }
    }

    @Composable
    open fun leftIconColor(searchBarInfo: SearchBarInfo): Color {
        return when (searchBarInfo.style) {
            FluentStyle.Neutral ->
                FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground3].value(
                    themeMode = FluentTheme.themeMode
                )

            FluentStyle.Brand ->
                FluentColor(
                    light = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundOnColor].value(
                        ThemeMode.Light
                    ),
                    dark = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground3].value(
                        ThemeMode.Dark
                    )
                ).value(themeMode = FluentTheme.themeMode)
        }
    }

    @Composable
    open fun cursorColor(searchBarInfo: SearchBarInfo): Brush {
        return SolidColor(
            when (searchBarInfo.style) {
                FluentStyle.Neutral ->
                    FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground3].value()

                FluentStyle.Brand ->
                    FluentColor(
                        light = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundOnColor].value(
                            ThemeMode.Light
                        ),
                        dark = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground3].value(
                            ThemeMode.Dark
                        )
                    ).value()
            }
        )
    }

    @Composable
    open fun rightIconColor(searchBarInfo: SearchBarInfo): Color {
        return when (searchBarInfo.style) {
            FluentStyle.Neutral ->
                FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground2].value(
                    themeMode = FluentTheme.themeMode
                )

            FluentStyle.Brand ->
                FluentColor(
                    light = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundOnColor].value(
                        ThemeMode.Light
                    ),
                    dark = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground2].value(
                        ThemeMode.Dark
                    )
                ).value(themeMode = FluentTheme.themeMode)
        }
    }

    @Composable
    open fun typography(searchBarInfo: SearchBarInfo): TextStyle {
        return FluentTheme.aliasTokens.typography[FluentAliasTokens.TypographyTokens.Body1]
    }

    @Composable
    open fun leftIconSize(searchBarInfo: SearchBarInfo): Dp {
        return FluentGlobalTokens.IconSizeTokens.IconSize200.value
    }

    @Composable
    open fun rightIconSize(searchBarInfo: SearchBarInfo): Dp {
        return FluentGlobalTokens.IconSizeTokens.IconSize200.value
    }

    @Composable
    open fun circularProgressIndicatorSize(searchBarInfo: SearchBarInfo): CircularProgressIndicatorSize {
        return CircularProgressIndicatorSize.Medium
    }

    @Composable
    open fun searchBarPadding(info: SearchBarInfo): PaddingValues {
        return PaddingValues(horizontal = FluentGlobalTokens.SizeTokens.Size80.value)
    }

    @Composable
    open fun height(searchBarInfo: SearchBarInfo): Dp {
        return 40.dp
    }

    @Composable
    open fun cornerRadius(searchBarInfo: SearchBarInfo): Dp =
        FluentGlobalTokens.CornerRadiusTokens.CornerRadius80.value

    @Composable
    open fun elevation(searchBarInfo: SearchBarInfo): Dp = 0.dp

    @Composable
    open fun borderWidth(searchBarInfo: SearchBarInfo): Dp = 0.dp

    @Composable
    open fun borderColor(searchBarInfo: SearchBarInfo): Color =
        FluentTheme.aliasTokens.neutralStrokeColor[FluentAliasTokens.NeutralStrokeColorTokens.Stroke2].value()

    @Composable
    open fun shadowColor(searchBarInfo: SearchBarInfo): Color = DefaultShadowColor
}
````

## File: src/main/java/com/microsoft/fluentui/theme/token/controlTokens/ShimmerTokens.kt
````kotlin
package com.microsoft.fluentui.theme.token.controlTokens

import android.os.Parcelable
import androidx.compose.runtime.Composable
import androidx.compose.ui.graphics.Color
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.ControlInfo
import com.microsoft.fluentui.theme.token.FluentAliasTokens
import com.microsoft.fluentui.theme.token.IControlToken
import kotlinx.parcelize.Parcelize

open class ShimmerInfo : ControlInfo

enum class ShimmerOrientation {
    LEFT_TO_RIGHT,
    RIGHT_TO_LEFT,
    TOPLEFT_TO_BOTTOMRIGHT,
    BOTTOMRIGHT_TO_TOPLEFT,
    _NONE //DO NOT USE
}

@Parcelize
open class ShimmerTokens : IControlToken, Parcelable {
    @Composable
    open fun knockoutEffectColor(shimmerInfo: ShimmerInfo): Color {
        return FluentTheme.aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Stencil2].value(
            themeMode = FluentTheme.themeMode
        )
    }

    @Composable
    open fun color(shimmerInfo: ShimmerInfo): Color {
        return FluentTheme.aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Stencil1].value(
            themeMode = FluentTheme.themeMode
        )
    }

    @Composable
    open fun delay(shimmerInfo: ShimmerInfo): Int {
        return -1
    }

    @Composable
    open fun orientation(shimmerInfo: ShimmerInfo): ShimmerOrientation {
        return ShimmerOrientation._NONE //Do not return ShimmerOrientation._NONE if you are overriding this method, it will default to ShimmerOrientation.TOPLEFT_TO_BOTTOMRIGHT in that case
    }
}
````

## File: src/main/java/com/microsoft/fluentui/theme/token/controlTokens/SideRailTokens.kt
````kotlin
package com.microsoft.fluentui.theme.token.controlTokens

import android.os.Parcelable
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.runtime.Composable
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.ControlInfo
import com.microsoft.fluentui.theme.token.FluentAliasTokens
import com.microsoft.fluentui.theme.token.FluentGlobalTokens
import com.microsoft.fluentui.theme.token.IControlToken
import kotlinx.parcelize.Parcelize


open class SideRailInfo: ControlInfo
@Parcelize
open class SideRailTokens : IControlToken, Parcelable {

    @Composable
    open fun borderColor(sideRailInfo: SideRailInfo): Color {
        return FluentTheme.aliasTokens.neutralStrokeColor[FluentAliasTokens.NeutralStrokeColorTokens.Stroke2].value()
    }
    @Composable
    open fun topMargin(sideRailInfo: SideRailInfo): Dp {
        return FluentGlobalTokens.SizeTokens.Size240.value
    }
    @Composable
    open fun bottomMargin(sideRailInfo: SideRailInfo): Dp {
        return FluentGlobalTokens.SizeTokens.Size160.value
    }
    @Composable
    open fun borderWidth(sideRailInfo: SideRailInfo): Dp {
        return FluentGlobalTokens.StrokeWidthTokens.StrokeWidth05.value
    }
    @Composable
    open fun headerPadding(sideRailInfo: SideRailInfo): PaddingValues {
        return PaddingValues(16.dp)
    }
    @Composable
    open fun backgroundBrush(sideRailInfo: SideRailInfo): Brush {
        return SolidColor(FluentTheme.aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background1].value())
    }
}
````

## File: src/main/java/com/microsoft/fluentui/theme/token/controlTokens/SnackbarTokens.kt
````kotlin
package com.microsoft.fluentui.theme.token.controlTokens

import android.os.Parcelable
import androidx.compose.runtime.Composable
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.theme.FluentTheme.aliasTokens
import com.microsoft.fluentui.theme.token.ControlInfo
import com.microsoft.fluentui.theme.token.FluentAliasTokens
import com.microsoft.fluentui.theme.token.FluentGlobalTokens
import com.microsoft.fluentui.theme.token.IControlToken
import kotlinx.parcelize.Parcelize

enum class SnackbarStyle {
    Neutral,
    Contrast,
    Accent,
    Warning,
    Danger
}

open class SnackBarInfo(
    val style: SnackbarStyle = SnackbarStyle.Neutral,
    val subTitleAvailable: Boolean = false
) : ControlInfo

@Parcelize
open class SnackBarTokens : IControlToken, Parcelable {

    @Composable
    open fun backgroundBrush(snackBarInfo: SnackBarInfo): Brush {
        return SolidColor(
            when (snackBarInfo.style) {
                SnackbarStyle.Neutral -> aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background4].value()
                SnackbarStyle.Contrast -> aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.BackgroundDarkStatic].value()
                SnackbarStyle.Accent -> aliasTokens.brandBackgroundColor[FluentAliasTokens.BrandBackgroundColorTokens.BrandBackgroundTint].value()
                SnackbarStyle.Warning -> aliasTokens.errorAndStatusColor[FluentAliasTokens.ErrorAndStatusColorTokens.WarningBackground1].value()
                SnackbarStyle.Danger -> aliasTokens.errorAndStatusColor[FluentAliasTokens.ErrorAndStatusColorTokens.DangerBackground1].value()
            }
        )
    }

    @Composable
    open fun iconColor(snackBarInfo: SnackBarInfo): Color {
        return when (snackBarInfo.style) {
            SnackbarStyle.Neutral -> aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground2].value()
            SnackbarStyle.Contrast -> aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundLightStatic].value()
            SnackbarStyle.Accent -> aliasTokens.brandForegroundColor[FluentAliasTokens.BrandForegroundColorTokens.BrandForegroundTint].value()
            SnackbarStyle.Warning -> aliasTokens.errorAndStatusColor[FluentAliasTokens.ErrorAndStatusColorTokens.WarningForeground1].value()
            SnackbarStyle.Danger -> aliasTokens.errorAndStatusColor[FluentAliasTokens.ErrorAndStatusColorTokens.DangerForeground1].value()
        }
    }

    @Composable
    open fun titleTypography(snackBarInfo: SnackBarInfo): TextStyle {
        val color: Color = when (snackBarInfo.style) {
            SnackbarStyle.Neutral -> aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground2].value()
            SnackbarStyle.Contrast -> aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundLightStatic].value()
            SnackbarStyle.Accent -> aliasTokens.brandForegroundColor[FluentAliasTokens.BrandForegroundColorTokens.BrandForegroundTint].value()
            SnackbarStyle.Warning -> aliasTokens.errorAndStatusColor[FluentAliasTokens.ErrorAndStatusColorTokens.WarningForeground1].value()
            SnackbarStyle.Danger -> aliasTokens.errorAndStatusColor[FluentAliasTokens.ErrorAndStatusColorTokens.DangerForeground1].value()
        }

        return if (snackBarInfo.subTitleAvailable)
            aliasTokens.typography[FluentAliasTokens.TypographyTokens.Body2Strong].merge(
                TextStyle(
                    color = color
                )
            )
        else
            aliasTokens.typography[FluentAliasTokens.TypographyTokens.Body2].merge(TextStyle(color = color))
    }

    @Composable
    open fun subtitleTypography(snackBarInfo: SnackBarInfo): TextStyle {
        val color: Color = when (snackBarInfo.style) {
            SnackbarStyle.Neutral -> aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground2].value()
            SnackbarStyle.Contrast -> aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundLightStatic].value()
            SnackbarStyle.Accent -> aliasTokens.brandForegroundColor[FluentAliasTokens.BrandForegroundColorTokens.BrandForegroundTint].value()
            SnackbarStyle.Warning -> aliasTokens.errorAndStatusColor[FluentAliasTokens.ErrorAndStatusColorTokens.WarningForeground1].value()
            SnackbarStyle.Danger -> aliasTokens.errorAndStatusColor[FluentAliasTokens.ErrorAndStatusColorTokens.DangerForeground1].value()
        }

        return aliasTokens.typography[FluentAliasTokens.TypographyTokens.Body2].merge(
            TextStyle(
                color = color
            )
        )
    }

    @Composable
    open fun shadowElevationValue(snackBarInfo: SnackBarInfo): Dp {
        return 0.dp
    }

    @Composable
    open fun leftIconSize(snackBarInfo: SnackBarInfo): Dp = 24.dp

    @Composable
    open fun dismissIconSize(snackBarInfo: SnackBarInfo): Dp = 20.dp
}
````

## File: src/main/java/com/microsoft/fluentui/theme/token/controlTokens/StackableSnackbarTokens.kt
````kotlin
package com.microsoft.fluentui.theme.token.controlTokens

import androidx.annotation.FloatRange
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.runtime.Composable
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Shape
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.theme.token.FluentGlobalTokens
import kotlinx.parcelize.Parcelize


enum class StackableSnackbarEntryAnimationType {
    SlideInFromAbove,
    SlideInFromBelow,
    FadeIn,
    SlideInFromLeft,
    SlideInFromRight
}

enum class StackableSnackbarExitAnimationType {
    FadeOut,
    SlideOutToLeft,
    SlideOutToRight
}

@Parcelize
open class StackableSnackBarTokens : SnackBarTokens() {
    @Composable
    override fun shadowElevationValue(snackBarInfo: SnackBarInfo): Dp {
        return FluentGlobalTokens.ShadowTokens.Shadow08.value
    }

    @FloatRange(from = 0.0, to = 2.0, fromInclusive = false, toInclusive = true)
    @Composable
    fun snackbarWidthScalingFactor(snackBarInfo: SnackBarInfo): Float {
        return 0.95f
    }

    @Composable
    fun entryAnimationType(snackBarInfo: SnackBarInfo): StackableSnackbarEntryAnimationType {
        return StackableSnackbarEntryAnimationType.SlideInFromBelow
    }

    @Composable
    fun exitAnimationType(snackBarInfo: SnackBarInfo): StackableSnackbarExitAnimationType {
        return StackableSnackbarExitAnimationType.SlideOutToLeft
    }
}
````

## File: src/main/java/com/microsoft/fluentui/theme/token/controlTokens/TabBarTokens.kt
````kotlin
package com.microsoft.fluentui.theme.token.controlTokens

import android.os.Parcelable
import androidx.compose.runtime.Composable
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.unit.Dp
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.ControlInfo
import com.microsoft.fluentui.theme.token.FluentAliasTokens
import com.microsoft.fluentui.theme.token.FluentGlobalTokens
import com.microsoft.fluentui.theme.token.IControlToken
import kotlinx.parcelize.Parcelize

open class TabBarInfo : ControlInfo

@Parcelize
open class TabBarTokens : IControlToken, Parcelable {

    @Composable
    open fun topBorderColor(tabBarInfo: TabBarInfo): Color {
        return FluentTheme.aliasTokens.neutralStrokeColor[FluentAliasTokens.NeutralStrokeColorTokens.Stroke2].value()
    }

    @Composable
    open fun topBorderWidth(tabBarInfo: TabBarInfo): Dp {
        return FluentGlobalTokens.StrokeWidthTokens.StrokeWidth05.value
    }
}
````

## File: src/main/java/com/microsoft/fluentui/theme/token/controlTokens/TabItemTokens.kt
````kotlin
package com.microsoft.fluentui.theme.token.controlTokens

import android.os.Parcelable
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.runtime.Composable
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.TextUnit
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.ThemeMode
import com.microsoft.fluentui.theme.token.*
import kotlinx.parcelize.Parcelize

enum class TabTextAlignment {
    VERTICAL,
    HORIZONTAL,
    NO_TEXT
}

open class TabItemInfo(
    val tabTextAlignment: TabTextAlignment = TabTextAlignment.VERTICAL,
    val fluentStyle: FluentStyle = FluentStyle.Neutral
) : ControlInfo

@Parcelize
open class TabItemTokens : IControlToken, Parcelable {

    @Composable
    open fun width(tabItemInfo: TabItemInfo): Dp {
        return 64.dp
    }

    @Composable
    open fun backgroundBrush(tabItemInfo: TabItemInfo): StateBrush {
        return StateBrush(
            rest = SolidColor(
                FluentTheme.aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background1].value(
                    themeMode = FluentTheme.themeMode
                )
            ),
            pressed = SolidColor(
                FluentTheme.aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background1Pressed].value(
                    themeMode = FluentTheme.themeMode
                )
            ),
            focused = SolidColor(
                FluentTheme.aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background1Selected].value(
                    themeMode = FluentTheme.themeMode
                )
            )
        )
    }

    @Composable
    open fun rippleColor(tabItemInfo: TabItemInfo): Color {
        return FluentColor(
            light = FluentGlobalTokens.NeutralColorTokens.Black.value,
            dark = FluentGlobalTokens.NeutralColorTokens.White.value
        ).value(
            FluentTheme.themeMode
        )
    }

    @Composable
    open fun iconColor(tabItemInfo: TabItemInfo): StateBrush {
        return when (tabItemInfo.fluentStyle) {
            FluentStyle.Neutral -> StateBrush(
                rest = SolidColor( FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground3].value(
                    themeMode = FluentTheme.themeMode
                )
                ),
                pressed = SolidColor( FluentTheme.aliasTokens.brandForegroundColor[FluentAliasTokens.BrandForegroundColorTokens.BrandForeground1].value(
                    themeMode = FluentTheme.themeMode
                )
                ),
                focused= SolidColor( FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value(
                    themeMode = FluentTheme.themeMode
                )
                ),
                disabled = SolidColor( FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundDisable1].value(
                    themeMode = FluentTheme.themeMode
                )
                )
            )

            FluentStyle.Brand -> StateBrush(
                rest = SolidColor( FluentColor(
                    light = FluentTheme.aliasTokens.brandForegroundColor[FluentAliasTokens.BrandForegroundColorTokens.BrandForeground1].value(
                        ThemeMode.Light
                    ),
                    dark = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value(
                        ThemeMode.Dark
                    )
                ).value(FluentTheme.themeMode)),
                pressed = SolidColor( FluentColor(
                    light = FluentTheme.aliasTokens.brandForegroundColor[FluentAliasTokens.BrandForegroundColorTokens.BrandForeground1Pressed].value(
                        ThemeMode.Light
                    ),
                    dark = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value(
                        ThemeMode.Dark
                    )
                ).value(FluentTheme.themeMode)),
                selected = SolidColor( FluentTheme.aliasTokens.brandForegroundColor[FluentAliasTokens.BrandForegroundColorTokens.BrandForeground1].value()),
                disabled = SolidColor( FluentColor(
                    light = FluentTheme.aliasTokens.brandForegroundColor[FluentAliasTokens.BrandForegroundColorTokens.BrandForegroundDisabled2].value(
                        ThemeMode.Light
                    ),
                    dark = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundDisable1].value(
                        ThemeMode.Dark
                    )
                ).value(FluentTheme.themeMode))
            )
        }
    }

    @Composable
    open fun textColor(tabItemInfo: TabItemInfo): StateColor {
        return when (tabItemInfo.fluentStyle) {
            FluentStyle.Neutral -> StateColor(
                rest = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground2].value(
                    themeMode = FluentTheme.themeMode
                ),
                pressed = FluentTheme.aliasTokens.brandForegroundColor[FluentAliasTokens.BrandForegroundColorTokens.BrandForeground1Pressed].value(
                    themeMode = FluentTheme.themeMode
                ),
                disabled = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundDisable1].value(
                    themeMode = FluentTheme.themeMode
                )
            )

            FluentStyle.Brand -> StateColor(
                rest = FluentColor(
                    light = FluentTheme.aliasTokens.brandForegroundColor[FluentAliasTokens.BrandForegroundColorTokens.BrandForeground1].value(
                        ThemeMode.Light
                    ),
                    dark = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value(
                        ThemeMode.Dark
                    )
                ).value(FluentTheme.themeMode),
                pressed = FluentColor(
                    light = FluentTheme.aliasTokens.brandForegroundColor[FluentAliasTokens.BrandForegroundColorTokens.BrandForeground1Pressed].value(
                        ThemeMode.Light
                    ),
                    dark = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value(
                        ThemeMode.Dark
                    )
                ).value(FluentTheme.themeMode),
                selected = FluentTheme.aliasTokens.brandForegroundColor[FluentAliasTokens.BrandForegroundColorTokens.BrandForeground1].value(),
                disabled = FluentColor(
                    light = FluentTheme.aliasTokens.brandForegroundColor[FluentAliasTokens.BrandForegroundColorTokens.BrandForegroundDisabled2].value(
                        ThemeMode.Light
                    ),
                    dark = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundDisable1].value(
                        ThemeMode.Dark
                    )
                ).value(FluentTheme.themeMode)
            )
        }
    }

    @Composable
    open fun indicatorColor(tabItemInfo: TabItemInfo): StateBrush {
        return when (tabItemInfo.fluentStyle) {
            FluentStyle.Neutral -> StateBrush(
                rest = SolidColor(FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground2].value(
                    themeMode = FluentTheme.themeMode
                )),
                pressed = SolidColor(FluentTheme.aliasTokens.brandForegroundColor[FluentAliasTokens.BrandForegroundColorTokens.BrandForeground1Pressed].value(
                    themeMode = FluentTheme.themeMode
                )),
                disabled = SolidColor(FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundDisable1].value(
                    themeMode = FluentTheme.themeMode
                ))
            )

            FluentStyle.Brand -> StateBrush(
                rest = SolidColor(FluentColor(
                    light = FluentTheme.aliasTokens.brandForegroundColor[FluentAliasTokens.BrandForegroundColorTokens.BrandForeground1].value(
                        ThemeMode.Light
                    ),
                    dark = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value(
                        ThemeMode.Dark
                    )
                ).value(FluentTheme.themeMode)),
                pressed = SolidColor(FluentColor(
                    light = FluentTheme.aliasTokens.brandForegroundColor[FluentAliasTokens.BrandForegroundColorTokens.BrandForeground1Pressed].value(
                        ThemeMode.Light
                    ),
                    dark = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value(
                        ThemeMode.Dark
                    )
                ).value(FluentTheme.themeMode)),
                selected = SolidColor(FluentTheme.aliasTokens.brandForegroundColor[FluentAliasTokens.BrandForegroundColorTokens.BrandForeground1].value()),
                disabled = SolidColor(FluentColor(
                    light = FluentTheme.aliasTokens.brandForegroundColor[FluentAliasTokens.BrandForegroundColorTokens.BrandForegroundDisabled2].value(
                        ThemeMode.Light
                    ),
                    dark = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundDisable1].value(
                        ThemeMode.Dark
                    )
                ).value(FluentTheme.themeMode))
            )
        }
    }

    @Composable
    open fun padding(tabItemInfo: TabItemInfo): PaddingValues {
        return when(tabItemInfo.tabTextAlignment){
            TabTextAlignment.HORIZONTAL -> PaddingValues(top = 8.dp, start = 4.dp, bottom = 4.dp, end = 8.dp)
            TabTextAlignment.VERTICAL -> PaddingValues(top = 8.dp, start = 8.dp, bottom = 4.dp, end = 8.dp)
            TabTextAlignment.NO_TEXT -> PaddingValues(top = 8.dp, start = 8.dp, bottom = 4.dp, end = 8.dp)
        }
    }

    @Composable
    open fun textTypography(tabItemInfo: TabItemInfo): TextStyle {
        return FluentTheme.aliasTokens.typography[FluentAliasTokens.TypographyTokens.Caption2]
    }
}
````

## File: src/main/java/com/microsoft/fluentui/theme/token/controlTokens/TextFieldTokens.kt
````kotlin
package com.microsoft.fluentui.theme.token.controlTokens

import android.os.Parcelable
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.runtime.Composable
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.unit.Dp
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.ControlInfo
import com.microsoft.fluentui.theme.token.FluentAliasTokens
import com.microsoft.fluentui.theme.token.FluentGlobalTokens
import com.microsoft.fluentui.theme.token.IControlToken
import com.microsoft.fluentui.theme.token.StateBrush
import com.microsoft.fluentui.theme.token.StateColor
import kotlinx.parcelize.Parcelize

open class TextFieldInfo(
    val isStatusError: Boolean = false,
    val hasIcon: Boolean = true,
    val isFocused: Boolean = false,
    val textAvailable: Boolean = false
) : ControlInfo

@Parcelize
open class TextFieldTokens : IControlToken, Parcelable {

    @Composable
    open fun backgroundBrush(textFieldInfo: TextFieldInfo): Brush {
        return SolidColor(FluentTheme.aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background1].value())
    }

    @Composable
    open fun textAreaBackgroundBrush(textFieldInfo: TextFieldInfo): StateBrush {
        return StateBrush(
            rest = SolidColor(FluentTheme.aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background1].value()),
            disabled = SolidColor(
                FluentTheme.aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background5].value(
                    themeMode = FluentTheme.themeMode
                )
            )
        )
    }

    @Composable
    open fun leadingIconColor(textFieldInfo: TextFieldInfo): Color {
        return if (textFieldInfo.isFocused && !textFieldInfo.isStatusError)
            FluentTheme.aliasTokens.brandForegroundColor[FluentAliasTokens.BrandForegroundColorTokens.BrandForeground1].value()
        else
            FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground2].value()

    }

    @Composable
    open fun cursorColor(textFieldInfo: TextFieldInfo): Brush {
        return SolidColor(FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground3].value())
    }

    @Composable
    open fun dividerColor(textFieldInfo: TextFieldInfo): Brush {
        return SolidColor(
            if (textFieldInfo.isStatusError)
                FluentTheme.aliasTokens.errorAndStatusColor[FluentAliasTokens.ErrorAndStatusColorTokens.DangerForeground1].value()
            else if (textFieldInfo.isFocused)
                FluentTheme.aliasTokens.brandStroke[FluentAliasTokens.BrandStrokeColorTokens.BrandStroke1].value()
            else
                FluentTheme.aliasTokens.neutralStrokeColor[FluentAliasTokens.NeutralStrokeColorTokens.Stroke2].value()
        )
    }

    @Composable
    open fun labelColor(textFieldInfo: TextFieldInfo): Color {
        return if (textFieldInfo.isStatusError)
            FluentTheme.aliasTokens.errorAndStatusColor[FluentAliasTokens.ErrorAndStatusColorTokens.DangerForeground1].value()
        else if (textFieldInfo.isFocused)
            FluentTheme.aliasTokens.brandForegroundColor[FluentAliasTokens.BrandForegroundColorTokens.BrandForeground1].value()
        else
            FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground2].value()
    }

    @Composable
    open fun labelTypography(textFieldInfo: TextFieldInfo): TextStyle {
        return FluentTheme.aliasTokens.typography[FluentAliasTokens.TypographyTokens.Caption2]
    }

    @Composable
    open fun assistiveTextColor(textFieldInfo: TextFieldInfo): Color {
        return if (textFieldInfo.isStatusError)
            FluentTheme.aliasTokens.errorAndStatusColor[FluentAliasTokens.ErrorAndStatusColorTokens.DangerForeground1].value()
        else
            FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground2].value()
    }

    @Composable
    open fun assistiveTextTypography(textFieldInfo: TextFieldInfo): TextStyle {
        return FluentTheme.aliasTokens.typography[FluentAliasTokens.TypographyTokens.Caption2]
    }

    @Composable
    open fun hintColor(textFieldInfo: TextFieldInfo): Color {
        return FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground2].value()
    }

    @Composable
    open fun hintTextTypography(textFieldInfo: TextFieldInfo): TextStyle {
        return FluentTheme.aliasTokens.typography[FluentAliasTokens.TypographyTokens.Body1]
    }

    @Composable
    open fun inputTextColor(textFieldInfo: TextFieldInfo): StateColor {
        return StateColor(
            rest = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground1].value(),
            disabled = FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundDisable1].value()
        )
    }

    @Composable
    open fun inputTextTypography(textFieldInfo: TextFieldInfo): TextStyle {
        return FluentTheme.aliasTokens.typography[FluentAliasTokens.TypographyTokens.Body1]
    }

    @Composable
    open fun trailingAccessoryTextColor(textFieldInfo: TextFieldInfo): Color {
        return FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.Foreground2].value()
    }

    @Composable
    open fun trailingAccessoryTextTypography(textFieldInfo: TextFieldInfo): TextStyle {
        return FluentTheme.aliasTokens.typography[FluentAliasTokens.TypographyTokens.Body1]
    }

    @Composable
    open fun leftRightPadding(textFieldInfo: TextFieldInfo): PaddingValues {
        return PaddingValues(
            start = FluentGlobalTokens.SizeTokens.Size160.value,
            end = FluentGlobalTokens.SizeTokens.Size160.value
        )
    }

    @Composable
    open fun labelPadding(textFieldInfo: TextFieldInfo): PaddingValues {
        return if (textFieldInfo.hasIcon)
            PaddingValues(
                start = FluentGlobalTokens.SizeTokens.Size160.value + this.leadingIconSize(
                    textFieldInfo
                )
            )
        else PaddingValues(FluentGlobalTokens.SizeTokens.SizeNone.value)
    }

    @Composable
    open fun assistiveTextPadding(textFieldInfo: TextFieldInfo): PaddingValues {
        return if (textFieldInfo.hasIcon)
            PaddingValues(
                start = FluentGlobalTokens.SizeTokens.Size160.value + this.leadingIconSize(
                    textFieldInfo
                ),
                top = FluentGlobalTokens.SizeTokens.Size40.value,
                bottom = FluentGlobalTokens.SizeTokens.Size40.value
            )
        else PaddingValues(
            top = FluentGlobalTokens.SizeTokens.Size40.value,
            bottom = FluentGlobalTokens.SizeTokens.Size40.value
        )
    }

    @Composable
    open fun leadingIconSize(textFieldInfo: TextFieldInfo): Dp =
        FluentGlobalTokens.IconSizeTokens.IconSize240.value

    @Composable
    open fun trailingIconSize(textFieldInfo: TextFieldInfo): Dp =
        FluentGlobalTokens.IconSizeTokens.IconSize240.value

    @Composable
    open fun strokeWidth(textFieldInfo: TextFieldInfo): Dp =
        FluentGlobalTokens.StrokeWidthTokens.StrokeWidth05.value

}
````

## File: src/main/java/com/microsoft/fluentui/theme/token/controlTokens/ToggleSwitchTokens.kt
````kotlin
package com.microsoft.fluentui.theme.token.controlTokens

import android.os.Parcelable
import androidx.compose.runtime.Composable
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.theme.FluentTheme.aliasTokens
import com.microsoft.fluentui.theme.FluentTheme.themeMode
import com.microsoft.fluentui.theme.token.*
import kotlinx.parcelize.Parcelize

open class ToggleSwitchInfo(
    val checked: Boolean = true,
) : ControlInfo

@Parcelize
open class ToggleSwitchTokens : IControlToken, Parcelable {

    @Composable
    open fun trackColor(switchInfo: ToggleSwitchInfo): StateColor {
        return StateColor(
            rest = aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background5].value(
                themeMode = themeMode
            ),
            pressed = aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background5].value(
                themeMode = themeMode
            ),
            disabled = aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background5].value(
                themeMode = themeMode
            ),
            focused = aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.Background5].value(
                themeMode = themeMode
            ),
            selectedFocused = aliasTokens.brandBackgroundColor[FluentAliasTokens.BrandBackgroundColorTokens.BrandBackground1].value(
                themeMode = themeMode
            ),
            selected = aliasTokens.brandBackgroundColor[FluentAliasTokens.BrandBackgroundColorTokens.BrandBackground1].value(
                themeMode = themeMode
            ),
            selectedPressed = aliasTokens.brandBackgroundColor[FluentAliasTokens.BrandBackgroundColorTokens.BrandBackground1].value(
                themeMode = themeMode
            ),
            selectedDisabled = aliasTokens.brandBackgroundColor[FluentAliasTokens.BrandBackgroundColorTokens.BrandBackgroundDisabled].value(
                themeMode = themeMode
            )
        )
    }

    @Composable
    open fun knobColor(switchInfo: ToggleSwitchInfo): StateColor {
        return StateColor(
            rest = aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.BackgroundLightStatic].value(
                themeMode = themeMode
            ),
            pressed = aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.BackgroundLightStatic].value(
                themeMode = themeMode
            ),
            disabled = aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.BackgroundLightStaticDisabled].value(
                themeMode = themeMode
            ),
            focused = aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.BackgroundLightStatic].value(
                themeMode = themeMode
            ),
            selectedFocused = aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.BackgroundLightStatic].value(
                themeMode = themeMode
            ),
            selected = aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.BackgroundLightStatic].value(
                themeMode = themeMode
            ),
            selectedPressed = aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.BackgroundLightStatic].value(
                themeMode = themeMode
            ),
            selectedDisabled = aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.BackgroundLightStaticDisabled].value(
                themeMode = themeMode
            )
        )
    }

    @Composable
    open fun elevation(switchInfo: ToggleSwitchInfo): StateElevation {
        return StateElevation(
            rest = FluentGlobalTokens.ShadowTokens.Shadow08.value,
            pressed = FluentGlobalTokens.ShadowTokens.Shadow08.value,
            selected = FluentGlobalTokens.ShadowTokens.Shadow08.value,
            focused = FluentGlobalTokens.ShadowTokens.Shadow08.value,
            disabled = 0.dp
        )
    }

    open val fixedTrackHeight = 32.dp
    open val fixedTrackWidth = 52.dp
    open val restKnobDiameter = 26.dp
    open val pressedKnobDiameter = 24.dp
    open val knobRippleRadius = 24.dp
    open val restPaddingTrack = 3.dp
    open val pressedPaddingTrack = 4.dp
}
````

## File: src/main/java/com/microsoft/fluentui/theme/token/controlTokens/TooltipTokens.kt
````kotlin
package com.microsoft.fluentui.theme.token.controlTokens

import android.os.Parcelable
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.runtime.Composable
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.ControlInfo
import com.microsoft.fluentui.theme.token.FluentAliasTokens
import com.microsoft.fluentui.theme.token.FluentGlobalTokens
import com.microsoft.fluentui.theme.token.IControlToken
import kotlinx.parcelize.Parcelize

open class TooltipInfo : ControlInfo

@Parcelize
open class TooltipTokens : IControlToken, Parcelable {
    @Composable
    open fun backgroundBrush(tooltipInfo: TooltipInfo): Brush =
        SolidColor(
            FluentTheme.aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.BackgroundDarkStatic].value(
                themeMode = FluentTheme.themeMode
            )
        )

    @Composable
    open fun tipColor(tooltipInfo: TooltipInfo): Color =
        FluentTheme.aliasTokens.neutralBackgroundColor[FluentAliasTokens.NeutralBackgroundColorTokens.BackgroundDarkStatic].value(
            themeMode = FluentTheme.themeMode
        )


    @Composable
    open fun textColor(tooltipInfo: TooltipInfo): Color =
        FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundLightStatic].value(
            themeMode = FluentTheme.themeMode
        )

    @Composable
    open fun textTypography(tooltipInfo: TooltipInfo): TextStyle {
        return FluentTheme.aliasTokens.typography[FluentAliasTokens.TypographyTokens.Body2]
    }

    @Composable
    open fun titleColor(tooltipInfo: TooltipInfo): Color =
        FluentTheme.aliasTokens.neutralForegroundColor[FluentAliasTokens.NeutralForegroundColorTokens.ForegroundLightStatic].value(
            themeMode = FluentTheme.themeMode
        )

    @Composable
    open fun titleTextSpacing(tooltipInfo: TooltipInfo): Dp =
        FluentGlobalTokens.SizeTokens.Size80.value

    @Composable
    open fun titleTypography(tooltipInfo: TooltipInfo): TextStyle {
        return FluentTheme.aliasTokens.typography[FluentAliasTokens.TypographyTokens.Body1Strong]
    }

    @Composable
    open fun cornerRadius(tooltipInfo: TooltipInfo): Dp =
        FluentGlobalTokens.CornerRadiusTokens.CornerRadius80.value

    @Composable
    open fun padding(tooltipInfo: TooltipInfo): PaddingValues =
        PaddingValues(
            horizontal = FluentGlobalTokens.SizeTokens.Size80.value,
            vertical = FluentGlobalTokens.SizeTokens.Size120.value
        )

    open fun elevation(tooltipInfo: TooltipInfo): Dp =
        FluentGlobalTokens.ShadowTokens.Shadow16.value

    open fun margin(tooltipInfo: TooltipInfo): Dp =
        FluentGlobalTokens.SizeTokens.Size20.value

    open fun maxWidth(tooltipInfo: TooltipInfo): Dp = 300.dp

}
````

## File: src/main/java/com/microsoft/fluentui/theme/token/controlTokens/ViewPagerTokens.kt
````kotlin
package com.microsoft.fluentui.theme.token.controlTokens

import android.os.Parcelable
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.runtime.Composable
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.ControlInfo
import com.microsoft.fluentui.theme.token.FluentAliasTokens
import com.microsoft.fluentui.theme.token.FluentGlobalTokens
import com.microsoft.fluentui.theme.token.IControlToken
import kotlinx.parcelize.Parcelize


open class ViewPagerInfo: ControlInfo
@Parcelize
open class ViewPagerTokens : IControlToken, Parcelable {

    @Composable
    open fun contentPadding(viewPagerInfo: ViewPagerInfo): PaddingValues {
        return PaddingValues(0.dp)
    }

    @Composable
    open fun pageSpacing(viewPagerInfo: ViewPagerInfo): Dp {
        return 0.dp
    }
}
````

## File: src/main/java/com/microsoft/fluentui/theme/token/FluentAliasTokens.kt
````kotlin
//
//  Copyright (c) Microsoft Corporation. All rights reserved.
//  Licensed under the MIT License.
//
package com.microsoft.fluentui.theme.token

import android.os.Parcelable
import androidx.compose.runtime.compositionLocalOf
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.unit.sp
import kotlinx.parcelize.IgnoredOnParcel
import kotlinx.parcelize.Parcelize

object FluentAliasTokens {
    enum class BrandColorTokens {
        Color10,
        Color20,
        Color30,
        Color40,
        Color50,
        Color60,
        Color70,
        Color80,
        Color90,
        Color100,
        Color110,
        Color120,
        Color130,
        Color140,
        Color150,
        Color160
    }

    enum class NeutralBackgroundColorTokens {
        Background1,
        Background1Pressed,
        Background1Selected,
        Background2,
        Background2Pressed,
        Background2Selected,
        Background3,
        Background3Pressed,
        Background3Selected,
        Background4,
        Background4Pressed,
        Background4Selected,
        Background5,
        Background5Pressed,
        Background5Selected,
        Background6,
        CanvasBackground,
        BackgroundLightStatic,
        BackgroundLightStaticDisabled,
        BackgroundDarkStatic,
        BackgroundInverted,
        BackgroundDisabled,
        Stencil1,
        Stencil2
    }

    enum class NeutralForegroundColorTokens {
        Foreground1,
        Foreground2,
        Foreground3,
        ForegroundDisable1,
        ForegroundDisable2,
        ForegroundOnColor,
        ForegroundDarkStatic,
        ForegroundLightStatic
    }

    enum class NeutralStrokeColorTokens {
        Stroke1,
        Stroke2,
        StrokeDisabled,
        StrokeAccessible,
        StrokeFocus1,
        StrokeFocus2
    }

    enum class BrandBackgroundColorTokens {
        BrandBackground1,
        BrandBackground1Pressed,
        BrandBackground1Selected,
        BrandBackground2,
        BrandBackground2Pressed,
        BrandBackground2Selected,
        BrandBackground3,
        BrandBackgroundTint,
        BrandBackgroundDisabled
    }

    enum class BrandForegroundColorTokens {
        BrandForeground1,
        BrandForeground1Pressed,
        BrandForeground1Selected,
        BrandForegroundTint,
        BrandForegroundDisabled1,
        BrandForegroundDisabled2
    }

    enum class BrandStrokeColorTokens {
        BrandStroke1,
        BrandStroke1Pressed,
        BrandStroke1Selected,
    }

    enum class ErrorAndStatusColorTokens {
        DangerBackground1,
        DangerBackground2,
        DangerForeground1,
        DangerForeground2,
        SuccessBackground1,
        SuccessBackground2,
        SuccessForeground1,
        SuccessForeground2,
        WarningBackground1,
        WarningBackground2,
        WarningForeground1,
        WarningForeground2,
        SevereBackground1,
        SevereBackground2,
        SevereForeground1,
        SevereForeground2
    }

    enum class PresenceColorTokens {
        Away,
        DND,
        Busy,
        Available,
        OutOfOffice
    }

    enum class TypographyTokens {
        Display,
        LargeTitle,
        Title1,
        Title2,
        Title3,
        Body1Strong,
        Body1,
        Body2Strong,
        Body2,
        Caption1Strong,
        Caption1,
        Caption2
    }
}

interface IAliasTokens {
    val brandColor: TokenSet<FluentAliasTokens.BrandColorTokens, Color>
    val neutralBackgroundColor: TokenSet<FluentAliasTokens.NeutralBackgroundColorTokens, FluentColor>
    val neutralForegroundColor: TokenSet<FluentAliasTokens.NeutralForegroundColorTokens, FluentColor>
    val neutralStrokeColor: TokenSet<FluentAliasTokens.NeutralStrokeColorTokens, FluentColor>
    val brandBackgroundColor: TokenSet<FluentAliasTokens.BrandBackgroundColorTokens, FluentColor>
    val brandForegroundColor: TokenSet<FluentAliasTokens.BrandForegroundColorTokens, FluentColor>
    val brandStroke: TokenSet<FluentAliasTokens.BrandStrokeColorTokens, FluentColor>
    val errorAndStatusColor: TokenSet<FluentAliasTokens.ErrorAndStatusColorTokens, FluentColor>
    val presenceColor: TokenSet<FluentAliasTokens.PresenceColorTokens, FluentColor>
    val typography: TokenSet<FluentAliasTokens.TypographyTokens, TextStyle>
}


/**
 * Extend the AliasToken to add custom token or providing new values.*
 */
@Parcelize
open class AliasTokens : IAliasTokens, Parcelable {

    @IgnoredOnParcel
    override val brandColor: TokenSet<FluentAliasTokens.BrandColorTokens, Color> by lazy {
        TokenSet { token ->
            when (token) {
                FluentAliasTokens.BrandColorTokens.Color10 -> Color(0xFF061724)
                FluentAliasTokens.BrandColorTokens.Color20 -> Color(0xFF082338)
                FluentAliasTokens.BrandColorTokens.Color30 -> Color(0xFF0A2E4A)
                FluentAliasTokens.BrandColorTokens.Color40 -> Color(0xFF0C3B5E)
                FluentAliasTokens.BrandColorTokens.Color50 -> Color(0xFF0E4775)
                FluentAliasTokens.BrandColorTokens.Color60 -> Color(0xFF0F548C)
                FluentAliasTokens.BrandColorTokens.Color70 -> Color(0xFF115EA3)
                FluentAliasTokens.BrandColorTokens.Color80 -> Color(0xFF0F6CBD)
                FluentAliasTokens.BrandColorTokens.Color90 -> Color(0xFF2886DE)
                FluentAliasTokens.BrandColorTokens.Color100 -> Color(0xFF479EF5)
                FluentAliasTokens.BrandColorTokens.Color110 -> Color(0xFF62ABF5)
                FluentAliasTokens.BrandColorTokens.Color120 -> Color(0xFF77B7F7)
                FluentAliasTokens.BrandColorTokens.Color130 -> Color(0xFF96C6FA)
                FluentAliasTokens.BrandColorTokens.Color140 -> Color(0xFFB4D6FA)
                FluentAliasTokens.BrandColorTokens.Color150 -> Color(0xFFCFE4FA)
                FluentAliasTokens.BrandColorTokens.Color160 -> Color(0xFFEBF3FC)
            }
        }
    }

    @IgnoredOnParcel
    override val neutralBackgroundColor: TokenSet<FluentAliasTokens.NeutralBackgroundColorTokens, FluentColor> by lazy {
        TokenSet { token ->
            when (token) {
                FluentAliasTokens.NeutralBackgroundColorTokens.Background1 ->
                    FluentColor(
                        light = FluentGlobalTokens.NeutralColorTokens.White.value,
                        dark = FluentGlobalTokens.NeutralColorTokens.Black.value
                    )

                FluentAliasTokens.NeutralBackgroundColorTokens.Background1Pressed ->
                    FluentColor(
                        light = FluentGlobalTokens.NeutralColorTokens.Grey88.value,
                        dark = FluentGlobalTokens.NeutralColorTokens.Grey18.value
                    )

                FluentAliasTokens.NeutralBackgroundColorTokens.Background1Selected ->
                    FluentColor(
                        light = FluentGlobalTokens.NeutralColorTokens.Grey92.value,
                        dark = FluentGlobalTokens.NeutralColorTokens.Grey14.value
                    )

                FluentAliasTokens.NeutralBackgroundColorTokens.Background2 ->
                    FluentColor(
                        light = FluentGlobalTokens.NeutralColorTokens.White.value,
                        dark = FluentGlobalTokens.NeutralColorTokens.Grey12.value
                    )

                FluentAliasTokens.NeutralBackgroundColorTokens.Background2Pressed ->
                    FluentColor(
                        light = FluentGlobalTokens.NeutralColorTokens.Grey88.value,
                        dark = FluentGlobalTokens.NeutralColorTokens.Grey30.value
                    )

                FluentAliasTokens.NeutralBackgroundColorTokens.Background2Selected ->
                    FluentColor(
                        light = FluentGlobalTokens.NeutralColorTokens.Grey92.value,
                        dark = FluentGlobalTokens.NeutralColorTokens.Grey26.value
                    )

                FluentAliasTokens.NeutralBackgroundColorTokens.Background3 ->
                    FluentColor(
                        light = FluentGlobalTokens.NeutralColorTokens.White.value,
                        dark = FluentGlobalTokens.NeutralColorTokens.Grey16.value
                    )

                FluentAliasTokens.NeutralBackgroundColorTokens.Background3Pressed ->
                    FluentColor(
                        light = FluentGlobalTokens.NeutralColorTokens.Grey88.value,
                        dark = FluentGlobalTokens.NeutralColorTokens.Grey34.value
                    )

                FluentAliasTokens.NeutralBackgroundColorTokens.Background3Selected ->
                    FluentColor(
                        light = FluentGlobalTokens.NeutralColorTokens.Grey92.value,
                        dark = FluentGlobalTokens.NeutralColorTokens.Grey30.value
                    )

                FluentAliasTokens.NeutralBackgroundColorTokens.Background4 ->
                    FluentColor(
                        light = FluentGlobalTokens.NeutralColorTokens.Grey98.value,
                        dark = FluentGlobalTokens.NeutralColorTokens.Grey20.value
                    )

                FluentAliasTokens.NeutralBackgroundColorTokens.Background4Pressed ->
                    FluentColor(
                        light = FluentGlobalTokens.NeutralColorTokens.Grey86.value,
                        dark = FluentGlobalTokens.NeutralColorTokens.Grey38.value
                    )

                FluentAliasTokens.NeutralBackgroundColorTokens.Background4Selected ->
                    FluentColor(
                        light = FluentGlobalTokens.NeutralColorTokens.Grey90.value,
                        dark = FluentGlobalTokens.NeutralColorTokens.Grey34.value
                    )

                FluentAliasTokens.NeutralBackgroundColorTokens.Background5 ->
                    FluentColor(
                        light = FluentGlobalTokens.NeutralColorTokens.Grey94.value,
                        dark = FluentGlobalTokens.NeutralColorTokens.Grey24.value
                    )

                FluentAliasTokens.NeutralBackgroundColorTokens.Background5Pressed ->
                    FluentColor(
                        light = FluentGlobalTokens.NeutralColorTokens.Grey82.value,
                        dark = FluentGlobalTokens.NeutralColorTokens.Grey42.value
                    )

                FluentAliasTokens.NeutralBackgroundColorTokens.Background5Selected ->
                    FluentColor(
                        light = FluentGlobalTokens.NeutralColorTokens.Grey86.value,
                        dark = FluentGlobalTokens.NeutralColorTokens.Grey38.value
                    )

                FluentAliasTokens.NeutralBackgroundColorTokens.Background6 ->
                    FluentColor(
                        light = FluentGlobalTokens.NeutralColorTokens.Grey82.value,
                        dark = FluentGlobalTokens.NeutralColorTokens.Grey36.value
                    )

                FluentAliasTokens.NeutralBackgroundColorTokens.CanvasBackground ->
                    FluentColor(
                        light = FluentGlobalTokens.NeutralColorTokens.Grey96.value,
                        dark = FluentGlobalTokens.NeutralColorTokens.Grey8.value
                    )

                FluentAliasTokens.NeutralBackgroundColorTokens.BackgroundLightStatic ->
                    FluentColor(
                        light = FluentGlobalTokens.NeutralColorTokens.White.value,
                        dark = FluentGlobalTokens.NeutralColorTokens.White.value
                    )

                FluentAliasTokens.NeutralBackgroundColorTokens.BackgroundLightStaticDisabled ->
                    FluentColor(
                        light = FluentGlobalTokens.NeutralColorTokens.White.value,
                        dark = FluentGlobalTokens.NeutralColorTokens.Grey68.value
                    )

                FluentAliasTokens.NeutralBackgroundColorTokens.BackgroundDarkStatic ->
                    FluentColor(
                        light = FluentGlobalTokens.NeutralColorTokens.Grey14.value,
                        dark = FluentGlobalTokens.NeutralColorTokens.Grey24.value
                    )

                FluentAliasTokens.NeutralBackgroundColorTokens.BackgroundInverted ->
                    FluentColor(
                        light = FluentGlobalTokens.NeutralColorTokens.Grey46.value,
                        dark = FluentGlobalTokens.NeutralColorTokens.Grey72.value
                    )

                FluentAliasTokens.NeutralBackgroundColorTokens.BackgroundDisabled ->
                    FluentColor(
                        light = FluentGlobalTokens.NeutralColorTokens.Grey88.value,
                        dark = FluentGlobalTokens.NeutralColorTokens.Grey32.value
                    )

                FluentAliasTokens.NeutralBackgroundColorTokens.Stencil1 ->
                    FluentColor(
                        light = FluentGlobalTokens.NeutralColorTokens.Grey90.value,
                        dark = FluentGlobalTokens.NeutralColorTokens.Grey34.value
                    )

                FluentAliasTokens.NeutralBackgroundColorTokens.Stencil2 ->
                    FluentColor(
                        light = FluentGlobalTokens.NeutralColorTokens.Grey98.value,
                        dark = FluentGlobalTokens.NeutralColorTokens.Grey20.value
                    )
            }
        }
    }


    @IgnoredOnParcel
    override val neutralForegroundColor: TokenSet<FluentAliasTokens.NeutralForegroundColorTokens, FluentColor> by lazy {
        TokenSet { token ->
            when (token) {
                FluentAliasTokens.NeutralForegroundColorTokens.Foreground1 ->
                    FluentColor(
                        light = FluentGlobalTokens.NeutralColorTokens.Grey14.value,
                        dark = FluentGlobalTokens.NeutralColorTokens.White.value
                    )
                FluentAliasTokens.NeutralForegroundColorTokens.Foreground2 ->
                    FluentColor(
                        light = FluentGlobalTokens.NeutralColorTokens.Grey38.value,
                        dark = FluentGlobalTokens.NeutralColorTokens.Grey84.value
                    )
                FluentAliasTokens.NeutralForegroundColorTokens.Foreground3 ->
                    FluentColor(
                        light = FluentGlobalTokens.NeutralColorTokens.Grey50.value,
                        dark = FluentGlobalTokens.NeutralColorTokens.Grey68.value
                    )
                FluentAliasTokens.NeutralForegroundColorTokens.ForegroundDisable1 ->
                    FluentColor(
                        light = FluentGlobalTokens.NeutralColorTokens.Grey74.value,
                        dark = FluentGlobalTokens.NeutralColorTokens.Grey36.value
                    )
                FluentAliasTokens.NeutralForegroundColorTokens.ForegroundDisable2 ->
                    FluentColor(
                        light = FluentGlobalTokens.NeutralColorTokens.White.value,
                        dark = FluentGlobalTokens.NeutralColorTokens.Grey18.value
                    )
                FluentAliasTokens.NeutralForegroundColorTokens.ForegroundOnColor ->
                    FluentColor(
                        light = FluentGlobalTokens.NeutralColorTokens.White.value,
                        dark = FluentGlobalTokens.NeutralColorTokens.Black.value
                    )
                FluentAliasTokens.NeutralForegroundColorTokens.ForegroundDarkStatic ->
                    FluentColor(
                        light = FluentGlobalTokens.NeutralColorTokens.Black.value,
                        dark = FluentGlobalTokens.NeutralColorTokens.Black.value
                    )
                FluentAliasTokens.NeutralForegroundColorTokens.ForegroundLightStatic ->
                    FluentColor(
                        light = FluentGlobalTokens.NeutralColorTokens.White.value,
                        dark = FluentGlobalTokens.NeutralColorTokens.White.value
                    )
            }
        }
    }


    @IgnoredOnParcel
    override val neutralStrokeColor: TokenSet<FluentAliasTokens.NeutralStrokeColorTokens, FluentColor> by lazy {
        TokenSet { token ->
            when (token) {
                FluentAliasTokens.NeutralStrokeColorTokens.Stroke1 ->
                    FluentColor(
                        light = FluentGlobalTokens.NeutralColorTokens.Grey82.value,
                        dark = FluentGlobalTokens.NeutralColorTokens.Grey30.value
                    )

                FluentAliasTokens.NeutralStrokeColorTokens.Stroke2 ->
                    FluentColor(
                        light = FluentGlobalTokens.NeutralColorTokens.Grey88.value,
                        dark = FluentGlobalTokens.NeutralColorTokens.Grey24.value
                    )

                FluentAliasTokens.NeutralStrokeColorTokens.StrokeDisabled ->
                    FluentColor(
                        light = FluentGlobalTokens.NeutralColorTokens.Grey88.value,
                        dark = FluentGlobalTokens.NeutralColorTokens.Grey26.value
                    )

                FluentAliasTokens.NeutralStrokeColorTokens.StrokeAccessible ->
                    FluentColor(
                        light = FluentGlobalTokens.NeutralColorTokens.Grey38.value,
                        dark = FluentGlobalTokens.NeutralColorTokens.Grey62.value
                    )

                FluentAliasTokens.NeutralStrokeColorTokens.StrokeFocus1 ->
                    FluentColor(
                        light = FluentGlobalTokens.NeutralColorTokens.White.value,
                        dark = FluentGlobalTokens.NeutralColorTokens.Black.value
                    )

                FluentAliasTokens.NeutralStrokeColorTokens.StrokeFocus2 ->
                    FluentColor(
                        light = FluentGlobalTokens.NeutralColorTokens.Black.value,
                        dark = FluentGlobalTokens.NeutralColorTokens.White.value
                    )
            }
        }
    }


    @IgnoredOnParcel
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
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color50],
                        dark = brandColor[FluentAliasTokens.BrandColorTokens.Color130]
                    )

                FluentAliasTokens.BrandBackgroundColorTokens.BrandBackground1Selected ->
                    FluentColor(
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color60],
                        dark = brandColor[FluentAliasTokens.BrandColorTokens.Color120]
                    )

                FluentAliasTokens.BrandBackgroundColorTokens.BrandBackground2 ->
                    FluentColor(
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color70],
                        dark = Color.Unspecified
                    )

                FluentAliasTokens.BrandBackgroundColorTokens.BrandBackground2Pressed ->
                    FluentColor(
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color40],
                        dark = Color.Unspecified
                    )

                FluentAliasTokens.BrandBackgroundColorTokens.BrandBackground2Selected ->
                    FluentColor(
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color50],
                        dark = Color.Unspecified
                    )

                FluentAliasTokens.BrandBackgroundColorTokens.BrandBackground3 ->
                    FluentColor(
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color60],
                        dark = Color.Unspecified
                    )

                FluentAliasTokens.BrandBackgroundColorTokens.BrandBackgroundTint ->
                    FluentColor(
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color150],
                        dark = brandColor[FluentAliasTokens.BrandColorTokens.Color30]
                    )

                FluentAliasTokens.BrandBackgroundColorTokens.BrandBackgroundDisabled ->
                    FluentColor(
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color140],
                        dark = brandColor[FluentAliasTokens.BrandColorTokens.Color40]
                    )
            }
        }
    }


    @IgnoredOnParcel
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
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color50],
                        dark = brandColor[FluentAliasTokens.BrandColorTokens.Color130]
                    )

                FluentAliasTokens.BrandForegroundColorTokens.BrandForeground1Selected ->
                    FluentColor(
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color60],
                        dark = brandColor[FluentAliasTokens.BrandColorTokens.Color120]
                    )

                FluentAliasTokens.BrandForegroundColorTokens.BrandForegroundTint ->
                    FluentColor(
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color60],
                        dark = brandColor[FluentAliasTokens.BrandColorTokens.Color130]
                    )

                FluentAliasTokens.BrandForegroundColorTokens.BrandForegroundDisabled1 ->
                    FluentColor(
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color90],
                        dark = brandColor[FluentAliasTokens.BrandColorTokens.Color90]
                    )

                FluentAliasTokens.BrandForegroundColorTokens.BrandForegroundDisabled2 ->
                    FluentColor(
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color140],
                        dark = brandColor[FluentAliasTokens.BrandColorTokens.Color40]
                    )
            }
        }
    }

    @IgnoredOnParcel
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
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color50],
                        dark = brandColor[FluentAliasTokens.BrandColorTokens.Color130]
                    )

                FluentAliasTokens.BrandStrokeColorTokens.BrandStroke1Selected ->
                    FluentColor(
                        light = brandColor[FluentAliasTokens.BrandColorTokens.Color60],
                        dark = brandColor[FluentAliasTokens.BrandColorTokens.Color120]
                    )
            }
        }
    }

    @IgnoredOnParcel
    override val errorAndStatusColor: TokenSet<FluentAliasTokens.ErrorAndStatusColorTokens, FluentColor> by lazy {
        TokenSet { token ->
            when (token) {
                FluentAliasTokens.ErrorAndStatusColorTokens.DangerBackground1 ->
                    FluentColor(
                        light = FluentGlobalTokens.SharedColorSets.Red.tint60,
                        dark = FluentGlobalTokens.SharedColorSets.Red.shade40
                    )

                FluentAliasTokens.ErrorAndStatusColorTokens.DangerBackground2 ->
                    FluentColor(
                        light = FluentGlobalTokens.SharedColorSets.Red.primary,
                        dark = FluentGlobalTokens.SharedColorSets.Red.shade10
                    )
                FluentAliasTokens.ErrorAndStatusColorTokens.DangerForeground1 ->
                    FluentColor(
                        light = FluentGlobalTokens.SharedColorSets.Red.shade10,
                        dark = FluentGlobalTokens.SharedColorSets.Red.tint30
                    )
                FluentAliasTokens.ErrorAndStatusColorTokens.DangerForeground2 ->
                    FluentColor(
                        light = FluentGlobalTokens.SharedColorSets.Red.primary,
                        dark = FluentGlobalTokens.SharedColorSets.Red.tint30
                    )
                FluentAliasTokens.ErrorAndStatusColorTokens.SuccessBackground1 ->
                    FluentColor(
                        light = FluentGlobalTokens.SharedColorSets.Green.tint60,
                        dark = FluentGlobalTokens.SharedColorSets.Green.shade40
                    )

                FluentAliasTokens.ErrorAndStatusColorTokens.SuccessBackground2 ->
                    FluentColor(
                        light = FluentGlobalTokens.SharedColorSets.Green.primary,
                        dark = FluentGlobalTokens.SharedColorSets.Green.shade10
                    )
                FluentAliasTokens.ErrorAndStatusColorTokens.SuccessForeground1 ->
                    FluentColor(
                        light = FluentGlobalTokens.SharedColorSets.Green.shade10,
                        dark = FluentGlobalTokens.SharedColorSets.Green.tint30
                    )
                FluentAliasTokens.ErrorAndStatusColorTokens.SuccessForeground2 ->
                    FluentColor(
                        light = FluentGlobalTokens.SharedColorSets.Green.primary,
                        dark = FluentGlobalTokens.SharedColorSets.Green.tint30
                    )
                FluentAliasTokens.ErrorAndStatusColorTokens.WarningBackground1 ->
                    FluentColor(
                        light = FluentGlobalTokens.SharedColorSets.Yellow.tint60,
                        dark = FluentGlobalTokens.SharedColorSets.Yellow.shade40
                    )

                FluentAliasTokens.ErrorAndStatusColorTokens.WarningBackground2 ->
                    FluentColor(
                        light = FluentGlobalTokens.SharedColorSets.Yellow.primary,
                        dark = FluentGlobalTokens.SharedColorSets.Yellow.shade10
                    )
                FluentAliasTokens.ErrorAndStatusColorTokens.WarningForeground1 ->
                    FluentColor(
                        light = FluentGlobalTokens.SharedColorSets.Yellow.shade30,
                        dark = FluentGlobalTokens.SharedColorSets.Yellow.tint30
                    )
                FluentAliasTokens.ErrorAndStatusColorTokens.WarningForeground2 ->
                    FluentColor(
                        light = FluentGlobalTokens.SharedColorSets.Yellow.shade30,
                        dark = FluentGlobalTokens.SharedColorSets.Yellow.tint30
                    )
                FluentAliasTokens.ErrorAndStatusColorTokens.SevereBackground1 ->
                    FluentColor(
                        light = FluentGlobalTokens.SharedColorSets.Orange.tint60,
                        dark = FluentGlobalTokens.SharedColorSets.Orange.shade40
                    )

                FluentAliasTokens.ErrorAndStatusColorTokens.SevereBackground2 ->
                    FluentColor(
                        light = FluentGlobalTokens.SharedColorSets.Orange.primary,
                        dark = FluentGlobalTokens.SharedColorSets.Orange.shade10
                    )
                FluentAliasTokens.ErrorAndStatusColorTokens.SevereForeground1 ->
                    FluentColor(
                        light = FluentGlobalTokens.SharedColorSets.Orange.shade10,
                        dark = FluentGlobalTokens.SharedColorSets.Orange.tint30
                    )
                FluentAliasTokens.ErrorAndStatusColorTokens.SevereForeground2 ->
                    FluentColor(
                        light = FluentGlobalTokens.SharedColorSets.Orange.shade20,
                        dark = FluentGlobalTokens.SharedColorSets.Orange.tint30
                    )
            }
        }
    }

    @IgnoredOnParcel
    override val presenceColor: TokenSet<FluentAliasTokens.PresenceColorTokens, FluentColor> by lazy {
        TokenSet { token ->
            when (token) {
                FluentAliasTokens.PresenceColorTokens.Away ->
                    FluentColor(
                        light = FluentGlobalTokens.SharedColorSets.Marigold.primary,
                        dark = FluentGlobalTokens.SharedColorSets.Marigold.primary
                    )
                FluentAliasTokens.PresenceColorTokens.Busy, FluentAliasTokens.PresenceColorTokens.DND ->
                    FluentColor(
                        light = FluentGlobalTokens.SharedColorSets.Red.primary,
                        dark = FluentGlobalTokens.SharedColorSets.Red.tint10
                    )
                FluentAliasTokens.PresenceColorTokens.Available ->
                    FluentColor(
                        light = FluentGlobalTokens.SharedColorSets.Green.primary,
                        dark = FluentGlobalTokens.SharedColorSets.Green.tint20
                    )
                FluentAliasTokens.PresenceColorTokens.OutOfOffice ->
                    FluentColor(
                        light = FluentGlobalTokens.SharedColorSets.Berry.primary,
                        dark = FluentGlobalTokens.SharedColorSets.Berry.tint20
                    )
            }
        }
    }


    @IgnoredOnParcel
    override val typography: TokenSet<FluentAliasTokens.TypographyTokens, TextStyle> by lazy {
        TokenSet { token ->
            when (token) {
                FluentAliasTokens.TypographyTokens.Display ->
                    TextStyle(
                        fontSize = FluentGlobalTokens.FontSizeTokens.Size900.value,
                        lineHeight = FluentGlobalTokens.LineHeightTokens.Size900.value,
                        fontWeight = FluentGlobalTokens.FontWeightTokens.Regular.value,
                        letterSpacing = (-0.5).sp
                    )
                FluentAliasTokens.TypographyTokens.LargeTitle ->
                    TextStyle(
                        fontSize = FluentGlobalTokens.FontSizeTokens.Size800.value,
                        lineHeight = FluentGlobalTokens.LineHeightTokens.Size800.value,
                        fontWeight = FluentGlobalTokens.FontWeightTokens.Regular.value,
                        letterSpacing = (-0.25).sp
                    )
                FluentAliasTokens.TypographyTokens.Title1 ->
                    TextStyle(
                        fontSize = FluentGlobalTokens.FontSizeTokens.Size700.value,
                        lineHeight = FluentGlobalTokens.LineHeightTokens.Size700.value,
                        fontWeight = FluentGlobalTokens.FontWeightTokens.Bold.value,
                        letterSpacing = 0.sp
                    )
                FluentAliasTokens.TypographyTokens.Title2 ->
                    TextStyle(
                        fontSize = FluentGlobalTokens.FontSizeTokens.Size600.value,
                        lineHeight = FluentGlobalTokens.LineHeightTokens.Size600.value,
                        fontWeight = FluentGlobalTokens.FontWeightTokens.Medium.value,
                        letterSpacing = 0.sp
                    )
                FluentAliasTokens.TypographyTokens.Title3 ->
                    TextStyle(
                        fontSize = FluentGlobalTokens.FontSizeTokens.Size500.value,
                        lineHeight = FluentGlobalTokens.LineHeightTokens.Size500.value,
                        fontWeight = FluentGlobalTokens.FontWeightTokens.Medium.value,
                        letterSpacing = 0.sp
                    )
                FluentAliasTokens.TypographyTokens.Body1Strong ->
                    TextStyle(
                        fontSize = FluentGlobalTokens.FontSizeTokens.Size400.value,
                        lineHeight = FluentGlobalTokens.LineHeightTokens.Size400.value,
                        fontWeight = FluentGlobalTokens.FontWeightTokens.SemiBold.value,
                        letterSpacing = 0.sp
                    )
                FluentAliasTokens.TypographyTokens.Body1 ->
                    TextStyle(
                        fontSize = FluentGlobalTokens.FontSizeTokens.Size400.value,
                        lineHeight = FluentGlobalTokens.LineHeightTokens.Size400.value,
                        fontWeight = FluentGlobalTokens.FontWeightTokens.Regular.value,
                        letterSpacing = 0.sp
                    )
                FluentAliasTokens.TypographyTokens.Body2Strong ->
                    TextStyle(
                        fontSize = FluentGlobalTokens.FontSizeTokens.Size300.value,
                        lineHeight = FluentGlobalTokens.LineHeightTokens.Size300.value,
                        fontWeight = FluentGlobalTokens.FontWeightTokens.Medium.value,
                        letterSpacing = 0.sp
                    )
                FluentAliasTokens.TypographyTokens.Body2 ->
                    TextStyle(
                        fontSize = FluentGlobalTokens.FontSizeTokens.Size300.value,
                        lineHeight = FluentGlobalTokens.LineHeightTokens.Size300.value,
                        fontWeight = FluentGlobalTokens.FontWeightTokens.Regular.value,
                        letterSpacing = 0.sp
                    )
                FluentAliasTokens.TypographyTokens.Caption1Strong ->
                    TextStyle(
                        fontSize = FluentGlobalTokens.FontSizeTokens.Size200.value,
                        lineHeight = FluentGlobalTokens.LineHeightTokens.Size200.value,
                        fontWeight = FluentGlobalTokens.FontWeightTokens.Medium.value,
                        letterSpacing = 0.sp
                    )
                FluentAliasTokens.TypographyTokens.Caption1 ->
                    TextStyle(
                        fontSize = FluentGlobalTokens.FontSizeTokens.Size200.value,
                        lineHeight = FluentGlobalTokens.LineHeightTokens.Size200.value,
                        fontWeight = FluentGlobalTokens.FontWeightTokens.Regular.value,
                        letterSpacing = 0.sp
                    )
                FluentAliasTokens.TypographyTokens.Caption2 ->
                    TextStyle(
                        fontSize = FluentGlobalTokens.FontSizeTokens.Size100.value,
                        lineHeight = FluentGlobalTokens.LineHeightTokens.Size100.value,
                        fontWeight = FluentGlobalTokens.FontWeightTokens.Regular.value,
                        letterSpacing = 0.sp
                    )
            }
        }
    }
}

internal val LocalAliasTokens = compositionLocalOf<IAliasTokens> { AliasTokens() }
````

## File: src/main/java/com/microsoft/fluentui/theme/token/FluentBorder.kt
````kotlin
package com.microsoft.fluentui.theme.token

import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.interaction.InteractionSource
import androidx.compose.foundation.interaction.collectIsFocusedAsState
import androidx.compose.foundation.interaction.collectIsHoveredAsState
import androidx.compose.foundation.interaction.collectIsPressedAsState
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.unit.dp

data class StateBorderStroke(
    val rest: List<BorderStroke> = listOf(BorderStroke(0.dp, Color(0, 0, 0, 0))),
    val pressed: List<BorderStroke> = listOf(BorderStroke(0.dp, Color(0, 0, 0, 0))),
    val selected: List<BorderStroke> = listOf(BorderStroke(0.dp, Color(0, 0, 0, 0))),
    val selectedPressed: List<BorderStroke> = listOf(BorderStroke(0.dp, Color(0, 0, 0, 0))),
    val selectedFocused: List<BorderStroke> = listOf(BorderStroke(0.dp, Color(0, 0, 0, 0))),
    val selectedDisabled: List<BorderStroke> = listOf(BorderStroke(0.dp, Color(0, 0, 0, 0))),
    val focused: List<BorderStroke> = listOf(BorderStroke(0.dp, Color(0, 0, 0, 0))),
    val disabled: List<BorderStroke> = listOf(BorderStroke(0.dp, Color(0, 0, 0, 0))),
){
    @Composable
    fun getBorderStrokeByState(
        enabled: Boolean,
        selected: Boolean,
        interactionSource: InteractionSource
    ): List<BorderStroke> {
        if (enabled) {
            val isPressed by interactionSource.collectIsPressedAsState()
            if (selected && isPressed)
                return this.selectedPressed
            else if (isPressed)
                return this.pressed

            val isFocused by interactionSource.collectIsFocusedAsState()
            if (selected && isFocused)
                return this.selectedFocused
            else if (isFocused)
                return this.focused

            val isHovered by interactionSource.collectIsHoveredAsState()
            if (selected && isHovered)
                return this.selectedFocused
            if (isHovered)
                return this.focused

            if (selected)
                return this.selected

            return this.rest
        } else if (selected)
            return this.selectedDisabled
        else
            return this.disabled
    }
}
````

## File: src/main/java/com/microsoft/fluentui/theme/token/FluentColor.kt
````kotlin
//
//  Copyright (c) Microsoft Corporation. All rights reserved.
//  Licensed under the MIT License.
//

package com.microsoft.fluentui.theme.token

import androidx.compose.foundation.interaction.InteractionSource
import androidx.compose.foundation.interaction.collectIsFocusedAsState
import androidx.compose.foundation.interaction.collectIsHoveredAsState
import androidx.compose.foundation.interaction.collectIsPressedAsState
import androidx.compose.foundation.isSystemInDarkTheme
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.SolidColor
import com.microsoft.fluentui.theme.ThemeMode

private val unspecifiedColor = Color.Unspecified
private val unspecifiedBrush = SolidColor(Color.Unspecified)

class StateColor(
    val rest: Color = unspecifiedColor,
    val pressed: Color = unspecifiedColor,
    val selected: Color = unspecifiedColor,
    val focused: Color = unspecifiedColor,
    val selectedPressed: Color = unspecifiedColor,
    val selectedFocused: Color = unspecifiedColor,
    val selectedDisabled: Color = unspecifiedColor,
    val disabled: Color = unspecifiedColor
) {
    @Composable
    fun getColorByState(
        enabled: Boolean,
        selected: Boolean,
        interactionSource: InteractionSource
    ): Color {
        if (enabled) {
            val isPressed by interactionSource.collectIsPressedAsState()
            if (selected && isPressed)
                return this.selectedPressed
            else if (isPressed)
                return this.pressed

            val isFocused by interactionSource.collectIsFocusedAsState()
            if (selected && isFocused)
                return this.selectedFocused
            else if (isFocused)
                return this.focused

            val isHovered by interactionSource.collectIsHoveredAsState()
            if (selected && isHovered)
                return this.selectedFocused
            if (isHovered)
                return this.focused

            if (selected)
                return this.selected

            return this.rest
        } else if (selected)
            return this.selectedDisabled
        else
            return this.disabled
    }
}

class StateBrush(
    val rest: Brush = unspecifiedBrush,
    val pressed: Brush = unspecifiedBrush,
    val selected: Brush = unspecifiedBrush,
    val focused: Brush = unspecifiedBrush,
    val selectedPressed: Brush = unspecifiedBrush,
    val selectedFocused: Brush = unspecifiedBrush,
    val selectedDisabled: Brush = unspecifiedBrush,
    val disabled: Brush = unspecifiedBrush,
) {

    @Composable
    fun getBrushByState(
        enabled: Boolean,
        selected: Boolean,
        interactionSource: InteractionSource
    ): Brush {
        if (enabled) {
            val isPressed by interactionSource.collectIsPressedAsState()
            if (selected && isPressed)
                return this.selectedPressed
            else if (isPressed)
                return this.pressed

            val isFocused by interactionSource.collectIsFocusedAsState()
            if (selected && isFocused)
                return this.selectedFocused
            else if (isFocused)
                return this.focused

            val isHovered by interactionSource.collectIsHoveredAsState()
            if (selected && isHovered)
                return this.selectedFocused
            if (isHovered)
                return this.focused

            if (selected)
                return this.selected

            return this.rest
        } else if (selected)
            return this.selectedDisabled
        else
            return this.disabled
    }
}

data class FluentColor(
    val light: Color,
    val dark: Color = light,
) {

    @Composable
    fun value(themeMode: ThemeMode = com.microsoft.fluentui.theme.FluentTheme.themeMode): Color {
        return when (themeMode) {
            ThemeMode.Light -> light
            ThemeMode.Dark -> dark
            ThemeMode.Auto -> if (isSystemInDarkTheme()) dark else light
        }
    }
}
````

## File: src/main/java/com/microsoft/fluentui/theme/token/FluentElevation.kt
````kotlin
package com.microsoft.fluentui.theme.token

import androidx.compose.foundation.interaction.InteractionSource
import androidx.compose.foundation.interaction.collectIsFocusedAsState
import androidx.compose.foundation.interaction.collectIsHoveredAsState
import androidx.compose.foundation.interaction.collectIsPressedAsState
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp

data class StateElevation(
    val rest: Dp = 0.dp,
    val pressed: Dp = 0.dp,
    val selected: Dp = 0.dp,
    val selectedPressed: Dp = 0.dp,
    val selectedFocused: Dp = 0.dp,
    val selectedDisabled: Dp = 0.dp,
    val focused: Dp = 0.dp,
    val disabled: Dp = 0.dp,
){
    @Composable
    fun getElevationByState(
        enabled: Boolean,
        selected: Boolean,
        interactionSource: InteractionSource
    ): Dp {
        if (enabled) {
            val isPressed by interactionSource.collectIsPressedAsState()
            if (selected && isPressed)
                return this.selectedPressed
            else if (isPressed)
                return this.pressed

            val isFocused by interactionSource.collectIsFocusedAsState()
            if (selected && isFocused)
                return this.selectedFocused
            else if (isFocused)
                return this.focused

            val isHovered by interactionSource.collectIsHoveredAsState()
            if (selected && isHovered)
                return this.selectedFocused
            if (isHovered)
                return this.focused

            if (selected)
                return this.selected

            return this.rest
        } else if (selected)
            return this.selectedDisabled
        else
            return this.disabled
    }
}
````

## File: src/main/java/com/microsoft/fluentui/theme/token/FluentGlobalTokens.kt
````kotlin
//
//  Copyright (c) Microsoft Corporation. All rights reserved.
//  Licensed under the MIT License.
//

package com.microsoft.fluentui.theme.token

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.TextUnit
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp

// Global Tokens represent a unified set of constants to be used by Fluent UI.

object FluentGlobalTokens {

    /**
     * The set of neutral colors used by Fluent UI.
     * @param value The color value.
     */
    enum class NeutralColorTokens(val value: Color) {
        Black(Color(0xFF000000)),
        Grey2(Color(0xFF050505)),
        Grey4(Color(0xFF0A0A0A)),
        Grey6(Color(0xFF0F0F0F)),
        Grey8(Color(0xFF141414)),
        Grey10(Color(0xFF1A1A1A)),
        Grey12(Color(0xFF1F1F1F)),
        Grey14(Color(0xFF242424)),
        Grey16(Color(0xFF292929)),
        Grey18(Color(0xFF2E2E2E)),
        Grey20(Color(0xFF333333)),
        Grey22(Color(0xFF383838)),
        Grey24(Color(0xFF3D3D3D)),
        Grey26(Color(0xFF424242)),
        Grey28(Color(0xFF474747)),
        Grey30(Color(0xFF4D4D4D)),
        Grey32(Color(0xFF525252)),
        Grey34(Color(0xFF575757)),
        Grey36(Color(0xFF5C5C5C)),
        Grey38(Color(0xFF616161)),
        Grey40(Color(0xFF666666)),
        Grey42(Color(0xFF6B6B6B)),
        Grey44(Color(0xFF707070)),
        Grey46(Color(0xFF757575)),
        Grey48(Color(0xFF7A7A7A)),
        Grey50(Color(0xFF808080)),
        Grey52(Color(0xFF858585)),
        Grey54(Color(0xFF8A8A8A)),
        Grey56(Color(0xFF8F8F8F)),
        Grey58(Color(0xFF949494)),
        Grey60(Color(0xFF999999)),
        Grey62(Color(0xFF9E9E9E)),
        Grey64(Color(0xFFA3A3A3)),
        Grey66(Color(0xFFA8A8A8)),
        Grey68(Color(0xFFADADAD)),
        Grey70(Color(0xFFB3B3B3)),
        Grey72(Color(0xFFB8B8B8)),
        Grey74(Color(0xFFBDBDBD)),
        Grey76(Color(0xFFC2C2C2)),
        Grey78(Color(0xFFC7C7C7)),
        Grey80(Color(0xFFCCCCCC)),
        Grey82(Color(0xFFD1D1D1)),
        Grey84(Color(0xFFD6D6D6)),
        Grey86(Color(0xFFDBDBDB)),
        Grey88(Color(0xFFE0E0E0)),
        Grey90(Color(0xFFE6E6E6)),
        Grey92(Color(0xFFEBEBEB)),
        Grey94(Color(0xFFF0F0F0)),
        Grey96(Color(0xFFF5F5F5)),
        Grey98(Color(0xFFFAFAFA)),
        White(Color(0xFFFFFFFF)),
    }

    /**
     * The set of neutral colors used by Fluent UI.
     * Maintained for backwards compatibility.
     * @param token [NeutralColorTokens]
     * @return [Color]
     */
    @Deprecated(
        "Use the property syntax on NeutralColorTokens instead e.g. NeutralColorTokens.Gray90.value ",
        ReplaceWith("token.value"))
    fun neutralColor(token: NeutralColorTokens): Color = token.value

    enum class FontSizeTokens(val value: TextUnit) {
        Size100(12.0.sp),
        Size200(13.0.sp),
        Size300(14.0.sp),
        Size400(16.0.sp),
        Size500(18.0.sp),
        Size600(20.0.sp),
        Size700(24.0.sp),
        Size800(34.0.sp),
        Size900(60.0.sp)
    }

    /**
     * The set of font sizes used by Fluent UI.
     * Maintained for backwards compatibility.
     * @param token [FontSizeTokens]
     * @return [TextUnit]
     */
    @Deprecated(
        "Use the property syntax on FontSizeTokens instead e.g. FontSizeTokens.Size100.value ",
        ReplaceWith("token.value"))
    fun fontSize(token: FontSizeTokens): TextUnit = token.value

    enum class LineHeightTokens(val value: TextUnit) {
        Size100(16.0.sp),
        Size200(16.0.sp),
        Size300(20.0.sp),
        Size400(24.0.sp),
        Size500(24.0.sp),
        Size600(24.0.sp),
        Size700(32.0.sp),
        Size800(44.0.sp),
        Size900(72.0.sp)
    }

    /**
     * The set of line heights used by Fluent UI.
     * Maintained for backwards compatibility.
     * @param token [LineHeightTokens]
     * @return [TextUnit]
     */
    @Deprecated(
        "Use the property syntax on LineHeightTokens instead e.g. LineHeightTokens.Size100.value ",
        ReplaceWith("token.value"))
    fun lineHeight(token: LineHeightTokens): TextUnit = token.value

    enum class FontWeightTokens(val value: FontWeight) {
        Regular(FontWeight(400)),
        Medium(FontWeight(500)),
        SemiBold(FontWeight(600)),
        Bold(FontWeight(700))
    }

    /**
     * The set of font weights used by Fluent UI.
     * @param token [FontWeightTokens]
     * @return [FontWeight]
     */
    @Deprecated("Use the property syntax on FontWeightTokens instead e.g. FontWeightTokens.Regular.value ",
        ReplaceWith("token.value"))
    fun fontWeight(token: FontWeightTokens): FontWeight = token.value

    enum class IconSizeTokens(val value: Dp) {
        IconSize100(10.dp),
        IconSize120(12.dp),
        IconSize160(16.dp),
        IconSize200(20.dp),
        IconSize240(24.dp),
        IconSize280(28.dp),
        IconSize360(36.dp),
        IconSize400(40.dp),
        IconSize480(48.dp)
    }

    /**
     * The set of icon sizes used by Fluent UI.
     * @param token [IconSizeTokens]
     * @return [Dp]
     */
    @Deprecated("Use the property syntax on IconSizeTokens instead e.g. IconSizeTokens.IconSize100.value ",
        ReplaceWith("token.value"))
    fun iconSize(token: IconSizeTokens): Dp = token.value

    enum class SizeTokens(val value: Dp) {
        SizeNone(0.dp),
        Size20(2.dp),
        Size40(4.dp),
        Size60(6.dp),
        Size80(8.dp),
        Size100(10.dp),
        Size120(12.dp),
        Size140(14.dp),
        Size160(16.dp),
        Size180(18.dp),
        Size200(20.dp),
        Size240(24.dp),
        Size280(28.dp),
        Size320(32.dp),
        Size360(36.dp),
        Size400(40.dp),
        Size480(48.dp),
        Size520(52.dp),
        Size560(56.dp)
    }

    /**
     * The set of sizes used by Fluent UI.
     * @param token [SizeTokens]
     * @return [Dp]
     */
    @Deprecated("Use the property syntax on SizeTokens instead e.g. SizeTokens.SizeNone.value ",
        ReplaceWith("token.value"))
    fun size(token: SizeTokens): Dp = token.value

    enum class ShadowTokens(val value: Dp) {
        Shadow00(0.dp),
        Shadow02(2.dp),
        Shadow04(4.dp),
        Shadow08(8.dp),
        Shadow16(16.dp),
        Shadow28(28.dp),
        Shadow64(40.dp)
    }

    /**
     * The set of shadows used by Fluent UI.
     * @param token [ShadowTokens]
     * @return [Dp]
     */
    @Deprecated("Use the property syntax on ShadowTokens instead e.g. ShadowTokens.Shadow00.value ",
        ReplaceWith("token.value"))
    fun elevation(token: ShadowTokens): Dp = token.value

    enum class CornerRadiusTokens(val value: Dp) {
        CornerRadiusNone(0.dp),
        CornerRadius20(2.dp),
        CornerRadius40(4.dp),
        CornerRadius80(8.dp),
        CornerRadius120(12.dp),
        CornerRadius160(16.dp),
        CornerRadiusCircle(9999.dp)
    }

    /**
     * The set of corner radii used by Fluent UI.
     * @param token [CornerRadiusTokens]
     * @return [Dp]
     */
    @Deprecated("Use the property syntax on CornerRadiusTokens instead e.g. CornerRadiusTokens.CornerRadiusNone.value ",
        ReplaceWith("token.value"))
    fun cornerRadius(token: CornerRadiusTokens): Dp = token.value

    enum class StrokeWidthTokens(val value: Dp) {
        StrokeWidthNone(0.dp),
        StrokeWidth05(0.5.dp),
        StrokeWidth10(1.dp),
        StrokeWidth15(1.5.dp),
        StrokeWidth20(2.dp),
        StrokeWidth30(3.dp),
        StrokeWidth40(4.dp),
        StrokeWidth60(6.dp)
    }

    /**
     * The set of stroke widths used by Fluent UI.
     * @param token [StrokeWidthTokens]
     * @return [Dp]
     */
    @Deprecated("Use the property syntax on StrokeWidthTokens instead e.g. StrokeWidthTokens.StrokeWidthNone.value ",
        ReplaceWith("token.value"))
    fun strokeWidth(token: StrokeWidthTokens): Dp = token.value

    enum class SharedColorsTokens {
        Shade50,
        Shade40,
        Shade30,
        Shade20,
        Shade10,
        Primary,
        Tint10,
        Tint20,
        Tint30,
        Tint40,
        Tint50,
        Tint60
    }

    enum class SharedColorSets(
        val primary: Color,
        val shade10: Color,
        val shade20: Color,
        val shade30: Color,
        val shade40: Color,
        val shade50: Color,
        val tint10: Color,
        val tint20: Color,
        val tint30: Color,
        val tint40: Color,
        val tint50: Color,
        val tint60: Color
    ) {
        Anchor(
            primary = Color(0xFF394146),
            shade10 = Color(0xFF333A3F),
            shade20 = Color(0xFF2B3135),
            shade30 = Color(0xFF202427),
            shade40 = Color(0xFF111315),
            shade50 = Color(0xFF090A0B),
            tint10 = Color(0xFF4D565C),
            tint20 = Color(0xFF626C72),
            tint30 = Color(0xFF808A90),
            tint40 = Color(0xFFBCC3C7),
            tint50 = Color(0xFFDBDFE1),
            tint60 = Color(0xFFF6F7F8),
        ),
        Beige(
            primary = Color(0xFF7A7574),
            shade10 = Color(0xFF6E6968),
            shade20 = Color(0xFF5D5958),
            shade30 = Color(0xFF444241),
            shade40 = Color(0xFF252323),
            shade50 = Color(0xFF141313),
            tint10 = Color(0xFF8A8584),
            tint20 = Color(0xFF9A9594),
            tint30 = Color(0xFFAFABAA),
            tint40 = Color(0xFFD7D4D4),
            tint50 = Color(0xFFEAE8E8),
            tint60 = Color(0xFFFAF9F9),
        ),
        Berry(
            primary = Color(0xFFC239B3),
            shade10 = Color(0xFFAF33A1),
            shade20 = Color(0xFF932B88),
            shade30 = Color(0xFF6D2064),
            shade40 = Color(0xFF3A1136),
            shade50 = Color(0xFF1F091D),
            tint10 = Color(0xFFC94CBC),
            tint20 = Color(0xFFD161C4),
            tint30 = Color(0xFFDA7ED0),
            tint40 = Color(0xFFEDBBE7),
            tint50 = Color(0xFFF5DAF2),
            tint60 = Color(0xFFFDF5FC),
        ),
        Blue(
            primary = Color(0xFF0078D4),
            shade10 = Color(0xFF006CBF),
            shade20 = Color(0xFF005BA1),
            shade30 = Color(0xFF004377),
            shade40 = Color(0xFF002440),
            shade50 = Color(0xFF001322),
            tint10 = Color(0xFF1A86D9),
            tint20 = Color(0xFF3595DE),
            tint30 = Color(0xFF5CAAE5),
            tint40 = Color(0xFFA9D3F2),
            tint50 = Color(0xFFD0E7F8),
            tint60 = Color(0xFFF3F9FD),
        ),
        Brass(
            primary = Color(0xFF986F0B),
            shade10 = Color(0xFF89640A),
            shade20 = Color(0xFF745408),
            shade30 = Color(0xFF553E06),
            shade40 = Color(0xFF2E2103),
            shade50 = Color(0xFF181202),
            tint10 = Color(0xFFA47D1E),
            tint20 = Color(0xFFB18C34),
            tint30 = Color(0xFFC1A256),
            tint40 = Color(0xFFE0CEA2),
            tint50 = Color(0xFFEFE4CB),
            tint60 = Color(0xFFFBF8F2),
        ),
        Bronze(
            primary = Color(0xFFA74109),
            shade10 = Color(0xFF963A08),
            shade20 = Color(0xFF7F3107),
            shade30 = Color(0xFF5E2405),
            shade40 = Color(0xFF321303),
            shade50 = Color(0xFF1B0A01),
            tint10 = Color(0xFFB2521E),
            tint20 = Color(0xFFBC6535),
            tint30 = Color(0xFFCA8057),
            tint40 = Color(0xFFE5BBA4),
            tint50 = Color(0xFFF1D9CC),
            tint60 = Color(0xFFFBF5F2),
        ),
        Brown(
            primary = Color(0xFF8E562E),
            shade10 = Color(0xFF804D29),
            shade20 = Color(0xFF6C4123),
            shade30 = Color(0xFF50301A),
            shade40 = Color(0xFF2B1A0E),
            shade50 = Color(0xFF170E07),
            tint10 = Color(0xFF9C663F),
            tint20 = Color(0xFFA97652),
            tint30 = Color(0xFFBB8F6F),
            tint40 = Color(0xFFDDC3B0),
            tint50 = Color(0xFFEDDED3),
            tint60 = Color(0xFFFAF7F4),
        ),
        Burgundy(
            primary = Color(0xFFA4262C),
            shade10 = Color(0xFF942228),
            shade20 = Color(0xFF7D1D21),
            shade30 = Color(0xFF5C1519),
            shade40 = Color(0xFF310B0D),
            shade50 = Color(0xFF1A0607),
            tint10 = Color(0xFFAF393E),
            tint20 = Color(0xFFBA4D52),
            tint30 = Color(0xFFC86C70),
            tint40 = Color(0xFFE4AFB2),
            tint50 = Color(0xFFF0D3D4),
            tint60 = Color(0xFFFBF4F4),
        ),
        Charcoal(
            primary = Color(0xFF393939),
            shade10 = Color(0xFF333333),
            shade20 = Color(0xFF2B2B2B),
            shade30 = Color(0xFF202020),
            shade40 = Color(0xFF111111),
            shade50 = Color(0xFF090909),
            tint10 = Color(0xFF515151),
            tint20 = Color(0xFF686868),
            tint30 = Color(0xFF888888),
            tint40 = Color(0xFFC4C4C4),
            tint50 = Color(0xFFDFDFDF),
            tint60 = Color(0xFFF7F7F7),
        ),
        Cornflower(
            primary = Color(0xFF4F6BED),
            shade10 = Color(0xFF4760D5),
            shade20 = Color(0xFF3C51B4),
            shade30 = Color(0xFF2C3C85),
            shade40 = Color(0xFF182047),
            shade50 = Color(0xFF0D1126),
            tint10 = Color(0xFF637CEF),
            tint20 = Color(0xFF778DF1),
            tint30 = Color(0xFF93A4F4),
            tint40 = Color(0xFFC8D1FA),
            tint50 = Color(0xFFE1E6FC),
            tint60 = Color(0xFFF7F9FE),
        ),
        Cranberry(
            primary = Color(0xFFC50F1F),
            shade10 = Color(0xFFB10E1C),
            shade20 = Color(0xFF960B18),
            shade30 = Color(0xFF6E0811),
            shade40 = Color(0xFF3B0509),
            shade50 = Color(0xFF200205),
            tint10 = Color(0xFFCC2635),
            tint20 = Color(0xFFD33F4C),
            tint30 = Color(0xFFDC626D),
            tint40 = Color(0xFFEEACB2),
            tint50 = Color(0xFFF6D1D5),
            tint60 = Color(0xFFFDF3F4),
        ),
        Cyan(
            primary = Color(0xFF0099BC),
            shade10 = Color(0xFF008AA9),
            shade20 = Color(0xFF00748F),
            shade30 = Color(0xFF005669),
            shade40 = Color(0xFF002E38),
            shade50 = Color(0xFF00181E),
            tint10 = Color(0xFF18A4C4),
            tint20 = Color(0xFF31AFCC),
            tint30 = Color(0xFF56BFD7),
            tint40 = Color(0xFFA4DEEB),
            tint50 = Color(0xFFCDEDF4),
            tint60 = Color(0xFFF2FAFC),
        ),
        DarkBlue(
            primary = Color(0xFF003966),
            shade10 = Color(0xFF00335C),
            shade20 = Color(0xFF002B4E),
            shade30 = Color(0xFF002039),
            shade40 = Color(0xFF00111F),
            shade50 = Color(0xFF000910),
            tint10 = Color(0xFF0E4A78),
            tint20 = Color(0xFF215C8B),
            tint30 = Color(0xFF4178A3),
            tint40 = Color(0xFF92B5D1),
            tint50 = Color(0xFFC2D6E7),
            tint60 = Color(0xFFEFF4F9),
        ),
        DarkBrown(
            primary = Color(0xFF4D291C),
            shade10 = Color(0xFF452519),
            shade20 = Color(0xFF3A1F15),
            shade30 = Color(0xFF2B1710),
            shade40 = Color(0xFF170C08),
            shade50 = Color(0xFF0C0704),
            tint10 = Color(0xFF623A2B),
            tint20 = Color(0xFF784D3E),
            tint30 = Color(0xFF946B5C),
            tint40 = Color(0xFFCAADA3),
            tint50 = Color(0xFFE3D2CB),
            tint60 = Color(0xFFF8F3F2),
        ),
        DarkGreen(
            primary = Color(0xFF0B6A0B),
            shade10 = Color(0xFF0A5F0A),
            shade20 = Color(0xFF085108),
            shade30 = Color(0xFF063B06),
            shade40 = Color(0xFF032003),
            shade50 = Color(0xFF021102),
            tint10 = Color(0xFF1A7C1A),
            tint20 = Color(0xFF2D8E2D),
            tint30 = Color(0xFF4DA64D),
            tint40 = Color(0xFF9AD29A),
            tint50 = Color(0xFFC6E7C6),
            tint60 = Color(0xFFF0F9F0),
        ),
        DarkOrange(
            primary = Color(0xFFDA3B01),
            shade10 = Color(0xFFC43501),
            shade20 = Color(0xFFA62D01),
            shade30 = Color(0xFF7A2101),
            shade40 = Color(0xFF411200),
            shade50 = Color(0xFF230900),
            tint10 = Color(0xFFDE501C),
            tint20 = Color(0xFFE36537),
            tint30 = Color(0xFFE9835E),
            tint40 = Color(0xFFF4BFAB),
            tint50 = Color(0xFFF9DCD1),
            tint60 = Color(0xFFFDF6F3),
        ),
        DarkPurple(
            primary = Color(0xFF401B6C),
            shade10 = Color(0xFF3A1861),
            shade20 = Color(0xFF311552),
            shade30 = Color(0xFF240F3C),
            shade40 = Color(0xFF130820),
            shade50 = Color(0xFF0A0411),
            tint10 = Color(0xFF512B7E),
            tint20 = Color(0xFF633E8F),
            tint30 = Color(0xFF7E5CA7),
            tint40 = Color(0xFFB9A3D3),
            tint50 = Color(0xFFD8CCE7),
            tint60 = Color(0xFFF5F2F9),
        ),
        DarkRed(
            primary = Color(0xFF750B1C),
            shade10 = Color(0xFF690A19),
            shade20 = Color(0xFF590815),
            shade30 = Color(0xFF420610),
            shade40 = Color(0xFF230308),
            shade50 = Color(0xFF130204),
            tint10 = Color(0xFF861B2C),
            tint20 = Color(0xFF962F3F),
            tint30 = Color(0xFFAC4F5E),
            tint40 = Color(0xFFD69CA5),
            tint50 = Color(0xFFE9C7CD),
            tint60 = Color(0xFFF9F0F2),
        ),
        DarkTeal(
            primary = Color(0xFF006666),
            shade10 = Color(0xFF005C5C),
            shade20 = Color(0xFF004E4E),
            shade30 = Color(0xFF003939),
            shade40 = Color(0xFF001F1F),
            shade50 = Color(0xFF001010),
            tint10 = Color(0xFF0E7878),
            tint20 = Color(0xFF218B8B),
            tint30 = Color(0xFF41A3A3),
            tint40 = Color(0xFF92D1D1),
            tint50 = Color(0xFFC2E7E7),
            tint60 = Color(0xFFEFF9F9),
        ),
        Forest(
            primary = Color(0xFF498205),
            shade10 = Color(0xFF427505),
            shade20 = Color(0xFF376304),
            shade30 = Color(0xFF294903),
            shade40 = Color(0xFF162702),
            shade50 = Color(0xFF0C1501),
            tint10 = Color(0xFF599116),
            tint20 = Color(0xFF6BA02B),
            tint30 = Color(0xFF85B44C),
            tint40 = Color(0xFFBDD99B),
            tint50 = Color(0xFFDBEBC7),
            tint60 = Color(0xFFF6FAF0),
        ),
        Gold(
            primary = Color(0xFFC19C00),
            shade10 = Color(0xFFAE8C00),
            shade20 = Color(0xFF937700),
            shade30 = Color(0xFF6C5700),
            shade40 = Color(0xFF3A2F00),
            shade50 = Color(0xFF1F1900),
            tint10 = Color(0xFFC8A718),
            tint20 = Color(0xFFD0B232),
            tint30 = Color(0xFFDAC157),
            tint40 = Color(0xFFECDFA5),
            tint50 = Color(0xFFF5EECE),
            tint60 = Color(0xFFFDFBF2),
        ),
        Grape(
            primary = Color(0xFF881798),
            shade10 = Color(0xFF7A1589),
            shade20 = Color(0xFF671174),
            shade30 = Color(0xFF4C0D55),
            shade40 = Color(0xFF29072E),
            shade50 = Color(0xFF160418),
            tint10 = Color(0xFF952AA4),
            tint20 = Color(0xFFA33FB1),
            tint30 = Color(0xFFB55FC1),
            tint40 = Color(0xFFD9A7E0),
            tint50 = Color(0xFFEACEEF),
            tint60 = Color(0xFFFAF2FB),
        ),
        Green(
            primary = Color(0xFF107C10),
            shade10 = Color(0xFF0E700E),
            shade20 = Color(0xFF0C5E0C),
            shade30 = Color(0xFF094509),
            shade40 = Color(0xFF052505),
            shade50 = Color(0xFF031403),
            tint10 = Color(0xFF218C21),
            tint20 = Color(0xFF359B35),
            tint30 = Color(0xFF54B054),
            tint40 = Color(0xFF9FD89F),
            tint50 = Color(0xFFC9EAC9),
            tint60 = Color(0xFFF1FAF1),
        ),
        HotPink(
            primary = Color(0xFFE3008C),
            shade10 = Color(0xFFCC007E),
            shade20 = Color(0xFFAD006A),
            shade30 = Color(0xFF7F004E),
            shade40 = Color(0xFF44002A),
            shade50 = Color(0xFF240016),
            tint10 = Color(0xFFE61C99),
            tint20 = Color(0xFFEA38A6),
            tint30 = Color(0xFFEE5FB7),
            tint40 = Color(0xFFF7ADDA),
            tint50 = Color(0xFFFBD2EB),
            tint60 = Color(0xFFFEF4FA),
        ),
        Lavender(
            primary = Color(0xFF7160E8),
            shade10 = Color(0xFF6656D1),
            shade20 = Color(0xFF5649B0),
            shade30 = Color(0xFF3F3682),
            shade40 = Color(0xFF221D46),
            shade50 = Color(0xFF120F25),
            tint10 = Color(0xFF8172EB),
            tint20 = Color(0xFF9184EE),
            tint30 = Color(0xFFA79CF1),
            tint40 = Color(0xFFD2CCF8),
            tint50 = Color(0xFFE7E4FB),
            tint60 = Color(0xFFF9F8FE),
        ),
        LightBlue(
            primary = Color(0xFF3A96DD),
            shade10 = Color(0xFF3487C7),
            shade20 = Color(0xFF2C72A8),
            shade30 = Color(0xFF20547C),
            shade40 = Color(0xFF112D42),
            shade50 = Color(0xFF091823),
            tint10 = Color(0xFF4FA1E1),
            tint20 = Color(0xFF65ADE5),
            tint30 = Color(0xFF83BDEB),
            tint40 = Color(0xFFBFDDF5),
            tint50 = Color(0xFFDCEDFA),
            tint60 = Color(0xFFF6FAFE),
        ),
        LightGreen(
            primary = Color(0xFF13A10E),
            shade10 = Color(0xFF11910D),
            shade20 = Color(0xFF0E7A0B),
            shade30 = Color(0xFF0B5A08),
            shade40 = Color(0xFF063004),
            shade50 = Color(0xFF031A02),
            tint10 = Color(0xFF27AC22),
            tint20 = Color(0xFF3DB838),
            tint30 = Color(0xFF5EC75A),
            tint40 = Color(0xFFA7E3A5),
            tint50 = Color(0xFFCEF0CD),
            tint60 = Color(0xFFF2FBF2),
        ),
        LightTeal(
            primary = Color(0xFF00B7C3),
            shade10 = Color(0xFF00A5AF),
            shade20 = Color(0xFF008B94),
            shade30 = Color(0xFF00666D),
            shade40 = Color(0xFF00373A),
            shade50 = Color(0xFF001D1F),
            tint10 = Color(0xFF18BFCA),
            tint20 = Color(0xFF32C8D1),
            tint30 = Color(0xFF58D3DB),
            tint40 = Color(0xFFA6E9ED),
            tint50 = Color(0xFFCEF3F5),
            tint60 = Color(0xFFF2FCFD),
        ),
        Lilac(
            primary = Color(0xFFB146C2),
            shade10 = Color(0xFF9F3FAF),
            shade20 = Color(0xFF863593),
            shade30 = Color(0xFF63276D),
            shade40 = Color(0xFF35153A),
            shade50 = Color(0xFF1C0B1F),
            tint10 = Color(0xFFBA58C9),
            tint20 = Color(0xFFC36BD1),
            tint30 = Color(0xFFCF87DA),
            tint40 = Color(0xFFE6BFED),
            tint50 = Color(0xFFF2DCF5),
            tint60 = Color(0xFFFCF6FD),
        ),
        Lime(
            primary = Color(0xFF73AA24),
            shade10 = Color(0xFF689920),
            shade20 = Color(0xFF57811B),
            shade30 = Color(0xFF405F14),
            shade40 = Color(0xFF23330B),
            shade50 = Color(0xFF121B06),
            tint10 = Color(0xFF81B437),
            tint20 = Color(0xFF90BE4C),
            tint30 = Color(0xFFA4CC6C),
            tint40 = Color(0xFFCFE5AF),
            tint50 = Color(0xFFE5F1D3),
            tint60 = Color(0xFFF8FCF4),
        ),
        Magenta(
            primary = Color(0xFFBF0077),
            shade10 = Color(0xFFAC006B),
            shade20 = Color(0xFF91005A),
            shade30 = Color(0xFF6B0043),
            shade40 = Color(0xFF390024),
            shade50 = Color(0xFF1F0013),
            tint10 = Color(0xFFC71885),
            tint20 = Color(0xFFCE3293),
            tint30 = Color(0xFFD957A8),
            tint40 = Color(0xFFECA5D1),
            tint50 = Color(0xFFF5CEE6),
            tint60 = Color(0xFFFCF2F9),
        ),
        Marigold(
            primary = Color(0xFFEAA300),
            shade10 = Color(0xFFD39300),
            shade20 = Color(0xFFB27C00),
            shade30 = Color(0xFF835B00),
            shade40 = Color(0xFF463100),
            shade50 = Color(0xFF251A00),
            tint10 = Color(0xFFEDAD1C),
            tint20 = Color(0xFFEFB839),
            tint30 = Color(0xFFF2C661),
            tint40 = Color(0xFFF9E2AE),
            tint50 = Color(0xFFFCEFD3),
            tint60 = Color(0xFFFEFBF4),
        ),
        Mink(
            primary = Color(0xFF5D5A58),
            shade10 = Color(0xFF54514F),
            shade20 = Color(0xFF474443),
            shade30 = Color(0xFF343231),
            shade40 = Color(0xFF1C1B1A),
            shade50 = Color(0xFF0F0E0E),
            tint10 = Color(0xFF706D6B),
            tint20 = Color(0xFF84817E),
            tint30 = Color(0xFF9E9B99),
            tint40 = Color(0xFFCECCCB),
            tint50 = Color(0xFFE5E4E3),
            tint60 = Color(0xFFF8F8F8),
        ),
        Navy(
            primary = Color(0xFF0027B4),
            shade10 = Color(0xFF0023A2),
            shade20 = Color(0xFF001E89),
            shade30 = Color(0xFF001665),
            shade40 = Color(0xFF000C36),
            shade50 = Color(0xFF00061D),
            tint10 = Color(0xFF173BBD),
            tint20 = Color(0xFF3050C6),
            tint30 = Color(0xFF546FD2),
            tint40 = Color(0xFFA3B2E8),
            tint50 = Color(0xFFCCD5F3),
            tint60 = Color(0xFFF2F4FC),
        ),
        Orange(
            primary = Color(0xFFF7630C),
            shade10 = Color(0xFFDE590B),
            shade20 = Color(0xFFBC4B09),
            shade30 = Color(0xFF8A3707),
            shade40 = Color(0xFF4A1E04),
            shade50 = Color(0xFF271002),
            tint10 = Color(0xFFF87528),
            tint20 = Color(0xFFF98845),
            tint30 = Color(0xFFFAA06B),
            tint40 = Color(0xFFFDCFB4),
            tint50 = Color(0xFFFEE5D7),
            tint60 = Color(0xFFFFF9F5),
        ),
        Orchid(
            primary = Color(0xFF8764B8),
            shade10 = Color(0xFF795AA6),
            shade20 = Color(0xFF674C8C),
            shade30 = Color(0xFF4C3867),
            shade40 = Color(0xFF281E37),
            shade50 = Color(0xFF16101D),
            tint10 = Color(0xFF9373C0),
            tint20 = Color(0xFFA083C9),
            tint30 = Color(0xFFB29AD4),
            tint40 = Color(0xFFD7CAEA),
            tint50 = Color(0xFFE9E2F4),
            tint60 = Color(0xFFF9F8FC),
        ),
        Peach(
            primary = Color(0xFFFF8C00),
            shade10 = Color(0xFFE67E00),
            shade20 = Color(0xFFC26A00),
            shade30 = Color(0xFF8F4E00),
            shade40 = Color(0xFF4D2A00),
            shade50 = Color(0xFF291600),
            tint10 = Color(0xFFFF9A1F),
            tint20 = Color(0xFFFFA83D),
            tint30 = Color(0xFFFFBA66),
            tint40 = Color(0xFFFFDDB3),
            tint50 = Color(0xFFFFEDD6),
            tint60 = Color(0xFFFFFAF5),
        ),
        Pink(
            primary = Color(0xFFE43BA6),
            shade10 = Color(0xFFCD3595),
            shade20 = Color(0xFFAD2D7E),
            shade30 = Color(0xFF80215D),
            shade40 = Color(0xFF441232),
            shade50 = Color(0xFF24091B),
            tint10 = Color(0xFFE750B0),
            tint20 = Color(0xFFEA66BA),
            tint30 = Color(0xFFEF85C8),
            tint40 = Color(0xFFF7C0E3),
            tint50 = Color(0xFFFBDDF0),
            tint60 = Color(0xFFFEF6FB),
        ),
        Platinum(
            primary = Color(0xFF69797E),
            shade10 = Color(0xFF5F6D71),
            shade20 = Color(0xFF505C60),
            shade30 = Color(0xFF3B4447),
            shade40 = Color(0xFF1F2426),
            shade50 = Color(0xFF111314),
            tint10 = Color(0xFF79898D),
            tint20 = Color(0xFF89989D),
            tint30 = Color(0xFFA0ADB2),
            tint40 = Color(0xFFCDD6D8),
            tint50 = Color(0xFFE4E9EA),
            tint60 = Color(0xFFF8F9FA),
        ),
        Plum(
            primary = Color(0xFF77004D),
            shade10 = Color(0xFF6B0045),
            shade20 = Color(0xFF5A003B),
            shade30 = Color(0xFF43002B),
            shade40 = Color(0xFF240017),
            shade50 = Color(0xFF13000C),
            tint10 = Color(0xFF87105D),
            tint20 = Color(0xFF98246F),
            tint30 = Color(0xFFAD4589),
            tint40 = Color(0xFFD696C0),
            tint50 = Color(0xFFE9C4DC),
            tint60 = Color(0xFFFAF0F6),
        ),
        Pumpkin(
            primary = Color(0xFFCA5010),
            shade10 = Color(0xFFB6480E),
            shade20 = Color(0xFF9A3D0C),
            shade30 = Color(0xFF712D09),
            shade40 = Color(0xFF3D1805),
            shade50 = Color(0xFF200D03),
            tint10 = Color(0xFFD06228),
            tint20 = Color(0xFFD77440),
            tint30 = Color(0xFFDF8E64),
            tint40 = Color(0xFFEFC4AD),
            tint50 = Color(0xFFF7DFD2),
            tint60 = Color(0xFFFDF7F4),
        ),
        Purple(
            primary = Color(0xFF5C2E91),
            shade10 = Color(0xFF532982),
            shade20 = Color(0xFF46236E),
            shade30 = Color(0xFF341A51),
            shade40 = Color(0xFF1C0E2B),
            shade50 = Color(0xFF0F0717),
            tint10 = Color(0xFF6B3F9E),
            tint20 = Color(0xFF7C52AB),
            tint30 = Color(0xFF9470BD),
            tint40 = Color(0xFFC6B1DE),
            tint50 = Color(0xFFE0D3ED),
            tint60 = Color(0xFFF7F4FB),
        ),
        Red(
            primary = Color(0xFFD13438),
            shade10 = Color(0xFFBC2F32),
            shade20 = Color(0xFF9F282B),
            shade30 = Color(0xFF751D1F),
            shade40 = Color(0xFF3F1011),
            shade50 = Color(0xFF210809),
            tint10 = Color(0xFFD7494C),
            tint20 = Color(0xFFDC5E62),
            tint30 = Color(0xFFE37D80),
            tint40 = Color(0xFFF1BBBC),
            tint50 = Color(0xFFF8DADB),
            tint60 = Color(0xFFFDF6F6),
        ),
        RoyalBlue(
            primary = Color(0xFF004E8C),
            shade10 = Color(0xFF00467E),
            shade20 = Color(0xFF003B6A),
            shade30 = Color(0xFF002C4E),
            shade40 = Color(0xFF00172A),
            shade50 = Color(0xFF000C16),
            tint10 = Color(0xFF125E9A),
            tint20 = Color(0xFF286FA8),
            tint30 = Color(0xFF4A89BA),
            tint40 = Color(0xFF9ABFDC),
            tint50 = Color(0xFFC7DCED),
            tint60 = Color(0xFFF0F6FA),
        ),
        Seafoam(
            primary = Color(0xFF00CC6A),
            shade10 = Color(0xFF00B85F),
            shade20 = Color(0xFF009B51),
            shade30 = Color(0xFF00723B),
            shade40 = Color(0xFF003D20),
            shade50 = Color(0xFF002111),
            tint10 = Color(0xFF19D279),
            tint20 = Color(0xFF34D889),
            tint30 = Color(0xFF5AE0A0),
            tint40 = Color(0xFFA8F0CD),
            tint50 = Color(0xFFCFF7E4),
            tint60 = Color(0xFFF3FDF8),
        ),
        Silver(
            primary = Color(0xFF859599),
            shade10 = Color(0xFF78868A),
            shade20 = Color(0xFF657174),
            shade30 = Color(0xFF4A5356),
            shade40 = Color(0xFF282D2E),
            shade50 = Color(0xFF151818),
            tint10 = Color(0xFF92A1A5),
            tint20 = Color(0xFFA0AEB1),
            tint30 = Color(0xFFB3BFC2),
            tint40 = Color(0xFFD8DFE0),
            tint50 = Color(0xFFEAEEEF),
            tint60 = Color(0xFFFAFBFB),
        ),
        Steel(
            primary = Color(0xFF005B70),
            shade10 = Color(0xFF005265),
            shade20 = Color(0xFF004555),
            shade30 = Color(0xFF00333F),
            shade40 = Color(0xFF001B22),
            shade50 = Color(0xFF000F12),
            tint10 = Color(0xFF0F6C81),
            tint20 = Color(0xFF237D92),
            tint30 = Color(0xFF4496A9),
            tint40 = Color(0xFF94C8D4),
            tint50 = Color(0xFFC3E1E8),
            tint60 = Color(0xFFEFF7F9),
        ),
        Teal(
            primary = Color(0xFF038387),
            shade10 = Color(0xFF037679),
            shade20 = Color(0xFF026467),
            shade30 = Color(0xFF02494C),
            shade40 = Color(0xFF012728),
            shade50 = Color(0xFF001516),
            tint10 = Color(0xFF159195),
            tint20 = Color(0xFF2AA0A4),
            tint30 = Color(0xFF4CB4B7),
            tint40 = Color(0xFF9BD9DB),
            tint50 = Color(0xFFC7EBEC),
            tint60 = Color(0xFFF0FAFA),
        ),
        Yellow(
            primary = Color(0xFFFDE300),
            shade10 = Color(0xFFE4CC00),
            shade20 = Color(0xFFC0AD00),
            shade30 = Color(0xFF817400),
            shade40 = Color(0xFF4C4400),
            shade50 = Color(0xFF282400),
            tint10 = Color(0xFFFDE61E),
            tint20 = Color(0xFFFDEA3D),
            tint30 = Color(0xFFFEEE66),
            tint40 = Color(0xFFFEF7B2),
            tint50 = Color(0xFFFFFAD6),
            tint60 = Color(0xFFFFFEF5),
        )
    }

    /**
     * The shared colors in the design system.
     * @param sharedColorSet the [SharedColorSets]
     * @param token the [SharedColorsTokens]
     * @return the [Color] for the [SharedColorsTokens] in the [SharedColorSets]
     */
    @Deprecated("Use the property syntax on SharedColorSets instead, e.g., SharedColorSets.Anchor.primary")
    fun sharedColors(sharedColorSet: SharedColorSets, token: SharedColorsTokens): Color {
        return when (token) {
            SharedColorsTokens.Primary -> sharedColorSet.primary
            SharedColorsTokens.Shade10 -> sharedColorSet.shade10
            SharedColorsTokens.Shade20 -> sharedColorSet.shade20
            SharedColorsTokens.Shade30 -> sharedColorSet.shade30
            SharedColorsTokens.Shade40 -> sharedColorSet.shade40
            SharedColorsTokens.Shade50 -> sharedColorSet.shade50
            SharedColorsTokens.Tint10 -> sharedColorSet.tint10
            SharedColorsTokens.Tint20 -> sharedColorSet.tint20
            SharedColorsTokens.Tint30 -> sharedColorSet.tint30
            SharedColorsTokens.Tint40 -> sharedColorSet.tint40
            SharedColorsTokens.Tint50 -> sharedColorSet.tint50
            SharedColorsTokens.Tint60 -> sharedColorSet.tint60
        }
    }
}
````

## File: src/main/java/com/microsoft/fluentui/theme/token/FluentIcon.kt
````kotlin
package com.microsoft.fluentui.theme.token

import androidx.compose.foundation.LocalIndication
import androidx.compose.foundation.clickable
import androidx.compose.foundation.gestures.detectTapGestures
import androidx.compose.foundation.indication
import androidx.compose.foundation.interaction.MutableInteractionSource
import androidx.compose.foundation.interaction.PressInteraction
import androidx.compose.foundation.isSystemInDarkTheme
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.size
import androidx.compose.material.ripple.rememberRipple
import androidx.compose.runtime.Composable
import androidx.compose.runtime.NonRestartableComposable
import androidx.compose.runtime.remember
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.paint
import androidx.compose.ui.draw.scale
import androidx.compose.ui.geometry.Size
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.ColorFilter
import androidx.compose.ui.graphics.painter.Painter
import androidx.compose.ui.graphics.toolingGraphicsLayer
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.rememberVectorPainter
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.platform.LocalLayoutDirection
import androidx.compose.ui.semantics.Role
import androidx.compose.ui.semantics.contentDescription
import androidx.compose.ui.semantics.role
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.unit.LayoutDirection
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.theme.ThemeMode

data class FluentIcon(
    val light: ImageVector = ImageVector.Builder("", 0.dp, 0.dp, 0F, 0F).build(),
    val dark: ImageVector = light,
    val contentDescription: String? = null,
    val tint: Color? = null,
    val flipOnRtl: Boolean = false,
    val enabled: Boolean = true,
    val onLongClick: (() -> Unit)? = null, //TODO: Add tokens for ripple
    val onClick: (() -> Unit)? = null
) {
    @Composable
    fun value(themeMode: ThemeMode = com.microsoft.fluentui.theme.FluentTheme.themeMode): ImageVector {
        return when (themeMode) {
            ThemeMode.Light -> light
            ThemeMode.Dark -> dark
            ThemeMode.Auto -> if (isSystemInDarkTheme()) dark else light
        }
    }

    fun isIconAvailable(): Boolean {
        return (this.light.defaultWidth > 0.dp && this.light.defaultHeight > 0.dp) ||
                (this.dark.defaultWidth > 0.dp && this.dark.defaultHeight > 0.dp)
    }
}

/**
 * Wrapper over Icon API to incorporate FluentIcon class.
 * Icon tint provided in FluentIcon override's the value provided in API.
 *
 * @param icon [FluentIcon] object to be displayed.
 * @param modifier Optional modifier for Icon.
 * @param tint Tint Color to be used if not provided in icon.
 */
@Composable
fun Icon(
    icon: FluentIcon,
    modifier: Modifier = Modifier,
    tint: Color = Color.Unspecified,
) {
    Icon(
        rememberVectorPainter(icon.value()),
        icon.contentDescription,
        modifier = modifier,
        flipOnRtl = icon.flipOnRtl,
        tint = icon.tint ?: tint,
        enabled = icon.enabled,
        onLongClick = icon.onLongClick,
        onClick = icon.onClick
    )
}

/**
 * Icon component that draws [imageVector] using [Icon].
 *
 * @param imageVector [ImageVector] to draw inside this Icon
 * @param contentDescription text used by accessibility services to describe what this icon
 * represents. This should always be provided unless this icon is used for decorative purposes,
 * and does not represent a meaningful action that a user can take. This text should be
 * localized.
 * @param modifier optional [Modifier] for this Icon
 * @param flipOnRtl Boolean to specify if the icon is directional and needs flipping on layoout change
 * @param tint tint to be applied to [painter]. If [Color.Unspecified] is provided, then no
 * tint is applied
 * @param enabled Boolean to define if icon is clickable or not
 * @param onClick onClick Lambda to be invoked when icon is clicked.
 */
@Composable
@NonRestartableComposable
fun Icon(
    imageVector: ImageVector,
    contentDescription: String?,
    modifier: Modifier = Modifier,
    flipOnRtl: Boolean = false,
    tint: Color = Color.Unspecified,
    enabled: Boolean = true,
    onLongClick: (() -> Unit)? = null,
    onClick: (() -> Unit)? = null
) {
    Icon(
        painter = rememberVectorPainter(imageVector),
        contentDescription = contentDescription,
        modifier = modifier,
        flipOnRtl = flipOnRtl,
        tint = tint,
        enabled = enabled,
        onLongClick = onLongClick,
        onClick = onClick
    )
}

/**
 * Icon component that draws a [painter] using [tint].
 *
 * @param painter [Painter] to draw inside this Icon
 * @param contentDescription text used by accessibility services to describe what this icon
 * represents. This should always be provided unless this icon is used for decorative purposes,
 * and does not represent a meaningful action that a user can take. This text should be
 * localized.
 * @param modifier optional [Modifier] for this Icon
 * @param flipOnRtl Boolean to specify if the icon is directional and needs flipping on layoout change
 * @param tint tint to be applied to [painter]. If [Color.Unspecified] is provided, then no
 *  tint is applied
 * @param enabled Boolean to define if icon is clickable or not
 * @param onClick onClick Lambda to be invoked when icon is clicked.
 */
@Composable
fun Modifier.clickAndLongClick(
    onClick: () -> Unit,
    onLongClick: () -> Unit,
    rippleColor: Color = Color.Unspecified,
): Modifier {
    val interactionSource = remember { MutableInteractionSource() }

    return this
        .indication(interactionSource, rememberRipple(color = rippleColor))
        .pointerInput(Unit) {
            detectTapGestures(
                onPress = { offset ->
                    val press = PressInteraction.Press(offset)
                    interactionSource.emit(press)
                    val released = tryAwaitRelease() // for hold clicks
                    val endInteraction = if (released) {
                        PressInteraction.Release(press)
                    } else {
                        PressInteraction.Cancel(press)
                    }
                    interactionSource.emit(endInteraction)
                },
                onTap = { onClick() },
                onLongPress = { onLongClick() }
            )
        }
}

@Composable
fun Icon(
    painter: Painter,
    contentDescription: String?,
    modifier: Modifier = Modifier,
    flipOnRtl: Boolean = false,
    tint: Color = Color.Unspecified,
    enabled: Boolean = true,
    onLongClick: (() -> Unit)? = null,
    onClick: (() -> Unit)? = null
) {
    val colorFilter = if (tint == Color.Unspecified) null else ColorFilter.tint(tint)
    val semantics = if (contentDescription != null) {
        Modifier.semantics {
            this.contentDescription = contentDescription
            this.role = Role.Image
        }
    } else {
        Modifier
    }

    val clickableModifier = Modifier.then(
        if (onClick != null)
            Modifier.then (
                if(onLongClick != null) Modifier.clickAndLongClick(
                    onClick = onClick,
                    onLongClick = onLongClick,
                    rippleColor = Color.Unspecified
                )
                else Modifier.clickable(
                    interactionSource = remember { MutableInteractionSource() },
                    indication = LocalIndication.current,
                    enabled = enabled,
                    onClick = onClick
                )
        ) else Modifier
    )

    Box(
        clickableModifier
            .then(modifier)
            .toolingGraphicsLayer()
            .defaultSizeFor(painter)
            .then(
                if (flipOnRtl && LocalLayoutDirection.current == LayoutDirection.Rtl)
                    Modifier.scale(-1F, 1F)
                else
                    Modifier
            )
            .paint(
                painter,
                colorFilter = colorFilter,
                contentScale = ContentScale.Fit,
            )
            .then(semantics)
    )
}

private fun Modifier.defaultSizeFor(painter: Painter) =
    this.then(
        if (painter.intrinsicSize == Size.Unspecified || painter.intrinsicSize.isInfinite()) {
            DefaultIconSizeModifier
        } else {
            Modifier
        }
    )

private fun Size.isInfinite() = width.isInfinite() && height.isInfinite()

// Default icon size, for icons with no intrinsic size information
private val DefaultIconSizeModifier = Modifier.size(24.dp)
````

## File: src/main/java/com/microsoft/fluentui/theme/token/FluentStyle.kt
````kotlin
package com.microsoft.fluentui.theme.token

enum class FluentStyle {
    Neutral,
    Brand
}
````

## File: src/main/java/com/microsoft/fluentui/theme/token/TokenSet.kt
````kotlin
//
//  Copyright (c) Microsoft Corporation. All rights reserved.
//  Licensed under the MIT License.
//
package com.microsoft.fluentui.theme.token


class TokenSet<T, V>(var defaultValues: ((token: T) -> V)) {
    operator fun get(token: T): V {
        var value = valueOverride[token]
        if (value == null) {
            value = defaultValues(token)
        }
        return value!!
    }

    operator fun set(key: T, value: V) {
        valueOverride[key] = value
    }

    private val valueOverride = HashMap<T, V>()
}
````

## File: src/main/java/com/microsoft/fluentui/theming/FluentUIContextThemeWrapper.kt
````kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentui.theming

import android.content.Context
import android.content.res.Resources
import androidx.appcompat.view.ContextThemeWrapper
import com.microsoft.fluentui.core.R

class FluentUIContextThemeWrapper(base: Context,theme:Int = R.style.Base_Theme_FluentUI) : ContextThemeWrapper(base, theme) {
    override fun onApplyThemeResource(theme: Resources.Theme, resid: Int, first: Boolean) {
        // We don't want to force our styles on top of the user's. We want their styles to take precedence.
        theme.applyStyle(resid, false)
    }
}
````

## File: src/main/java/com/microsoft/fluentui/util/AccessibilityUtils.kt
````kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentui.util

import android.content.Context
import android.view.accessibility.AccessibilityManager
import androidx.compose.foundation.ExperimentalFoundationApi
import androidx.compose.foundation.background
import androidx.compose.foundation.combinedClickable
import androidx.compose.foundation.interaction.MutableInteractionSource
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.Text
import androidx.compose.material.ripple.rememberRipple
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberUpdatedState
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.composed
import androidx.compose.ui.draw.shadow
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.layout.onGloballyPositioned
import androidx.compose.ui.layout.positionInWindow
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.Density
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
import kotlinx.coroutines.delay

/**
 * Utilities for accessibility
 */
val Context.isAccessibilityEnabled: Boolean
    get() = accessibilityManager.isTouchExplorationEnabled

val Context.accessibilityManager: AccessibilityManager
    get() = getSystemService(Context.ACCESSIBILITY_SERVICE) as AccessibilityManager

/**
 * A Modifier that makes a composable clickable, long clickable and displays a tooltip on a long press.
 *
 * This modifier combines click and long-press gesture detection with a tooltip that appears
 * above or below the composable. The tooltip is dismissed after a specified timeout or when
 * the user clicks outside of it.
 *
 * Example usage:
 * ```
 * Box(
 *     modifier = Modifier
 *         .clickableWithTooltip(
 *             tooltipText = "This is a tooltip!",
 *             tooltipEnabled = true,
 *             onClick = { Log.d("TAG", "Clicked!") },
 *             onLongClick = { Log.d("TAG", "Long clicked!") }
 *         ),
 *     contentAlignment = Alignment.Center
 * ) {
 *     Text("Hover or Long Press")
 * }
 * ```
 *
 * @param tooltipText The text to be displayed inside the tooltip.
 * @param tooltipEnabled A boolean to enable or disable the tooltip functionality. Defaults to `false`.
 * @param backgroundColor The background brush for the tooltip. Can be a solid color or a gradient. Defaults to `Color.Unspecified`.
 * @param cornerRadius The corner radius for the tooltip's background shape. Defaults to `8.dp`.
 * @param textStyle The text style for the tooltip's content.
 * @param padding The internal padding around the tooltip's text. Defaults to `12.dp`.
 * @param offset The DpOffset to adjust the tooltip's position relative to the composable. `x` adjusts horizontal position, `y` adjusts vertical. Defaults to `DpOffset(0.dp, 0.dp)`.
 * @param timeout The duration in milliseconds for which the tooltip remains visible before automatically dismissing. Defaults to `2000L`.
 * @param showRippleOnClick If true, a ripple effect will be shown on tap. Defaults to `true`.
 * @param clickRippleColor The color of the ripple effect. Defaults to `Color.Unspecified` which uses the theme's default.
 * @param onClick A lambda to be executed when the composable is tapped.
 * @param onLongClick A lambda to be executed when the composable is long-pressed. This action also triggers the tooltip if `tooltipEnabled` is true.
 * @return Returns a [Modifier] that applies the click and tooltip behavior.
 */

@OptIn(ExperimentalFoundationApi::class)
fun Modifier.clickableWithTooltip(
    tooltipText: String,
    tooltipEnabled: Boolean = false,
    backgroundColor: Brush = SolidColor(Color.Unspecified),
    cornerRadius: Dp = 8.dp,
    textStyle: TextStyle = TextStyle(color = Color.Black, fontWeight = FontWeight.Normal),
    padding: Dp = 12.dp,
    offset: DpOffset = DpOffset(0.dp, 0.dp),
    timeout: Long = 2000L,
    showRippleOnClick: Boolean = true,
    clickRippleColor: Color = Color.Unspecified,
    onClick: (() -> Unit)? = null,
    onLongClick: (() -> Unit)? = null
): Modifier = composed {
    var isTooltipVisible by remember { mutableStateOf(false) }
    var anchorBounds by remember { mutableStateOf(IntRect.Zero) }
    val interactionSource = remember { MutableInteractionSource() }

    val currentOnClick by rememberUpdatedState(onClick)
    val currentOnLongClick by rememberUpdatedState(onLongClick)
    val currentTooltipEnabled by rememberUpdatedState(tooltipEnabled)

    val clickableModifier = Modifier.combinedClickable(
        interactionSource = interactionSource,
        indication = if (showRippleOnClick) rememberRipple(color = clickRippleColor) else null,
        onClick = { currentOnClick?.invoke() },
        onLongClick = {
            currentOnLongClick?.invoke()
            if (currentTooltipEnabled) {
                isTooltipVisible = true
            }
        }
    )

    val positionModifier = Modifier.onGloballyPositioned { layoutCoordinates ->
        anchorBounds = IntRect(
            left = layoutCoordinates.positionInWindow().x.toInt(),
            top = layoutCoordinates.positionInWindow().y.toInt(),
            right = (layoutCoordinates.positionInWindow().x + layoutCoordinates.size.width).toInt(),
            bottom = (layoutCoordinates.positionInWindow().y + layoutCoordinates.size.height).toInt()
        )
    }

    if (isTooltipVisible) {
        Tooltip(
            tooltipText = tooltipText,
            backgroundColor = backgroundColor,
            cornerRadius = cornerRadius,
            textStyle = textStyle,
            padding = padding,
            offset = offset,
            onDismissRequest = { isTooltipVisible = false }
        )

        LaunchedEffect(isTooltipVisible, timeout) {
            delay(timeout)
            isTooltipVisible = false
        }
    }

    this
        .then(if (tooltipEnabled) positionModifier else Modifier)
        .then(clickableModifier)
}

@Composable
private fun Tooltip(
    tooltipText: String,
    backgroundColor: Brush,
    cornerRadius: Dp,
    textStyle: TextStyle,
    padding: Dp,
    offset: DpOffset,
    onDismissRequest: () -> Unit
) {
    val density = LocalDensity.current
    val positionProvider = remember(offset) {
        TooltipPositionProvider(
            offset = offset,
            density = density
        )
    }
    Popup(
        popupPositionProvider = positionProvider,
        onDismissRequest = onDismissRequest,
        properties = PopupProperties(
            dismissOnBackPress = true,
            dismissOnClickOutside = true,
            focusable = false,
        )
    ) {
        Column(
            modifier = Modifier.shadow(4.dp, clip = false)
        ) {
            Box(
                modifier = Modifier
                    .background(backgroundColor, RoundedCornerShape(cornerRadius))
                    .padding(padding)
            ) {
                Text(text = tooltipText, style = textStyle)
            }
        }
    }
}

private class TooltipPositionProvider(
    private val offset: DpOffset,
    private val density: Density
) : PopupPositionProvider {
    override fun calculatePosition(
        anchorBounds: IntRect,
        windowSize: IntSize,
        layoutDirection: LayoutDirection,
        popupContentSize: IntSize
    ): IntOffset {
        val offsetX = with(density) { offset.x.roundToPx() }
        val offsetY = with(density) { offset.y.roundToPx() }
        val y =
            if ((anchorBounds.top - popupContentSize.height) > 0) anchorBounds.top - popupContentSize.height + offsetY else anchorBounds.bottom + offsetY
        val x = (anchorBounds.left + (anchorBounds.width - popupContentSize.width) / 2) + offsetX
        return IntOffset(x, y)
    }
}
````

## File: src/main/java/com/microsoft/fluentui/util/ColorProperty.kt
````kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentui.util

import androidx.core.view.ViewCompat
import android.view.View

/**
 * [ColorProperty] a class to manipulate colors where performance is a concern
 */
class ColorProperty(name: String, private val startColor: Int, private val endColor: Int) : FloatProperty<View>(name) {
    var color: Int = 0
        private set

    private var value: Float = 0f

    override fun setValue(view: View, value: Float) {
        this.value = value

        val startA = startColor shr 24 and 0xFF
        val startR = startColor shr 16 and 0xFF
        val startG = startColor shr 8 and 0xFF
        val startB = startColor and 0xFF

        val endA = endColor shr 24 and 0xFF
        val endR = endColor shr 16 and 0xFF
        val endG = endColor shr 8 and 0xFF
        val endB = endColor and 0xff

        color = startA + (value * (endA - startA)).toInt() shl 24 or
                (startR + (value * (endR - startR)).toInt() shl 16) or
                (startG + (value * (endG - startG)).toInt() shl 8) or
                startB + (value * (endB - startB)).toInt()

        ViewCompat.postInvalidateOnAnimation(view)
    }

    override fun get(`object`: View) = value
}
````

## File: src/main/java/com/microsoft/fluentui/util/DisplayUtils.kt
````kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentui.util

import android.content.Context
import android.content.res.Configuration
import android.graphics.Point
import android.graphics.Rect
import androidx.core.view.ViewCompat
import android.view.Surface
import android.view.View
import android.view.WindowManager
import android.view.inputmethod.InputMethodManager

private const val TABLET_SIZE_THRESHOLD = 600
private const val NAV_BAR_HEIGHT_STRING = "navigation_bar_height"
private const val STATUS_BAR_HEIGHT_STRING = "status_bar_height"
private const val DIMEN_STRING = "dimen"
private const val BOOL_STRING = "bool"
private const val ANDROID_STRING = "android"
private const val CONFIG_SHOW_NAVIGATION_BAR = "config_showNavigationBar"

val Context.isTablet: Boolean
    get() {
        return resources.configuration.smallestScreenWidthDp >= TABLET_SIZE_THRESHOLD
    }

val Context.statusBarHeight: Int
    get() {
        return getSystemDimension(STATUS_BAR_HEIGHT_STRING)
    }

val Context.navigationBarHeight: Int
    get() {
        return getSystemDimension(NAV_BAR_HEIGHT_STRING)
    }

val Context.softNavBarOffsetX: Int
    get() {
        val rotation = (getSystemService(Context.WINDOW_SERVICE) as WindowManager).defaultDisplay.rotation
        return if (rotation == Surface.ROTATION_270 && !isTablet)
            navigationBarHeight
        else
            0
    }

val Context.deviceRotation: Int
    get() = (getSystemService(Context.WINDOW_SERVICE) as WindowManager).defaultDisplay.rotation

fun Context.getSystemDimension(dimensionId: String): Int {
    val resourceId = resources.getIdentifier(dimensionId, DIMEN_STRING, ANDROID_STRING)
    return if (resourceId > 0) resources.getDimensionPixelSize(resourceId) else 0
}

val Context.desiredDialogSize: IntArray
    get() {
        val dialogSize = IntArray(2)
        if (isTablet)
            dialogSize[0] = WindowManager.LayoutParams.WRAP_CONTENT
        else
            dialogSize[0] = resources.displayMetrics.widthPixels

        dialogSize[1] = WindowManager.LayoutParams.WRAP_CONTENT

        return dialogSize
    }

val Context.displaySize: Point
    get(){
        val displaySize = Point()
        val windowManager = getSystemService(Context.WINDOW_SERVICE) as WindowManager
        windowManager.defaultDisplay.getSize(displaySize)
        return displaySize
    }

val Context.inputMethodManager: InputMethodManager
    get() = getSystemService(Context.INPUT_METHOD_SERVICE) as InputMethodManager

val View.layoutIsRtl: Boolean
    get() {
        return ViewCompat.getLayoutDirection(this) == ViewCompat.LAYOUT_DIRECTION_RTL
    }

val View.isVisibleOnScreen: Boolean
    get() {
        val viewBounds = Rect()
        getHitRect(viewBounds)
        return getLocalVisibleRect(viewBounds)
    }

val Context.isLandscape: Boolean
    get() = resources.configuration.orientation == Configuration.ORIENTATION_LANDSCAPE

val Context.isPortrait: Boolean
    get() = resources.configuration.orientation == Configuration.ORIENTATION_PORTRAIT
````

## File: src/main/java/com/microsoft/fluentui/util/FloatProperty.kt
````kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentui.util

import android.util.Property

/**
 * An implementation of [Property] to be used specifically with fields of type
 * `float`. This type-specific subclass enables performance benefit by allowing
 * calls to a [set()][.set] function that takes the primitive
 * `float` type and avoids autoboxing and other overhead associated with the
 * `Float` class.
 *
 * @param <T> The class on which the Property is declared.
</T> */
abstract class FloatProperty<T>(name: String) : Property<T, Float>(Float::class.java, name) {
    /**
     * A type-specific override of the [.set] that is faster when dealing
     * with fields of type `float`.
     */
    abstract fun setValue(`object`: T, value: Float)

    override fun set(`object`: T, value: Float?) {
        value?.let { setValue(`object`, it) }
    }

}
````

## File: src/main/java/com/microsoft/fluentui/util/TextAppearanceUtils.kt
````kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentui.util

import android.content.Context
import androidx.annotation.StyleRes

fun Context.getTextSize(@StyleRes textAppearanceResourceId: Int): Float {
    val textAttributes = obtainStyledAttributes(textAppearanceResourceId, intArrayOf(android.R.attr.textSize))
    val textSize = textAttributes.getDimension(0, -1f)
    textAttributes.recycle()
    return textSize
}
````

## File: src/main/java/com/microsoft/fluentui/util/ThemeUtils.kt
````kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentui.util

import android.content.Context
import android.content.res.ColorStateList
import android.graphics.Color
import android.graphics.drawable.Drawable
import androidx.annotation.ArrayRes
import androidx.annotation.AttrRes
import androidx.annotation.ColorInt
import androidx.annotation.DrawableRes
import androidx.core.content.ContextCompat
import androidx.core.graphics.ColorUtils
import android.util.Log
import android.util.TypedValue

/**
 *[ThemeUtil] came from client-android. Fluent UI currently uses this to generate background colors for
 * initials based on an array of colors defined in the app's theme.
 * //TODO: Trim this code down to what Fluent UI will actually need to use.
 */
object ThemeUtil {
    private const val TAG = "ThemeUtil"

    private val TYPED_VALUE_THREAD_LOCAL = object : ThreadLocal<TypedValue>() {
        override fun initialValue(): TypedValue {
            return TypedValue()
        }
    }

    private val TEMP_ARRAY = object : ThreadLocal<IntArray>() {
        override fun initialValue(): IntArray {
            return IntArray(1)
        }
    }

    private val DISABLED_STATE_SET = intArrayOf(-android.R.attr.state_enabled)

    /**
     * Get a themed color based on an attribute.
     *
     * @param context       a context
     * @param attrId        an attribute ID (e.g. "R.attr.outlookBlue")
     * @return              the themed color of the attribute
     */
    @ColorInt
    fun getColor(context: Context, @AttrRes attrId: Int): Int {
        val typedValue = TYPED_VALUE_THREAD_LOCAL.get()
        val theme = context.theme

        if (!theme.resolveAttribute(attrId, typedValue, true)) {
            val themeName = getThemeName(context)
            throw IllegalArgumentException("Theme (" + themeName + ") doesn't contain given attribute "
                    + context.resources.getResourceEntryName(attrId))
        }

        return typedValue.data
    }

    fun getResId(context: Context, @AttrRes attrId: Int): Int {
        val typedValue = TYPED_VALUE_THREAD_LOCAL.get()
        val theme = context.theme

        if (!theme.resolveAttribute(attrId, typedValue, false)) {
            val themeName = getThemeName(context)
            throw IllegalArgumentException("Theme (" + themeName + ") doesn't contain given attribute "
                    + context.resources.getResourceEntryName(attrId))
        }

        return typedValue.data
    }

    fun getColors(context: Context, @ArrayRes arrayId: Int): IntArray {
        val array = context.resources.obtainTypedArray(arrayId)
        try {
            val results = IntArray(array.length())
            var i = 0
            val size = results.size
            while (i < size) {
                results[i] = array.getColor(i, 0)
                ++i
            }
            return results
        } finally {
            array.recycle()
        }
    }

    fun getThemeAttrColorStateList(context: Context, @AttrRes attr: Int): ColorStateList? {
        TEMP_ARRAY.get()[0] = attr
        val a = context.obtainStyledAttributes(null, TEMP_ARRAY.get())
        try {
            return a.getColorStateList(0)
        } finally {
            a.recycle()
        }
    }

    @ColorInt
    fun getDisabledThemeAttrColor(context: Context, @AttrRes attr: Int): Int {
        val csl = getThemeAttrColorStateList(context, attr)
        if (csl != null && csl.isStateful) {
            // If the CSL is stateful, we'll assume it has a disabled state and use it
            return csl.getColorForState(DISABLED_STATE_SET, csl.defaultColor)
        } else {
            // Else, we'll generate the color using disabledAlpha from the theme
            val tv = TYPED_VALUE_THREAD_LOCAL.get()
            // Now retrieve the disabledAlpha value from the theme
            context.theme.resolveAttribute(android.R.attr.disabledAlpha, tv, true)
            val disabledAlpha = tv.float
            return getThemeAttrColor(context, attr, disabledAlpha)
        }
    }

    @ColorInt
    @JvmOverloads
    fun getThemeAttrColor(context: Context, @AttrRes attr: Int, alpha: Float = 1f): Int {
        TEMP_ARRAY.get()[0] = attr
        val a = context.obtainStyledAttributes(null, TEMP_ARRAY.get())
        try {
            val color = a.getColor(0, 0)
            val originalAlpha = Color.alpha(color)
            return ColorUtils.setAlphaComponent(color, Math.round(originalAlpha * alpha))
        } finally {
            a.recycle()
        }
    }

    private fun getThemeName(context: Context): String? {
        try {
            val wrapper = Context::class.java
            val method = wrapper.getMethod("getThemeResId")
            method.isAccessible = true
            val themeId = method.invoke(context) as Int
            return context.resources.getResourceName(themeId)

        } catch (e: Exception) {
            Log.e(TAG, "Failed to get theme name.", e)
        }

        return null
    }
}

fun Context.getTintedDrawable(@DrawableRes drawableId: Int, @ColorInt tint: Int): Drawable? {
    val drawable = ContextCompat.getDrawable(this, drawableId) ?: return null
    drawable.mutate().setTint(tint)
    return drawable
}
````

## File: src/main/java/com/microsoft/fluentui/util/Utils.kt
````kotlin
package com.microsoft.fluentui.util

import android.content.res.Resources
import androidx.compose.foundation.layout.WindowInsets
import androidx.compose.foundation.layout.ime
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.derivedStateOf
import androidx.compose.runtime.getValue
import androidx.compose.runtime.remember
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp

fun pxToDp(value: Float) = (value / Resources
    .getSystem()
    .displayMetrics.density).dp

fun dpToPx(value: Dp) = (value * Resources
    .getSystem()
    .displayMetrics.density).value

@Composable
fun getStringResource(id: Int): String {
    return LocalContext.current.resources.getString(id)
}

@Composable
fun getStringResource(id: Int, vararg formatArgs: Any): String {
    return LocalContext.current.resources.getString(id, *formatArgs)
}

/**
 * A composable function that observes the visibility of the software keyboard and triggers
 * callbacks when the keyboard becomes visible or hidden.
 *
 * @param onKeyboardVisible A lambda function to be executed when the keyboard becomes visible.
 *                          Defaults to an empty lambda.
 * @param onKeyboardHidden A lambda function to be executed when the keyboard becomes hidden.
 *                         Defaults to an empty lambda.
 * @param content A composable content block to be displayed within this observer.
 */
@Composable
fun KeyboardVisibilityObserver(
    onKeyboardVisible: () -> Unit = {},
    onKeyboardHidden: () -> Unit = {},
    content: @Composable () -> Unit
) {
    val imeInsets = WindowInsets.ime
    val density = LocalDensity.current
    val isKeyboardVisible by remember {
        derivedStateOf {
            imeInsets.getBottom(density) > 0
        }
    }

    LaunchedEffect(isKeyboardVisible) {
        if (isKeyboardVisible) {
            onKeyboardVisible()
        } else {
            onKeyboardHidden()
        }
    }
    content()
}
````

## File: src/main/java/com/microsoft/fluentui/util/ViewUtils.kt
````kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentui.util

import android.content.Context
import android.content.ContextWrapper
import android.graphics.Bitmap
import android.graphics.drawable.Drawable
import androidx.annotation.ColorInt
import androidx.annotation.DrawableRes
import androidx.core.content.ContextCompat
import androidx.appcompat.app.AppCompatActivity
import android.view.View
import android.view.ViewGroup
import android.view.inputmethod.InputMethodManager
import android.widget.ImageView

/**
 * Adds a given [view] to a [ViewGroup]. Especially useful when you need a custom view in a control.
 * Use [updateLayout] to update any part of the view's layout before adding it to the [ViewGroup].
 */
fun ViewGroup.setContentAndUpdateVisibility(view: View?, updateLayout: (() -> Unit)? = null) {
    // We need to remove the view each time so that RecyclerViews can properly recycle the view.
    removeAllViews()

    if (view == null) {
        visibility = View.GONE
        return
    }

    // Make sure the custom view isn't already in a ViewGroup.
    // With RecyclerView reusing ViewHolders, it could have a different parent than the current container.
    (view.parent as? ViewGroup)?.removeView(view)

    updateLayout?.invoke()
    addView(view)
    visibility = View.VISIBLE
}

/**
 * Returns an ImageView containing a Drawable.
 * @param imageId a Drawable resource id.
 * @param imageTint a color integer that will be applied as tint to the drawable. Default is transparent.
 */
fun Context.createImageView(@DrawableRes imageId: Int, @ColorInt imageTint: Int? = null): ImageView {
    val drawable = getImageDrawable(imageTint, imageId)

    val imageView = ImageView(this)
    imageView.setImageDrawable(drawable)
    return imageView
}

fun Context.getImageDrawable(imageTint: Int?, imageId: Int): Drawable? {
    return if (imageTint != null)
        getTintedDrawable(imageId, imageTint)
    else
        ContextCompat.getDrawable(this, imageId)
}

/**
 * Returns an ImageView containing a Drawable.
 * @param bitmap - expected a compressed bitmap which consumer wants to show
 */
fun Context.createImageView(bitmap: Bitmap): ImageView {
    val imageView = ImageView(this)
    imageView.setImageBitmap(bitmap)
    return imageView
}

/**
 * Sets a view's visibility based on a boolean [isVisible].
 */
var View.isVisible: Boolean
    get() = visibility == View.VISIBLE
    set(value) {
        visibility = if (value) View.VISIBLE else View.GONE
    }

/**
 * Shows the soft keyboard.
 */
fun View.toggleKeyboardVisibility() {
    context.inputMethodManager.toggleSoftInput(InputMethodManager.SHOW_IMPLICIT, InputMethodManager.HIDE_IMPLICIT_ONLY)
}

/**
 * Retrieves the current activity from the context.
 */
val Context.activity: AppCompatActivity?
    get() {
        if (this is ContextWrapper)
            return if (this is AppCompatActivity)
                this
            else
                baseContext.activity

        return null
    }
````

## File: src/main/java/com/microsoft/fluentui/view/BaseDividerItemDecoration.kt
````kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentui.view

import android.content.Context
import android.graphics.Canvas
import android.graphics.Paint
import androidx.annotation.ColorInt
import androidx.core.content.ContextCompat
import androidx.recyclerview.widget.DividerItemDecoration
import android.view.View
import com.microsoft.fluentui.core.R
import com.microsoft.fluentui.theming.FluentUIContextThemeWrapper
import com.microsoft.fluentui.util.ThemeUtil

open class BaseDividerItemDecoration : DividerItemDecoration {
    protected var fluentuiContext: Context
    protected val dividerHeight: Float
    protected val subHeaderDividerPadding: Float

    private val dividerPaint: Paint = Paint()
    private val spacerPaint: Paint = Paint()

    constructor(context: Context, orientation: Int) : super(FluentUIContextThemeWrapper(context), orientation) {
        fluentuiContext = FluentUIContextThemeWrapper(context)

        dividerHeight = context.resources.getDimension(R.dimen.fluentui_divider_height)
        subHeaderDividerPadding = context.resources.getDimension(R.dimen.fluentui_list_sub_header_divider_padding)

        dividerPaint.style = Paint.Style.FILL

        spacerPaint.style = Paint.Style.FILL
        spacerPaint.color = ContextCompat.getColor(context, android.R.color.transparent)
    }

    protected fun drawTopSpacer(canvas: Canvas, itemView: View, left: Float, right: Float) {
        canvas.drawRect(
            left,
            getTopOfTopSpacer(itemView),
            right,
            getBottomOfTopSpacer(itemView),
            spacerPaint
        )
    }

    protected fun drawDivider(
        canvas: Canvas,
        itemView: View,
        left: Float,
        right: Float,
        useSectionDivider: Boolean,
        @ColorInt color: Int = ThemeUtil.getThemeAttrColor(fluentuiContext, R.attr.fluentuiDividerColor)
    ) {
        dividerPaint.color = color
        canvas.drawRect(
            left,
            getTopOfDivider(itemView, useSectionDivider),
            right,
            getBottomOfDivider(itemView, useSectionDivider),
            dividerPaint
        )
    }

    protected fun drawBottomSpacer(canvas: Canvas, itemView: View, left: Float, right: Float) {
        canvas.drawRect(
            left,
            getTopOfBottomSpacer(itemView),
            right,
            getBottomOfBottomSpacer(itemView),
            spacerPaint
        )
    }

    private fun getTopOfTopSpacer(itemView: View): Float {
        return itemView.top.toFloat() - (subHeaderDividerPadding * 2) - dividerHeight
    }

    private fun getBottomOfTopSpacer(itemView: View): Float {
        return getTopOfTopSpacer(itemView) + subHeaderDividerPadding
    }

    private fun getTopOfDivider(itemView: View, useSectionDivider: Boolean): Float {
        return if (useSectionDivider) getBottomOfTopSpacer(itemView) else itemView.top.toFloat() - dividerHeight
    }

    private fun getBottomOfDivider(itemView: View, useSectionDivider: Boolean): Float {
        return getTopOfDivider(itemView, useSectionDivider) + dividerHeight
    }

    private fun getTopOfBottomSpacer(itemView: View): Float {
        return getBottomOfDivider(itemView, true)
    }

    private fun getBottomOfBottomSpacer(itemView: View): Float {
        return getTopOfBottomSpacer(itemView) + subHeaderDividerPadding
    }
}
````

## File: src/main/java/com/microsoft/fluentui/view/MSRecyclerView.kt
````kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentui.view

import android.content.Context
import android.hardware.SensorManager
import android.os.SystemClock
import androidx.annotation.RestrictTo
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import android.util.AttributeSet
import android.view.MotionEvent
import android.view.View
import android.view.ViewConfiguration

/**
 * Extension of RecyclerView which offers:
 * - row / column snapping for LayoutManagers that inherit from LinearLayoutManager
 * - user touch tracking
 * - minimum fling velocity adjustment
 * - maximum fling velocity adjustment
 * - scroll velocity tracking
 *
 * Note: The crazy math part has been taken from Android framework Scroller.java and modified
 * to match our needs.
 */
@RestrictTo(RestrictTo.Scope.LIBRARY_GROUP)
open class MSRecyclerView : RecyclerView {
    companion object {
        // This is going to be multiplied by the density of the device
        private const val MAX_SCROLL_VELOCITY = 3500
        private const val INFLEXION = 0.35f // Tension lines cross at (INFLEXION, 1)
        private const val METER_INCH_RATIO = 39.37f
        private const val FRICTION = 0.84f
        private const val BASELINE_DPI = 160.0f
        private const val VELOCITY_DIFF_MINIMUM = 33L

        private val DECELERATION_RATE = (Math.log(0.78) / Math.log(0.9)).toFloat()

        private fun LinearLayoutManager.getChildStartOffset(childView: View): Int =
            if (orientation == HORIZONTAL)
                childView.left - getLeftDecorationWidth(childView)
            else
                childView.top - getTopDecorationHeight(childView)

        private fun LinearLayoutManager.getChildSize(childView: View): Int =
            if (orientation == HORIZONTAL)
                childView.width + getLeftDecorationWidth(childView) + getRightDecorationWidth(childView)
            else
                childView.height + getTopDecorationHeight(childView) + getBottomDecorationHeight(childView)


        private val ITEM_VIEWS_TOUCH_INPUTS_BLOCKER = object : OnItemTouchListener {
            override fun onInterceptTouchEvent(rv: RecyclerView, e: MotionEvent): Boolean {
                return true
            }

            override fun onTouchEvent(rv: RecyclerView, e: MotionEvent) { }

            override fun onRequestDisallowInterceptTouchEvent(disallowIntercept: Boolean) { }
        }
    }

    /**
     * Fine grained user touch tracking which is not based on the scrolling state.
     */
    var isUserTouchOccurring: Boolean = false
        private set

    var isSnappingEnabled: Boolean = false

    /**
     * Enable or not scroll velocity tracking. When the scroll reaches maxScrollVelocity
     * OnScrollVelocityListener is called.
     */
    var enableScrollVelocityTracking: Boolean = false
    var onScrollVelocityListener: OnScrollVelocityListener? = null

    private var ppi = 0f

    // A context-specific coefficient adjusted to physical values.
    private var physicalCoefficient = 0f
    private val flingFriction = ViewConfiguration.getScrollFriction()

    private var flingRequested = false

    // appended with an underscore to prevent naming clashes with parent class
    private var _minFlingVelocity = 0
    private var _maxFlingVelocity = 0
    private var maxScrollVelocity = 0

    private var lastVelocityUpdateTime = -1L

    private var currentScrollVelocity = 0
    private var firstVisiblePosition = 0
    private var firstVisibleViewStartOffset = 0
    private var lastVisiblePosition = 0
    private var lastVisibleViewStartOffset = 0

    var itemViewsEnabled: Boolean = false
        set(value) {
            if (itemViewsEnabled == value)
                return

            field = value

            if (value) {
                removeOnItemTouchListener(ITEM_VIEWS_TOUCH_INPUTS_BLOCKER)
            } else {
                addOnItemTouchListener(ITEM_VIEWS_TOUCH_INPUTS_BLOCKER)
            }
        }

    @JvmOverloads
    constructor(context: Context, attrs: AttributeSet? = null, defStyle: Int = 0) : super(context, attrs, defStyle) {
        _minFlingVelocity = super.getMinFlingVelocity()
        _maxFlingVelocity = super.getMaxFlingVelocity()

        ppi = resources.displayMetrics.density * BASELINE_DPI
        physicalCoefficient = computeDeceleration(FRICTION) // look and feel tuning
        maxScrollVelocity = (MAX_SCROLL_VELOCITY * resources.displayMetrics.density).toInt()
    }

    /**
     * Change the minimum fling velocity value
     */
    fun setMinFlingVelocity(velocity: Int) {
        _minFlingVelocity = velocity
    }

    /**
     * Returns the minimum velocity to start a fling.
     */
    override fun getMinFlingVelocity(): Int = _minFlingVelocity

    /**
     * Change the maximum fling velocity value
     */
    fun setMaxFlingVelocity(velocity: Int) {
        _maxFlingVelocity = velocity
    }

    /**
     * Returns the maximum fling velocity used by this RecyclerView.
     */
    override fun getMaxFlingVelocity(): Int = _maxFlingVelocity

    override fun onTouchEvent(motionEvent: MotionEvent): Boolean {
        val action = motionEvent.action and MotionEvent.ACTION_MASK

        when (action) {
            MotionEvent.ACTION_DOWN, MotionEvent.ACTION_MOVE -> isUserTouchOccurring = true
            MotionEvent.ACTION_UP, MotionEvent.ACTION_CANCEL -> isUserTouchOccurring = false
        }

        return super.onTouchEvent(motionEvent)
    }

    override fun onScrolled(dx: Int, dy: Int) {
        super.onScrolled(dx, dy)

        if (flingRequested)
            return

        trackScrollVelocity()
    }

    override fun onScrollStateChanged(state: Int) {
        super.onScrollStateChanged(state)

        if (SCROLL_STATE_IDLE == state)
            resetScrollVelocityTracking()

        if (!isSnappingEnabled || !hasFixedSize())
            return

        val linearLayoutManager = layoutManager as? LinearLayoutManager
            ?: return

        if (SCROLL_STATE_IDLE == state && !flingRequested) {
            val firstPosition = linearLayoutManager.findFirstVisibleItemPosition()
            if (NO_POSITION == firstPosition)
                return

            val firstView = linearLayoutManager.findViewByPosition(firstPosition)!!

            var dx = 0
            var dy = 0

            if (LinearLayoutManager.HORIZONTAL == linearLayoutManager.orientation) {
                val right = firstView.right
                dx = if (right > firstView.width / 2) firstView.left else right
            } else {
                val bottom = firstView.bottom
                dy = if (bottom > firstView.height / 2) firstView.top else bottom
            }

            smoothScrollBy(dx, dy)
        }

        flingRequested = false
    }

    override fun fling(velocityX: Int, velocityY: Int): Boolean {
        var velocityX = velocityX
        var velocityY = velocityY
        if (!isSnappingEnabled || !hasFixedSize())
            return super.fling(velocityX, velocityY)

        val linearLayoutManager = layoutManager as? LinearLayoutManager
            ?: return super.fling(velocityX, velocityY)

        if (isLayoutFrozen)
            return false

        val canScrollHorizontally = linearLayoutManager.canScrollHorizontally()
        val canScrollVertically = linearLayoutManager.canScrollVertically()

        if (!canScrollHorizontally || Math.abs(velocityX) < _minFlingVelocity)
            velocityX = 0

        if (!canScrollVertically || Math.abs(velocityY) < _minFlingVelocity)
            velocityY = 0

        // If we don't have any velocity, return false
        if (velocityX == 0 && velocityY == 0)
            return false

        if (!dispatchNestedPreFling(velocityX.toFloat(), velocityY.toFloat())) {
            val canScroll = canScrollHorizontally || canScrollVertically
            dispatchNestedFling(velocityX.toFloat(), velocityY.toFloat(), canScroll)

            val maxFlingVelocity = _maxFlingVelocity

            if (canScroll) {
                velocityX = Math.max(-maxFlingVelocity, Math.min(velocityX, maxFlingVelocity))
                velocityY = Math.max(-maxFlingVelocity, Math.min(velocityY, maxFlingVelocity))

                flingAndSnap(velocityX, velocityY)
                return true
            }
        }

        return false
    }

    private fun flingAndSnap(velocityX: Int, velocityY: Int) {
        val linearLayoutManager = layoutManager as LinearLayoutManager
        val firstViewPosition = linearLayoutManager.findFirstVisibleItemPosition()
        if (firstViewPosition == NO_POSITION)
            return
        val firstView = linearLayoutManager.findViewByPosition(firstViewPosition)!!
        val velocity = Math.hypot(velocityX.toDouble(), velocityY.toDouble()).toFloat()
        val totalDistance = getSplineFlingDistance(velocity)

        var dx = 0
        var dy = 0

        if (LinearLayoutManager.HORIZONTAL == linearLayoutManager.orientation) {
            val coeffX = if (velocity == 0f) 1.0f else velocityX / velocity
            val adjustedDistanceX = Math.abs(Math.round(totalDistance * coeffX).toInt())
            val viewWidth = firstView.width +
                linearLayoutManager.getLeftDecorationWidth(firstView) +
                linearLayoutManager.getRightDecorationWidth(firstView)
            var distanceX = adjustedDistanceX + (viewWidth - adjustedDistanceX % viewWidth)

            if (velocityX < 0)
                distanceX *= -1

            dx = firstView.left + distanceX
        } else {
            val coeffY = if (velocity == 0f) 1.0f else velocityY / velocity
            val adjustedDistanceY = Math.abs(Math.round(totalDistance * coeffY).toInt())
            val viewHeight = firstView.height +
                linearLayoutManager.getTopDecorationHeight(firstView) +
                linearLayoutManager.getBottomDecorationHeight(firstView)
            var distanceY = adjustedDistanceY + (viewHeight - adjustedDistanceY % viewHeight)

            if (velocityY < 0)
                distanceY *= -1

            dy = firstView.top + distanceY
        }

        flingRequested = true

        smoothScrollBy(dx, dy)
    }

    private fun getSplineFlingDistance(velocity: Float): Double {
        val splineDeceleration = Math.log((INFLEXION * Math.abs(velocity) / (flingFriction * physicalCoefficient)).toDouble())
        val decelMinusOne = DECELERATION_RATE - 1.0
        return flingFriction.toDouble() * physicalCoefficient.toDouble() * Math.exp(DECELERATION_RATE / decelMinusOne * splineDeceleration)
    }

    // g (m/s^2)
    private fun computeDeceleration(friction: Float): Float =
        SensorManager.GRAVITY_EARTH * METER_INCH_RATIO * ppi * friction

    private fun resetScrollVelocityTracking() {
        lastVelocityUpdateTime = -1
        currentScrollVelocity = 0
    }

    private fun trackScrollVelocity() {
        layoutManager as? LinearLayoutManager ?: return

        if (!enableScrollVelocityTracking)
            return

        val linearLayoutManager = layoutManager as LinearLayoutManager

        val firstPosition = linearLayoutManager.findFirstVisibleItemPosition()
        if (NO_POSITION == firstPosition)
            return

        val lastPosition = linearLayoutManager.findLastVisibleItemPosition()
        if (NO_POSITION == lastPosition)
            return

        val now = SystemClock.uptimeMillis()

        if (lastVelocityUpdateTime != -1L) {
            val diff = now - lastVelocityUpdateTime

            if (diff > VELOCITY_DIFF_MINIMUM) {
                val distance: Int = when {
                    firstVisiblePosition in firstPosition..lastPosition ->
                        linearLayoutManager.getChildStartOffset(getChildAt(firstVisiblePosition - firstPosition)) - firstVisibleViewStartOffset
                    lastVisiblePosition in firstPosition..lastPosition ->
                        linearLayoutManager.getChildStartOffset(getChildAt(lastVisiblePosition - firstPosition)) - lastVisibleViewStartOffset
                    else -> {
                        var totalSize = 0
                        for (i in 0 until childCount)
                            totalSize += linearLayoutManager.getChildSize(getChildAt(i))

                        totalSize / childCount * (firstVisiblePosition - firstPosition)
                    }
                }

                currentScrollVelocity = (1000 * distance / diff).toInt()
            }
        }

        firstVisiblePosition = firstPosition
        firstVisibleViewStartOffset = linearLayoutManager.getChildStartOffset(getChildAt(0))
        lastVisiblePosition = lastPosition
        lastVisibleViewStartOffset = linearLayoutManager.getChildStartOffset(getChildAt(childCount - 1))
        lastVelocityUpdateTime = now

        if (Math.abs(currentScrollVelocity) > maxScrollVelocity && onScrollVelocityListener != null)
            onScrollVelocityListener?.onMaxScrollVelocityReached()
    }

    /**
     * Interface definition for a callback to be invoked when the scrolling of a RecyclerView
     * is meeting the max velocity.
     */
    interface OnScrollVelocityListener {
        fun onMaxScrollVelocityReached()
    }
}
````

## File: src/main/java/com/microsoft/fluentui/view/TemplateView.kt
````kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentui.view

import android.content.Context
import androidx.annotation.IdRes
import androidx.annotation.LayoutRes
import android.util.AttributeSet
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup

/**
 * [TemplateView] is an abstract class designed for building views that have their UI defined in one or more layout files.
 * These layout files are called templates. Once template is loaded it's added to the view as the only child.
 * After that the view becomes a proxy and forwards [onMeasure]/[onLayout] calls to its template root view.
 * This approach allows view to hide its UI implementation details from consuming developer and
 * easily switch from one UI to another.
 *
 * Subclasses must override [templateId] and return resource id for the layout file(s) that will be used as templates.
 *
 * [onTemplateLoaded] can be used to get and store references to views inside template.
 * Use [findViewInTemplateById] for this.
 * The reference to the root view of template is stored in [templateRoot].
 *
 * Call [invalidateTemplate] to tell your view that current template is not valid anymore and should be reloaded.
 * If template needs to be reloaded then this will happen after attachment of the view to the window,
 * after inflation of the view, or at the next layout pass (in [onMeasure]).
 * Reloading of the template can be forced by calling [reloadTemplateIfInvalid].
 *
 * Performance: [TemplateView] adds about 0.035-0.05ms to full measure/layout pass (on Google Pixel 2 XL).
 *
 * Note: All addView* and removeView* methods are blocked and throw Unsupported Operation exception.
 */
abstract class TemplateView : ViewGroup {
    @JvmOverloads
    constructor(context: Context, attrs: AttributeSet? = null, defStyleAttr: Int = 0) : super(context, attrs, defStyleAttr)
    override fun addView(child: View) {
        throw UnsupportedOperationException("addView(View) is not supported in TemplateView")
    }

    override fun addView(child: View, index: Int) {
        throw UnsupportedOperationException("addView(View, int) is not supported in TemplateView")
    }

    override fun addView(child: View, params: ViewGroup.LayoutParams) {
        throw UnsupportedOperationException("addView(View, LayoutParams) is not supported in TemplateView")
    }

    override fun addView(child: View, index: Int, params: ViewGroup.LayoutParams) {
        throw UnsupportedOperationException("addView(View, int, LayoutParams) is not supported in TemplateView")
    }

    override fun removeView(child: View) {
        throw UnsupportedOperationException("removeView(View) is not supported in TemplateView")
    }

    override fun removeViewAt(index: Int) {
        throw UnsupportedOperationException("removeViewAt(int) is not supported in TemplateView")
    }

    override fun removeAllViews() {
        throw UnsupportedOperationException("removeAllViews() is not supported in TemplateView")
    }

    override fun shouldDelayChildPressedState(): Boolean = false

    // Template

    protected abstract val templateId: Int
        @LayoutRes get
    protected var templateRoot: View? = null
        private set

    private var isTemplateValid: Boolean = false

    protected fun <T : View> findViewInTemplateById(@IdRes id: Int): T? {
        return templateRoot?.findViewById(id)
    }

    protected fun invalidateTemplate() {
        isTemplateValid = false
        requestLayout()
    }

    protected open fun onTemplateLoaded() { }

    protected fun reloadTemplateIfInvalid() {
        if (!isTemplateValid)
            reloadTemplate()
    }

    private fun reloadTemplate() {
        templateRoot?.let {
            removeInternalView(it)
            templateRoot = null
        }

        templateRoot = LayoutInflater.from(context).inflate(templateId, this, false)

        templateRoot?.let {
            addInternalView(it)
        }

        isTemplateValid = true

        if (templateRoot != null)
            onTemplateLoaded()
    }

    // Internal view management

    protected fun addInternalView(view: View) {
        super.addView(view, -1, view.layoutParams ?: generateDefaultLayoutParams())
    }

    protected fun removeInternalView(view: View) {
        super.removeView(view)
    }

    // Lifecycle

    override fun onAttachedToWindow() {
        super.onAttachedToWindow()
        reloadTemplateIfInvalid()
    }

    override fun onFinishInflate() {
        super.onFinishInflate()
        reloadTemplateIfInvalid()
    }

    // Layout

    override fun onMeasure(widthMeasureSpec: Int, heightMeasureSpec: Int) {
        reloadTemplateIfInvalid()
        val templateRoot = templateRoot
        if (templateRoot == null) {
            super.onMeasure(widthMeasureSpec, heightMeasureSpec)
            return
        }
        measureChild(templateRoot, widthMeasureSpec, heightMeasureSpec)
        setMeasuredDimension(
            resolveSizeAndState(templateRoot.measuredWidth, widthMeasureSpec, templateRoot.measuredState),
            resolveSizeAndState(templateRoot.measuredHeight, heightMeasureSpec, templateRoot.measuredState shl MEASURED_HEIGHT_STATE_SHIFT)
        )
    }

    override fun onLayout(changed: Boolean, left: Int, top: Int, right: Int, bottom: Int) {
        templateRoot?.layout(0, 0, right - left, bottom - top)
    }
}
````

## File: src/main/res/values/attrs.xml
````xml
<?xml version="1.0" encoding="utf-8"?>
<!--
  ~ Copyright (c) Microsoft Corporation. All rights reserved.
  ~ Licensed under the MIT License.
  -->
<resources>
    <!-- *** Theme Semantic Colors *** -->

    <attr name="fluentuiColorPrimaryDarker" format="reference|color"/>
    <attr name="fluentuiColorPrimaryLight" format="reference|color"/>
    <attr name="fluentuiColorPrimaryLighter" format="reference|color"/>

    <!-- *** Base Semantic Colors *** -->

    <!--Backgrounds-->
    <attr name="fluentuiBackgroundColor" format="reference|color"/>
    <attr name="fluentuiBackgroundPressedColor" format="reference|color"/>
    <attr name="fluentuiBackgroundPrimaryColor" format="reference|color"/>
    <attr name="fluentuiBackgroundSecondaryColor" format="reference|color"/>
    <attr name="fluentuiBackgroundSecondaryPressedColor" format="reference|color"/>

    <!--Foregrounds-->
    <attr name="fluentuiForegroundColor" format="reference|color"/>
    <attr name="fluentuiForegroundSelectedColor" format="reference|color"/>
    <attr name="fluentuiForegroundSecondaryColor" format="reference|color"/>
    <attr name="fluentuiForegroundSecondaryIconColor" format="reference|color"/>
    <attr name="fluentuiForegroundOnPrimaryColor" format="reference|color"/>
    <attr name="fluentuiForegroundOnSecondaryColor" format="reference|color"/>
    <attr name="fluentuiDividerColor" format="reference|color"/>

    <!--Transparent Backgrounds-->
    <attr name="fluentuiBackgroundSecondary20Color" format="reference|color"/>

    <!--Transparent Foregrounds-->
    <attr name="fluentuiForegroundOnPrimary80Color" format="reference|color"/>
    <attr name="fluentuiForegroundOnPrimary70Color" format="reference|color"/>

    <!--Attributes from Modules-->

    <!--fluentui_calendar Start-->
    <!--NumberPicker-->
    <attr name="fluentui_numberPickerStyle" format="reference" />
    <!-- Color for the solid color background if such for optimized rendering. -->
    <attr name="fluentui_solidColor" format="color|reference" />
    <!-- The divider for making the selection area. -->
    <attr name="fluentui_selectionDivider" format="reference" />
    <!-- The height of the selection divider. -->
    <attr name="fluentui_selectionDividerHeight" format="dimension" />
    <!-- The distance between the two selection dividers. -->
    <attr name="fluentui_selectionDividersDistance" format="dimension" />
    <!-- The min height of the NumberPicker. -->
    <attr name="fluentui_internalMinHeight" format="dimension" />
    <!-- The max height of the NumberPicker. -->
    <attr name="fluentui_internalMaxHeight" format="dimension" />
    <!-- The min width of the NumberPicker. -->
    <attr name="fluentui_internalMinWidth" format="dimension" />
    <!-- The max width of the NumberPicker. -->
    <attr name="fluentui_internalMaxWidth" format="dimension" />
    <!-- The layout of the number picker. -->
    <attr name="fluentui_internalLayout" format="reference" />
    <!-- The drawable for pressed virtual (increment/decrement) buttons. -->
    <attr name="fluentui_virtualButtonPressedDrawable" format="reference"/>
    <!-- If true then the selector wheel is hidden until the picker has focus. -->
    <attr name="fluentui_hideWheelUntilFocused" format="boolean"/>
    <attr name="fluentui_numberPickerTextColor" format="color|reference"/>
    <attr name="fluentui_numberPickerSelectedTextColor" format="color|reference"/>
    <attr name="fluentui_selectorWheelItemCount" format="integer" />

    <!--fluentui_calendar End-->

    <!--fluentui_ccb Start-->
    <!--ContextualCommandBar-->
    <attr name="fluentui_itemSpace" format="dimension"/>
    <attr name="fluentui_groupSpace" format="dimension"/>
    <!--ContextualCommandBar End-->

    <!--fluentui_ccb End-->

    <!--fluentui_drawer Start-->
    <!--Drawer-->
    <attr name="fluentui_cornerRadius" format="dimension"/>

    <!--PersistentBottomSheet-->
    <!-- The min height of the BottomSheet -->
    <attr name="fluentui_peekHeight" format="dimension" />
    <!--  Determines whether to keep the default drawer handle or not -->
    <attr name="fluentui_isDrawerHandleVisible" format="boolean" />
    <!--  horizontal Item in a row-->
    <attr name="fluentui_itemsInRow" format="integer" />
    <!-- horizontal item text style-->
    <attr name="fluentui_horizontalItemTextAppearance" format="reference" />
    <!-- vertical item text style-->
    <attr name="fluentui_verticalItemTextAppearance" format="reference" />
    <!-- vertical item subtitle style-->
    <attr name="fluentui_verticalItemSubTextAppearance" format="reference" />
    <!--header text style-->
    <attr name="fluentui_headerTextAppearance" format="reference" />

    <!--fluentui_drawer End-->

    <!--fluentui_listitem Start-->

    <!--ListItemView-->
    <attr name="fluentui_title" format="string" />
    <attr name="fluentui_subtitle" format="string" />
    <attr name="fluentui_footer" format="string" />
    <attr name="fluentui_titleMaxLines" format="integer" />
    <attr name="fluentui_subtitleMaxLines" format="integer" />
    <attr name="fluentui_footerMaxLines" format="integer" />
    <!--fluentui_listitem End-->

    <!--fluent_others Start-->

    <!--ActionBarLayout-->
    <attr name="fluentui_viewPager" format="reference"/>
    <!--fluent_others End-->

    <!-- fluentui_peoplepicker Start-->

    <!--PeoplePickerView-->
    <attr name="fluentui_label" format="string" />
    <attr name="fluentui_valueHint" format="string" />
    <attr name="fluentui_showHint" format="boolean" />
    <attr name="fluentui_characterThreshold" format="integer" />

    <!-- fluentui_peoplepicker End-->

    <!--fluentui_persona Start-->

    <!--AvatarView-->
    <attr name="fluentui_avatarBackgroundColor" format="reference" />
    <attr name="fluentui_avatarImageDrawable" format="reference" />

    <!--AvatarGroupView-->
    <attr name="fluentui_maxDisplayedAvatars" format="integer" />
    <attr name="fluentui_overflowAvatarCount" format="integer" />

    <!--PersonaView-->
    <attr name="fluentui_name" format="string" />
    <attr name="fluentui_email" format="string" />

    <!--PersonaChipView-->
    <attr name="fluentui_showCloseIconWhenSelected" format="boolean" />

    <!--fluentui_persona End-->

    <!--fluentui_tablayout Start-->

    <!--TabLayout-->
    <attr name="fluentui_containerBackgroundColor" format="color" />
    <attr name="fluentui_tabsBackgroundColor" format="color" />
    <attr name="fluentui_tabSelectedBackgroundColor" format="color" />
    <attr name="fluentui_tabUnselectedBackgroundColor" format="color" />
    <attr name="fluentui_tabSelectedTextColor" format="color" />
    <attr name="fluentui_tabUnselectedTextColor" format="color" />

    <!--fluentui_tablayout End-->

    <!--fluentui_topappbars Start-->

    <!--AppBarLayout-->
    <attr name="fluentui_scrollTargetViewId" format="integer" />
    <!--fluentui_topappbars End-->

</resources>
````

## File: src/main/res/values/colors.xml
````xml
<?xml version="1.0" encoding="utf-8"?>
<!--
  ~ Copyright (c) Microsoft Corporation. All rights reserved.
  ~ Licensed under the MIT License.
  -->

<resources>

    <!--Deprecated: Replace these colors in your app with the new semantic theme attributes or the "Neutral Colors" below.-->
    <!--<color name="fluentui_light_gray">@color/fluentui_gray_300</color>-->
    <!--<color name="fluentui_gray">@color/fluentui_gray_400</color>-->
    <!--<color name="fluentui_dark_gray">@color/fluentui_gray_500</color>-->
    <!--<color name="fluentui_background_gray">@color/fluentui_gray_50</color>-->
    <!--<color name="fluentui_background_light_gray">@color/fluentui_gray_25</color>-->
    <!--<color name="fluentui_border_gray">@color/fluentui_gray_200</color>-->
    <!--<color name="fluentui_border_light_gray">@color/fluentui_gray_100</color>-->

    <!-- *** Physical Colors *** -->

    <!--Communication Colors-->
    <color name="fluentui_communication_shade_30">#004578</color>
    <color name="fluentui_communication_shade_20">#005A9E</color>
    <color name="fluentui_communication_shade_10">#106EBE</color>
    <color name="fluentui_communication_blue">#0078D4</color>
    <color name="fluentui_communication_tint_20">#C7E0F4</color>
    <color name="fluentui_communication_tint_30">#DEECF9</color>
    <color name="fluentui_communication_tint_40">#EFF6FC</color>

    <!--Neutral Colors-->
    <color name="fluentui_black">#000000</color>
    <color name="fluentui_gray_950">#141414</color>
    <color name="fluentui_gray_900">#212121</color>
    <color name="fluentui_gray_800">#292929</color>
    <color name="fluentui_gray_700">#303030</color>
    <color name="fluentui_gray_600">#404040</color>
    <color name="fluentui_gray_500">#6E6E6E</color>
    <color name="fluentui_gray_400">#919191</color>
    <color name="fluentui_gray_300">#ACACAC</color>
    <color name="fluentui_gray_200">#C8C8C8</color>
    <color name="fluentui_gray_100">#E1E1E1</color>
    <color name="fluentui_gray_56">#777777</color>
    <color name="fluentui_gray_50">#F1F1F1</color>
    <color name="fluentui_gray_25">#F8F8F8</color>
    <color name="fluentui_white">#FFFFFF</color>

    <!-- *** Semantic Colors *** -->
    <color name="fluentui_transparent">#00000000</color>

    <!-- *** Other Colors *** -->
    <color name="fluentui_red">#D92C2C</color>
    <color name="fluentui_yellow">#FFD335</color>
</resources>
````

## File: src/main/res/values/dimens.xml
````xml
<?xml version="1.0" encoding="utf-8"?>
<!--
  ~ Copyright (c) Microsoft Corporation. All rights reserved.
  ~ Licensed under the MIT License.
  -->
<resources>
    <!-- List SubHeader Base Divider -->
    <dimen name="fluentui_list_sub_header_divider_padding">8dp</dimen>
    <!--Shared-->
    <dimen name="fluentui_divider_height">.5dp</dimen>
    <dimen name="fluentui_corner_radius_2">2dp</dimen>
    <dimen name="fluentui_corner_radius_4">4dp</dimen>
    <dimen name="fluentui_corner_radius_8">8dp</dimen>
    <dimen name="fluentui_min_touch_size">48dp</dimen>
    <dimen name="fluentui_content_inset">16dp</dimen>
</resources>
````

## File: src/main/res/values/styles.xml
````xml
<?xml version="1.0" encoding="utf-8"?>
<!--
  ~ Copyright (c) Microsoft Corporation. All rights reserved.
  ~ Licensed under the MIT License.
  -->
<resources>
    <style name="Widget.FluentUI" parent="@android:style/Widget"/>
</resources>
````

## File: src/main/res/values/themes.xml
````xml
<?xml version="1.0" encoding="utf-8"?>
<!--
  ~ Copyright (c) Microsoft Corporation. All rights reserved.
  ~ Licensed under the MIT License.
  -->
<resources>
    <style name="Base.Theme.FluentUI.Internal" parent="Theme.AppCompat.Light.DarkActionBar">
    <item name="colorPrimary">@color/fluentui_communication_blue</item>
    <item name="colorPrimaryDark">@color/fluentui_communication_shade_20</item>
    <item name="colorAccent">@color/fluentui_communication_blue</item>
    <item name="android:textColorPrimary">@color/fluentui_gray_900</item>


    <!-- *** Theme Semantic Colors *** -->

    <item name="fluentuiColorPrimaryDarker">@color/fluentui_communication_shade_30</item>
    <item name="fluentuiColorPrimaryLight">@color/fluentui_communication_tint_20</item>
    <item name="fluentuiColorPrimaryLighter">@color/fluentui_communication_tint_40</item>

    <!-- *** Base Semantic Colors *** -->

    <!--Backgrounds-->
    <item name="fluentuiBackgroundColor">@color/fluentui_white</item>
    <item name="fluentuiBackgroundPressedColor">@color/fluentui_gray_100</item>
    <item name="fluentuiBackgroundPrimaryColor">?attr/colorPrimary</item>
    <item name="fluentuiBackgroundSecondaryColor">@color/fluentui_gray_900</item>
    <item name="fluentuiBackgroundSecondaryPressedColor">@color/fluentui_gray_500</item>

    <!--Backgrounds, Transparent-->
    <item name="fluentuiBackgroundSecondary20Color">#33000000</item>

    <!--Foregrounds-->
    <item name="fluentuiForegroundColor">@color/fluentui_gray_900</item>
    <item name="fluentuiForegroundSelectedColor">?attr/colorPrimary</item>
    <item name="fluentuiForegroundSecondaryColor">@color/fluentui_gray_500</item>
    <item name="fluentuiForegroundSecondaryIconColor">@color/fluentui_gray_400</item>
    <item name="fluentuiForegroundOnPrimaryColor">@color/fluentui_white</item>
    <item name="fluentuiForegroundOnSecondaryColor">@color/fluentui_white</item>
    <item name="fluentuiDividerColor">@color/fluentui_gray_100</item>

    <!--Foregrounds, Transparent-->
    <item name="fluentuiForegroundOnPrimary80Color">#CCFFFFFF</item>
    <item name="fluentuiForegroundOnPrimary70Color">#B3FFFFFF</item>
    </style>

    <!--
      All light theme semantic colors should be defined in the base theme as the default.
      Dark theme specific semantic colors should be defined in "themes.xml (night)".
     -->
    <style name="Base.Theme.FluentUI" parent="Base.Theme.FluentUI.Internal"/>

    <!--
        This theme overlay targets only the attributes needed for a neutral AppBarLayout with a white background.
        Use as the theme attribute in an AppBarLayout or in a ContextThemeWrapper for AppBarLayout, Searchbar, or Toolbar.
    -->
    <style name="ThemeOverlay.FluentUI.NeutralAppBar" parent=""/>

</resources>
````
