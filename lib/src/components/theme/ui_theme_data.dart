import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:meteor_ui/src/components/typography/ui_text_theme_data.dart';

@immutable
class UIThemeData with Diagnosticable {
  final UITextTheme textTheme;

  factory UIThemeData({UITextTheme? textTheme}) {
    textTheme ??= const UITextTheme(baseSize: 14, baseColor: Colors.red);
    return UIThemeData.raw(textTheme: textTheme);
  }

  const UIThemeData.raw({
    required this.textTheme,
  });

  @override
  bool operator ==(Object other) {
    if (other.runtimeType != runtimeType) return false;
    return other is UIThemeData && other.textTheme == textTheme;
  }

  @override
  int get hashCode {
    final List<Object?> values = <Object?>[
      textTheme,
    ];
    return hashList(values);
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    final UIThemeData defaultData = UIThemeData();
    properties.add(DiagnosticsProperty<UITextTheme>('textTheme', textTheme, defaultValue: defaultData.textTheme, level: DiagnosticLevel.debug));
  }
}
