import 'package:flutter/material.dart';

enum MyColor {
  red('red', Colors.red),
  green('green', Colors.green),
  blue('blue', Colors.blue);

  final String name;
  final MaterialColor materialColor;

  const MyColor(this.name, this.materialColor);
}
