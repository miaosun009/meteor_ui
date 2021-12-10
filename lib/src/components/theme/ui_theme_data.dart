import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:meteor_ui/src/components/color_scheme/color_scheme.dart';
import 'package:meteor_ui/src/components/color_scheme/ui_color_scheme_interface.dart';
import 'ui_theme_data_interface.dart';

@immutable
class UIThemeData extends UIThemeDataInterface {
  @override
  final String fontFamily;
  @override
  final double baseFontSize;

  @override
  final UIColorScheme colors;

  factory UIThemeData({
    String? fontFamily,
    double? baseFontSize,
    UIColorScheme? colors,
  }) {
    fontFamily ??= "";
    baseFontSize ??= 14;
    colors ??= UIColorScheme.dark();
    return UIThemeData.raw(
      fontFamily: fontFamily,
      baseFontSize: baseFontSize,
      colors: colors,
    );
  }

  const UIThemeData.raw({
    required this.fontFamily,
    required this.baseFontSize,
    required this.colors,
  });

  @override
  bool operator ==(Object other) {
    if (other.runtimeType != runtimeType) return false;
    return other is UIThemeData && other.fontFamily == fontFamily && other.baseFontSize == baseFontSize && other.colors == colors;
  }

  @override
  int get hashCode {
    final List<Object?> values = <Object?>[
      fontFamily,
      baseFontSize,
      colors,
    ];
    return hashList(values);
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    final UIThemeData defaultData = UIThemeData();
    properties.add(DiagnosticsProperty<String>('fontFamily', fontFamily, defaultValue: defaultData.fontFamily, level: DiagnosticLevel.debug));
    properties.add(DiagnosticsProperty<double>('baseFontSize', baseFontSize, defaultValue: defaultData.baseFontSize, level: DiagnosticLevel.debug));
    properties.add(DiagnosticsProperty<UIColorScheme>('colors', colors, defaultValue: defaultData.colors, level: DiagnosticLevel.debug));
  }
}
