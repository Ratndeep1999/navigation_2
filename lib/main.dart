import 'package:flutter/material.dart';
import 'package:navigation_2/Routes/string_routes.dart';
import 'Routes/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(useMaterial3: false),
      initialRoute: RouteName.firstScreen,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
