import 'package:flutter/material.dart';
import 'package:meuru/infra/constants.dart';
import 'package:meuru/usuario/ui/splashscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: APP_NAME,
      home: Splashscreen(),
    );
  }
}