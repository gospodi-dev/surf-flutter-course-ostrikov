import 'package:flutter/material.dart';
import 'package:places/ui/screen/sight_card.dart';
import '../../mocks.dart';

class SightListScreen extends StatefulWidget {
  SightListScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SightListScreen createState() => _SightListScreen();
}

class _SightListScreen extends State<SightListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          title: Text(
            'Список \nинтересных мест',
            textAlign: TextAlign.left,
            maxLines: 2,
            style: TextStyle(
                color: Colors.black54,
                fontSize: 28,
                fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          toolbarHeight: 100,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(right: 16, left: 16),
          child: Column(
            children: [
              SightCard(mocks[0]),
              SightCard(mocks[1]),
              SightCard(mocks[2]),
            ],
          ),
        ),
      ),
    );
  }
}
