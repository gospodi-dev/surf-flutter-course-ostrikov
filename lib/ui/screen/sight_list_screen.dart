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
        title: Text(
          'Список интересных мест',
        ),
        actions: [
          IconButton(icon: Icon(Icons.qr_code), onPressed: (null)),
        ],
      ),
      body: Center(
        child: Text("Hello!"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: ('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: ('Maps'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: ('Favorite'),
          ),
        ],
      ),
    );
  }
}
