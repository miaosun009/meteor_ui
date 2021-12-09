import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class UITextTheme with Diagnosticable {
  final double baseSize;
  final Color baseColor;

  const UITextTheme({
    required this.baseSize,
    required this.baseColor,
  });

  UITextTheme copyWith({
    Color? baseColor,
    double? baseSize,
  }) {
    return UITextTheme(
      baseColor: baseColor ?? this.baseColor,
      baseSize: baseSize ?? this.baseSize,
    );
  }

  @override
  bool operator ==(Object other) {
    if (other.runtimeType != runtimeType) return false;
    return other is UITextTheme && other.baseColor == baseColor && other.baseSize == baseSize;
  }

  @override
  int get hashCode {
    final List<Object?> values = <Object?>[
      baseColor,
      baseSize,
    ];
    return hashList(values);
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
  }
}
