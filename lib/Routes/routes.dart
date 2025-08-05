import 'package:flutter/material.dart';
import 'package:navigation_2/Routes/string_routes.dart';
import 'package:navigation_2/first_page.dart';
import 'package:navigation_2/second_page.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.firstScreen:
        return MaterialPageRoute(builder: (context) => const FirstPage());

      case RouteName.secondScreen:
        return MaterialPageRoute(builder: (context) => const SecondPage());

      default:
        return MaterialPageRoute(
          builder: (context) {
            return const Scaffold(body: Center(child: Text('Something Wrong')));
          },
        );
    }
  }
}
