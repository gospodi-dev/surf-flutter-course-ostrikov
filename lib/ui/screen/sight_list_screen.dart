import 'package:flutter/material.dart';

class SightListScreen extends StatefulWidget {
  @override
  _SightListScreen createState() => _SightListScreen();
}

class _SightListScreen extends State<SightListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: false,
          backgroundColor: Colors.transparent,
          toolbarHeight: 120,
          elevation: 0,
          title: Container(
            child: Text(
              'Список \nинтересных мест',
              // textAlign: TextAlign.left,
              maxLines: 2,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Color(0xff3b3f59),
              ),
            ),
          )),
      body: Center(
        child: Column(),
      ),
    );
  }
}
