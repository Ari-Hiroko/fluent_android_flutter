import 'package:flutter/material.dart';

/// Fluent 2 Android / Web 调色板与 Semantic Design Tokens
/// (衍生自 leftActions Fluent UI 2 Design Tokens & Storybook Theme Colors)
class FluentColors {
  FluentColors._();

  // ===========================================================================
  // 1. 基础通信与品牌经典色 (Legacy Communication & Brand Colors)
  // ===========================================================================
  static const Color communicationBlue = Color(0xFF0F6CBD); // primaryColor
  static const Color communicationShade10 = Color(0xFF0E61AA);
  static const Color communicationShade20 = Color(0xFF0C5290);
  static const Color communicationShade30 = Color(0xFF0A4172);
  static const Color communicationTint10 = Color(0xFF277AC2);
  static const Color communicationTint20 = Color(0xFF479EF5);
  static const Color communicationTint30 = Color(0xFF74B4F7);
  static const Color communicationTint40 = Color(0xFFA6D1FA);

  // ===========================================================================
  // 2. 中性灰色阶 (Neutral Gray Colors)
  // ===========================================================================
  static const Color gray900 = Color(0xFF242424); // Title & Primary text
  static const Color gray800 = Color(0xFF2E2E2E);
  static const Color gray700 = Color(0xFF333333);
  static const Color gray600 = Color(0xFF424242);
  static const Color gray500 = Color(0xFF616161); // Subtitle & Secondary text
  static const Color gray400 = Color(0xFF707070); // Secondary Icons
  static const Color gray300 = Color(0xFFA6A6A6); // Checkbox / Radio tint
  static const Color gray200 = Color(0xFFD1D1D1); // Borders & Strokes
  static const Color gray100 = Color(
    0xFFE0E0E0,
  ); // Dividers & Pressed background
  static const Color gray50 = Color(0xFFF5F5F5); // Card / Light background
  static const Color white = Color(0xFFFFFFFF);

  // ===========================================================================
  // 3. 深色模式中性色 (Dark Theme Neutrals)
  // ===========================================================================
  static const Color darkBackground1 = Color(0xFF1F1F1F);
  static const Color darkBackground2 = Color(
    0xFF292929,
  ); // Popup background dark
  static const Color darkBackgroundPressed = Color(0xFF383838);
  static const Color darkForeground1 = Color(0xFFFFFFFF);
  static const Color darkForeground2 = Color(0xFFD6D6D6);
  static const Color darkDivider = Color(0xFF333333);

  // ===========================================================================
  // 4. 语义化组件 (PopupMenu / Toast / Dialog) Colors
  // ===========================================================================
  static const Color popupMenuBackgroundLight = white;
  static const Color popupMenuBackgroundDark = darkBackground2;
  static const Color popupMenuItemPressedLight = Color(0xFFF0F0F0);
  static const Color popupMenuItemPressedDark = darkBackgroundPressed;
  static const Color popupMenuItemTitleColorLight = gray900;
  static const Color popupMenuItemTitleColorDark = darkForeground1;
  static const Color popupMenuItemForegroundSelectedLight = communicationBlue;
  static const Color popupMenuItemForegroundSelectedDark = communicationTint20;
  static const Color popupMenuItemIconTintLight = gray500;
  static const Color popupMenuItemIconTintDark = darkForeground2;
  static const Color popupMenuItemCheckboxTintLight = gray400;
  static const Color popupMenuItemCheckboxTintDark = gray300;

