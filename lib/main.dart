import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Mail',
    home: MyHomePage(),
    theme: ThemeData(primarySwatch: Colors.teal),
  ));
}
