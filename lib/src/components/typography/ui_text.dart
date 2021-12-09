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
  final TextStyle? style;
  final int? maxLine;
  final double? minFontSize;

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
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final baseSize = UITheme.of(context).typography.baseFontSize;
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