  // ===========================================================================
  // 5. leftActions Fluent 2 Brand Tokens (品牌 Token 组)
  // ===========================================================================
  static const Color colorBrandBackground = Color(0xFF0F6CBD);
  static const Color colorBrandBackground2 = Color(0xFFEBF3FC);
  static const Color colorBrandBackground2Hover = Color(0xFFCFE4FA);
  static const Color colorBrandBackground2Pressed = Color(0xFF96C6FA);
  static const Color colorBrandBackground3Static = Color(0xFF0F548C);
  static const Color colorBrandBackground4Static = Color(0xFF0C3B5E);
  static const Color colorBrandBackgroundHover = Color(0xFF115EA3);
  static const Color colorBrandBackgroundInverted = Color(0xFFFFFFFF);
  static const Color colorBrandBackgroundInvertedHover = Color(0xFFEBF3FC);
  static const Color colorBrandBackgroundInvertedPressed = Color(0xFFB4D6FA);
  static const Color colorBrandBackgroundInvertedSelected = Color(0xFFCFE4FA);
  static const Color colorBrandBackgroundPressed = Color(0xFF0C3B5E);
  static const Color colorBrandBackgroundSelected = Color(0xFF0F548C);
  static const Color colorBrandBackgroundStatic = Color(0xFF0F6CBD);
  static const Color colorBrandForeground1 = Color(0xFF0F6CBD);
  static const Color colorBrandForeground2 = Color(0xFF115EA3);
  static const Color colorBrandForeground2Hover = Color(0xFF0F548C);
  static const Color colorBrandForeground2Pressed = Color(0xFF0A2E4A);
  static const Color colorBrandForegroundInverted = Color(0xFF479EF5);
  static const Color colorBrandForegroundInvertedHover = Color(0xFF62ABF5);
  static const Color colorBrandForegroundInvertedPressed = Color(0xFF479EF5);
  static const Color colorBrandForegroundLink = Color(0xFF115EA3);
  static const Color colorBrandForegroundLinkHover = Color(0xFF0F548C);
  static const Color colorBrandForegroundLinkPressed = Color(0xFF0C3B5E);
  static const Color colorBrandForegroundLinkSelected = Color(0xFF115EA3);
  static const Color colorBrandForegroundOnLight = Color(0xFF0F6CBD);
  static const Color colorBrandForegroundOnLightHover = Color(0xFF115EA3);
  static const Color colorBrandForegroundOnLightPressed = Color(0xFF0E4775);
  static const Color colorBrandForegroundOnLightSelected = Color(0xFF0F548C);
  static const Color colorBrandStroke1 = Color(0xFF0F6CBD);
  static const Color colorBrandStroke2 = Color(0xFFB4D6FA);
  static const Color colorBrandStroke2Contrast = Color(0xFFB4D6FA);
  static const Color colorBrandStroke2Hover = Color(0xFF77B7F7);
  static const Color colorBrandStroke2Pressed = Color(0xFF0F6CBD);
  static const Color colorCompoundBrandBackground = Color(0xFF0F6CBD);
  static const Color colorCompoundBrandBackgroundHover = Color(0xFF115EA3);
  static const Color colorCompoundBrandBackgroundPressed = Color(0xFF0F548C);
  static const Color colorCompoundBrandForeground1 = Color(0xFF0F6CBD);
  static const Color colorCompoundBrandForeground1Hover = Color(0xFF115EA3);
  static const Color colorCompoundBrandForeground1Pressed = Color(0xFF0F548C);
  static const Color colorCompoundBrandStroke = Color(0xFF0F6CBD);
  static const Color colorCompoundBrandStrokeHover = Color(0xFF115EA3);
  static const Color colorCompoundBrandStrokePressed = Color(0xFF0F548C);
  static const Color colorNeutralForeground2BrandHover = Color(0xFF0F6CBD);
  static const Color colorNeutralForeground2BrandPressed = Color(0xFF115EA3);
  static const Color colorNeutralForeground2BrandSelected = Color(0xFF0F6CBD);
  static const Color colorNeutralForeground3BrandHover = Color(0xFF0F6CBD);
  static const Color colorNeutralForeground3BrandPressed = Color(0xFF115EA3);
  static const Color colorNeutralForeground3BrandSelected = Color(0xFF0F6CBD);
  static const Color colorNeutralForegroundOnBrand = Color(0xFFFFFFFF);
  static const Color colorNeutralStrokeOnBrand = Color(0xFFFFFFFF);
  static const Color colorNeutralStrokeOnBrand2 = Color(0xFFFFFFFF);
  static const Color colorNeutralStrokeOnBrand2Hover = Color(0xFFFFFFFF);
  static const Color colorNeutralStrokeOnBrand2Pressed = Color(0xFFFFFFFF);
  static const Color colorNeutralStrokeOnBrand2Selected = Color(0xFFFFFFFF);

