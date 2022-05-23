import 'package:flutter/material.dart';

enum MyColor {
  red,
  green,
  blue,
}

extension MyColorExtension on MyColor {
  String getName() {
    switch (this) {
      case MyColor.red:
        return 'Red';
      case MyColor.green:
        return 'Green';
      case MyColor.blue:
        return 'Blue';
    }
  }

  MaterialColor getMaterialColor() {
    switch (this) {
      case MyColor.red:
        return Colors.red;
      case MyColor.green:
        return Colors.green;
      case MyColor.blue:
        return Colors.blue;
    }
  }
}
