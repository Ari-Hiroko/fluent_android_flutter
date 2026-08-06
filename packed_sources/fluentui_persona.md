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
src/main/java/com/microsoft/fluentui/persona/AvatarGroupView.kt
src/main/java/com/microsoft/fluentui/persona/AvatarSize.kt
src/main/java/com/microsoft/fluentui/persona/AvatarView.kt
src/main/java/com/microsoft/fluentui/persona/IAvatar.kt
src/main/java/com/microsoft/fluentui/persona/InitialsDrawable.kt
src/main/java/com/microsoft/fluentui/persona/IPersona.kt
src/main/java/com/microsoft/fluentui/persona/PersonaChipView.kt
src/main/java/com/microsoft/fluentui/persona/PersonaListAdapter.kt
src/main/java/com/microsoft/fluentui/persona/PersonaListView.kt
src/main/java/com/microsoft/fluentui/persona/PersonaView.kt
src/main/java/com/microsoft/fluentui/tokenized/persona/Avatar.kt
src/main/java/com/microsoft/fluentui/tokenized/persona/AvatarCarousel.kt
src/main/java/com/microsoft/fluentui/tokenized/persona/AvatarGroup.kt
src/main/java/com/microsoft/fluentui/tokenized/persona/AvatarPie.kt
src/main/java/com/microsoft/fluentui/tokenized/persona/Persona.kt
src/main/java/com/microsoft/fluentui/tokenized/persona/PersonaChip.kt
src/main/java/com/microsoft/fluentui/tokenized/persona/PersonaList.kt
src/main/java/com/microsoft/fluentui/tokenized/persona/SearchBarPersonaChip.kt
src/main/java/com/microsoft/fluentui/tokenized/persona/Utils.kt
src/main/res/values/attrs.xml
src/main/res/values/colors.xml
src/main/res/values/dimens.xml
src/main/res/values/themes.xml
```

# Files

## File: src/main/java/com/microsoft/fluentui/persona/AvatarGroupView.kt
```kotlin
package com.microsoft.fluentui.persona

import android.content.Context
import android.util.AttributeSet
import android.view.View
import android.view.View.OnClickListener
import android.view.ViewGroup
import android.widget.FrameLayout
import androidx.core.content.ContextCompat
import com.microsoft.fluentui.theming.FluentUIContextThemeWrapper


enum class AvatarGroupStyle {
    STACK, PILE
}

open class AvatarGroupView : FrameLayout {
    companion object {
        internal val DEFAULT_AVATAR_GROUP_STYLE = AvatarGroupStyle.STACK
        internal val DEFAULT_AVATAR_BORDER_STYLE = AvatarBorderStyle.NO_BORDER
        internal const val DEFAULT_AVATAR_ALLOWED = 4
        internal const val DEFAULT_OVERFLOW_AVATAR = 0
    }

    @JvmOverloads
    constructor(appContext: Context, attrs: AttributeSet? = null, defStyleAttr: Int = 0) : super(
        FluentUIContextThemeWrapper(appContext, R.style.Theme_FluentUI_Persona),
        attrs,
        defStyleAttr
    ) {
        val styledAttrs = context.obtainStyledAttributes(attrs, R.styleable.AvatarGroupView)
        val avatarSizeOrdinal = styledAttrs.getInt(
            R.styleable.AvatarGroupView_fluentui_avatarSize,
            AvatarView.DEFAULT_AVATAR_SIZE.ordinal
        )
        val avatarGroupStyleOrdinal = styledAttrs.getInt(
            R.styleable.AvatarGroupView_fluentui_avatarGroupStyle,
            DEFAULT_AVATAR_GROUP_STYLE.ordinal
        )
        val avatarBorderStyleOrdinal = styledAttrs.getInt(
            R.styleable.AvatarGroupView_fluentui_avatarBorderStyle,
            DEFAULT_AVATAR_BORDER_STYLE.ordinal
        )

        avatarSize = AvatarSize.values()[avatarSizeOrdinal]
        avatarGroupStyle = AvatarGroupStyle.values()[avatarGroupStyleOrdinal]
        avatarBorderStyle = AvatarBorderStyle.values()[avatarBorderStyleOrdinal]
        maxDisplayedAvatars = styledAttrs.getInt(
            R.styleable.AvatarGroupView_fluentui_maxDisplayedAvatars,
            DEFAULT_AVATAR_ALLOWED
        )
        overflowAvatarCount = styledAttrs.getInt(
            R.styleable.AvatarGroupView_fluentui_overflowAvatarCount,
            DEFAULT_OVERFLOW_AVATAR
        )
        styledAttrs.recycle()
    }

    private var avatarList: List<IAvatar> = ArrayList()
    private var overflowAvatar: AvatarView? = null
    private val clickListener = OnClickListener {
        listener?.onAvatarClicked(it.tag as Int)
    }
    private val overflowClickListener = OnClickListener {
        listener?.onOverFlowClicked()
    }

    var maxDisplayedAvatars: Int = DEFAULT_AVATAR_ALLOWED
        set(value) {
            if (field == value)
                return

            field = value
            updateView()
        }

    /**
     * Defines the [overflowAvatarCount] applied to avatarGroup.
     * This property when set acts like a manual override and [maxDisplayedAvatar] is not honoured.
     */
    var overflowAvatarCount: Int = DEFAULT_OVERFLOW_AVATAR
        set(value) {
            if (field == value)
                return

            field = value
            updateView()
        }

    var listener: Listener? = null
        set(value) {
            if (field == value)
                return

            field = value
            for (child in 0 until childCount) {
                getChildAt(child).setOnClickListener(clickListener)
            }
            overflowAvatar?.setOnClickListener(overflowClickListener)
        }

    /**
     * Defines the [AvatarGroupStyle] applied to the avatar.
     */
    var avatarGroupStyle: AvatarGroupStyle = DEFAULT_AVATAR_GROUP_STYLE
        set(value) {
            if (field == value)
                return

            field = value
            updateView()
        }

    /**
     * Defines the [AvatarBorderStyle] applied to the avatar.
     */
    var avatarBorderStyle: AvatarBorderStyle = DEFAULT_AVATAR_BORDER_STYLE
        set(value) {
            if (field == value)
                return

            field = value
            updateView()
        }

    /**
     * Defines the [AvatarSize] applied to the avatar's height and width.
     */
    var avatarSize: AvatarSize = AvatarView.DEFAULT_AVATAR_SIZE
        set(value) {
            if (field == value)
                return

            field = value
            updateView()
        }

    /**
     * Defines the ContentDescription which will be applied to the overflow Avatar if it exists
     */
    private var overflowContentDescription: String = ""

    fun setAvatars(avatarList: List<IAvatar>) {
        this.avatarList = avatarList
        updateView()
    }

    /*
        Either we can pass "customString" or "formattedString %s",
        Please note only %s will work here. As we get the overflow icon's count from the name of
        Avatar
     */
    fun setOverflowContentDescription(formatterContentDescription: String) {
        overflowContentDescription = formatterContentDescription
        overflowAvatar?.apply {
            avatarContentDescriptionLabel = String.format(overflowContentDescription, name)
        }
    }

    private fun updateView() {
        removeAllViews()
        overflowAvatar = null
        for ((index, avatar) in avatarList.withIndex()) {
            if (index >= maxDisplayedAvatars && overflowAvatarCount <= 0) {
                if (avatarList.size > maxDisplayedAvatars) {
                    addOverFlowView(avatarList.size - maxDisplayedAvatars, index)
                }
                return
            }
            val avatarView = AvatarView(context)
            avatarView.setAvatar(avatar)
            avatarView.avatarSize = avatarSize
            avatarView.avatarStyle = AvatarStyle.CIRCLE
            avatarView.id = View.generateViewId()
            avatarView.tag = index
            if (listener != null) {
                avatarView.setOnClickListener(clickListener)
            }
            val layoutParams = LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT,
                ViewGroup.LayoutParams.WRAP_CONTENT
            )
            when (avatarGroupStyle) {
                AvatarGroupStyle.PILE -> {
                    avatarView.avatarBorderStyle = avatarBorderStyle
                    layoutParams.marginStart = index * (avatarView.getViewSize() + getPileSpacing())
                }
                AvatarGroupStyle.STACK -> {
                    if (avatarBorderStyle == AvatarBorderStyle.NO_BORDER)
                        avatarView.avatarBorderStyle = AvatarBorderStyle.SINGLE_RING
                    else
                        avatarView.avatarBorderStyle = AvatarBorderStyle.RING
                    layoutParams.marginStart =
                        index * (avatarView.getViewSize() / 2 + getStackSpacing())
                }
            }
            avatarView.layoutParams = layoutParams
            addView(avatarView)
        }
        if (overflowAvatarCount > 0) {
            addOverFlowView(overflowAvatarCount, avatarList.size)
            return
        }
    }

    private fun addOverFlowView(overflowCount: Int, indexToPlace: Int) {
        val avatarView = AvatarView(context)
        avatarView.name = overflowCount.toString()
        avatarView.avatarBackgroundColor =
            ContextCompat.getColor(context, R.color.fluentui_avatar_overflow_background)
        avatarView.avatarSize = avatarSize
        avatarView.avatarIsOverFlow = true
        avatarView.avatarStyle = AvatarStyle.CIRCLE
        avatarView.id = View.generateViewId()
        if (listener != null) {
            avatarView.setOnClickListener(overflowClickListener)
        }
        val layoutParams =
            LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT)
        when (avatarGroupStyle) {
            AvatarGroupStyle.STACK -> {
                if (avatarBorderStyle == AvatarBorderStyle.NO_BORDER)
                    avatarView.avatarBorderStyle = AvatarBorderStyle.SINGLE_RING
                else
                    avatarView.avatarBorderStyle = AvatarBorderStyle.RING
                layoutParams.marginStart =
                    indexToPlace * (avatarView.getViewSize() / 2 + getStackSpacing())
            }
            AvatarGroupStyle.PILE -> {
                avatarView.avatarBorderStyle = avatarBorderStyle
                layoutParams.marginStart =
                    indexToPlace * (avatarView.getViewSize() + getPileSpacing())
            }
        }
        avatarView.layoutParams = layoutParams
        overflowAvatar = avatarView
        setOverflowContentDescription(overflowContentDescription)
        addView(avatarView)
    }

    private fun getPileSpacing(): Int {
        return when (avatarSize) {
            AvatarSize.XSMALL -> context.resources.getDimension(R.dimen.fluentui_avatar_pile_space_xsmall)
            AvatarSize.SMALL -> context.resources.getDimension(R.dimen.fluentui_avatar_pile_space_small)
            AvatarSize.MEDIUM -> context.resources.getDimension(R.dimen.fluentui_avatar_pile_space_medium)
            AvatarSize.LARGE -> context.resources.getDimension(R.dimen.fluentui_avatar_pile_space_large)
            AvatarSize.XLARGE -> context.resources.getDimension(R.dimen.fluentui_avatar_pile_space_xlarge)
            AvatarSize.XXLARGE -> context.resources.getDimension(R.dimen.fluentui_avatar_pile_space_xxlarge)
        }.toInt()
    }

    private fun getStackSpacing(): Int {
        return when (avatarSize) {
            AvatarSize.XSMALL -> context.resources.getDimension(R.dimen.fluentui_avatar_stack_space_xsmall)
            AvatarSize.SMALL -> context.resources.getDimension(R.dimen.fluentui_avatar_stack_space_small)
            AvatarSize.MEDIUM -> context.resources.getDimension(R.dimen.fluentui_avatar_stack_space_medium)
            AvatarSize.LARGE -> context.resources.getDimension(R.dimen.fluentui_avatar_stack_space_large)
            AvatarSize.XLARGE -> context.resources.getDimension(R.dimen.fluentui_avatar_stack_space_xlarge)
            AvatarSize.XXLARGE -> context.resources.getDimension(R.dimen.fluentui_avatar_stack_space_xxlarge)
        }.toInt()
    }

    interface Listener {
        fun onAvatarClicked(index: Int)
        fun onOverFlowClicked()
    }
}
```

## File: src/main/java/com/microsoft/fluentui/persona/AvatarSize.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentui.persona

import android.content.Context
import com.microsoft.fluentui.persona.R

/**
 * The [id] passed to this enum class references a dimens resource that [getDisplayValue] converts into an int.
 * This int specifies the layout width and height for the AvatarView.
 */
enum class AvatarSize(private val id: Int) {
    XSMALL(R.dimen.fluentui_avatar_size_xsmall),
    SMALL(R.dimen.fluentui_avatar_size_small),
    MEDIUM(R.dimen.fluentui_avatar_size_medium),
    LARGE(R.dimen.fluentui_avatar_size_large),
    XLARGE(R.dimen.fluentui_avatar_size_xlarge),
    XXLARGE(R.dimen.fluentui_avatar_size_xxlarge);

    /**
     * This method uses [context] to convert the [id] resource into an int that becomes
     * AvatarView's layout width and height
     */
    internal fun getDisplayValue(context: Context): Int {
        return context.resources.getDimension(id).toInt()
    }
}
```

## File: src/main/java/com/microsoft/fluentui/persona/AvatarView.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentui.persona

import android.content.Context
import android.graphics.*
import android.graphics.drawable.BitmapDrawable
import android.graphics.drawable.Drawable
import android.net.Uri
import android.provider.MediaStore
import androidx.annotation.ColorInt
import androidx.core.content.ContextCompat
import androidx.appcompat.widget.AppCompatImageView
import android.util.AttributeSet
import com.microsoft.fluentui.theming.FluentUIContextThemeWrapper

enum class AvatarStyle {
    CIRCLE, SQUARE
}

enum class AvatarBorderStyle {
    NO_BORDER, RING, SINGLE_RING
}

/**
 * [AvatarView] is a custom ImageView that displays the initials of a person on top of a colored circular
 * background. The initials are extracted from their name or email. The color of the circular
 * background is computed from the name and is based on an array of colors.
 */
open class AvatarView : AppCompatImageView {
    companion object {
        internal val DEFAULT_AVATAR_SIZE = AvatarSize.LARGE
        internal val DEFAULT_AVATAR_STYLE = AvatarStyle.CIRCLE
        internal val DEFAULT_AVATAR_BORDER_STYLE = AvatarBorderStyle.NO_BORDER
    }

