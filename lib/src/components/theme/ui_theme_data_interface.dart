import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:meteor_ui/src/components/color_scheme/color_scheme.dart';

@immutable
abstract class UIThemeDataInterface with Diagnosticable {
  String get fontFamily;
  double get baseFontSize;
  UIColorScheme get colors;
  const UIThemeDataInterface();
}