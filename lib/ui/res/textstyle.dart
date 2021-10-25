import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

TextStyle _text = const TextStyle(
  fontStyle: FontStyle.normal,
  fontSize: 32,
);
TextStyle textBold = _text.copyWith(fontWeight: FontWeight.w700),
    textBoldWhite = _text.copyWith(
      fontWeight: FontWeight.w700,
      color: Colors.white,
    ),
    textBoldGreen = textBold.copyWith(),
    textBoldYellow = textBold.copyWith(),
    textDescription =
        _text.copyWith(fontSize: 14, fontWeight: FontWeight.normal),
    textTitle = _text.copyWith(fontWeight: FontWeight.w500, fontSize: 16);