    @JvmOverloads
    constructor(appContext: Context, attrs: AttributeSet? = null, defStyleAttr: Int = 0) : super(FluentUIContextThemeWrapper(appContext,R.style.Theme_FluentUI_Persona), attrs, defStyleAttr) {
        val styledAttrs = context.obtainStyledAttributes(attrs, R.styleable.AvatarView)
        val avatarSizeOrdinal = styledAttrs.getInt(R.styleable.AvatarView_fluentui_avatarSize, DEFAULT_AVATAR_SIZE.ordinal)
        val avatarStyleOrdinal = styledAttrs.getInt(R.styleable.AvatarView_fluentui_avatarStyle, DEFAULT_AVATAR_STYLE.ordinal)
        val avatarBorderStyleOrdinal = styledAttrs.getInt(R.styleable.AvatarView_fluentui_avatarBorderStyle, DEFAULT_AVATAR_BORDER_STYLE.ordinal)

        name = styledAttrs.getString(R.styleable.AvatarView_fluentui_name) ?: ""
        email = styledAttrs.getString(R.styleable.AvatarView_fluentui_email) ?: ""
        avatarSize = AvatarSize.values()[avatarSizeOrdinal]
        avatarStyle = AvatarStyle.values()[avatarStyleOrdinal]
        avatarBorderStyle = AvatarBorderStyle.values()[avatarBorderStyleOrdinal]

        val avatarImageResourceId = styledAttrs.getResourceId(R.styleable.AvatarView_fluentui_avatarImageDrawable, 0)
        if (avatarImageResourceId > 0 && resources.getResourceTypeName(avatarImageResourceId) == "drawable")
            avatarImageDrawable = styledAttrs.getDrawable(R.styleable.AvatarView_fluentui_avatarImageDrawable)

        val avatarBackgroundColorResourceId = styledAttrs.getResourceId(R.styleable.AvatarView_fluentui_avatarBackgroundColor, 0)
        if (avatarBackgroundColorResourceId > 0 && resources.getResourceTypeName(avatarBackgroundColorResourceId) == "color")
            avatarBackgroundColor = ContextCompat.getColor(context, avatarBackgroundColorResourceId)

        styledAttrs.recycle()
    }

    var name: String = ""
        set(value) {
            field = value
            initials.setInfo(name, email, avatarBackgroundColor)
        }
    var email: String = ""
        set(value) {
            field = value
            initials.setInfo(name, email, avatarBackgroundColor)
        }
    var avatarImageBitmap: Bitmap? = null
        set(value) {
            field = value
            setImageBitmap(value)
        }
    var avatarImageDrawable: Drawable? = null
        set(value) {
            field = value
            setImageDrawable(value)
        }
    var avatarImageResourceId: Int? = null
        set(value) {
            field = value
            value?.let {
                if( it != -1)
                    setImageResource(it)
            }
        }
    var avatarImageUri: Uri? = null
        set(value) {
            field = value
            setImageURI(value)
        }
    @ColorInt
    var avatarBackgroundColor: Int? = null
        set(value) {
            field = value
            initials.setInfo(name, email, avatarBackgroundColor)
        }
    /**
     * Defines the [AvatarSize] applied to the avatar's height and width.
     */
    var avatarSize: AvatarSize = DEFAULT_AVATAR_SIZE
        set(value) {
            if (field == value)
                return

            field = value
            requestLayout()
        }
    /**
     * Defines the [AvatarStyle] applied to the avatar.
     */
    var avatarStyle: AvatarStyle = DEFAULT_AVATAR_STYLE
        set(value) {
            if (field == value)
                return

            field = value
            invalidate()
        }
    /**
     * Defines the [AvatarBorderStyle] applied to the avatar.
     */
    var avatarBorderStyle: AvatarBorderStyle = DEFAULT_AVATAR_BORDER_STYLE
        set(value) {
            if (field == value)
                return

            field = value
            invalidate()
        }

    /**
     * Defines the [AvatarIsOverFlow] applied to the avatar.
     */
    var avatarIsOverFlow: Boolean = false
        set(value) {
            if (field == value)
                return

            field = value
            initials.setInfo(name, email, avatarBackgroundColor, true)
            invalidate()
        }

    /**
     * Defines the [ContentDescription] applied to the avatar.
     */
    var avatarContentDescriptionLabel: String = ""
        set(value) {
            if (field == value)
                return

            field = value
            contentDescription = avatarContentDescriptionLabel
        }

    private val initials = InitialsDrawable(context)
    private val path: Path = Path()

    override fun draw(canvas: Canvas) {
        var avatarBoundsRect = Rect()
        if (avatarBorderStyle != AvatarBorderStyle.NO_BORDER)
            avatarBoundsRect = Rect(getViewBorderSize()/2, getViewBorderSize()/2, getViewSize()-getViewBorderSize()/2, getViewSize()-getViewBorderSize()/2)
        else
            avatarBoundsRect = Rect(0, 0, getViewSize(), getViewSize())

        initials.avatarStyle = avatarStyle
        initials.bounds = avatarBoundsRect
        initials.draw(canvas)

        path.reset()
        when (avatarStyle) {
            AvatarStyle.CIRCLE ->
                path.addCircle(
                        getViewSize() / 2f,
                        getViewSize() / 2f,
                        getViewSize() / 2f,
                        Path.Direction.CW
                )
            AvatarStyle.SQUARE -> {
                val cornerRadius = resources.getDimension(R.dimen.fluentui_avatar_square_corner_radius)
                path.addRoundRect(RectF(avatarBoundsRect), cornerRadius, cornerRadius, Path.Direction.CW)
            }
        }
        canvas.clipPath(path)

        super.draw(canvas)
        checkAndAddRing(canvas)
    }

    private fun checkAndAddRing(canvas: Canvas) {
        if (avatarStyle == AvatarStyle.CIRCLE) {
            if (avatarBorderStyle == AvatarBorderStyle.RING) {
                path.reset()
                /*
                 * There are total 3  rings, 2  outside of  avatar and 1 on top of avatar, thereby
                 * hiding some of the view/image.
                 * stroke size for each ring will be half of border size(1/2)
                 */

                /*
                 * Create Path to add the main border in mid of ring
                 * To create middle ring. We do -3/4 of border size because, 1/2  will be center of
                 * 2 outer rings and we want to create border  of  width bordersize/2. so, it should
                 * be at the center of middle which is 1/2+1/4 = 3/4
                 */
                path.addCircle(
                    getViewSize() / 2f,
                    getViewSize() / 2f,
                    getViewSize() / 2f - 3 * getViewBorderSize() / 4f,
                    Path.Direction.CW
                )
                val paint = Paint()
                paint.style = Paint.Style.STROKE
                if (avatarIsOverFlow) {
                    paint.color =
                        ContextCompat.getColor(context, R.color.fluentui_avatar_border_background)
                } else {
                    paint.color = avatarBackgroundColor ?: initials.initialsBackgroundColor
                }
                paint.strokeWidth = getViewBorderSize() / 2f
                paint.isAntiAlias = true
                canvas.drawPath(path, paint)
                path.reset()
                /*
                * Create path to add inner ring
                * To create middle ring. We do -5/4 of border size because, border should start
                * from innermost ring  and as stroke is of  width bordersize/2. so, it should
                * be at the center of innermost which is 1+1/4 = 5/4
                */
                paint.color =
                    ContextCompat.getColor(context, R.color.fluentui_avatar_ring_background)
                path.addCircle(
                    getViewSize() / 2f,
                    getViewSize() / 2f,
                    getViewSize() / 2f - 5 * getViewBorderSize() / 4f,
                    Path.Direction.CW
                )
                canvas.drawPath(path, paint)
                path.reset()
                /*
                * Create path to add outermost ring
                * We do -1/4 of border size because, border should start from
                * outermost ring  and as stroke is of  width bordersize/2. so, it should
                * be at the center of outermost which is 1/4
                */
                path.addCircle(
                    getViewSize() / 2f,
                    getViewSize() / 2f,
                    getViewSize() / 2f - getViewBorderSize() / 4f,
                    Path.Direction.CW
                )
                canvas.drawPath(path, paint)
            } else if (avatarBorderStyle == AvatarBorderStyle.SINGLE_RING) {
                path.reset()
                path.addCircle(
                    getViewSize() / 2f,
                    getViewSize() / 2f,
                    getViewSize() / 2f - getViewBorderSize() / 4f,
                    Path.Direction.CW
                )
                val paint = Paint()
                paint.style = Paint.Style.STROKE
                paint.strokeWidth = getViewBorderSize() / 2f
                paint.isAntiAlias = true
                paint.color =
                    ContextCompat.getColor(context, R.color.fluentui_avatar_ring_background)
                canvas.drawPath(path, paint)
            }
        }
    }

    override fun setImageDrawable(drawable: Drawable?) {
        if(drawable == null)
            return
        if (drawable is BitmapDrawable)
            setImageBitmap(drawable.bitmap)
        else
            super.setImageDrawable(drawable)
    }

    fun clearAvatarImage(){
        avatarImageBitmap = null
        avatarImageDrawable = null
        avatarImageResourceId = null
        avatarImageUri = null
        super.setImageDrawable(null)
    }

    override fun setImageBitmap(bitmap: Bitmap?) {
        if (bitmap == null)
            return

        super.setImageDrawable(BitmapDrawable(resources, bitmap))
    }

    override fun setImageURI(uri: Uri?) {
        if (uri == null)
            return

        try {
            val bitmap = MediaStore.Images.Media.getBitmap(context.contentResolver, uri)
            setImageBitmap(bitmap)
        } catch (e: Throwable) {
            e.printStackTrace()
        }
    }

    override fun onMeasure(widthMeasureSpec: Int, heightMeasureSpec: Int) {
        setMeasuredDimension(
            resolveSizeAndState(getViewSize(), widthMeasureSpec, 0),
            resolveSizeAndState(getViewSize(), heightMeasureSpec, 0)
        )
    }

    override fun onSizeChanged(w: Int, h: Int, oldw: Int, oldh: Int) {
        layoutParams.width = getViewSize()
        layoutParams.height = getViewSize()

        super.onSizeChanged(w, h, oldw, oldh)
    }

    /**
     * returns the [AvatarViewSize] including the border width
     */
    fun getViewSize(): Int {
        return avatarSize.getDisplayValue(context) + 2*getViewBorderSize()
    }

    private fun getViewBorderSize(): Int {
        return when (avatarBorderStyle) {
            AvatarBorderStyle.NO_BORDER -> 0
            AvatarBorderStyle.SINGLE_RING, AvatarBorderStyle.RING -> when (avatarSize) {
                AvatarSize.XXLARGE -> context.resources.getDimension(R.dimen.fluentui_avatar_border_size_xxlarge).toInt()
                else -> context.resources.getDimension(R.dimen.fluentui_avatar_border_size).toInt()
            }
        }
    }
}

fun AvatarView.setAvatar(avatar: IAvatar) {
    clearAvatarImage()
    name = avatar.name
    email = avatar.email
    avatarImageBitmap = avatar.avatarImageBitmap
    avatarImageDrawable = avatar.avatarImageDrawable
    avatarImageResourceId = avatar.avatarImageResourceId
    avatarImageUri = avatar.avatarImageUri
    avatarBackgroundColor = avatar.avatarBackgroundColor
    avatarContentDescriptionLabel = avatar.avatarContentDescriptionLabel
}
```

## File: src/main/java/com/microsoft/fluentui/persona/IAvatar.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentui.persona

import android.graphics.Bitmap
import android.graphics.drawable.Drawable
import android.net.Uri

interface IAvatar {
    /**
     * [name] is used in conjunction with [email] to set initials.
     */
    var name: String
    var email: String
    var avatarImageBitmap: Bitmap?
    var avatarImageDrawable: Drawable?
    var avatarImageResourceId: Int?
    var avatarImageUri: Uri?
    var avatarBackgroundColor: Int?
    var avatarContentDescriptionLabel: String
}
```

## File: src/main/java/com/microsoft/fluentui/persona/InitialsDrawable.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentui.persona

import android.content.Context
import android.graphics.*
import android.graphics.drawable.Drawable
import androidx.annotation.ColorInt
import androidx.annotation.IntRange
import androidx.core.content.ContextCompat
import android.text.*
import com.microsoft.fluentui.persona.R
import com.microsoft.fluentui.util.ThemeUtil
import java.util.*

/**
 * [InitialsDrawable] generates initials and background color for the AvatarView.
 */
internal class InitialsDrawable : Drawable {
    companion object {
        // This is the displayed value for avatars / headers when the name starts with a symbol
        private const val DEFAULT_SYMBOL_HEADER = '#'
        private const val DEFAULT_INITIALS_TEXT_SIZE_RATIO = 0.4f
        private var backgroundColors: IntArray? = null

        fun getInitials(name: String, email: String): String {
            val names = name.split(" ".toRegex()).dropLastWhile { it.isEmpty() }.toTypedArray()
            var initials = ""

            if (names.isNotEmpty())
                for (partialName in names) {
                    val trimmed = partialName.trim { it <= ' ' }
                    if (trimmed.isNotEmpty() && initials.length < 2) {
                        val initial = trimmed[0]
                        // Skip this character if it's in our ignored list
                        if (!Character.isLetterOrDigit(initial))
                            continue

                        initials += initial
                    }
                }

            if (initials.isEmpty())
                initials = if (email.length > 1) email.substring(0, 1) else DEFAULT_SYMBOL_HEADER.toString()

            return initials.toUpperCase(Locale.getDefault())
        }

        @ColorInt
        fun getInitialsBackgroundColor(backgroundColors: IntArray?, name: String, email: String): Int {
            val s = name + email
            val whichColor = Math.abs(s.hashCode()) % (backgroundColors?.size ?: 1)
            return backgroundColors?.get(whichColor) ?: 0
        }
    }

    var avatarStyle: AvatarStyle = AvatarStyle.SQUARE
    var initialsBackgroundColor: Int = 0

    private val context: Context
    private val paint: Paint = Paint(Paint.ANTI_ALIAS_FLAG)
    private val path: Path = Path()
    private val textPaint: TextPaint = TextPaint(Paint.ANTI_ALIAS_FLAG)
    private var initials: String? = null
    private var initialsLayout: Layout? = null

    constructor(context: Context) : super() {
        this.context = context

        textPaint.color = Color.WHITE
        textPaint.density = context.resources.displayMetrics.density

        if (backgroundColors == null)
            backgroundColors = ThemeUtil.getColors(context, R.array.fluentui_avatar_background_colors)
    }

