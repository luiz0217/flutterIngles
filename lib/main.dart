import 'package:flutter/material.dart';
import 'package:ingles/home.dart';

void main() => runApp(
  MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.cyan,
      primaryColor: Color(0xFFFF8088),
      scaffoldBackgroundColor: Color(0xFF5FF523)
    ),
  )
);
