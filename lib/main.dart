import 'package:flutter/material.dart';
import 'package:proje/login_fancy/fancy.dart';

void main() {
  runApp(MaterialApp(
      title: "merhaba",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      primarySwatch: Colors.lightGreen,
  ),
    home: fancy(),
  ));
}