    override fun draw(canvas: Canvas) {
        val width = bounds.width()
        val height = bounds.height()

        path.reset()

        when (avatarStyle) {
            AvatarStyle.CIRCLE ->
                path.addCircle(width / 2f+bounds.left, height / 2f+bounds.top, width/2f, Path.Direction.CW)
            AvatarStyle.SQUARE -> {
                val cornerRadius = context.resources.getDimension(R.dimen.fluentui_avatar_square_corner_radius)
                path.addRoundRect(RectF(bounds), cornerRadius, cornerRadius, Path.Direction.CW)
            }
        }

        paint.color = initialsBackgroundColor
        paint.style = Paint.Style.FILL

        canvas.drawPath(path, paint)

        initialsLayout?.let {
            canvas.save()
            canvas.translate(0f+bounds.left, (height - it.height) / 2f+bounds.top)
            it.draw(canvas)
            canvas.restore()
        }
    }

    override fun setBounds(left: Int, top: Int, right: Int, bottom: Int) {
        super.setBounds(left, top, right, bottom)

        if (TextUtils.isEmpty(initials))
            return

        val size = right - left
        textPaint.textSize = size * DEFAULT_INITIALS_TEXT_SIZE_RATIO

        val boringMetrics = BoringLayout.isBoring(initials, textPaint)

        if (boringMetrics != null)
            if (initialsLayout is BoringLayout)
                initialsLayout = (initialsLayout as BoringLayout).replaceOrMake(initials, textPaint, size,
                    Layout.Alignment.ALIGN_CENTER, 1.0f, 0.0f, boringMetrics, false)
            else
                initialsLayout = BoringLayout.make(initials, textPaint, size,
                    Layout.Alignment.ALIGN_CENTER, 1.0f, 0.0f, boringMetrics, false)
        else
            initialsLayout = StaticLayout(initials, textPaint, size,
                Layout.Alignment.ALIGN_CENTER, 1.0f, 0.0f, false)
    }

    override fun setAlpha(@IntRange(from = 0, to = 255) alpha: Int) {
        textPaint.alpha = alpha
    }

    override fun setColorFilter(colorFilter: ColorFilter?) { }

    override fun getOpacity(): Int {
        return PixelFormat.OPAQUE
    }

    /**
     * Uses [name] and [email] to generate initials
     */
    fun setInfo(name: String, email: String, @ColorInt customBackgroundColor: Int? = null, isOverFlow: Boolean = false) {
        val initialsBackgroundColor = customBackgroundColor ?: getInitialsBackgroundColor(backgroundColors, name, email)
        if (isOverFlow) {
            initials = name
            textPaint.color = ContextCompat.getColor(context, R.color.fluentui_avatar_overflow_text_color)
        }
        else {
            initials = getInitials(name, email)
        }
        this.initialsBackgroundColor = initialsBackgroundColor
        invalidateSelf()
    }
}
```

## File: src/main/java/com/microsoft/fluentui/persona/IPersona.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentui.persona

import android.graphics.Bitmap
import android.graphics.drawable.Drawable
import android.net.Uri
import java.io.Serializable

interface IPersona : IAvatar {
    var subtitle: String
    var footer: String
}

data class Persona(override var name: String = "", override var email: String = "") : IPersona, Serializable {
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

## File: src/main/java/com/microsoft/fluentui/persona/PersonaChipView.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentui.persona

import android.content.Context
import android.content.res.ColorStateList
import android.graphics.Bitmap
import android.graphics.drawable.Drawable
import android.net.Uri
import androidx.annotation.AttrRes
import androidx.core.content.ContextCompat
import android.util.AttributeSet
import android.view.KeyEvent
import android.view.MotionEvent
import android.view.accessibility.AccessibilityEvent
import android.view.accessibility.AccessibilityNodeInfo
import android.widget.CheckBox
import android.widget.ImageView
import android.widget.TextView
import androidx.annotation.ColorInt
import com.microsoft.fluentui.theming.FluentUIContextThemeWrapper
import com.microsoft.fluentui.util.ThemeUtil
import com.microsoft.fluentui.util.isVisible
import com.microsoft.fluentui.view.TemplateView

class PersonaChipView : TemplateView {
    companion object {
        const val DISABLED_BACKGROUND_OPACITY = .6f
        const val ENABLED_BACKGROUND_OPACITY = 1.0f
    }

    var name: String = ""
        set(value) {
            field = value
            updateViews()
        }
    var email: String = ""
        set(value) {
            field = value
            updateViews()
        }
    var avatarImageBitmap: Bitmap? = null
        set(value) {
            if (field == value)
                return
            field = value
            updateViews()
        }
    var avatarImageDrawable: Drawable? = null
        set(value) {
            if (field == value)
                return
            field = value
            updateViews()
        }
    var avatarImageResourceId: Int? = null
        set(value) {
            if (field == value)
                return
            field = value
            updateViews()
        }
    var avatarImageUri: Uri? = null
        set(value) {
            if (field == value)
                return
            field = value
            updateViews()
        }
    @ColorInt
    var avatarBackgroundColor: Int? = null
        set(value) {
            if (field == value)
                return
            field = value
            updateViews()
        }

    var avatarContentDescriptionLabel: String = ""
        set(value) {
            if (field == value)
                return
            field = value
            avatarView?.apply {
                avatarContentDescriptionLabel = this@PersonaChipView.avatarContentDescriptionLabel
                isFocusable = avatarContentDescriptionLabel.isNotEmpty()
            }
        }
    /**
     * Flag for setting the chip's error state
     */
    var hasError: Boolean = false
        set(value) {
            if (field == value)
                return
            field = value
            updateViews()
        }
    /**
     * Determines whether the [closeIcon] is shown in place of the [avatarView]
     * when the [PersonaChipView] is selected.
     */
    var showCloseIconWhenSelected: Boolean = true

    /**
     * When a chip is selected, the next touch will fire the [listener]'s [onClicked] method.
     */
    var listener: Listener? = null

    @JvmOverloads
    constructor(appContext: Context, attrs: AttributeSet? = null, defStyleAttr: Int = 0) : super(FluentUIContextThemeWrapper(appContext,R.style.Theme_FluentUI_Persona), attrs, defStyleAttr) {
        if (attrs == null)
            return
        val styledAttrs = context.obtainStyledAttributes(attrs, R.styleable.PersonaChipView)
        name = styledAttrs.getString(R.styleable.PersonaChipView_fluentui_name) ?: ""
        email = styledAttrs.getString(R.styleable.PersonaChipView_fluentui_email) ?: ""
        showCloseIconWhenSelected = styledAttrs.getBoolean(R.styleable.PersonaChipView_fluentui_showCloseIconWhenSelected, true)

        val avatarImageResourceId = styledAttrs.getResourceId(R.styleable.PersonaChipView_fluentui_avatarImageDrawable, 0)
        if (avatarImageResourceId > 0 && resources.getResourceTypeName(avatarImageResourceId) == "drawable")
            avatarImageDrawable = styledAttrs.getDrawable(R.styleable.PersonaChipView_fluentui_avatarImageDrawable)

        styledAttrs.recycle()
        contentDescription = name
    }

    // Template

    override val templateId: Int = R.layout.view_persona_chip
    private var avatarView: AvatarView? = null
    private var textView: TextView? = null
    private var closeIcon: ImageView? = null

    override fun onTemplateLoaded() {
        super.onTemplateLoaded()
        textView = findViewInTemplateById(R.id.persona_chip_text)
        avatarView = findViewInTemplateById(R.id.persona_chip_avatar)
        closeIcon = findViewInTemplateById(R.id.persona_chip_close)
        updateState()
        updateViews()
    }

    override fun setEnabled(enabled: Boolean) {
        super.setEnabled(enabled)
        updateState()
    }

    override fun setSelected(selected: Boolean) {
        super.setSelected(selected)
        updateState()
        listener?.onSelected(selected)
    }

    override fun onTouchEvent(event: MotionEvent?): Boolean {
        if (!isEnabled)
            return false

        when (event?.actionMasked) {
            MotionEvent.ACTION_DOWN -> {
                isPressed = true
                return true
            }
            MotionEvent.ACTION_UP -> {
                performClick()
                isPressed = false
                isSelected = !isSelected
                return true
            }
            MotionEvent.ACTION_CANCEL -> {
                isPressed = false
                return true
            }
            else -> return false
        }
    }

    override fun onKeyUp(keyCode: Int, event: KeyEvent?): Boolean {
        return when (keyCode) {
            KeyEvent.KEYCODE_ENTER -> {
                performClick()
                isSelected = !isSelected
                true
            }
            else ->
                super.onKeyUp(keyCode, event)
        }
    }

    override fun performClick(): Boolean {
        super.performClick()

        if (isSelected)
            listener?.onClicked()

        return true
    }

    private fun updateState() {
        isActivated = isSelected
        textView?.isEnabled = isEnabled
        avatarView?.alpha = if (isEnabled) ENABLED_BACKGROUND_OPACITY else DISABLED_BACKGROUND_OPACITY

        val showCloseIcon = showCloseIconWhenSelected && isSelected
        closeIcon?.isVisible = showCloseIcon
        avatarView?.isVisible = !showCloseIcon
        isFocusable = true
    }

    private fun updateViews() {
        textView?.text = when {
            name.isNotEmpty() -> name
            email.isNotEmpty() -> email
            else -> context.getString(R.string.persona_title_placeholder)
        }

        avatarView?.apply {
            name = this@PersonaChipView.name
            email = this@PersonaChipView.email
            avatarImageDrawable = this@PersonaChipView.avatarImageDrawable
            avatarImageBitmap = this@PersonaChipView.avatarImageBitmap
            avatarImageUri = this@PersonaChipView.avatarImageUri
            avatarBackgroundColor  = this@PersonaChipView.avatarBackgroundColor
            avatarContentDescriptionLabel = this@PersonaChipView.avatarContentDescriptionLabel
            isFocusable = avatarContentDescriptionLabel.isNotEmpty()
        }

        if (hasError)
            updateStyles(R.drawable.persona_chip_background_error, R.attr.fluentuiPersonaChipTextErrorColor)
        else
            updateStyles(R.drawable.persona_chip_background_normal, R.attr.fluentuiPersonaChipTextNormalColor)
    }

    override fun getAccessibilityClassName(): CharSequence {
        return CheckBox::class.java.name
    }

    override fun onInitializeAccessibilityNodeInfo(info: AccessibilityNodeInfo?) {
        super.onInitializeAccessibilityNodeInfo(info)
        info?.apply {
            isEnabled = isEnabled
            isCheckable = true
            isChecked = isSelected
            text = name
        }
    }

    override fun onInitializeAccessibilityEvent(event: AccessibilityEvent?) {
        super.onInitializeAccessibilityEvent(event)
        event?.apply {
            isEnabled = isEnabled
            isChecked = isSelected
        }
    }

    override fun onPopulateAccessibilityEvent(event: AccessibilityEvent?) {
        super.onPopulateAccessibilityEvent(event)
        event?.text?.add(name)
    }

    private fun updateStyles(backgroundDrawableId: Int, @AttrRes defaultTextColor: Int) {
        background = ContextCompat.getDrawable(context, backgroundDrawableId)
        textView?.setTextColor(createColorStateList(defaultTextColor))
    }

    // Create this in code instead of xml to support Lollipop, which does not allow attributes in xml selectors.
    private fun createColorStateList(@AttrRes defaultTextColor: Int): ColorStateList {
        return ColorStateList(
            arrayOf(
                intArrayOf(-android.R.attr.state_enabled),
                intArrayOf(android.R.attr.state_activated),
                intArrayOf()
            ),
            intArrayOf(
                ThemeUtil.getThemeAttrColor(context, R.attr.fluentuiPersonaChipTextDisabledColor),
                ThemeUtil.getThemeAttrColor(context, R.attr.fluentuiPersonaChipForegroundActiveColor),
                ThemeUtil.getThemeAttrColor(context, defaultTextColor)
            )
        )
    }

    interface Listener {
        fun onClicked()
        fun onSelected(selected: Boolean)
    }
}

fun PersonaChipView.setPersona(persona: IPersona) {
    name = persona.name
    email = persona.email
    avatarImageBitmap = persona.avatarImageBitmap
    avatarImageDrawable = persona.avatarImageDrawable
    avatarImageResourceId = persona.avatarImageResourceId
    avatarImageUri = persona.avatarImageUri
    avatarBackgroundColor = persona.avatarBackgroundColor
    avatarContentDescriptionLabel = persona.avatarContentDescriptionLabel
}
```

## File: src/main/java/com/microsoft/fluentui/persona/PersonaListAdapter.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentui.persona

import android.content.Context
import androidx.recyclerview.widget.RecyclerView
import android.view.View
import android.view.ViewGroup
import android.widget.LinearLayout
import java.util.*

/**
 * This adapter controls data binding and ViewHolders for [PersonaListView].
 */
internal class PersonaListAdapter(private val context: Context) : RecyclerView.Adapter<PersonaListAdapter.ViewHolder>() {
    /**
     * [PersonaListView.OnItemClickedListener] for when a list item is clicked
     */
    var onItemClickedListener: PersonaListView.OnItemClickedListener? = null
    /**
     * Collection of [Persona] objects that hold data to create the [PersonaView]s
     */
    var personas = ArrayList<IPersona>()

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ViewHolder {
        val view = PersonaView(context)
        view.layoutParams = LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT)
        view.avatarSize = AvatarSize.LARGE
        return ViewHolder(view)
    }

    override fun onBindViewHolder(holder: ViewHolder, position: Int) {
        if (position in 0 until personas.size)
            holder.setPersona(personas[position])
        else
            return
    }

    override fun getItemCount() = personas.size

    private fun onItemClicked(persona: IPersona) {
        onItemClickedListener?.onItemClicked(persona)
    }

    inner class ViewHolder : RecyclerView.ViewHolder, View.OnClickListener {
        private val personaView: PersonaView
        private lateinit var persona: IPersona

        constructor(view: PersonaView) : super(view) {
            personaView = view
            view.setOnClickListener(this)
        }

        override fun onClick(v: View) {
            onItemClicked(persona)
        }

        fun setPersona(persona: IPersona) {
            this.persona = persona
            personaView.setPersona(persona)
        }
    }
}
```

## File: src/main/java/com/microsoft/fluentui/persona/PersonaListView.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentui.persona

import android.content.Context
import androidx.recyclerview.widget.DividerItemDecoration
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import android.util.AttributeSet
import com.microsoft.fluentui.persona.R
import com.microsoft.fluentui.listitem.ListItemDivider
import com.microsoft.fluentui.theming.FluentUIContextThemeWrapper
import java.util.*

/**
 * This is a custom [RecyclerView] with a set adapter and layoutManager. It provides an interface for the list data and onItemClickedListener and
 * adds a custom [DividerItemDecoration] to each row.
 */
class PersonaListView : RecyclerView {
    /**
     * [personas] contains the collection of Personas that the adapter binds to the ViewHolder.
     */
    var personas = ArrayList<IPersona>()
        set(value) {
            field = value
            personaListAdapter.personas = value
        }

    /**
     * This onItemClickedListener is called when a [PersonaView] cell is clicked.
     */
    var onItemClickedListener: OnItemClickedListener? = null
        set(value) {
            field = value
            personaListAdapter.onItemClickedListener = value
        }

    private val personaListAdapter = PersonaListAdapter(context)

    @JvmOverloads
    constructor(appContext: Context, attrs: AttributeSet? = null, defStyleAttr: Int = 0) : super(FluentUIContextThemeWrapper(appContext, R.style.Theme_FluentUI_Persona), attrs, defStyleAttr) {
        adapter = personaListAdapter
        layoutManager = LinearLayoutManager(context)
        addItemDecoration(ListItemDivider(context, DividerItemDecoration.VERTICAL))
    }

    interface OnItemClickedListener {
        fun onItemClicked(persona: IPersona)
    }
}
```

