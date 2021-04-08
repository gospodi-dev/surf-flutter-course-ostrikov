import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Название приложения',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: MyFirstWidget(),
    );
  }
}
/*
class MyFirstWidget extends StatelessWidget {
  var count = 0;

  @override
  Widget build(BuildContext context) {
    runtypeReturn() {
      return context.runtimeType;
    }

    runtypeReturn(); // always shows 1, since widget re-builds
    return Container();
  }
*/

class MyFirstWidget extends StatefulWidget {
  @override
  _MyFirstWidgetState createState() => _MyFirstWidgetState();
}

class _MyFirstWidgetState extends State<MyFirstWidget> {
  @override
  Widget build(BuildContext context) {
    runtypeReturn() {
      return context.runtimeType;
    }

    runtypeReturn(); // always shows 1, since widget re-builds
    return Container();
  }
}
