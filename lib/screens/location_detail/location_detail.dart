import 'package:flutter/material.dart';
import 'package:fundamental_flutter/screens/location_detail/image_banner.dart';
import 'package:fundamental_flutter/screens/location_detail/text_section.dart';
import 'package:fundamental_flutter/style.dart';

import '../../models/location.dart';

class LocationDetail extends StatelessWidget {
  final int _locationId;

  LocationDetail(this._locationId);

  List<Widget> getTextSections(Location lctn) {
    return lctn.facts.map((e) => TextSection(e.text, e.title)).toList();
  }

  @override
  Widget build(BuildContext context) {
    final location = Location.fetchById(this._locationId);

    return Scaffold(
        appBar: AppBar(
          title: Text(location!.name),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            // whole section from left to right
            children: [
              ImageBanner(location.imagePath),
              ...getTextSections(location),
            ]));
  }
}

/*
Before

final locations = Location.fetchAll();
final location = locations.first; 

or can be written as
final location = locations[0];
*/
