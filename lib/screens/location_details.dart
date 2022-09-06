import 'package:flutter/material.dart';
import 'package:fundamental_flutter/screens/ImageBanner.dart';
import 'package:fundamental_flutter/screens/TextSection.dart';
import 'package:fundamental_flutter/style.dart';

class LocationDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter Demo", style: AppBarTextStyle),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            //whole section from left to right
            children: [
              ImageBanner("assets/images/ruong-bac-thang.jpg"),
              TextSection("Mù Cang Chải",
                  "Mù Cang Chải is a humble district with a proud secret. The area's striking rice terraces are arguably the most spectacular."),
              TextSection("Y Tý",
                  "Deep in the mountains of the northeast, this small community claims a pocket of picturesque rice terraces and forests."),
              TextSection("Sapa",
                  "The mountain town of Sapa is the perfect base for discovering the wonders of northern Vietnam."),
            ]));
  }
}
