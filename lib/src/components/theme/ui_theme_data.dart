import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:meteor_ui/src/components/typography/ui_text_theme_data.dart';

@immutable
class UIThemeData with Diagnosticable {
  final UITypography typography;

  factory UIThemeData({UITypography? typography}) {
    typography ??= const UITypography(baseFontSize: 14, baseFontColor: Colors.red);
    return UIThemeData.raw(typography: typography);
  }

  const UIThemeData.raw({
    required this.typography,
  });

  @override
  bool operator ==(Object other) {
    if (other.runtimeType != runtimeType) return false;
    return other is UIThemeData && other.typography == typography;
  }

  @override
  int get hashCode {
    final List<Object?> values = <Object?>[
      typography,
    ];
    return hashList(values);
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    final UIThemeData defaultData = UIThemeData();
    properties.add(DiagnosticsProperty<UITypography>('textTheme', typography, defaultValue: defaultData.typography, level: DiagnosticLevel.debug));
  }
}
