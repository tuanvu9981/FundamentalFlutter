import 'dart:ui';

import 'package:flutter/material.dart';

class ImageBanner extends StatelessWidget {
  final String _assetPath;

  ImageBanner(this._assetPath);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(
        height: 200.0, //max expand: 200pixel, it must be double
      ),

      decoration: BoxDecoration(color: Colors.grey),
      
      child: Image.asset(this._assetPath, fit: BoxFit.cover), // as much as can
    );
  }
}