## File: src/main/java/com/microsoft/fluentui/persona/PersonaView.kt
```kotlin
/*
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */

package com.microsoft.fluentui.persona

import android.content.Context
import android.graphics.Bitmap
import android.graphics.Rect
import android.graphics.drawable.Drawable
import android.net.Uri
import android.util.AttributeSet
import android.view.accessibility.AccessibilityEvent
import androidx.annotation.ColorInt
import com.microsoft.fluentui.listitem.ListItemView
import com.microsoft.fluentui.util.isVisibleOnScreen

/**
 * [PersonaView] is comprised of an [AvatarView] and three TextViews, all single line by default.
 * [AvatarSize.SMALL], [AvatarSize.LARGE], and [AvatarSize.XXLARGE] are the recommended AvatarSizes to use with [PersonaView].
 * [AvatarSize.SMALL] will only have name text. [AvatarSize.LARGE] should use both name and subtitle texts.
 * [AvatarSize.XXLARGE] should use name, subtitle, and footer texts.
 */
class PersonaView : ListItemView {
    companion object {
        val personaAvatarSizes = arrayOf(AvatarSize.SMALL, AvatarSize.LARGE, AvatarSize.XXLARGE)
        const val FOCUS_DELAY = 100L

        data class Spacing(val cellPadding: Int, val insetLeft: Int)

        fun getSpacing(context: Context, avatarSize: AvatarSize): Spacing {
            val avatarDisplaySize = avatarSize.getDisplayValue(context)
            val spacingRight = context.resources.getDimension(R.dimen.fluentui_persona_horizontal_spacing)
            val cellPadding = context.resources.getDimension(R.dimen.fluentui_persona_horizontal_padding).toInt()
            val insetLeft = (avatarDisplaySize + spacingRight + cellPadding).toInt()
            return Spacing(cellPadding, insetLeft)
        }
    }

    /**
     * Text for the top hierarchy of the three TextViews.
     */
    var name: String = ""
        set(value) {
            if (field == value)
                return
            field = value
            updateViews()
        }

    var email: String = ""
        set(value) {
            if (field == value)
                return
            field = value
            updateViews()
        }

    /**
     * Used to set internal [AvatarView]'s layout width and height.
     */
    var avatarSize: AvatarSize = AvatarView.DEFAULT_AVATAR_SIZE
        set(value) {
            if (!personaAvatarSizes.contains(value)) {
                throw UnsupportedOperationException("""
                    AvatarSize $value is not supported in PersonaViews.
                    Please replace with one of the following AvatarSizes: ${personaAvatarSizes.joinToString(", ")}
                """.trimIndent())
            }

            if (field == value)
                return
            field = value
            updateViews()
        }

    var avatarImageBitmap: Bitmap? = null
        set(value) {
            if (field == value)
                return
            field = value
            updateViews()
        }
    var avatarImageDrawable: Drawable? = null
        set(value) {
            if (field == value)
                return
            field = value
            updateViews()
        }
    var avatarImageResourceId: Int? = null
        set(value) {
            if (field == value)
                return
            field = value
            updateViews()
        }
    var avatarImageUri: Uri? = null
        set(value) {
            if (field == value)
                return
            field = value
            updateViews()
        }
    @ColorInt
    var avatarBackgroundColor: Int? = null
        set(value) {
            if (field == value)
                return
            field = value
            updateViews()
        }

    var avatarContentDescriptionLabel: String = ""
        set(value) {
            if (field == value)
                return
            field = value
            avatarView?.apply {
                avatarContentDescriptionLabel = this@PersonaView.avatarContentDescriptionLabel
                isFocusable = avatarContentDescriptionLabel.isNotEmpty()
            }
        }

    private val avatarView = AvatarView(context)

    fun clearAvatarImage(){
        avatarImageBitmap = null
        avatarImageDrawable = null
        avatarImageResourceId = null
        avatarImageUri = null
        avatarView.clearAvatarImage()
    }

    @JvmOverloads
    constructor(appContext: Context, attrs: AttributeSet? = null, defStyleAttr: Int = 0) : super(appContext, attrs, defStyleAttr) {
        val styledAttrs = context.obtainStyledAttributes(attrs, R.styleable.PersonaView)
        name = styledAttrs.getString(R.styleable.PersonaView_fluentui_name) ?: ""
        email = styledAttrs.getString(R.styleable.PersonaView_fluentui_email) ?: ""

        val avatarSizeOrdinal = styledAttrs.getInt(R.styleable.PersonaView_fluentui_avatarSize, AvatarView.DEFAULT_AVATAR_SIZE.ordinal)
        avatarSize = AvatarSize.values()[avatarSizeOrdinal]

        val avatarImageResourceId = styledAttrs.getResourceId(R.styleable.PersonaView_fluentui_avatarImageDrawable, 0)
        if (avatarImageResourceId > 0 && resources.getResourceTypeName(avatarImageResourceId) == "drawable")
            avatarImageDrawable = styledAttrs.getDrawable(R.styleable.PersonaView_fluentui_avatarImageDrawable)

        styledAttrs.recycle()
    }

    override fun onTemplateLoaded() {
        super.onTemplateLoaded()

        updateViews()
    }

    private fun updateViews() {
        title = when {
            name.isNotEmpty() -> name
            email.isNotEmpty() -> email
            else -> context.getString(R.string.persona_title_placeholder)
        }

        avatarView.name = name
        avatarView.email = email
        avatarView.avatarSize = avatarSize
        avatarView.avatarImageDrawable = avatarImageDrawable
        avatarView.avatarImageBitmap = avatarImageBitmap
        avatarView.avatarImageUri = avatarImageUri
        avatarView.avatarBackgroundColor = avatarBackgroundColor
        avatarView.avatarContentDescriptionLabel = avatarContentDescriptionLabel

        customView = avatarView

        customViewSize = when(avatarSize) {
            AvatarSize.SMALL -> CustomViewSize.SMALL
            AvatarSize.LARGE -> CustomViewSize.MEDIUM
            else -> CustomViewSize.LARGE
        }
    }

    override fun onFocusChanged(gainFocus: Boolean, direction: Int, previouslyFocusedRect: Rect?) {
        super.onFocusChanged(gainFocus, direction, previouslyFocusedRect)
        if (!isVisibleOnScreen && gainFocus) {
            postDelayed({
                if (isFocused) {
                    sendAccessibilityEvent(AccessibilityEvent.TYPE_VIEW_FOCUSED)
                }
            }, FOCUS_DELAY)
        }
    }
}

fun PersonaView.setPersona(persona: IPersona) {
    clearAvatarImage()
    name = persona.name
    email = persona.email
    subtitle = persona.subtitle
    footer = persona.footer
    avatarImageBitmap = persona.avatarImageBitmap
    avatarImageDrawable = persona.avatarImageDrawable
    avatarImageResourceId = persona.avatarImageResourceId
    avatarImageUri = persona.avatarImageUri
    avatarBackgroundColor = persona.avatarBackgroundColor
    avatarContentDescriptionLabel = persona.avatarContentDescriptionLabel
}
```

