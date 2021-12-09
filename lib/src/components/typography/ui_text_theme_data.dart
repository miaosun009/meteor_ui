import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class UITypography with Diagnosticable {
  final double baseFontSize;
  final Color baseFontColor;

  const UITypography({
    required this.baseFontSize,
    required this.baseFontColor,
  });

  UITypography copyWith({
    Color? baseFontColor,
    double? baseFontSize,
  }) {
    return UITypography(
      baseFontColor: baseFontColor ?? this.baseFontColor,
      baseFontSize: baseFontSize ?? this.baseFontSize,
    );
  }

  @override
  bool operator ==(Object other) {
    if (other.runtimeType != runtimeType) return false;
    return other is UITypography && other.baseFontColor == baseFontColor && other.baseFontSize == baseFontSize;
  }

  @override
  int get hashCode {
    final List<Object?> values = <Object?>[
      baseFontColor,
      baseFontSize,
    ];
    return hashList(values);
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
  }
}
