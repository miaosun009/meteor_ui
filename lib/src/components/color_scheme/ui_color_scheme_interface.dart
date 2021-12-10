import 'dart:ui';

import 'package:flutter/foundation.dart';

abstract class UIColorInterface {
  const UIColorInterface();
}

@immutable
abstract class UIColorSchemeInterface<T extends UIColorInterface> with Diagnosticable {
  /// 主色-默认
  T get primary;

  T get primaryLight;

  /// 次要颜色-默认
  T get secondary;

  T get secondaryLight;

  /// 第三颜色-默认
  T get tertiary;

  /// 浅版第三颜色-默认
  T get tertiaryLight;

  /// 成功色-默认
  T get success;

  /// 浅版成功色-默认
  T get successLight;

  /// 危险色-默认
  T get deanger;

  /// 浅版危险色-默认
  T get deangerLight;

  /// 警告色-默认
  T get warning;

  /// 浅版警告色-默认
  T get warningLight;

  /// 阴影色
  T get shadow;

  /// 链接色-默认
  T get link;

  /// 边框色
  T get border;

  /// 填充色-默认
  T get fill;

  /// 背景色-最下层（页面底部）
  T get background;

  /// 文本色-主要
  T get text;

  /// 禁用色-文字
  T get disabled;

  const UIColorSchemeInterface();

  UIColorSchemeInterface copyWith();
}
