import 'package:flutter/material.dart';
import 'package:flutter_3_dart_2_17/color.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: MainScreen());
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dart 2.17 example'),
      ),
      body: Column(
        children: const [
          ColorWidget(
            key: Key('Red'),
            MyColor.red,
          ),
          ColorWidget(
            key: Key('Green'),
            MyColor.green,
          ),
          ColorWidget(
            key: Key('Blue'),
            MyColor.blue,
          ),
        ],
      ),
    );
  }
}

class ColorWidget extends StatelessWidget {
  final MyColor color;

  const ColorWidget(this.color, {super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: color.materialColor,
        child: Center(
          child: Text(
            color.name,
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
