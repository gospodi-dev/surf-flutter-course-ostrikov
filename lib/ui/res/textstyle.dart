import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'colors.dart';

TextStyle _text = const TextStyle(
  fontStyle: FontStyle.normal,
  fontSize: 32,
  color: textColorPrimary,
);
TextStyle textBold =
        _text.copyWith(fontWeight: FontWeight.w700, color: textColorPrimary),
    textBoldWhite = _text.copyWith(
      fontWeight: FontWeight.w700,
      color: Colors.white,
    ),
    textBoldGreen = textBold.copyWith(color: colorGreen),
    textBoldYellow = textBold.copyWith(color: colorYellow),
    textDescription = _text.copyWith(
        color: textColorDescription,
        fontSize: 14,
        fontWeight: FontWeight.normal),
    textTitle = _text.copyWith(
        color: textColorTitle, fontWeight: FontWeight.w500, fontSize: 16);
