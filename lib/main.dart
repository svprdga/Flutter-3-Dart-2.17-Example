import 'package:flutter/material.dart';
import 'package:flutter_3_dart_2_17/color.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: MainScreen());
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dart 2.17 example'),
      ),
      body: Column(
        children: const [
          ColorWidget(
            MyColor.red,
            key: Key('Red'),
          ),
          ColorWidget(
            MyColor.green,
            key: Key('Green'),
          ),
          ColorWidget(
            MyColor.blue,
            key: Key('Blue'),
          ),
        ],
      ),
    );
  }
}

class ColorWidget extends StatelessWidget {
  final MyColor color;

  const ColorWidget(this.color, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: color.getMaterialColor(),
        child: Center(
          child: Text(
            color.getName(),
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 24.0,
            ),
          ),
        ),
      ),
    );
  }
}
