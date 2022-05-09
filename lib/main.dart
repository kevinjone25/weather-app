import 'pages/home.dart';
import 'pages/loading.dart';
import 'pages/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(initialRoute: '/home', routes: {
    '/': (context) => Loading(),
    '/home': (context) => Home(),
  }));
}
