import 'package:extended_text/extended_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../../config/colors.dart';
import '../../../config/emnu_type.dart';

class SearchSpecialText extends SpecialText {
  static const String flag = "#";
  final int start;
  SearchSpecialText(TextStyle textStyle, SpecialTextGestureTapCallback onTap,
      {this.start})
      : super(flag, flag, textStyle, onTap: onTap);

  @override
  InlineSpan finishText() {
    final String text = getContent();
    return SpecialTextSpan(
        text: '#$text#',
        actualText: toString(),
        start: start,
        deleteAll: true,
        style: textStyle?.copyWith(color: GpColors.sourceColor),
        recognizer: TapGestureRecognizer()
          ..onTap = () {
            if (onTap != null) onTap({EmnuType.HOME_RICH_SEARCH: toString()});
          });
  }
}
