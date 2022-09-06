import 'package:flutter/material.dart';
import 'package:fundamental_flutter/screens/ImageBanner.dart';
import 'package:fundamental_flutter/screens/TextSection.dart';

class LocationDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Hello"),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            //whole section from left to right
            children: [
              ImageBanner("assets/images/ruong-bac-thang.jpg"),
              TextSection(Colors.red),
              TextSection(Colors.blue),
              TextSection(Colors.green),
            ]));
  }
}