## File: src/main/java/com/microsoft/fluentui/tokenized/persona/Avatar.kt
```kotlin
package com.microsoft.fluentui.tokenized.persona

import androidx.annotation.DrawableRes
import androidx.compose.foundation.*
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.text.BasicText
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.asImageBitmap
import androidx.compose.ui.graphics.drawscope.Fill
import androidx.compose.ui.graphics.drawscope.Stroke
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.semantics.clearAndSetSemantics
import androidx.compose.ui.semantics.contentDescription
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.semantics.testTag
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.DpOffset
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.FluentTheme.themeMode
import com.microsoft.fluentui.theme.token.ControlTokens
import com.microsoft.fluentui.theme.token.FluentIcon
import com.microsoft.fluentui.theme.token.Icon
import com.microsoft.fluentui.theme.token.controlTokens.*
import com.microsoft.fluentui.util.dpToPx

// Tags used for testing
const val AVATAR_IMAGE = "Fluent Avatar Image"
const val AVATAR_ICON = "Fluent Avatar Icon"

/**
 * API to generate an avatar for a [Person]. Avatar behavior uses person image(if available),
 * Initials generated from First and Last name of Person(if provided)
 * or Anonymous Icons otherwise (as set in AvatarTokens).
 *
 * @param person Data Class for the person whose Avatar is to be generated.
 * @param modifier Optional Modifier for avatar
 * @param size Set Size of Avatar. Default: [AvatarSize.Size32]
 * @param enableActivityRings Enable/Disable Activity Rings on Avatar
 * @param enablePresence Enable/Disable Presence Indicator on Avatar, if cutout is provided then presence indicator is not displayed
 * @param enableActivityDot Enable/Disable Activity Dot on Avatar.
 * @param cutoutIconDrawable cutout drawable
 * @param cutoutIconImageVector cutout image vector
 * @param cutoutStyle shape of the cutout. Default: [CutoutStyle.Circle]
 * @param cutoutContentDescription accessibility description for the cutout
 * @param avatarToken Token to provide appearance values to Avatar
 */
@Composable
fun Avatar(
    person: Person,
    modifier: Modifier = Modifier,
    size: AvatarSize = AvatarSize.Size32,
    enableActivityRings: Boolean = false,
    enablePresence: Boolean = true,
    enableActivityDot: Boolean = false,
    @DrawableRes cutoutIconDrawable: Int? = null,
    cutoutIconImageVector: ImageVector? = null,
    cutoutStyle: CutoutStyle = CutoutStyle.Circle,
    cutoutContentDescription: String? = null,
    avatarToken: AvatarTokens? = null
) {

    val themeID =
        FluentTheme.themeID    //Adding This only for recomposition in case of Token Updates. Unused otherwise.
    val token = avatarToken
        ?: FluentTheme.controlTokens.tokens[ControlTokens.ControlType.AvatarControlType] as AvatarTokens

    val personInitials = person.getInitials()
    val avatarInfo = AvatarInfo(
        size,
        AvatarType.Person,
        person.isActive,
        person.status,
        person.isOOO,
        person.isImageAvailable(),
        personInitials.isNotEmpty(),
        person.getName(),
        cutoutStyle
    )
    val avatarSize = token.avatarSize(avatarInfo)
    val backgroundColor = token.backgroundBrush(avatarInfo)
    val foregroundColor = token.foregroundColor(avatarInfo)
    val borders = token.borderStroke(avatarInfo)
    val fontTextStyle = token.fontTypography(avatarInfo)
    val cutoutCornerRadius = token.cutoutCornerRadius(avatarInfo)
    val cutoutBackgroundColor = token.cutoutBackgroundColor(avatarInfo = avatarInfo)
    val cutoutBorderColor = token.cutoutBorderColor(avatarInfo = avatarInfo)
    val cutoutIconSize = token.cutoutIconSize(avatarInfo = avatarInfo)
    val isCutoutEnabled = (cutoutIconDrawable != null || cutoutIconImageVector != null)
    var isImageOrInitialsAvailable = true

    Box(modifier = Modifier.semantics(mergeDescendants = true) {
        contentDescription =
            "${person.getName()}. " + "${if (enablePresence) "Status, ${person.status}," else ""} " + "${if (enablePresence && person.isOOO) "Out Of Office," else ""} " + if (enableActivityRings) {
                if (person.isActive) "Active" else "Inactive"
            } else ""
    }) {
        Box(
            Modifier
                .then(modifier)
                .requiredSize(avatarSize)
                .background(backgroundColor, CircleShape), contentAlignment = Alignment.Center
        ) {
            when {
                person.image != null -> {
                    Image(painter = painterResource(person.image),
                        null,
                        contentScale = ContentScale.Crop,
                        modifier = Modifier
                            .size(avatarSize)
                            .clip(CircleShape)
                            .semantics {
                                testTag = AVATAR_IMAGE
                            })
                }

                person.bitmap != null -> {
                    Image(bitmap = person.bitmap.asImageBitmap(),
                        null,
                        contentScale = ContentScale.Crop,
                        modifier = Modifier
                            .size(avatarSize)
                            .clip(CircleShape)
                            .semantics {
                                testTag = AVATAR_IMAGE
                            })
                }

                personInitials.isNotEmpty() -> {
                    BasicText(personInitials, style = fontTextStyle.merge(
                        TextStyle(color = foregroundColor)
                    ), modifier = Modifier.clearAndSetSemantics { })
                }

                else -> {
                    isImageOrInitialsAvailable = false
                    Icon(
                        token.icon(avatarInfo),
                        null,
                        modifier = Modifier
                            .background(backgroundColor, CircleShape)
                            .semantics {
                                testTag = AVATAR_ICON
                            },
                        tint = foregroundColor,
                    )
                }
            }

            if (enableActivityRings) ActivityRing(radius = avatarSize / 2, borders)

            if (isCutoutEnabled && isImageOrInitialsAvailable && cutoutIconSize > 0.dp) {
                Box(
                    modifier = Modifier
                        .offset(6.dp, 6.dp)
                        .align(Alignment.BottomEnd)
                        .clip(shape = RoundedCornerShape(size = cutoutCornerRadius))
                ) {
                    if (cutoutIconDrawable != null) {
                        Image(
                            painter = painterResource(cutoutIconDrawable),
                            contentScale = ContentScale.Crop,
                            modifier = Modifier
                                .background(cutoutBackgroundColor)
                                .border(
                                    2.dp, cutoutBorderColor, RoundedCornerShape(cutoutCornerRadius)
                                )
                                .padding(4.dp)
                                .size(cutoutIconSize),
                            contentDescription = cutoutContentDescription,
                            colorFilter = token.cutoutColorFilter(avatarInfo = avatarInfo)
                        )
                    } else if (cutoutIconImageVector != null) {
                        Image(
                            imageVector = cutoutIconImageVector,
                            contentScale = ContentScale.Crop,
                            modifier = Modifier
                                .background(cutoutBackgroundColor)
                                .border(
                                    2.dp, cutoutBorderColor, RoundedCornerShape(cutoutCornerRadius)
                                )
                                .padding(4.dp)
                                .size(cutoutIconSize),
                            contentDescription = cutoutContentDescription,
                            colorFilter = token.cutoutColorFilter(avatarInfo = avatarInfo)
                        )
                    }
                }
            }

            if (!isCutoutEnabled && enablePresence) {
                val presenceOffset: DpOffset = token.presenceOffset(avatarInfo)
                val image: FluentIcon = token.presenceIcon(avatarInfo)
                Image(
                    image.value(themeMode),
                    null,
                    Modifier
                        .align(Alignment.BottomEnd)
                        // Adding 2.dp to both side to incorporate border which is an image in Fluent Android.
                        .offset(presenceOffset.x + 2.dp, -presenceOffset.y + 2.dp),
                    contentScale = ContentScale.Crop
                )
            }

            if (enableActivityDot) {
                ActivityDot(token, avatarInfo, modifier.align(Alignment.TopEnd))
            }
        }
    }
}

@Composable
internal fun SlicedAvatar(
    person: Person,
    modifier: Modifier = Modifier,
    width: Dp = 32.dp,
    avatarToken: AvatarTokens? = null,
    slicedAvatarSize: Dp = 32.dp,
    size: AvatarSize = AvatarSize.Size32
) {
    val personInitials = person.getInitials()
    // if less than 19dp, show only first initial
    val personInitialsToDisplay =
        if (personInitials.length >= 2 && width < 19.dp) personInitials[0].toString() else personInitials
    val token = avatarToken
        ?: FluentTheme.controlTokens.tokens[ControlTokens.ControlType.AvatarControlType] as AvatarTokens
    val avatarInfo = AvatarInfo(
        size = size,
        type = AvatarType.Person,
        isImageAvailable = person.isImageAvailable(),
        hasValidInitials = personInitials.isNotEmpty(),
        calculatedColorKey = person.getName()
    )
    val foregroundColor = token.foregroundColor(avatarInfo)
    val fontTextStyle = fontTypographyForSlicedAvatar(slicedAvatarSize)
    val backgroundBrush = token.backgroundBrush(avatarInfo)
    when {
        person.image != null -> {
            Image(
                painter = painterResource(person.image),
                null,
                contentScale = ContentScale.Crop,
                modifier = modifier
            )
        }

        person.bitmap != null -> {
            Image(
                bitmap = person.bitmap.asImageBitmap(),
                null,
                contentScale = ContentScale.Crop,
                modifier = modifier
            )
        }

        personInitialsToDisplay.isNotEmpty() -> {
            Box(
                modifier = modifier.background(
                    brush = backgroundBrush
                ), contentAlignment = Alignment.Center
            ) {
                BasicText(personInitialsToDisplay, style = fontTextStyle.merge(
                    TextStyle(color = foregroundColor)
                ), modifier = Modifier.clearAndSetSemantics { })
            }
        }

        else -> {
            Box(
                modifier = modifier.background(
                    brush = backgroundBrush
                ), contentAlignment = Alignment.Center
            ) {
                Icon(
                    token.icon(avatarInfo),
                    null,
                    modifier = Modifier
                        .background(backgroundBrush, CircleShape)
                        .semantics {
                            testTag = AVATAR_ICON
                        },
                    tint = foregroundColor,
                )
            }
        }
    }
}

/**
 * API to generate an avatar for a [Group]. Avatar behavior uses group image(if available),
 * Initials generated from Group Name(if provided)
 * or Anonymous Icons otherwise (as set in AvatarTokens).
 *
 * @param group Data Class for the person whose Avatar is to be generated.
 * @param modifier Optional Modifier for avatar
 * @param size Set Size of Avatar. Default: [AvatarSize.Size32]
 * @param avatarToken Token to provide appearance values to Avatar
 */
@Composable
fun Avatar(
    group: Group,
    modifier: Modifier = Modifier,
    size: AvatarSize = AvatarSize.Size32,
    avatarToken: AvatarTokens? = null
) {

    val themeID =
        FluentTheme.themeID    //Adding This only for recomposition in case of Token Updates. Unused otherwise.
    val token = avatarToken
        ?: FluentTheme.controlTokens.tokens[ControlTokens.ControlType.AvatarControlType] as AvatarTokens

    val avatarInfo = AvatarInfo(
        size,
        AvatarType.Group,
        isImageAvailable = group.isImageAvailable(),
        hasValidInitials = group.getInitials().isNotEmpty(),
        calculatedColorKey = group.groupName
    )
    val avatarSize = token.avatarSize(avatarInfo)
    val cornerRadius = token.cornerRadius(avatarInfo)
    val fontTextStyle = token.fontTypography(avatarInfo)
    val backgroundColor = token.backgroundBrush(avatarInfo)
    val foregroundColor = token.foregroundColor(avatarInfo)

    var membersList = ""
    for (person in group.members) membersList += (person.firstName + person.lastName + "\n")

    Box(
        modifier
            .requiredSize(avatarSize)
            .semantics(mergeDescendants = false) {
                contentDescription =
                    "Group Name ${group.getName()} ${group.members.size} members. $membersList"
            }, contentAlignment = Alignment.Center
    ) {
        Box(
            Modifier
                .clip(RoundedCornerShape(cornerRadius))
                .background(backgroundColor)
                .fillMaxSize(), contentAlignment = Alignment.Center
        ) {
            if (group.image != null) {
                Image(painter = painterResource(group.image),
                    contentScale = ContentScale.Crop,
                    contentDescription = null,
                    modifier = Modifier
                        .size(avatarSize)
                        .clip(RoundedCornerShape(cornerRadius))
                        .semantics {
                            testTag = AVATAR_IMAGE
                        })
            } else if (group.bitmap != null) {
                Image(bitmap = group.bitmap.asImageBitmap(),
                    contentScale = ContentScale.Crop,
                    contentDescription = null,
                    modifier = Modifier
                        .size(avatarSize)
                        .clip(RoundedCornerShape(cornerRadius))
                        .semantics {
                            testTag = AVATAR_IMAGE
                        })
            } else if (group.groupName.isNotEmpty()) {
                BasicText(group.getInitials(),
                    style = fontTextStyle.merge(TextStyle(color = foregroundColor)),
                    modifier = Modifier.clearAndSetSemantics { })
            } else {
                Icon(
                    token.icon(avatarInfo), null, modifier = Modifier.semantics {
                        testTag = AVATAR_ICON
                    }, tint = foregroundColor
                )
            }
        }
    }
}

/**
 * API to create an overflow avatar to depict overflow count.
 *
 * @param overflowCount Magnitude of overflow
 * @param modifier Optional modifier for Overflow avatar
 * @param size Set Size of Avatar. Default: [AvatarSize. Medium]
 * @param enableActivityRings Enable/Disable Activity Rings on Avatar
 * @param avatarToken Token to provide appearance values to Avatar
 * @param enableActivityDot Enable/Disable Activity Dot on Avatar.
 */
@Composable
fun Avatar(
    overflowCount: Int,
    modifier: Modifier = Modifier,
    size: AvatarSize = AvatarSize.Size32,
    enableActivityRings: Boolean = false,
    avatarToken: AvatarTokens? = null,
    enableActivityDot: Boolean = false
) {
    val themeID =
        FluentTheme.themeID    //Adding This only for recomposition in case of Token Updates. Unused otherwise.
    val token = avatarToken
        ?: FluentTheme.controlTokens.tokens[ControlTokens.ControlType.AvatarControlType] as AvatarTokens

    val avatarInfo = AvatarInfo(size, AvatarType.Overflow)
    val avatarSize = token.avatarSize(avatarInfo)
    val borders = token.borderStroke(avatarInfo)
    val fontTextStyle = token.fontTypography(avatarInfo)

    Box(
        modifier
            .requiredSize(avatarSize)
            .semantics(mergeDescendants = false) {
                contentDescription = "+ $overflowCount Avatar More"
            }, contentAlignment = Alignment.Center
    ) {
        Box(
            Modifier
                .clip(CircleShape)
                .background(token.backgroundBrush(avatarInfo))
                .fillMaxSize(),
            contentAlignment = Alignment.Center
        ) {
            BasicText("+${overflowCount}",
                style = fontTextStyle.merge(TextStyle(color = token.foregroundColor(avatarInfo))),
                modifier = Modifier.clearAndSetSemantics { })
        }

        if (enableActivityRings) ActivityRing(radius = avatarSize / 2, borders)
        if (enableActivityDot) {
            ActivityDot(token, avatarInfo, modifier.align(Alignment.TopEnd))
        }
    }
}

@Composable
fun ActivityRing(radius: Dp, borders: List<BorderStroke>) {
    val firstBorderMid = with(LocalDensity.current) { borders[0].width.toPx() / 2 }
    val radiusPx = with(LocalDensity.current) { radius.toPx() }
    Canvas(Modifier) {
        var ringRadius = radiusPx - firstBorderMid + 1
        var ringStroke: Float
        for (border in borders) {
            ringStroke = border.width.toPx()
            drawCircle(border.brush, ringRadius, style = Stroke(ringStroke))
            ringRadius += ringStroke
        }
    }
}

@Composable
fun ActivityDot(token: AvatarTokens, avatarInfo: AvatarInfo, modifier: Modifier) {
    val unreadDotOffset: DpOffset = token.unreadDotOffset(avatarInfo)
    val unreadDotSize: Dp = token.unreadDotSize(avatarInfo)
    val unreadDotBackground: Brush = token.unreadDotBackgroundBrush(avatarInfo)
    val unreadDotBorderStroke = token.unreadDotBorderStroke(avatarInfo)
    Box(
        modifier = modifier
            .size(unreadDotSize)
            .offset(unreadDotOffset.x + unreadDotBorderStroke.width , -unreadDotOffset.y + unreadDotBorderStroke.width)
    ) {
        Canvas(Modifier) {
            drawCircle(
                brush = unreadDotBorderStroke.brush,
                radius = dpToPx(unreadDotBorderStroke.width + unreadDotSize / 2)
            )
            drawCircle(
                brush = unreadDotBackground,
                style = Fill,
                radius = dpToPx(unreadDotSize / 2)
            )
        }
    }

}
```

