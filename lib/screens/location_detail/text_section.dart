import 'package:flutter/material.dart';
import 'package:fundamental_flutter/style.dart';

class TextSection extends StatelessWidget {
  // final Color _color;
  final String _title;
  final String _body;
  static const double _hPad = 14.0; // pixel

  TextSection(this._title, this._body);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        // text appears at start of lines

        crossAxisAlignment: CrossAxisAlignment.stretch,
        // stretch(v) căng ra --> Tương đương căn đều Ctrl Jutified

        children: [
          Container(
              // padding với thứ tự: LEFT-TOP-RIGHT-BOTTOM
              padding: const EdgeInsets.fromLTRB(_hPad, 24.0, _hPad, 4.0),
              child: Text(this._title,
                  style: Theme.of(context).textTheme.titleLarge)),
          Container(
              padding: const EdgeInsets.fromLTRB(_hPad, 10.0, _hPad, 4.5),
              child: Text(
                this._body,
                style: Theme.of(context).textTheme.bodyText1,
              )),
        ]);
  }
}
