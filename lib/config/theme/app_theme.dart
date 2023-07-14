import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.black,
  Colors.red,
  Colors.blue,
  Colors.green,
  Colors.yellow,
  Colors.purple,
  Colors.orange,
  Colors.pink,
  Colors.teal,
  Colors.cyan,
  Colors.brown,
  Colors.grey,
  Colors.indigo,
  Colors.lime,
  Colors.amber,
  Colors.white,
];
class AppTheme {

  final int selectedColor;

  AppTheme({
    this.selectedColor = 0
  }): assert(selectedColor >= 0 && selectedColor < colorList.length, 'selectedColor must be between 0 and ${colorList.length - 1} inclusive');

  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: colorList[selectedColor],
  );

}