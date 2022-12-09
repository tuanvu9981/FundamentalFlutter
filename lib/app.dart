import 'package:flutter/material.dart';
import 'package:fundamental_flutter/screens/location_detail/location_detail.dart';
import 'screens/locations/locations.dart';
import 'screens/location_detail/location_detail.dart';
import 'screens/not_found.dart';
import 'package:fundamental_flutter/style.dart';

const LocationsRoute = '/';
const LocationDetailRoute = '/location_detail';

class App extends StatelessWidget {
  // RouteFactory _routes() {
  //   return (RouteSettings settings) {

  //     Widget screen;
  //     switch (settings.name) {
  //       case LocationsRoute:
  //         screen = Locations();
  //         break;

  //       case LocationDetailRoute:
  //         screen = LocationDetail(arguments['id']);
  //         break;

  //       default:
  //         return null;
  //     }
  //     return MaterialPageRoute(builder: (BuildContext context) => screen);
  //   };
  // }

  RouteFactory _routes() {
    return (RouteSettings settings) {
      Widget screen;
      // print(settings.name);

      if (settings.name == LocationsRoute) {
        screen = Locations();
      } else {
        var uri = settings.name?.split('/');
        // print(uri?[2]);

        if (uri?.length == 3 && uri?[1] == "location_detail") {
          screen = LocationDetail(int.parse(uri![2]));
        } else {
          screen = NotFound();
        }
      }

      return MaterialPageRoute(builder: (BuildContext context) => screen);
    };
  }

  ThemeData _theme() {
    return ThemeData(
      appBarTheme: const AppBarTheme(titleTextStyle: AppBarTextStyle),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(onGenerateRoute: _routes(), theme: _theme());
  }
}


// before --> home: Locations()

/* 
AFTER
initialRoute: '/'
routes: {
  '/': (context) => Locations(),
}

--> But this still not compatible with automatically changed ID

textTheme:
            TextTheme(titleLarge: TitleTextStyle, bodyText1: Body1TextStyle)
*/
