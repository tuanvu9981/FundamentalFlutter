import 'package:flutter/material.dart';
import 'package:fundamental_flutter/screens/location_details.dart';
import 'package:fundamental_flutter/style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo', home: LocationDetail(), theme: ThemeData());
  }
}
