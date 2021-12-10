import 'package:flutter/material.dart';
import 'package:meteor_ui/meteor_ui.dart';
import 'ui_text_basics.dart';

class UITitle extends StatelessWidget {
  /// 文本
  final String data;

  /// 标题级别
  final UITitleHeading heading;

  /// 是否加粗
  final bool strong;

  /// 文本颜色
  final Color? color;

  /// 自动溢出省略
  final bool ellipsis;

  /// 是否可可拷贝
  final bool? copyable;

  /// 拷贝成功回调
  final VoidCallback? onCopyable;

  /// 添加删除线
  final bool delete;

  /// 添加下划线
  final bool underline;
  final TextStyle? style;

  /// 最大行数
  final int? maxLine;

  /// 最小字体尺寸
  final double? minFontSize;

  /// 文本居中方式
  final TextAlign? textAlign;

  /// 文本方向
  final TextDirection? textDirection;

  const UITitle(
    this.data, {
    Key? key,
    this.heading = UITitleHeading.h1,
    this.ellipsis = false,
    this.delete = false,
    this.underline = false,
    this.strong = false,
    this.copyable,
    this.color,
    this.onCopyable,
    this.style,
    this.maxLine,
    this.minFontSize,
    this.textAlign,
    this.textDirection,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final baseSize = UITheme.of(context).baseFontSize;
    return UITextBasics(
      data,
      fontSize: baseSize + heading.size,
      fontWeight: strong ? UIFontWeight.bold : UIFontWeight.medium,
      style: style,
      maxLine: maxLine,
      minFontSize: minFontSize,
      textAlign: textAlign,
      textDirection: textDirection,
    );
  }
}

class UITitleHeading {
  const UITitleHeading._(this.size);

  final double size;
  static const UITitleHeading h1 = UITitleHeading._(32);
  static const UITitleHeading h2 = UITitleHeading._(24);
  static const UITitleHeading h3 = UITitleHeading._(16);
  static const UITitleHeading h4 = UITitleHeading._(10);
  static const UITitleHeading h5 = UITitleHeading._(6);
  static const UITitleHeading h6 = UITitleHeading._(2);
}