  // ===========================================================================
  // 6. leftActions Fluent 2 Neutral Design Tokens (中性语义 Token 组)
  // ===========================================================================
  static const Color colorNeutralBackground1 = Color(0xFFFFFFFF);
  static const Color colorNeutralBackground1Hover = Color(0xFFF5F5F5);
  static const Color colorNeutralBackground1Pressed = Color(0xFFE0E0E0);
  static const Color colorNeutralBackground1Selected = Color(0xFFEBEBEB);
  static const Color colorNeutralBackground2 = Color(0xFFFAFAFA);
  static const Color colorNeutralBackground2Hover = Color(0xFFF0F0F0);
  static const Color colorNeutralBackground2Pressed = Color(0xFFDBDBDB);
  static const Color colorNeutralBackground2Selected = Color(0xFFE6E6E6);
  static const Color colorNeutralBackground3 = Color(0xFFF5F5F5);
  static const Color colorNeutralBackground3Hover = Color(0xFFEBEBEB);
  static const Color colorNeutralBackground3Pressed = Color(0xFFD6D6D6);
  static const Color colorNeutralBackground3Selected = Color(0xFFE0E0E0);
  static const Color colorNeutralBackground4 = Color(0xFFF0F0F0);
  static const Color colorNeutralBackground4Hover = Color(0xFFFAFAFA);
  static const Color colorNeutralBackground4Pressed = Color(0xFFF5F5F5);
  static const Color colorNeutralBackground4Selected = Color(0xFFFFFFFF);
  static const Color colorNeutralBackground5 = Color(0xFFEBEBEB);
  static const Color colorNeutralBackground5Hover = Color(0xFFF5F5F5);
  static const Color colorNeutralBackground5Pressed = Color(0xFFF0F0F0);
  static const Color colorNeutralBackground5Selected = Color(0xFFFAFAFA);
  static const Color colorNeutralBackground6 = Color(0xFFE6E6E6);
  static const Color colorNeutralBackground7 = Color(0xFF000000);
  static const Color colorNeutralBackground7Hover = Color(0xFFEBEBEB);
  static const Color colorNeutralBackground7Pressed = Color(0xFFD6D6D6);
  static const Color colorNeutralBackground7Selected = Color(0xFF000000);
  static const Color colorNeutralBackground8 = Color(0xFFFCFCFC);
  static const Color colorNeutralBackgroundDisabled = Color(0xFFF0F0F0);
  static const Color colorNeutralBackgroundDisabled2 = Color(0xFFFFFFFF);
  static const Color colorNeutralBackgroundInverted = Color(0xFF292929);
  static const Color colorNeutralBackgroundInvertedHover = Color(0xFF3D3D3D);
  static const Color colorNeutralBackgroundInvertedPressed = Color(0xFF1F1F1F);
  static const Color colorNeutralBackgroundInvertedSelected = Color(0xFF383838);
  static const Color colorNeutralBackgroundStatic = Color(0xFF333333);
  static const Color colorNeutralCardBackground = Color(0xFFFAFAFA);
  static const Color colorNeutralCardBackgroundDisabled = Color(0xFFF0F0F0);
  static const Color colorNeutralCardBackgroundHover = Color(0xFFFFFFFF);
  static const Color colorNeutralCardBackgroundPressed = Color(0xFFF5F5F5);
  static const Color colorNeutralCardBackgroundSelected = Color(0xFFEBEBEB);
  static const Color colorNeutralForeground1 = Color(0xFF242424);
  static const Color colorNeutralForeground1Hover = Color(0xFF242424);
  static const Color colorNeutralForeground1Pressed = Color(0xFF242424);
  static const Color colorNeutralForeground1Selected = Color(0xFF242424);
  static const Color colorNeutralForeground1Static = Color(0xFF242424);
  static const Color colorNeutralForeground2 = Color(0xFF424242);
  static const Color colorNeutralForeground2Hover = Color(0xFF242424);
  static const Color colorNeutralForeground2Link = Color(0xFF424242);
  static const Color colorNeutralForeground2LinkHover = Color(0xFF242424);
  static const Color colorNeutralForeground2LinkPressed = Color(0xFF242424);
  static const Color colorNeutralForeground2LinkSelected = Color(0xFF242424);
  static const Color colorNeutralForeground2Pressed = Color(0xFF242424);
  static const Color colorNeutralForeground2Selected = Color(0xFF242424);
  static const Color colorNeutralForeground3 = Color(0xFF616161);
  static const Color colorNeutralForeground3Hover = Color(0xFF424242);
  static const Color colorNeutralForeground3Pressed = Color(0xFF424242);
  static const Color colorNeutralForeground3Selected = Color(0xFF424242);
  static const Color colorNeutralForeground4 = Color(0xFF707070);
  static const Color colorNeutralForeground5 = Color(0xFF616161);
  static const Color colorNeutralForeground5Hover = Color(0xFF242424);
  static const Color colorNeutralForeground5Pressed = Color(0xFF242424);
  static const Color colorNeutralForeground5Selected = Color(0xFF242424);
  static const Color colorNeutralForegroundDisabled = Color(0xFFBDBDBD);
  static const Color colorNeutralForegroundInverted = Color(0xFFFFFFFF);
  static const Color colorNeutralForegroundInverted2 = Color(0xFFFFFFFF);
  static const Color colorNeutralForegroundInvertedHover = Color(0xFFFFFFFF);
  static const Color colorNeutralForegroundInvertedLink = Color(0xFFFFFFFF);
  static const Color colorNeutralForegroundInvertedLinkHover = Color(
    0xFFFFFFFF,
  );
  static const Color colorNeutralForegroundInvertedLinkPressed = Color(
    0xFFFFFFFF,
  );
  static const Color colorNeutralForegroundInvertedLinkSelected = Color(
    0xFFFFFFFF,
  );
  static const Color colorNeutralForegroundInvertedPressed = Color(0xFFFFFFFF);
  static const Color colorNeutralForegroundInvertedSelected = Color(0xFFFFFFFF);
  static const Color colorNeutralForegroundStaticInverted = Color(0xFFFFFFFF);
  static const Color colorNeutralStencil1 = Color(0xFFE6E6E6);
  static const Color colorNeutralStencil2 = Color(0xFFFAFAFA);
  static const Color colorNeutralStroke1 = Color(0xFFD1D1D1);
  static const Color colorNeutralStroke1Hover = Color(0xFFC7C7C7);
  static const Color colorNeutralStroke1Pressed = Color(0xFFB3B3B3);
  static const Color colorNeutralStroke1Selected = Color(0xFFBDBDBD);
  static const Color colorNeutralStroke2 = Color(0xFFE0E0E0);
  static const Color colorNeutralStroke3 = Color(0xFFF0F0F0);
  static const Color colorNeutralStroke4 = Color(0xFFEBEBEB);
  static const Color colorNeutralStroke4Hover = Color(0xFFE0E0E0);
  static const Color colorNeutralStroke4Pressed = Color(0xFFD6D6D6);
  static const Color colorNeutralStroke4Selected = Color(0xFFEBEBEB);
  static const Color colorNeutralStrokeAccessible = Color(0xFF616161);
  static const Color colorNeutralStrokeAccessibleHover = Color(0xFF575757);
  static const Color colorNeutralStrokeAccessiblePressed = Color(0xFF4D4D4D);
  static const Color colorNeutralStrokeAccessibleSelected = Color(0xFF0F6CBD);
  static const Color colorNeutralStrokeDisabled = Color(0xFFE0E0E0);
  static const Color colorNeutralStrokeDisabled2 = Color(0xFFEBEBEB);
  static const Color colorNeutralStrokeSubtle = Color(0xFFE0E0E0);
  static const Color colorSubtleBackgroundHover = Color(0xFFF5F5F5);
  static const Color colorSubtleBackgroundPressed = Color(0xFFE0E0E0);
  static const Color colorSubtleBackgroundSelected = Color(0xFFEBEBEB);

