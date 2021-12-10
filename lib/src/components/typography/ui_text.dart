import 'package:flutter/material.dart';
import '../../../meteor_ui.dart';
import 'ui_text_basics.dart';

class UIText extends StatelessWidget {
  /// 文本
  final String data;

  /// 标题级别
  final UITextSize fontSize;

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

  /// 文本样式
  final TextStyle? style;

  /// 最大行数
  final int? maxLine;

  /// 最小字体尺寸
  final double? minFontSize;

  /// 文本居中方式
  final TextAlign? textAlign;

  /// 文本方向
  final TextDirection? textDirection;

  const UIText(
    this.data, {
    Key? key,
    this.fontSize = UITextSize.normal,
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
      color: color,
      fontSize: baseSize - fontSize.size,
      fontWeight: strong ? UIFontWeight.medium : UIFontWeight.normal,
      style: style,
      copyable: copyable,
      onCopyable: onCopyable,
      ellipsis: ellipsis,
      delete: delete,
      underline: underline,
      maxLine: maxLine,
      minFontSize: minFontSize,
      textAlign: textAlign,
      textDirection: textDirection,
    );
  }
}

class UITextSize {
  const UITextSize._(this.size);

  final double size;
  static const UITextSize normal = UITextSize._(0);
  static const UITextSize small = UITextSize._(2);
  static const UITextSize mini = UITextSize._(4);
}
