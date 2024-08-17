import 'package:flutter/material.dart';

ThemeData themeData = ThemeData(
  primarySwatch: Colors.blue,
  bottomAppBarTheme: _bottomAppBarTheme,
);

BottomAppBarTheme _bottomAppBarTheme = const BottomAppBarTheme(
  color: Colors.black,
  surfaceTintColor: Colors.grey,
);