  // ===========================================================================
  // 7. leftActions Fluent 2 Status & Messaging Tokens (状态与通知 Token 组)
  // ===========================================================================
  static const Color colorStatusDangerBackground1 = Color(0xFFFDF3F4);
  static const Color colorStatusDangerBackground2 = Color(0xFFEEACB2);
  static const Color colorStatusDangerBackground3 = Color(0xFFC50F1F);
  static const Color colorStatusDangerBackground3Hover = Color(0xFFB10E1C);
  static const Color colorStatusDangerBackground3Pressed = Color(0xFF960B18);
  static const Color colorStatusDangerBorder1 = Color(0xFFEEACB2);
  static const Color colorStatusDangerBorder2 = Color(0xFFC50F1F);
  static const Color colorStatusDangerBorderActive = Color(0xFFC50F1F);
  static const Color colorStatusDangerForeground1 = Color(0xFFB10E1C);
  static const Color colorStatusDangerForeground2 = Color(0xFF6E0811);
  static const Color colorStatusDangerForeground3 = Color(0xFFC50F1F);
  static const Color colorStatusDangerForegroundInverted = Color(0xFFDC626D);
  static const Color colorStatusSuccessBackground1 = Color(0xFFF1FAF1);
  static const Color colorStatusSuccessBackground2 = Color(0xFF9FD89F);
  static const Color colorStatusSuccessBackground3 = Color(0xFF107C10);
  static const Color colorStatusSuccessBorder1 = Color(0xFF9FD89F);
  static const Color colorStatusSuccessBorder2 = Color(0xFF107C10);
  static const Color colorStatusSuccessBorderActive = Color(0xFF107C10);
  static const Color colorStatusSuccessForeground1 = Color(0xFF0E700E);
  static const Color colorStatusSuccessForeground2 = Color(0xFF094509);
  static const Color colorStatusSuccessForeground3 = Color(0xFF107C10);
  static const Color colorStatusSuccessForegroundInverted = Color(0xFF54B054);
  static const Color colorStatusWarningBackground1 = Color(0xFFFFF9F5);
  static const Color colorStatusWarningBackground2 = Color(0xFFFDCFB4);
  static const Color colorStatusWarningBackground3 = Color(0xFFF7630C);
  static const Color colorStatusWarningBorder1 = Color(0xFFFDCFB4);
  static const Color colorStatusWarningBorder2 = Color(0xFFBC4B09);
  static const Color colorStatusWarningBorderActive = Color(0xFFF7630C);
  static const Color colorStatusWarningForeground1 = Color(0xFFBC4B09);
  static const Color colorStatusWarningForeground2 = Color(0xFF8A3707);
  static const Color colorStatusWarningForeground3 = Color(0xFFBC4B09);
  static const Color colorStatusWarningForegroundInverted = Color(0xFFFAA06B);

