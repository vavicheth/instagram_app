import 'package:flutter/material.dart';
import 'package:instagram_app/ui/home.dart';

void main() => runApp (InstApp());

class InstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome(),
    );
  }
}
