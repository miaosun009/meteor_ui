import 'dart:ui';

abstract class MeteorUIOptionInterface {
  Color? get debugHitTestAreaColor;
}

class MeteorUIOption implements MeteorUIOptionInterface {
  @override
  final Color? debugHitTestAreaColor;

  MeteorUIOption({
    this.debugHitTestAreaColor,
  });
}
