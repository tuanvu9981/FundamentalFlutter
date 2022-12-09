import 'package:flutter/widgets.dart';

import 'package:flutter/material.dart';
import 'package:fundamental_flutter/style.dart';

class Selection extends StatelessWidget {
  final String text;

  Selection(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.5), color: Colors.grey[200]),
        child: Center(
          heightFactor: 5.0,
          child: Text(text, style: TitleTextStyle),
        ));
  }
}
