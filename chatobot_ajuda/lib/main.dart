//import 'package:chatobot_ajuda/views/home_page.dart';
import 'package:chatobot_ajuda/views/welcome_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.green
    ),
    home: WelcomePage(),
  ));
}