import 'package:flutter/cupertino.dart';
import 'package:meteor_ui/src/components/theme/theme.dart';
import 'meteor_ui_option.dart';

class MeteorUI extends StatelessWidget {
  final UIThemeData theme;
  final Widget child;
  final MeteorUIOptionInterface? option;

  static T of<T extends MeteorUIOptionInterface>(BuildContext context) {
    final _option = _MeteorUIInheritedWidget.of(context)?.option ?? MeteorUIOption();
    return _option as T;
  }

  const MeteorUI({
    Key? key,
    required this.theme,
    required this.child,
    this.option,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _MeteorUIInheritedWidget(
      option: option ?? MeteorUIOption(),
      child: UITheme(data: theme, child: child),
    );
  }
}

class _MeteorUIInheritedWidget extends InheritedWidget {
  final MeteorUIOptionInterface option;

  const _MeteorUIInheritedWidget({
    Key? key,
    required this.option,
    required Widget child,
  }) : super(key: key, child: child);

  static _MeteorUIInheritedWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<_MeteorUIInheritedWidget>();
  }

  @override
  bool updateShouldNotify(_MeteorUIInheritedWidget oldWidget) {
    return option != oldWidget.option;
  }
}
