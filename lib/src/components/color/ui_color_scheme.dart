import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meteor_ui/src/components/color/ui_color_palette_scheme.dart';

import 'ui_color_scheme_interface.dart';

@immutable
class UIColorScheme extends UIColorSchemeInterface {
  /// 主色
  @override
  final UIBaseColor primary;

  /// 浅主色
  @override
  final UIBaseColor primaryLight;

  /// 次要颜色
  @override
  final UIBaseColor secondary;

  /// 浅版次要颜色
  @override
  final UIBaseColor secondaryLight;

  /// 第三颜色
  @override
  final UIBaseColor tertiary;

  /// 浅版第三颜色
  @override
  final UIBaseColor tertiaryLight;

  /// 成功色
  @override
  final UIBaseColor success;

  /// 浅版成功色
  @override
  final UIBaseColor successLight;

  /// 危险色
  @override
  final UIBaseColor deanger;

  /// 浅版危险色
  @override
  final UIBaseColor deangerLight;

  /// 警告色
  @override
  final UIBaseColor warning;

  /// 浅版警告色
  @override
  final UIBaseColor warningLight;

  /// 阴影色
  @override
  final UIColor shadow;

  /// 链接色
  @override
  final UIBaseColor link;

  /// 边框色
  @override
  final UIColor border;

  /// 填充色
  @override
  final UIBaseColor fill;

  /// 背景色
  @override
  final UIBackgroundColor background;

  /// 文本色
  @override
  final UITextColor text;

  /// 禁用色
  @override
  final UIDisabledColor disabled;

  const UIColorScheme({
    required this.primary,
    required this.primaryLight,
    required this.secondary,
    required this.secondaryLight,
    required this.tertiary,
    required this.tertiaryLight,
    required this.success,
    required this.successLight,
    required this.deanger,
    required this.deangerLight,
    required this.warning,
    required this.warningLight,
    required this.shadow,
    required this.link,
    required this.border,
    required this.fill,
    required this.background,
    required this.text,
    required this.disabled,
  });

  factory UIColorScheme.light() {
    return UIColorScheme(
      primary: UIBaseColor(
        color: UIColorPaletteScheme.violet.shade9,
        hover: UIColorPaletteScheme.blue.shade6,
        active: UIColorPaletteScheme.blue.shade7,
        disabled: UIColorPaletteScheme.blue.shade2,
      ),
      primaryLight: UIBaseColor(
        color: UIColorPaletteScheme.blue.shade0,
        hover: UIColorPaletteScheme.blue.shade1,
        active: UIColorPaletteScheme.blue.shade2,
      ),
      secondary: UIBaseColor(
        color: UIColorPaletteScheme.violet.shade9,
        hover: UIColorPaletteScheme.blue.shade6,
        active: UIColorPaletteScheme.blue.shade7,
        disabled: UIColorPaletteScheme.blue.shade2,
      ),
      secondaryLight: UIBaseColor(
        color: UIColorPaletteScheme.blue.shade0,
        hover: UIColorPaletteScheme.blue.shade1,
        active: UIColorPaletteScheme.blue.shade2,
      ),
      tertiary: UIBaseColor(
        color: UIColorPaletteScheme.grey.shade5,
        hover: UIColorPaletteScheme.grey.shade6,
        active: UIColorPaletteScheme.grey.shade7,
      ),
      tertiaryLight: UIBaseColor(
        color: UIColorPaletteScheme.grey.shade0,
        hover: UIColorPaletteScheme.grey.shade1,
        active: UIColorPaletteScheme.grey.shade2,
      ),
      success: UIBaseColor(
        color: UIColorPaletteScheme.green.shade5,
        hover: UIColorPaletteScheme.green.shade6,
        active: UIColorPaletteScheme.green.shade7,
        disabled: UIColorPaletteScheme.green.shade2,
      ),
      successLight: UIBaseColor(
        color: UIColorPaletteScheme.grey.shade0,
        hover: UIColorPaletteScheme.grey.shade1,
        active: UIColorPaletteScheme.grey.shade2,
      ),
      deanger: UIBaseColor(
        color: UIColorPaletteScheme.red.shade5,
        hover: UIColorPaletteScheme.red.shade6,
        active: UIColorPaletteScheme.red.shade7,
        disabled: UIColorPaletteScheme.red.shade2,
      ),
      deangerLight: UIBaseColor(
        color: UIColorPaletteScheme.red.shade0,
        hover: UIColorPaletteScheme.red.shade1,
        active: UIColorPaletteScheme.red.shade2,
      ),
      warning: UIBaseColor(
        color: UIColorPaletteScheme.orange.shade5,
        hover: UIColorPaletteScheme.orange.shade6,
        active: UIColorPaletteScheme.orange.shade7,
        disabled: UIColorPaletteScheme.orange.shade2,
      ),
      warningLight: UIBaseColor(
        color: UIColorPaletteScheme.orange.shade0,
        hover: UIColorPaletteScheme.orange.shade1,
        active: UIColorPaletteScheme.orange.shade2,
      ),
      link: UIBaseColor(
        color: UIColorPaletteScheme.blue.shade5,
        hover: UIColorPaletteScheme.blue.shade6,
        active: UIColorPaletteScheme.blue.shade7,
      ),
      shadow: UIColor(color: UIColorPaletteScheme.grey.shade0),
      border: UIColor(color: UIColorPaletteScheme.grey.shade2),
      fill: UIBaseColor(
        color: UIColorPaletteScheme.grey.shade0,
        hover: UIColorPaletteScheme.grey.shade1,
        active: UIColorPaletteScheme.grey.shade2,
      ),
      background: const UIBackgroundColor(
        color: Colors.white,
        subLower: Colors.white,
        secondary: Colors.white,
        middle: Colors.white,
        top: Colors.white,
      ),
      text: UITextColor(
        color: UIColorPaletteScheme.grey.shade9,
        slightly: UIColorPaletteScheme.grey.shade9.withOpacity(.8),
        minor: UIColorPaletteScheme.grey.shade9.withOpacity(.6),
        most: UIColorPaletteScheme.grey.shade9.withOpacity(.35),
      ),
      disabled: UIDisabledColor(
        text: UIColorPaletteScheme.grey.shade9.withOpacity(.35),
        fill: UIColorPaletteScheme.grey.shade1,
        background: UIColorPaletteScheme.grey.shade1,
        border: UIColorPaletteScheme.grey.shade9.withOpacity(0.04),
      ),
    );
  }

