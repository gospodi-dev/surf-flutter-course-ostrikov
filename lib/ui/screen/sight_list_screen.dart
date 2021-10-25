import 'package:flutter/material.dart';
import 'package:places/ui/res/textstyle.dart';
import 'package:places/ui/res/colors.dart';

class SightListScreen extends StatefulWidget {
  @override
  _SightListScreen createState() => _SightListScreen();
}

class _SightListScreen extends State<SightListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        toolbarHeight: 120,
        elevation: 0,
        title: Container(
          child: RichText(
            maxLines: 2,
            text: TextSpan(text: 'C', style: textBoldGreen, children: [
              TextSpan(text: 'писок', style: textBold, children: [
                TextSpan(text: '\nи', style: textBoldYellow, children: [
                  TextSpan(
                    text: 'нтересных мест',
                    style: textBold,
                  ),
                ]),
              ]),
            ]),
          ),
        ),
      ),
      body: Center(
        child: Column(),
      ),
    );
  }
}