## File: src/main/java/com/microsoft/fluentui/tokenized/persona/AvatarCarousel.kt
```kotlin
package com.microsoft.fluentui.tokenized.persona

import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.gestures.Orientation
import androidx.compose.foundation.gestures.draggable
import androidx.compose.foundation.gestures.rememberDraggableState
import androidx.compose.foundation.gestures.scrollBy
import androidx.compose.foundation.interaction.MutableInteractionSource
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.itemsIndexed
import androidx.compose.foundation.lazy.rememberLazyListState
import androidx.compose.foundation.text.BasicText
import androidx.compose.material.ripple.rememberRipple
import androidx.compose.runtime.Composable
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.alpha
import androidx.compose.ui.focus.onFocusEvent
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.semantics.Role
import androidx.compose.ui.semantics.clearAndSetSemantics
import androidx.compose.ui.semantics.contentDescription
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.persona.R
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.ControlTokens
import com.microsoft.fluentui.theme.token.controlTokens.AvatarCarouselInfo
import com.microsoft.fluentui.theme.token.controlTokens.AvatarCarouselSize
import com.microsoft.fluentui.theme.token.controlTokens.AvatarCarouselTokens
import com.microsoft.fluentui.theme.token.controlTokens.AvatarTokens
import com.microsoft.fluentui.util.getStringResource
import kotlinx.coroutines.launch
import kotlin.math.max

/**
 * Generate an AvatarCarousel. This is a horizontally scrollable bar which is made up of [AvatarCarouselItem].
 * Avatar Carousel internally is a group of [AvatarCarouselItem] which can be used to create onClick based Avatar buttons.
 *
 * @param avatarList List of Avatars to be created in a carousel
 * @param modifier Optional Modifier for Avatar carousel
 * @param size size of the carousel
 * @param enablePresence enable/disable presence indicator on avatar
 * @param avatarTokens Token to provide appearance values to Avatar
 * @param textMinMaxLines Provide [Pair] of minLines and maxLines for text. First value is minLines and second value is maxLines
 * @param subTextMinMaxLines Provide [Pair] of minLines and maxLines for subText. First value is minLines and second value is maxLines
 * @param avatarCarouselTokens Token to provide appearance values to Avatar Carousel
 */
@Composable
fun AvatarCarousel(
    avatarList: List<AvatarCarouselItem>,
    modifier: Modifier = Modifier,
    size: AvatarCarouselSize = AvatarCarouselSize.Small,
    enablePresence: Boolean = false,
    avatarTokens: AvatarTokens? = null,
    textMinMaxLines: Pair<Int, Int> = Pair(1, 1),
    subTextMinMaxLines: Pair<Int, Int> = Pair(1, 1),
    avatarCarouselTokens: AvatarCarouselTokens? = null
) {
    val themeID =
        FluentTheme.themeID    //Adding This only for recomposition in case of Token Updates. Unused otherwise.
    val token = avatarCarouselTokens
        ?: FluentTheme.controlTokens.tokens[ControlTokens.ControlType.AvatarCarouselControlType] as AvatarCarouselTokens
    val avatarCarouselInfo = AvatarCarouselInfo(size)
    val statusString = getStringResource(R.string.Status)
    val outOfOfficeString = getStringResource(R.string.Out_Of_Office)
    val activeString = getStringResource(R.string.Active)
    val inActiveString = getStringResource(R.string.Inactive)
    val scope = rememberCoroutineScope()
    val lazyListState = rememberLazyListState()
    val avatarSize = token.avatarSize(avatarCarouselInfo)
    val textStyle =
        token.textTypography(avatarCarouselInfo)
    val subTextStyle =
        token.subTextTypography(avatarCarouselInfo)
    val avatarTextPadding = token.padding(avatarCarouselInfo)
    val bottomPadding = if (size == AvatarCarouselSize.Small) 8.dp else 0.dp
    val textColor = token.textColor(avatarCarouselInfo)
    val subTextColor =
        token.subTextColor(avatarCarouselInfo)


    LazyRow(
        state = lazyListState,
        modifier = modifier.draggable(
            orientation = Orientation.Horizontal,
            state = rememberDraggableState { delta ->
                scope.launch {
                    lazyListState.scrollBy(-delta)
                }
            },
        )
    ) {
        itemsIndexed(avatarList) { index, item ->
            val backgroundColor =
                token.backgroundBrush(avatarCarouselInfo)
                    .getBrushByState(
                        enabled = item.enabled,
                        selected = false,
                        interactionSource = remember { MutableInteractionSource() }
                    )
            val nameString =
                if (size == AvatarCarouselSize.Large) "${item.person.getName()}. " else "${item.person.firstName}. "
            Column(
                Modifier
                    .onFocusEvent { focusState ->
                        if (focusState.isFocused) {
                            scope.launch {
                                lazyListState.animateScrollToItem(
                                    max(
                                        0,
                                        index - 2
                                    )
                                )
                            }
                        }
                    }
                    .background(backgroundColor)
                    .requiredWidth(88.dp)
                    .alpha(if (item.enabled) 1f else 0.7f)
                    .clickable(
                        interactionSource = remember { MutableInteractionSource() },
                        indication = rememberRipple(),
                        onClickLabel = null,
                        enabled = item.enabled,
                        onClick = item.onItemClick ?: {},
                        role = Role.Button
                    )
                    .testTag("item $index")
                    .clearAndSetSemantics {
                        contentDescription =
                            nameString + "${if (enablePresence) "${statusString}, ${item.person.status}," else ""} " +
                                    "${if (enablePresence && item.person.isOOO) "${outOfOfficeString}," else ""} " +
                                    if (item.enableActivityRing) {
                                        if (item.person.isActive) activeString else inActiveString
                                    } else ""
                    },
                horizontalAlignment = Alignment.CenterHorizontally
            ) {
                Avatar(
                    modifier = Modifier
                        .padding(top = 8.dp),
                    person = item.person,
                    size = avatarSize,
                    avatarToken = avatarTokens,
                    enablePresence = enablePresence,
                    enableActivityRings = item.enableActivityRing
                )
                Row(
                    Modifier
                        .padding(
                            start = 2.dp,
                            end = 2.dp,
                            top = avatarTextPadding,
                            bottom = bottomPadding
                        )
                        .fillMaxWidth(),
                    verticalAlignment = Alignment.CenterVertically,
                    horizontalArrangement = Arrangement.Center
                ) {
                    BasicText(
                        modifier = Modifier.clearAndSetSemantics { },
                        text = item.person.firstName,
                        style = textStyle.merge(
                            TextStyle(
                                color = if (item.enabled) textColor.rest else textColor.disabled
                            )
                        ),
                        minLines = textMinMaxLines.first,
                        maxLines = textMinMaxLines.second,
                        overflow = TextOverflow.Ellipsis
                    )
                }
                if (size == AvatarCarouselSize.Large) {
                    Row(
                        Modifier
                            .fillMaxWidth()
                            .padding(start = 2.dp, end = 2.dp, bottom = 8.dp),
                        verticalAlignment = Alignment.CenterVertically,
                        horizontalArrangement = Arrangement.Center
                    ) {
                        BasicText(
                            modifier = Modifier.clearAndSetSemantics { },
                            text = item.person.lastName,
                            style = subTextStyle.merge(
                                TextStyle(
                                    color = if (item.enabled) subTextColor.rest else subTextColor.disabled
                                )
                            ),
                            minLines = subTextMinMaxLines.first,
                            maxLines = subTextMinMaxLines.second,
                            overflow = TextOverflow.Ellipsis
                        )
                    }
                }
            }
        }
    }
}
```

## File: src/main/java/com/microsoft/fluentui/tokenized/persona/AvatarGroup.kt
```kotlin
package com.microsoft.fluentui.tokenized.persona

import androidx.compose.foundation.layout.padding
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.layout.Layout
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.semantics.contentDescription
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.ControlTokens
import com.microsoft.fluentui.theme.token.controlTokens.*
import java.lang.Math.max

const val DEFAULT_MAX_AVATAR = 5

/**
 * API to create a group of Avatar. This can be done in 2 formats, [AvatarGroupStyle.Stack] or [AvatarGroupStyle.Pile].
 * Stack has negative spacing between Avatars whereas Pile has positive.
 * Activity Rings Can be enabled in both type of Groups, but presence indicator can be seen only in Pile
 *
 * @param group [Group] of people whose Avatar has to be created
 * @param modifier Optional modifier for AvatarGroup
 * @param size Set size of AvatarGroup. Default: [AvatarSize.Size32]
 * @param style Set style of AvatarGroup. Default: [AvatarGroupStyle.Stack]
 * @param maxVisibleAvatar Maximum number of avatars to be displayed. If number is less than total Group size, Overflow Avatar is added.
 * @param enablePresence Enable/Disable Presence Indicator in Avatars. Works only for [AvatarGroupStyle.Pile]
 * @param avatarToken Token to provide appearance values to Avatar
 * @param avatarGroupToken Token to provide appearance values to AvatarGroup
 */
@Composable
fun AvatarGroup(
    group: Group,
    modifier: Modifier = Modifier,
    size: AvatarSize = AvatarSize.Size32,
    style: AvatarGroupStyle = AvatarGroupStyle.Stack,
    maxVisibleAvatar: Int = DEFAULT_MAX_AVATAR,
    enablePresence: Boolean = false,
    enableActivityDot: Boolean = false,
    avatarToken: AvatarTokens? = null,
    avatarGroupToken: AvatarGroupTokens? = null
) {
    val themeID =
        FluentTheme.themeID    //Adding This only for recomposition in case of Token Updates. Unused otherwise.
    val token = avatarGroupToken
        ?: FluentTheme.controlTokens.tokens[ControlTokens.ControlType.AvatarGroupControlType] as AvatarGroupTokens

    val visibleAvatar: Int = if (maxVisibleAvatar < 0)
        0
    else if (maxVisibleAvatar > group.members.size)
        group.members.size
    else
        maxVisibleAvatar

    val showActivityDot: Boolean = enableActivityDot && style == AvatarGroupStyle.Stack

    var enablePresence: Boolean = enablePresence
    if (style == AvatarGroupStyle.Stack)
        enablePresence = false

    val avatarGroupInfo = AvatarGroupInfo(size, style)
    val spacing: MutableList<Int> = mutableListOf()
    for (i in 0 until visibleAvatar) {
        val person = group.members[i]
        if (i != 0) {
            spacing.add(with(LocalDensity.current) {
                token.spacing(avatarGroupInfo, person.isActive)
                    .roundToPx()
            })
        }
    }
    if (group.members.size > visibleAvatar || group.members.isEmpty()) {
        spacing.add(with(LocalDensity.current) {
            token.spacing(avatarGroupInfo, false).roundToPx()
        })
    }

    val semanticModifier: Modifier = Modifier.semantics(true) {
        contentDescription =
            "Group Name: ${group.groupName}. Total ${group.members.size} members. "
    }

    Layout(modifier = modifier
        .padding(8.dp)
        .then(semanticModifier), content = {
        if (group.members.size > 0) {
            if (style == AvatarGroupStyle.Pie) {
                if (visibleAvatar > 1) {
                    AvatarPie(
                        group = group,
                        size = size,
                        noOfVisibleAvatars = visibleAvatar,
                        avatarTokens = avatarToken
                    )
                } else {
                    Avatar(
                        group.members[0],
                        size = size,
                        enableActivityRings = true,
                        enablePresence = enablePresence,
                        avatarToken = avatarToken
                    )
                }

            } else {
                for (i in 0 until visibleAvatar) {
                    val person = group.members[i]

                    var paddingModifier: Modifier = Modifier
                    if (style == AvatarGroupStyle.Pile && person.isActive) {
                        val padding = token.pilePadding(avatarGroupInfo)
                        paddingModifier = paddingModifier.padding(start = padding, end = padding)
                    }

                    Avatar(
                        person,
                        modifier = paddingModifier,
                        size = size,
                        enableActivityRings = true,
                        enablePresence = enablePresence,
                        avatarToken = avatarToken,
                        enableActivityDot = group.members.size == visibleAvatar && i == visibleAvatar - 1 && showActivityDot
                    )
                }
                if (group.members.size > visibleAvatar || group.members.isEmpty()) {
                    Avatar(
                        group.members.size - visibleAvatar, size = size,
                        enableActivityRings = true, avatarToken = avatarToken, enableActivityDot = showActivityDot
                    )
                }
            }
        }
    }) { measurables, constraints ->
        val placeables = measurables.map { measurable ->
            measurable.measure(constraints)
        }

        var layoutHeight = 0
        var layoutWidth = 0
        placeables.forEach {
            layoutHeight = max(layoutHeight, it.height)
            layoutWidth += it.width
        }
        layoutWidth += spacing.sum()

        layout(layoutWidth, layoutHeight) {
            var xPosition = 0
            placeables.forEach { placeable ->
                placeable.placeRelative(y = 0, x = xPosition)
                if (placeable != placeables.last())
                    xPosition += placeable.width + spacing[placeables.indexOf(placeable)]
            }
        }
    }
}
```

## File: src/main/java/com/microsoft/fluentui/tokenized/persona/AvatarPie.kt
```kotlin
package com.microsoft.fluentui.tokenized.persona

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxHeight
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.requiredSize
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.text.BasicText
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.ControlTokens
import com.microsoft.fluentui.theme.token.controlTokens.AvatarInfo
import com.microsoft.fluentui.theme.token.controlTokens.AvatarTokens
import com.microsoft.fluentui.theme.token.controlTokens.AvatarSize

private val SPACER_SIZE = 2.dp

@Composable
fun AvatarPie(
    group: Group, size: AvatarSize, noOfVisibleAvatars: Int = 2, avatarTokens: AvatarTokens? = null
) {
    val avatarInfo = AvatarInfo(
        size
    )
    val token = avatarTokens
        ?: FluentTheme.controlTokens.tokens[ControlTokens.ControlType.AvatarControlType] as AvatarTokens
    val avatarSize = token.avatarSize(avatarInfo)

    Box(
        modifier = Modifier
            .requiredSize(avatarSize)
            .background(
                color = Color.White, shape = CircleShape
            ), contentAlignment = Alignment.Center
    ) {
        val slicedAvatarDimen = avatarSize / 2 - SPACER_SIZE / 2
        if (noOfVisibleAvatars == 2) {
            RenderTwoSlices(avatarSize, slicedAvatarDimen, group, size)
        } else if (noOfVisibleAvatars >= 3) {
            RenderThreeSlices(avatarSize, slicedAvatarDimen, group, size)
        }
    }
}

@Composable
private fun RenderTwoSlices(
    avatarSize: Dp, slicedAvatarDimen: Dp, group: Group, size: AvatarSize
) {
    Row(
        modifier = Modifier
            .requiredSize(avatarSize)
            .clip(CircleShape)
    ) {
        SlicedAvatar(
            group.members[0],
            slicedAvatarSize = avatarSize,
            width = slicedAvatarDimen,
            modifier = Modifier
                .height(avatarSize)
                .width(slicedAvatarDimen),
            size = size
        )
        AddVerticalSpacer()
        SlicedAvatar(
            group.members[1],
            slicedAvatarSize = avatarSize,
            width = slicedAvatarDimen,
            modifier = Modifier
                .height(avatarSize)
                .width(slicedAvatarDimen),
            size = size
        )
    }
}

@Composable
private fun RenderThreeSlices(
    avatarSize: Dp, slicedAvatarDimen: Dp, group: Group, size: AvatarSize
) {
    Row(
        modifier = Modifier
            .requiredSize(avatarSize)
            .clip(CircleShape)
    ) {
        SlicedAvatar(
            group.members[0],
            slicedAvatarSize = avatarSize,
            width = slicedAvatarDimen,
            modifier = Modifier
                .height(avatarSize)
                .width(slicedAvatarDimen)
                .align(Alignment.CenterVertically),
            size = size
        )
        AddVerticalSpacer()
        Column(
            modifier = Modifier
                .height(avatarSize)
                .width(slicedAvatarDimen),
        ) {
            SlicedAvatar(
                group.members[1],
                slicedAvatarSize = slicedAvatarDimen,
                width = slicedAvatarDimen,
                modifier = Modifier
                    .height(slicedAvatarDimen)
                    .width(slicedAvatarDimen),
                size = size
            )
            AddHorizontalSpacer()
            SlicedAvatar(
                group.members[2],
                slicedAvatarSize = slicedAvatarDimen,
                width = slicedAvatarDimen,
                modifier = Modifier
                    .height(slicedAvatarDimen)
                    .width(slicedAvatarDimen),
                size = size
            )
        }

    }
}

@Composable
private fun AddVerticalSpacer() {
    Spacer(
        modifier = Modifier
            .background(color = Color.White)
            .fillMaxHeight()
            .width(SPACER_SIZE)
    )
}

@Composable
private fun AddHorizontalSpacer() {
    Spacer(
        modifier = Modifier
            .background(color = Color.White)
            .fillMaxWidth()
            .height(SPACER_SIZE)
    )
}
```