  @override
  UIColorScheme copyWith({
    UIBaseColor? primary,
    UIBaseColor? primaryLight,
    UIBaseColor? secondary,
    UIBaseColor? secondaryLight,
    UIBaseColor? tertiary,
    UIBaseColor? tertiaryLight,
    UIBaseColor? success,
    UIBaseColor? successLight,
    UIBaseColor? deanger,
    UIBaseColor? deangerLight,
    UIBaseColor? warning,
    UIBaseColor? warningLight,
    UIBaseColor? link,
    UIColor? shadow,
    UIColor? border,
    UIBaseColor? fill,
    UIBackgroundColor? background,
    UITextColor? text,
    UIDisabledColor? disabled,
  }) {
    return UIColorScheme(
      primary: primary ?? this.primary,
      primaryLight: primaryLight ?? this.primaryLight,
      secondary: secondary ?? this.secondary,
      secondaryLight: secondaryLight ?? this.secondaryLight,
      tertiary: tertiary ?? this.tertiary,
      tertiaryLight: tertiaryLight ?? this.tertiaryLight,
      success: success ?? this.success,
      successLight: successLight ?? this.successLight,
      deanger: deanger ?? this.deanger,
      deangerLight: deangerLight ?? this.deangerLight,
      warning: warning ?? this.warning,
      warningLight: warningLight ?? this.warningLight,
      link: link ?? this.link,
      shadow: shadow ?? this.shadow,
      border: border ?? this.border,
      fill: fill ?? this.fill,
      background: background ?? this.background,
      text: text ?? this.text,
      disabled: disabled ?? this.disabled,
    );
  }
}

@immutable
class UIColor extends UIColorInterface {
  final Color color;

  const UIColor({required this.color});
}

@immutable
class UIBaseColor extends UIColor {
  final Color hover;
  final Color active;
  final Color disabled;

  const UIBaseColor({required Color color, required this.hover, required this.active, this.disabled = Colors.transparent}) : super(color: color);
}

@immutable
class UITextColor extends UIColor {
  final Color slightly;
  final Color minor;
  final Color most;

  const UITextColor({
    required Color color,
    required this.slightly,
    required this.minor,
    required this.most,
  }) : super(color: color);
}

@immutable
class UIBackgroundColor extends UIColor {
  final Color subLower;
  final Color middle;
  final Color secondary;
  final Color top;

  const UIBackgroundColor({
    required Color color,
    required this.subLower,
    required this.middle,
    required this.secondary,
    required this.top,
  }) : super(color: color);
}

@immutable
class UIDisabledColor extends UIColorInterface {
  final Color text;
  final Color fill;
  final Color background;
  final Color border;

  const UIDisabledColor({
    required this.text,
    required this.fill,
    required this.background,
    required this.border,
  });
}
