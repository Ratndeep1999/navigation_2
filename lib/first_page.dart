import 'package:flutter/material.dart';
import 'package:navigation_2/Routes/string_routes.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First screen'), centerTitle: true),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('navigate to second screen', style: TextStyle(fontSize: 15)),
              SizedBox(height: 10),
              SizedBox(
                height: 40,
                width: 200,
                child: OutlinedButton(
                  onPressed: () {
                    // it suggest secondScreen directly
                    Navigator.pushNamed(
                      context,
                      RouteName.secondScreen,
                      arguments: {
                        // 'title' : 'Navigation',
                        'name': 'Ratndeep',
                        'age': 26
                      },
                    );
                  },
                  child: Text(
                    'Second screen>>',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
