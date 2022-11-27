import 'package:flutter/material.dart';
import '../../app.dart';
import '../../models/location.dart';

class Locations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final locations = Location.fetchAll();

    _onLocationTap(BuildContext context, int locationId) {
      Navigator.pushNamed(context, '$LocationDetailRoute/$locationId');
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Locations'),
      ),
      body: ListView(
        children: locations
            .map((e) => GestureDetector(
                  child: Text(e.name),
                  onTap: () => _onLocationTap(context, e.id),
                ))
            .toList(),
      ),
    );
  }
}

// return nothing, can write "void" or write nothing
