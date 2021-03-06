import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'ui_theme_data.dart';
import 'ui_theme_data_interface.dart';

class UITheme extends StatelessWidget {
  const UITheme({
    Key? key,
    required this.data,
    required this.child,
  }) : super(key: key);

  final UIThemeDataInterface data;
  final Widget child;

  /// 获取主题数据
  static T of<T extends UIThemeDataInterface>(BuildContext context, {bool shadowThemeOnly = false}) {
    final _UIInheritedTheme? inheritedTheme = context.dependOnInheritedWidgetOfExactType<_UIInheritedTheme>();
    if (shadowThemeOnly) {
      if (inheritedTheme == null) return UIThemeData() as T;
      return inheritedTheme.theme.data as T;
    }
    return (inheritedTheme?.theme.data ?? UIThemeData()) as T;
  }

  @override
  Widget build(BuildContext context) => _UIInheritedTheme(theme: this, child: child);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<UIThemeDataInterface>('data', data, showName: false));
  }
}

class _UIInheritedTheme extends InheritedTheme {
  const _UIInheritedTheme({
    Key? key,
    required this.theme,
    required Widget child,
  }) : super(key: key, child: child);

  final UITheme theme;

  @override
  Widget wrap(BuildContext context, Widget child) {
    final _UIInheritedTheme? ancestorTheme = context.findAncestorWidgetOfExactType<_UIInheritedTheme>();
    return identical(this, ancestorTheme) ? child : UITheme(data: theme.data, child: child);
  }

  @override
  bool updateShouldNotify(_UIInheritedTheme old) => theme.data != old.theme.data;
}
