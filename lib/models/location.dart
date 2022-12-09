import 'package:fundamental_flutter/models/location_fact.dart';
import 'location_fact.dart';

class Location {
  final int id;
  final String name;
  final String imagePath;
  final List<LocationFact> facts;

  Location(this.id, this.name, this.imagePath, this.facts);

  static Location? fetchById(int locationId) {
    List<Location> locations = Location.fetchAll();
    for (var i = 0; i < locations.length; i++) {
      if (locations[i].id == locationId) {
        return locations[i];
      }
    }
    return null;
  }

  static List<Location> fetchAll() {
    return [
      Location(
          1, 'Vietnam\'s Terraced Field', 'assets/images/ruong-bac-thang.jpg', [
        LocationFact('Summary',
            'Located in the North West of Vietnam, associated with the agricultural tradition of the ethnic groups'),
        LocationFact('How to get here',
            'Starting in HaNoi Station, travelling here by train will take you only 5 hours')
      ]),
      Location(
          2, 'The Ancient Capital - Hue', 'assets/images/kinh-thanh-hue.jpeg', [
        LocationFact('Summary',
            'Hue used to be Vietnam\'s capital from 1803 to 1945, contains and preserves a lot of World Heritage'),
        LocationFact('How to get here',
            'Starting in Hue Airport, travelling by taxi to the city center')
      ]),
      Location(3, 'The Golden Bridge in Ba Na',
          'assets/images/cau-vang-da-nang.jpg', [
        LocationFact('Summary',
            'Located in Ba Na Hills, Da Nang, and considered to be a very tourist attraction'),
        LocationFact('How to get here',
            'Starting in DaNang Airport, travelling here by taxi and slings')
      ]),
      Location(
          4, 'Vietnam\'s Terraced Field', 'assets/images/ruong-bac-thang.jpg', [
        LocationFact('Summary',
            'Located in the North West of Vietnam, associated with the agricultural tradition of the ethnic groups'),
        LocationFact('How to get here',
            'Starting in HaNoi Station, travelling here by train will take you only 5 hours')
      ]),
      Location(
          5, 'The Ancient Capital - Hue', 'assets/images/kinh-thanh-hue.jpeg', [
        LocationFact('Summary',
            'Hue used to be Vietnam\'s capital from 1803 to 1945, contains and preserves a lot of World Heritage'),
        LocationFact('How to get here',
            'Starting in Hue Airport, travelling by taxi to the city center')
      ]),
      Location(6, 'The Golden Bridge in Ba Na',
          'assets/images/cau-vang-da-nang.jpg', [
        LocationFact('Summary',
            'Located in Ba Na Hills, Da Nang, and considered to be a very tourist attraction'),
        LocationFact('How to get here',
            'Starting in DaNang Airport, travelling here by taxi and slings')
      ]),
    ];
  }
}