## File: src/main/java/com/microsoft/fluentui/tokenized/persona/Persona.kt
```kotlin
package com.microsoft.fluentui.tokenized.persona

import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import com.microsoft.fluentui.theme.token.controlTokens.AvatarTokens
import com.microsoft.fluentui.theme.token.controlTokens.BorderInset
import com.microsoft.fluentui.theme.token.controlTokens.BorderInset.None
import com.microsoft.fluentui.theme.token.controlTokens.BorderType
import com.microsoft.fluentui.theme.token.controlTokens.BorderType.NoBorder
import com.microsoft.fluentui.theme.token.controlTokens.ListItemTokens
import com.microsoft.fluentui.tokenized.listitem.ListItem

/**
 * A customized  list item. Can be a Single or multiline Avatar item. Size of the persona is based on the texts provided
 *
 * @param person person details like avatar
 * @param modifier Optional modifier for List item.
 * @param primaryText Primary text.
 * @param secondaryText Optional secondaryText or a subtitle.
 * @param tertiaryText Optional tertiary text or a footer.
 * @param onClick Optional onClick action for list item.
 * @param border [BorderType] Optional border for the list item.
 * @param borderInset [BorderInset]Optional borderInset for list item.
 * @param enabled Optional enable/disable List item
 * @param enableAvatarActivityRings if avatar activity rings are enabled/disabled
 * @param enableAvatarPresence if avatar presence is enabled/disabled
 * @param avatarTokens tokens for the avatar in [Person]
 * @param personaTokens tokens for the persona
 *
 */
@Composable
fun Persona(
    person: Person,
    modifier: Modifier = Modifier,
    primaryText: String,
    secondaryText: String? = null,
    tertiaryText: String? = null,
    onClick: (() -> Unit)? = null,
    border: BorderType = NoBorder,
    borderInset: BorderInset = None,
    enabled: Boolean = true,
    enableAvatarActivityRings: Boolean = false,
    enableAvatarPresence: Boolean = true,
    avatarTokens: AvatarTokens? = null,
    personaTokens: ListItemTokens? = null
) {

    var avatarSize = getAvatarSize(secondaryText, tertiaryText)
    ListItem.Item(
        text = primaryText,
        subText = secondaryText,
        secondarySubText = tertiaryText,
        onClick = onClick,
        modifier = modifier,
        border = border,
        borderInset = borderInset,
        listItemTokens = personaTokens,
        enabled = enabled,
        leadingAccessoryContent = {
            Avatar(
                person = person,
                size = avatarSize,
                enableActivityRings = enableAvatarActivityRings,
                enablePresence = enableAvatarPresence,
                avatarToken = avatarTokens
            )
        })
}
```

## File: src/main/java/com/microsoft/fluentui/tokenized/persona/PersonaChip.kt
```kotlin
package com.microsoft.fluentui.tokenized.persona

import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.interaction.MutableInteractionSource
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.text.BasicText
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Close
import androidx.compose.material.ripple.rememberRipple
import androidx.compose.runtime.Composable
import androidx.compose.runtime.remember
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.semantics.Role
import androidx.compose.ui.semantics.clearAndSetSemantics
import androidx.compose.ui.semantics.contentDescription
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.persona.R
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.ControlTokens
import com.microsoft.fluentui.theme.token.Icon
import com.microsoft.fluentui.theme.token.controlTokens.PersonaChipInfo
import com.microsoft.fluentui.theme.token.controlTokens.PersonaChipSize
import com.microsoft.fluentui.theme.token.controlTokens.PersonaChipSize.Medium
import com.microsoft.fluentui.theme.token.controlTokens.PersonaChipStyle
import com.microsoft.fluentui.theme.token.controlTokens.PersonaChipTokens

/**
 * [PersonaChip] is a compact representations of entities(most commonly, people)that can be types in, deleted or dragged easily
 *
 * @param person Person data for the persona chip
 * @param modifier Modifier for the persona chip
 * @param style Optional persona chip style. See [PersonaChipStyle]
 * @param size Option persona chip size. See [PersonaChipSize]
 * @param enabled Whether persona chip is enabled or disabled. Enabled by default.
 * @param selected Whether persona chip is selected or unselected. Unselected by default.
 * @param onClick onClick action for persona chip
 * @param onCloseClick onClick action for close button. This action is performed after the chip is selected and on the close icon
 * @param interactionSource Optional interactionSource
 * @param personaChipTokens Optional tokens for persona chip
 */
@Composable
fun PersonaChip(
    person: Person,
    modifier: Modifier = Modifier,
    style: PersonaChipStyle = PersonaChipStyle.Neutral,
    size: PersonaChipSize = Medium,
    enabled: Boolean = true,
    selected: Boolean = false,
    onClick: (() -> Unit)? = null,
    onCloseClick: (() -> Unit)? = null,
    interactionSource: MutableInteractionSource = remember { MutableInteractionSource() },
    personaChipTokens: PersonaChipTokens? = null
) {
    val themeID =
        FluentTheme.themeID    //Adding This only for recomposition in case of Token Updates. Unused otherwise.
    val token = personaChipTokens
        ?: FluentTheme.controlTokens.tokens[ControlTokens.ControlType.PersonaChipControlType] as PersonaChipTokens
    val personaChipInfo = PersonaChipInfo(
        style,
        enabled,
        size
    )
    val backgroundColor =
        token.backgroundBrush(personaChipInfo = personaChipInfo)
            .getBrushByState(
                enabled = enabled, selected = selected, interactionSource = interactionSource
            )
    val textColor = token.textColor(personaChipInfo = personaChipInfo)
        .getColorByState(
            enabled = enabled, selected = selected, interactionSource = interactionSource
        )
    val typography = token.typography(personaChipInfo = personaChipInfo)
    val avatarSize = token.avatarSize(personaChipInfo = personaChipInfo)
    val verticalPadding =
        token.verticalPadding(personaChipInfo = personaChipInfo)
    val horizontalPadding =
        token.horizontalPadding(personaChipInfo = personaChipInfo)
    val avatarToTextSpacing =
        token.avatarToTextSpacing(personaChipInfo = personaChipInfo)
    val cornerRadius =
        token.cornerRadius(personaChipInfo = personaChipInfo)
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
            .clickable(
                enabled = enabled,
                onClick = onClick ?: {},
                interactionSource = interactionSource,
                indication = rememberRipple()
            )
            .then(if (onCloseClick != null && selected) Modifier else Modifier.clearAndSetSemantics {
                this.contentDescription = "${person.getLabel()} $selectedString $enabledString"
            })
    )
    {
        Row(
            Modifier
                .padding(
                    horizontal = horizontalPadding,
                    vertical = verticalPadding
                ),
            horizontalArrangement = Arrangement.spacedBy(avatarToTextSpacing),
            verticalAlignment = Alignment.CenterVertically
        ) {
            if (size == Medium) {
                if (onCloseClick != null && selected) {
                    Icon(
                        Icons.Filled.Close,
                        modifier = Modifier
                            .size(16.dp)
                            .clickable(
                                enabled = true,
                                onClick = onCloseClick,
                                role = Role.Button
                            ),
                        contentDescription = LocalContext.current.resources.getString(R.string.fluentui_close),
                        tint = textColor
                    )
                } else {
                    Avatar(
                        modifier = Modifier.clearAndSetSemantics { },
                        person = person,
                        size = avatarSize
                    )
                }
            }
            BasicText(
                text = person.getLabel(),
                style = typography.merge(
                    TextStyle(color = textColor)
                )
            )
        }
    }
}
```

## File: src/main/java/com/microsoft/fluentui/tokenized/persona/PersonaList.kt
```kotlin
package com.microsoft.fluentui.tokenized.persona

import androidx.compose.foundation.gestures.Orientation
import androidx.compose.foundation.gestures.draggable
import androidx.compose.foundation.gestures.rememberDraggableState
import androidx.compose.foundation.gestures.scrollBy
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.itemsIndexed
import androidx.compose.foundation.lazy.rememberLazyListState
import androidx.compose.runtime.Composable
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.semantics.Role
import androidx.compose.ui.semantics.SemanticsPropertyReceiver
import androidx.compose.ui.semantics.clearAndSetSemantics
import androidx.compose.ui.semantics.contentDescription
import androidx.compose.ui.semantics.role
import androidx.compose.ui.semantics.stateDescription
import com.microsoft.fluentui.persona.R
import com.microsoft.fluentui.theme.token.controlTokens.AvatarTokens
import com.microsoft.fluentui.theme.token.controlTokens.BorderInset
import com.microsoft.fluentui.theme.token.controlTokens.BorderInset.None
import com.microsoft.fluentui.theme.token.controlTokens.BorderType
import com.microsoft.fluentui.theme.token.controlTokens.BorderType.NoBorder
import com.microsoft.fluentui.theme.token.controlTokens.ListItemTokens
import com.microsoft.fluentui.tokenized.listitem.ListItem
import kotlinx.coroutines.launch

/**
 * A customized  list of personas. Can be a Single or multiline Persona.
 *
 * @param personas List of [Persona]
 * @param modifier Optional modifier for List item.
 * @param border [BorderType] Optional border for the list item.
 * @param borderInset [BorderInset]Optional borderInset for list item.
 * @param enableAvatarActivityRings if avatar activity rings are enabled/disabled
 * @param enableAvatarPresence if avatar presence is enabled/disabled
 * @param textAccessibilityProperties Accessibility properties for the text in list item.
 * @param avatarTokens tokens for the avatar in [Person]
 * @param personaListTokens tokens for the persona list
 *
 */
@Composable
fun PersonaList(
    personas: List<Persona>,
    modifier: Modifier = Modifier,
    border: BorderType = NoBorder,
    borderInset: BorderInset = None,
    enableAvatarActivityRings: Boolean = false,
    enableAvatarPresence: Boolean = true,
    textAccessibilityProperties: (SemanticsPropertyReceiver.() -> Unit)? = null,
    avatarTokens: AvatarTokens? = null,
    personaListTokens: ListItemTokens? = null
) {
    val scope = rememberCoroutineScope()
    val lazyListState = rememberLazyListState()
    val positionString: String = LocalContext.current.resources.getString(R.string.position_string)
    val statusString: String = LocalContext.current.resources.getString(R.string.status_string)
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
        itemsIndexed(personas) { index, item ->
            ListItem.Item(
                text = item.title,
                modifier = Modifier
                    .clearAndSetSemantics {
                        contentDescription = "${item.person.getName()}, ${item.subTitle}" + if(enableAvatarPresence) statusString.format( item.person.status )else ""
                        stateDescription = if (personas.size > 1) positionString.format(index+1, personas.size ) else ""
                        role = Role.Button
                                          },
                subText = item.subTitle,
                secondarySubText = item.footer,
                onClick = item.onClick,
                border = border,
                borderInset = borderInset,
                listItemTokens = personaListTokens,
                enabled = item.enabled,
                leadingAccessoryContent = {
                    Avatar(
                        person = item.person,
                        size = getAvatarSize(item.subTitle, item.footer),
                        enableActivityRings = enableAvatarActivityRings,
                        enablePresence = enableAvatarPresence,
                        avatarToken = avatarTokens
                    )
                },
                trailingAccessoryContent = item.trailingIcon,
                textAccessibilityProperties = textAccessibilityProperties
            )
        }
    }
}
```

## File: src/main/java/com/microsoft/fluentui/tokenized/persona/SearchBarPersonaChip.kt
```kotlin
package com.microsoft.fluentui.tokenized.persona

import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.interaction.MutableInteractionSource
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.text.BasicText
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Close
import androidx.compose.material.ripple.rememberRipple
import androidx.compose.runtime.Composable
import androidx.compose.runtime.remember
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.semantics.Role
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.unit.dp
import com.microsoft.fluentui.persona.R
import com.microsoft.fluentui.theme.FluentTheme
import com.microsoft.fluentui.theme.token.ControlTokens
import com.microsoft.fluentui.theme.token.FluentStyle
import com.microsoft.fluentui.theme.token.Icon
import com.microsoft.fluentui.theme.token.controlTokens.PersonaChipSize
import com.microsoft.fluentui.theme.token.controlTokens.SearchBarPersonaChipInfo
import com.microsoft.fluentui.theme.token.controlTokens.SearchBarPersonaChipTokens

/**
 * [SearchBarPersonaChip] is a compact representations of entities(most commonly, people)that can be types in, deleted or dragged easily
 *
 * @param person Person data for the persona chip
 * @param modifier Modifier for the persona chip
 * @param style Optional persona chip style. See [FluentStyle]
 * @param size Option persona chip size. See [PersonaChipSize]
 * @param enabled Whether persona chip is enabled or disabled. Enabled by default.
 * @param selected Whether persona chip is selected or unselected. Unselected by default.
 * @param onClick onClick action for persona chip
 * @param onCloseClick onClick action for close button. This action is performed after the chip is selected and on the close icon
 * @param interactionSource Optional interactionSource
 * @param searchbarPersonaChipTokens Optional tokens for persona chip
 */
@Composable
fun SearchBarPersonaChip(
    person: Person,
    modifier: Modifier = Modifier,
    style: FluentStyle = FluentStyle.Neutral,
    size: PersonaChipSize = PersonaChipSize.Medium,
    enabled: Boolean = true,
    selected: Boolean = false,
    onClick: (() -> Unit)? = null,
    onCloseClick: (() -> Unit)? = null,
    interactionSource: MutableInteractionSource = remember { MutableInteractionSource() },
    searchbarPersonaChipTokens: SearchBarPersonaChipTokens? = null
) {
    val themeID =
        FluentTheme.themeID    //Adding This only for recomposition in case of Token Updates. Unused otherwise.
    val token = searchbarPersonaChipTokens
        ?: FluentTheme.controlTokens.tokens[ControlTokens.ControlType.SearchBarPersonaChipControlType] as SearchBarPersonaChipTokens
    val searchBarPersonaChipInfo = SearchBarPersonaChipInfo(
        style,
        enabled,
        size = size
    )
    val backgroundColor =
        token.backgroundBrush(personaChipInfo = searchBarPersonaChipInfo)
            .getBrushByState(
                enabled = enabled, selected = selected, interactionSource = interactionSource
            )
    val textColor =
        token.textColor(personaChipInfo = searchBarPersonaChipInfo)
            .getColorByState(
                enabled = enabled, selected = selected, interactionSource = interactionSource
            )
    val fontStyle =
        token.typography(personaChipInfo = searchBarPersonaChipInfo)
    val avatarSize =
        token.avatarSize(personaChipInfo = searchBarPersonaChipInfo)
    val verticalPadding =
        token.verticalPadding(personaChipInfo = searchBarPersonaChipInfo)
    val horizontalPadding =
        token.horizontalPadding(personaChipInfo = searchBarPersonaChipInfo)
    val avatarToTextSpacing =
        token.avatarToTextSpacing(personaChipInfo = searchBarPersonaChipInfo)
    val cornerRadius =
        token.cornerRadius(personaChipInfo = searchBarPersonaChipInfo)

    Box(
        modifier = modifier
            .clip(RoundedCornerShape(cornerRadius))
            .background(backgroundColor)
            .clickable(
                enabled = enabled,
                onClick = onClick ?: {},
                interactionSource = interactionSource,
                indication = rememberRipple()
            )
    )
    {
        Row(
            Modifier
                .padding(
                    horizontal = horizontalPadding,
                    vertical = verticalPadding
                ),
            horizontalArrangement = Arrangement.spacedBy(avatarToTextSpacing),
            verticalAlignment = Alignment.CenterVertically
        ) {
            if (size == PersonaChipSize.Medium) {
                if (onCloseClick != null && selected) {
                    Icon(
                        Icons.Filled.Close,
                        modifier = Modifier
                            .size(16.dp)
                            .clickable(
                                enabled = true,
                                onClick = onCloseClick,
                                role = Role.Button
                            ),
                        contentDescription = LocalContext.current.resources.getString(R.string.fluentui_close),
                        tint = textColor
                    )
                } else {
                    Avatar(person = person, size = avatarSize)
                }
            }
            BasicText(
                modifier = Modifier.padding(bottom = 2.dp),//Vertically center align text
                text = person.getLabel(),
                style = fontStyle.merge(
                    TextStyle(
                        color = textColor
                    )
                )
            )
        }
    }
}
```