  // ===========================================================================
  // 8. leftActions Fluent 2 Color Palette / Shared Colors (扩展全系调色板)
  // ===========================================================================
  static const Color colorPaletteAnchorBackground2 = Color(0xFFBCC3C7);
  static const Color colorPaletteAnchorBorderActive = Color(0xFF394146);
  static const Color colorPaletteAnchorForeground2 = Color(0xFF202427);
  static const Color colorPaletteBeigeBackground2 = Color(0xFFD7D4D4);
  static const Color colorPaletteBeigeBorderActive = Color(0xFF7A7574);
  static const Color colorPaletteBeigeForeground2 = Color(0xFF444241);
  static const Color colorPaletteBerryBackground1 = Color(0xFFFDF5FC);
  static const Color colorPaletteBerryBackground2 = Color(0xFFEDBBE7);
  static const Color colorPaletteBerryBackground3 = Color(0xFFC239B3);
  static const Color colorPaletteBerryBorder1 = Color(0xFFEDBBE7);
  static const Color colorPaletteBerryBorder2 = Color(0xFFC239B3);
  static const Color colorPaletteBerryBorderActive = Color(0xFFC239B3);
  static const Color colorPaletteBerryForeground1 = Color(0xFFAF33A1);
  static const Color colorPaletteBerryForeground2 = Color(0xFF6D2064);
  static const Color colorPaletteBerryForeground3 = Color(0xFFC239B3);
  static const Color colorPaletteBlueBackground2 = Color(0xFFA9D3F2);
  static const Color colorPaletteBlueBorderActive = Color(0xFF0078D4);
  static const Color colorPaletteBlueForeground2 = Color(0xFF004377);
  static const Color colorPaletteBrassBackground2 = Color(0xFFE0CEA2);
  static const Color colorPaletteBrassBorderActive = Color(0xFF986F0B);
  static const Color colorPaletteBrassForeground2 = Color(0xFF553E06);
  static const Color colorPaletteBrownBackground2 = Color(0xFFDDC3B0);
  static const Color colorPaletteBrownBorderActive = Color(0xFF8E562E);
  static const Color colorPaletteBrownForeground2 = Color(0xFF50301A);
  static const Color colorPaletteCornflowerBackground2 = Color(0xFFC8D1FA);
  static const Color colorPaletteCornflowerBorderActive = Color(0xFF4F6BED);
  static const Color colorPaletteCornflowerForeground2 = Color(0xFF2C3C85);
  static const Color colorPaletteCranberryBackground2 = Color(0xFFEEACB2);
  static const Color colorPaletteCranberryBorderActive = Color(0xFFC50F1F);
  static const Color colorPaletteCranberryForeground2 = Color(0xFF6E0811);
  static const Color colorPaletteDarkGreenBackground2 = Color(0xFF9AD29A);
  static const Color colorPaletteDarkGreenBorderActive = Color(0xFF0B6A0B);
  static const Color colorPaletteDarkGreenForeground2 = Color(0xFF063B06);
  static const Color colorPaletteDarkOrangeBackground1 = Color(0xFFFDF6F3);
  static const Color colorPaletteDarkOrangeBackground2 = Color(0xFFF4BFAB);
  static const Color colorPaletteDarkOrangeBackground3 = Color(0xFFDA3B01);
  static const Color colorPaletteDarkOrangeBorder1 = Color(0xFFF4BFAB);
  static const Color colorPaletteDarkOrangeBorder2 = Color(0xFFDA3B01);
  static const Color colorPaletteDarkOrangeBorderActive = Color(0xFFDA3B01);
  static const Color colorPaletteDarkOrangeForeground1 = Color(0xFFC43501);
  static const Color colorPaletteDarkOrangeForeground2 = Color(0xFF7A2101);
  static const Color colorPaletteDarkOrangeForeground3 = Color(0xFFDA3B01);
  static const Color colorPaletteDarkRedBackground2 = Color(0xFFD69CA5);
  static const Color colorPaletteDarkRedBorderActive = Color(0xFF750B1C);
  static const Color colorPaletteDarkRedForeground2 = Color(0xFF420610);
  static const Color colorPaletteForestBackground2 = Color(0xFFBDD99B);
  static const Color colorPaletteForestBorderActive = Color(0xFF498205);
  static const Color colorPaletteForestForeground2 = Color(0xFF294903);
  static const Color colorPaletteGoldBackground2 = Color(0xFFECDFA5);
  static const Color colorPaletteGoldBorderActive = Color(0xFFC19C00);
  static const Color colorPaletteGoldForeground2 = Color(0xFF6C5700);
  static const Color colorPaletteGrapeBackground2 = Color(0xFFD9A7E0);
  static const Color colorPaletteGrapeBorderActive = Color(0xFF881798);
  static const Color colorPaletteGrapeForeground2 = Color(0xFF4C0D55);
  static const Color colorPaletteGreenBackground1 = Color(0xFFF1FAF1);
  static const Color colorPaletteGreenBackground2 = Color(0xFF9FD89F);
  static const Color colorPaletteGreenBackground3 = Color(0xFF107C10);
  static const Color colorPaletteGreenBorder1 = Color(0xFF9FD89F);
  static const Color colorPaletteGreenBorder2 = Color(0xFF107C10);
  static const Color colorPaletteGreenBorderActive = Color(0xFF107C10);
  static const Color colorPaletteGreenForeground1 = Color(0xFF0E700E);
  static const Color colorPaletteGreenForeground2 = Color(0xFF094509);
  static const Color colorPaletteGreenForeground3 = Color(0xFF107C10);
  static const Color colorPaletteGreenForegroundInverted = Color(0xFF359B35);
  static const Color colorPaletteLavenderBackground2 = Color(0xFFD2CCF8);
  static const Color colorPaletteLavenderBorderActive = Color(0xFF7160E8);
  static const Color colorPaletteLavenderForeground2 = Color(0xFF3F3682);
  static const Color colorPaletteLightGreenBackground1 = Color(0xFFF2FBF2);
  static const Color colorPaletteLightGreenBackground2 = Color(0xFFA7E3A5);
  static const Color colorPaletteLightGreenBackground3 = Color(0xFF13A10E);
  static const Color colorPaletteLightGreenBorder1 = Color(0xFFA7E3A5);
  static const Color colorPaletteLightGreenBorder2 = Color(0xFF13A10E);
  static const Color colorPaletteLightGreenBorderActive = Color(0xFF13A10E);
  static const Color colorPaletteLightGreenForeground1 = Color(0xFF11910D);
  static const Color colorPaletteLightGreenForeground2 = Color(0xFF0B5A08);
  static const Color colorPaletteLightGreenForeground3 = Color(0xFF13A10E);
  static const Color colorPaletteLightTealBackground2 = Color(0xFFA6E9ED);
  static const Color colorPaletteLightTealBorderActive = Color(0xFF00B7C3);
  static const Color colorPaletteLightTealForeground2 = Color(0xFF00666D);
  static const Color colorPaletteLilacBackground2 = Color(0xFFE6BFED);
  static const Color colorPaletteLilacBorderActive = Color(0xFFB146C2);
  static const Color colorPaletteLilacForeground2 = Color(0xFF63276D);
  static const Color colorPaletteMagentaBackground2 = Color(0xFFECA5D1);
  static const Color colorPaletteMagentaBorderActive = Color(0xFFBF0077);
  static const Color colorPaletteMagentaForeground2 = Color(0xFF6B0043);
  static const Color colorPaletteMarigoldBackground1 = Color(0xFFFEFBF4);
  static const Color colorPaletteMarigoldBackground2 = Color(0xFFF9E2AE);
  static const Color colorPaletteMarigoldBackground3 = Color(0xFFEAA300);
  static const Color colorPaletteMarigoldBorder1 = Color(0xFFF9E2AE);
  static const Color colorPaletteMarigoldBorder2 = Color(0xFFEAA300);
  static const Color colorPaletteMarigoldBorderActive = Color(0xFFEAA300);
  static const Color colorPaletteMarigoldForeground1 = Color(0xFFD39300);
  static const Color colorPaletteMarigoldForeground2 = Color(0xFF835B00);
  static const Color colorPaletteMarigoldForeground3 = Color(0xFFEAA300);
  static const Color colorPaletteMinkBackground2 = Color(0xFFCECCCB);
  static const Color colorPaletteMinkBorderActive = Color(0xFF5D5A58);
  static const Color colorPaletteMinkForeground2 = Color(0xFF343231);
  static const Color colorPaletteNavyBackground2 = Color(0xFFA3B2E8);
  static const Color colorPaletteNavyBorderActive = Color(0xFF0027B4);
  static const Color colorPaletteNavyForeground2 = Color(0xFF001665);
  static const Color colorPalettePeachBackground2 = Color(0xFFFFDDB3);
  static const Color colorPalettePeachBorderActive = Color(0xFFFF8C00);
  static const Color colorPalettePeachForeground2 = Color(0xFF8F4E00);
  static const Color colorPalettePinkBackground2 = Color(0xFFF7C0E3);
  static const Color colorPalettePinkBorderActive = Color(0xFFE43BA6);
  static const Color colorPalettePinkForeground2 = Color(0xFF80215D);
  static const Color colorPalettePlatinumBackground2 = Color(0xFFCDD6D8);
  static const Color colorPalettePlatinumBorderActive = Color(0xFF69797E);
  static const Color colorPalettePlatinumForeground2 = Color(0xFF3B4447);
  static const Color colorPalettePlumBackground2 = Color(0xFFD696C0);
  static const Color colorPalettePlumBorderActive = Color(0xFF77004D);
  static const Color colorPalettePlumForeground2 = Color(0xFF43002B);
  static const Color colorPalettePumpkinBackground2 = Color(0xFFEFC4AD);
  static const Color colorPalettePumpkinBorderActive = Color(0xFFCA5010);
  static const Color colorPalettePumpkinForeground2 = Color(0xFF712D09);
  static const Color colorPalettePurpleBackground2 = Color(0xFFC6B1DE);
  static const Color colorPalettePurpleBorderActive = Color(0xFF5C2E91);
  static const Color colorPalettePurpleForeground2 = Color(0xFF341A51);
  static const Color colorPaletteRedBackground1 = Color(0xFFFDF6F6);
  static const Color colorPaletteRedBackground2 = Color(0xFFF1BBBC);
  static const Color colorPaletteRedBackground3 = Color(0xFFD13438);
  static const Color colorPaletteRedBorder1 = Color(0xFFF1BBBC);
  static const Color colorPaletteRedBorder2 = Color(0xFFD13438);
  static const Color colorPaletteRedBorderActive = Color(0xFFD13438);
  static const Color colorPaletteRedForeground1 = Color(0xFFBC2F32);
  static const Color colorPaletteRedForeground2 = Color(0xFF751D1F);
  static const Color colorPaletteRedForeground3 = Color(0xFFD13438);
  static const Color colorPaletteRedForegroundInverted = Color(0xFFDC5E62);
  static const Color colorPaletteRoyalBlueBackground2 = Color(0xFF9ABFDC);
  static const Color colorPaletteRoyalBlueBorderActive = Color(0xFF004E8C);
  static const Color colorPaletteRoyalBlueForeground2 = Color(0xFF002C4E);
  static const Color colorPaletteSeafoamBackground2 = Color(0xFFA8F0CD);
  static const Color colorPaletteSeafoamBorderActive = Color(0xFF00CC6A);
  static const Color colorPaletteSeafoamForeground2 = Color(0xFF00723B);
  static const Color colorPaletteSteelBackground2 = Color(0xFF94C8D4);
  static const Color colorPaletteSteelBorderActive = Color(0xFF005B70);
  static const Color colorPaletteSteelForeground2 = Color(0xFF00333F);
  static const Color colorPaletteTealBackground2 = Color(0xFF9BD9DB);
  static const Color colorPaletteTealBorderActive = Color(0xFF038387);
  static const Color colorPaletteTealForeground2 = Color(0xFF02494C);
  static const Color colorPaletteYellowBackground1 = Color(0xFFFFFEF5);
  static const Color colorPaletteYellowBackground2 = Color(0xFFFEF7B2);
  static const Color colorPaletteYellowBackground3 = Color(0xFFFDE300);
  static const Color colorPaletteYellowBorder1 = Color(0xFFFEF7B2);
  static const Color colorPaletteYellowBorder2 = Color(0xFFFDE300);
  static const Color colorPaletteYellowBorderActive = Color(0xFFFDE300);
  static const Color colorPaletteYellowForeground1 = Color(0xFF817400);
  static const Color colorPaletteYellowForeground2 = Color(0xFF817400);
  static const Color colorPaletteYellowForeground3 = Color(0xFFFDE300);
  static const Color colorPaletteYellowForegroundInverted = Color(0xFFFEF7B2);

  // ===========================================================================
  // 9. leftActions Fluent 2 Other Semantic Tokens (辅助语义 Token 组)
  // ===========================================================================
  static const Color colorStrokeFocus1 = Color(0xFFFFFFFF);
  static const Color colorStrokeFocus2 = Color(0xFF000000);
}
