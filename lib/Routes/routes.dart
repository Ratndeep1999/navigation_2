import 'package:flutter/material.dart';
import 'package:navigation_2/Routes/string_routes.dart';
import 'package:navigation_2/first_page.dart';
import 'package:navigation_2/fourth_page.dart';
import 'package:navigation_2/second_page.dart';
import 'package:navigation_2/third_page.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // first page
      case RouteName.firstScreen:
        return MaterialPageRoute(builder: (context) => const FirstPage());

      // second page
      case RouteName.secondScreen:
        final args = settings.arguments as Map;
        return MaterialPageRoute(
          builder: (context) => SecondPage(args: args),
        ); // {} i can pass this also

      // third page
      case RouteName.thirdScreen:
        final data = settings.arguments as Map?;
        return MaterialPageRoute(builder: (context) => ThirdPage(data: data));

      // fourth page
      case RouteName.fourthScreen:
        return MaterialPageRoute(builder: (context) => FourthPage());

      // default page
      default:
        return MaterialPageRoute(
          builder: (context) {
            return const Scaffold(body: Center(child: Text('Something Wrong')));
          },
        );
    }
  }
}