## File: src/main/java/com/microsoft/fluentui/tokenized/persona/Utils.kt
```kotlin
package com.microsoft.fluentui.tokenized.persona

import android.graphics.Bitmap
import android.os.Parcelable
import androidx.annotation.DrawableRes
import androidx.compose.runtime.Composable
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.microsoft.fluentui.theme.token.FluentGlobalTokens
import com.microsoft.fluentui.theme.token.controlTokens.AvatarSize
import com.microsoft.fluentui.theme.token.controlTokens.AvatarStatus
import kotlinx.parcelize.Parcelize
import kotlinx.parcelize.RawValue

/**
 * Data Class for Person
 *
 * @property firstName First Name of person
 * @property lastName Last Name of person
 * @property email Email Id for person
 * @property image Drawable Image for a person
 * @property bitmap Bitmap for a person
 * @property isActive Enable/Disable Active status of a person
 * @property status Current Status of the person
 * @property isOOO Enable/Disable Out-Of-Office flag for person
 */

const val ANONYMOUS = "Anonymous"

@Parcelize
class Person(
    val firstName: String = "",
    val lastName: String = "",
    val email: String? = null,
    @DrawableRes val image: Int? = null,
    val bitmap: @RawValue Bitmap? = null,
    val isActive: Boolean = false,
    val status: AvatarStatus = AvatarStatus.Available,
    val isOOO: Boolean = false
) : Parcelable {

    fun getName(): String {
        val name = "$firstName $lastName"
        if (name.trim().isBlank())
            return ANONYMOUS
        return name
    }

    fun getLabel(): String {
        val label = "$firstName $lastName"
        if (label.trim().isNotBlank())
            return label
        if (!email.isNullOrBlank())
            return email
        return ANONYMOUS
    }

    fun isImageAvailable(): Boolean {
        return image != null || bitmap != null
    }

    fun getInitials(): String {
        var initial = ""

        for (char in firstName) {
            if (!char.isLetter())
                continue
            initial += char
            break
        }

        for (char in lastName) {
            if (!char.isLetter())
                continue
            initial += char
            break
        }

        if (initial.isBlank() && !email.isNullOrBlank()) {
            initial += email[0]
        }

        return initial.uppercase()
    }
}

/**
 * Data Class for Group
 *
 * @property members List of [Person] in group
 * @property groupName Name of the group
 * @property email E-mail ID for the group
 * @property image Drawable Image for the group
 * @property bitmap Bitmap for the group
 */
@Parcelize
class Group(
    val members: List<Person> = listOf(),
    val groupName: String = "",
    val email: String? = null,
    @DrawableRes val image: Int? = null,
    val bitmap: @RawValue Bitmap? = null,
) : Parcelable {
    fun isImageAvailable(): Boolean {
        return image != null || bitmap != null
    }

    fun getName(): String {
        if (groupName.trim().isBlank())
            return ANONYMOUS
        return groupName
    }

    fun getInitials(): String {
        var initial = ""
        if (groupName.isNotBlank()) {
            for (word in groupName.split(" ")) {
                if (word.isNotBlank())
                    initial += word[0]

                if (initial.length == 2)
                    break
            }
        }
        if (initial.isBlank() && !email.isNullOrBlank()) {
            initial += email[0]
        }
        return initial.uppercase()
    }
}

class Persona(
    val person: Person,
    val title: String,
    val subTitle: String? = null,
    val footer: String? = null,
    val enabled: Boolean = true,
    val trailingIcon: (@Composable () -> Unit)? = null,
    val onClick: (() -> Unit)? = null
)

class AvatarCarouselItem(
    val person: Person,
    val enabled: Boolean = true,
    val enableActivityRing: Boolean = false,
    val onItemClick: (() -> Unit)? = null
)

fun getAvatarSize(secondaryText: String?, tertiaryText: String?): AvatarSize {
    if (secondaryText == null && tertiaryText == null) {
        return AvatarSize.Size24
    }
    if (secondaryText != null && tertiaryText == null) {
        return AvatarSize.Size40
    }
    return AvatarSize.Size56
}


@Composable
fun fontTypographyForSlicedAvatar(slicedAvatarSize: Dp): TextStyle {
    return when (slicedAvatarSize) {
        7.dp -> TextStyle(
            fontSize = 4.sp,
            lineHeight = 4.69.sp,
            fontWeight = FluentGlobalTokens.FontWeightTokens.Regular.value
        )
        9.dp -> TextStyle(
            fontSize = 5.sp,
            lineHeight = 9.sp,
            fontWeight = FluentGlobalTokens.FontWeightTokens.Regular.value
        )
        11.dp -> TextStyle(
            fontSize = 6.sp,
            lineHeight = 7.5.sp,
            fontWeight = FluentGlobalTokens.FontWeightTokens.Regular.value
        )
        15.dp -> TextStyle(
            fontSize = 10.sp,
            lineHeight = 13.sp,
            fontWeight = FluentGlobalTokens.FontWeightTokens.Regular.value
        )
        16.dp -> TextStyle(
            fontSize = 6.sp,
            lineHeight = 7.03.sp,
            fontWeight = FluentGlobalTokens.FontWeightTokens.Regular.value
        )
        19.dp -> TextStyle(
            fontSize = 8.sp,
            lineHeight = 15.sp,
            fontWeight = FluentGlobalTokens.FontWeightTokens.Regular.value
        )
        20.dp -> TextStyle(
            fontSize = 8.sp,
            lineHeight = 9.sp,
            fontWeight = FluentGlobalTokens.FontWeightTokens.Regular.value
        )
        24.dp -> TextStyle(
            fontSize = 10.sp,
            lineHeight = 9.sp,
            fontWeight = FluentGlobalTokens.FontWeightTokens.Regular.value
        )
        27.dp -> TextStyle(
            fontSize = 11.sp,
            lineHeight = 12.89.sp,
            fontWeight = FluentGlobalTokens.FontWeightTokens.Regular.value
        )
       32.dp -> TextStyle(
            fontSize = 13.sp,
            lineHeight = 13.sp,
            fontWeight = FluentGlobalTokens.FontWeightTokens.Regular.value
        )
        35.dp-> TextStyle(
            fontSize = 13.sp,
            lineHeight = 28.sp,
            fontWeight = FluentGlobalTokens.FontWeightTokens.Regular.value
        )
        40.dp -> TextStyle(
            fontSize = 10.sp,
            lineHeight = 15.sp,
            fontWeight = FluentGlobalTokens.FontWeightTokens.Regular.value
        )
        56.dp -> TextStyle(
            fontSize = 14.sp,
            lineHeight = 18.sp,
            fontWeight = FluentGlobalTokens.FontWeightTokens.Regular.value
        )
        72.dp -> TextStyle(
            fontSize = FluentGlobalTokens.FontSizeTokens.Size400.value,
            lineHeight = FluentGlobalTokens.LineHeightTokens.Size700.value,
            fontWeight = FluentGlobalTokens.FontWeightTokens.Regular.value
        )

        else -> {
            TextStyle(
                fontSize = 13.sp,
                lineHeight = 13.sp,
                fontWeight = FluentGlobalTokens.FontWeightTokens.Regular.value
            )
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
    <!--PersonaChip-->
    <attr name="fluentuiPersonaChipBackgroundNormalColor" format="reference|color"/>
    <attr name="fluentuiPersonaChipBackgroundActiveColor" format="reference|color"/>
    <attr name="fluentuiPersonaChipBackgroundErrorColor" format="reference|color"/>
    <attr name="fluentuiPersonaChipBackgroundErrorActiveColor" format="reference|color"/>
    <attr name="fluentuiPersonaChipBackgroundPressedColor" format="reference|color"/>
    <attr name="fluentuiPersonaChipTextNormalColor" format="reference|color"/>
    <attr name="fluentuiPersonaChipForegroundActiveColor" format="reference|color"/>
    <attr name="fluentuiPersonaChipTextErrorColor" format="reference|color"/>
    <attr name="fluentuiPersonaChipTextDisabledColor" format="reference|color"/>

    <!--common fluentui_persona Module attributes-->

    <!--AvatarView-->
    <attr name="fluentui_avatarSize" format="enum">
        <enum name="xsmall" value="0" />
        <enum name="small" value="1" />
        <enum name="medium" value="2" />
        <enum name="large" value="3" />
        <enum name="xlarge" value="4" />
        <enum name="xxlarge" value="5" />
    </attr>
    <attr name="fluentui_avatarStyle" format="enum">
        <enum name="circle" value="0" />
        <enum name="square" value="1" />
    </attr>
    <attr name="fluentui_avatarBorderStyle" format="enum">
        <enum name="no_border" value="0" />
        <enum name="ring" value="1" />
    </attr>

    <!--AvatarGroupView-->
    <attr name="fluentui_avatarGroupStyle" format="enum">
        <enum name="stack" value="0" />
        <enum name="pile" value="1" />
    </attr>
</resources>
```

## File: src/main/res/values/colors.xml
```xml
<?xml version="1.0" encoding="utf-8"?>
<!--
  ~ Copyright (c) Microsoft Corporation. All rights reserved.
  ~ Licensed under the MIT License.
  -->
<resources>
    <!--Avatar-->
    <array name="fluentui_avatar_background_colors">
        <item>#750B1C</item>
        <item>#A4262C</item>
        <item>#D13438</item>
        <item>#CA5010</item>
        <item>#986F0B</item>
        <item>#498205</item>
        <item>#005E50</item>
        <item>#038387</item>
        <item>#0078D4</item>
        <item>#004E8C</item>
        <item>#4F6BED</item>
        <item>#373277</item>
        <item>#881798</item>
        <item>#C239B3</item>
        <item>#E3008C</item>
        <item>#603D30</item>
        <item>#567C73</item>
        <item>#69797E</item>
    </array>
    <color name="fluentui_avatar_ring_background">@color/fluentui_white</color>
    <color name="fluentui_avatar_border_background">@color/fluentui_gray_200</color>
    <color name="fluentui_avatar_overflow_text_color">@color/fluentui_gray_500</color>
    <color name="fluentui_avatar_overflow_background">@color/fluentui_gray_25</color>
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
    <!--Avatar-->
    <dimen name="fluentui_avatar_size_xsmall">20dp</dimen>
    <dimen name="fluentui_avatar_size_small">24dp</dimen>
    <dimen name="fluentui_avatar_size_medium">32dp</dimen>
    <dimen name="fluentui_avatar_size_large">40dp</dimen>
    <dimen name="fluentui_avatar_size_xlarge">52dp</dimen>
    <dimen name="fluentui_avatar_size_xxlarge">64dp</dimen>
    <dimen name="fluentui_avatar_square_corner_radius">@dimen/fluentui_corner_radius_4</dimen>
    <dimen name="fluentui_avatar_border_size">4dp</dimen>
    <dimen name="fluentui_avatar_border_size_xxlarge">8dp</dimen>
    <dimen name="fluentui_avatar_pile_space_xsmall">4dp</dimen>
    <dimen name="fluentui_avatar_pile_space_small">6dp</dimen>
    <dimen name="fluentui_avatar_pile_space_medium">6dp</dimen>
    <dimen name="fluentui_avatar_pile_space_large">8dp</dimen>
    <dimen name="fluentui_avatar_pile_space_xlarge">8dp</dimen>
    <dimen name="fluentui_avatar_pile_space_xxlarge">10dp</dimen>
    <dimen name="fluentui_avatar_stack_space_xsmall">6dp</dimen>
    <dimen name="fluentui_avatar_stack_space_small">8dp</dimen>
    <dimen name="fluentui_avatar_stack_space_medium">8dp</dimen>
    <dimen name="fluentui_avatar_stack_space_large">12dp</dimen>
    <dimen name="fluentui_avatar_stack_space_xlarge">14dp</dimen>
    <dimen name="fluentui_avatar_stack_space_xxlarge">16dp</dimen>
    <!--Persona-->
    <dimen name="fluentui_persona_horizontal_spacing">16dp</dimen>
    <dimen name="fluentui_persona_horizontal_padding">@dimen/fluentui_content_inset</dimen>

    <!--PersonaChip-->
    <dimen name="fluentui_persona_chip_height">32dp</dimen>
    <dimen name="fluentui_persona_chip_padding">6dp</dimen>
    <dimen name="fluentui_persona_chip_spacing">6dp</dimen>
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
    <style name="Theme.FluentUI.Persona.Base" parent="Base.Theme.FluentUI">
    <!--Persona Chip-->
    <!--TODO add hex values to the colors file when they get added to the toolkit-->
    <item name="fluentuiPersonaChipBackgroundNormalColor">@color/fluentui_gray_50</item>
    <item name="fluentuiPersonaChipBackgroundActiveColor">?attr/fluentuiBackgroundPrimaryColor</item>
    <item name="fluentuiPersonaChipBackgroundErrorColor">#FFF3F4</item>
    <item name="fluentuiPersonaChipBackgroundErrorActiveColor">#E8484C</item>
    <item name="fluentuiPersonaChipBackgroundPressedColor">#0D000000</item>
    <item name="fluentuiPersonaChipTextNormalColor">@color/fluentui_gray_900</item>
    <item name="fluentuiPersonaChipForegroundActiveColor">?attr/fluentuiForegroundOnPrimaryColor</item>
    <item name="fluentuiPersonaChipTextErrorColor">#E63237</item>
    <item name="fluentuiPersonaChipTextDisabledColor">@color/fluentui_gray_400</item>
    </style>

    <style name="Theme.FluentUI.Persona" parent="Theme.FluentUI.Persona.Base"/>

</resources>
```
