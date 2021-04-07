import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Название приложения',
      home: MyFirstWidget(),
    );
  }
}

class MyFirstWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Hello'),
      ),
    );
  }
}

/*
class MyFirstWidget extends StatefulWidget {
  @override
  _MyFirstWidgetState createState() => _MyFirstWidgetState();
}

class _MyFirstWidgetState extends State<MyFirstWidget> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    counter++;
    print(counter);
    return Container(
      child: Center(
        child: Text('Hello'),
      ),
    );
  }
}
*/
