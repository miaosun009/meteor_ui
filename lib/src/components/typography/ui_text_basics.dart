import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:meteor_ui/meteor_ui.dart';

class UITextBasics extends StatelessWidget {
  /// 文本
  final String data;

  /// 字体大小
  final double? fontSize;

  /// 文本加粗方式
  final UIFontWeight? fontWeight;

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

  final int? maxLine;

  final double? minFontSize;
  final TextAlign? textAlign;
  final TextDirection? textDirection;

  const UITextBasics(
    this.data, {
    Key? key,
    this.fontWeight = UIFontWeight.normal,
    this.ellipsis = false,
    this.delete = false,
    this.underline = false,
    this.copyable,
    this.fontSize,
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
    TextStyle style = this.style ?? TextStyle(color: color, fontSize: fontSize, fontWeight: fontWeight);
    if (underline) {
      style = style.copyWith(decorationStyle: TextDecorationStyle.solid, decoration: TextDecoration.underline);
    }
    if (delete) {
      style = style.copyWith(decorationStyle: TextDecorationStyle.solid, decoration: TextDecoration.lineThrough);
    }
    if (ellipsis) {
      style = style.copyWith(overflow: TextOverflow.ellipsis);
    }
    return UIGestureDetector(
      onTap: () async {
        if (copyable == true) {
          await Clipboard.setData(ClipboardData(text: data));
          onCopyable?.call();
        }
      },
      child: AutoSizeText(
        data,
        maxLines: maxLine,
        minFontSize: minFontSize ?? UITheme.of(context).typography.baseFontSize,
        style: style,
        textAlign: textAlign,
        textDirection: textDirection,
      ),
    );
  }
}

class UIFontWeight implements FontWeight {
  const UIFontWeight._(this.index);

  @override
  final int index;
  static const UIFontWeight normal = UIFontWeight._(2);
  static const UIFontWeight medium = UIFontWeight._(4);
  static const UIFontWeight bold = UIFontWeight._(8);
}
