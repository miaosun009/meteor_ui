import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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

  factory UIColorScheme.dark() {
    return const UIColorScheme(
      primary: UIBaseColor(color: Color.fromRGBO(40, 20, 117, 1), hover: Color(0xff0462d6), active: Color(0xff024fb3), disabled: Color(0xff97cdfd)),
      primaryLight: UIBaseColor(color: Color(0xff281475), hover: Color(0xff0462d6), active: Color(0xff024fb3)),
      secondary: UIBaseColor(color: Color(0xff281475), hover: Color(0xff0462d6), active: Color(0xff024fb3), disabled: Color(0xff97cdfd)),
      secondaryLight: UIBaseColor(color: Color(0xff281475), hover: Color(0xff0462d6), active: Color(0xff024fb3)),
      tertiary: UIBaseColor(color: Color(0xff281475), hover: Color(0xff0462d6), active: Color(0xff024fb3), disabled: Color(0xff97cdfd)),
      tertiaryLight: UIBaseColor(color: Color(0xff281475), hover: Color(0xff0462d6), active: Color(0xff024fb3)),
      success: UIBaseColor(color: Color(0xff281475), hover: Color(0xff0462d6), active: Color(0xff024fb3), disabled: Color(0xff97cdfd)),
      successLight: UIBaseColor(color: Color(0xff281475), hover: Color(0xff0462d6), active: Color(0xff024fb3)),
      deanger: UIBaseColor(color: Color(0xff281475), hover: Color(0xff0462d6), active: Color(0xff024fb3), disabled: Color(0xff97cdfd)),
      deangerLight: UIBaseColor(color: Color(0xff281475), hover: Color(0xff0462d6), active: Color(0xff024fb3)),
      warning: UIBaseColor(color: Color(0xff281475), hover: Color(0xff0462d6), active: Color(0xff024fb3), disabled: Color(0xff97cdfd)),
      warningLight: UIBaseColor(color: Color(0xff281475), hover: Color(0xff0462d6), active: Color(0xff024fb3)),
      link: UIBaseColor(color: Color(0xff281475), hover: Color(0xff0462d6), active: Color(0xff024fb3)),
      shadow: UIColor(color: Color(0xff281475)),
      border: UIColor(color: Color(0xff281475)),
      fill: UIBaseColor(color: Color(0xff281475), hover: Color(0xff0462d6), active: Color(0xff024fb3)),
      background: UIBackgroundColor(color: Color(0xff281475), subLower: Color(0xff0462d6), secondary: Color(0xff024fb3), middle: Color(0xff97cdfd), top: Color(0xff97cdfd)),
      text: UITextColor(
        color: Color.fromRGBO(28, 31, 35, 1),
        slightly: Color.fromRGBO(28, 31, 35, .8),
        minor: Color.fromRGBO(28, 31, 35, .6),
        most: Color.fromRGBO(28, 31, 35, .35),
      ),
      disabled: UIDisabledColor(text: Color(0xff281475), fill: Color(0xff0462d6), background: Color(0xff0462d6), border: Color(0xff0462d6)),
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
