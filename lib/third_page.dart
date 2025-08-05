import 'package:flutter/material.dart';
import 'package:navigation_2/Routes/string_routes.dart';

class ThirdPage extends StatefulWidget {
  final Map? data;  // data receiving

  const ThirdPage({super.key, required this.data});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Third screen'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Text('Name : ${widget.data?['name']}', style: TextStyle(fontSize: 30),),
              Text('Age : ${widget.data?['age']}', style: TextStyle(fontSize: 30),),
              Text('Gender : ${widget.data?['gender']}', style: TextStyle(fontSize: 30),),
              SizedBox(height: 40,),

              Text('Pop to first page', style: TextStyle(fontSize: 15)),
              SizedBox(height: 10),
              SizedBox(
                height: 40,
                width: 200,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.popUntil(
                      context,
                      ModalRoute.withName(RouteName.firstScreen),
                    );
                  },
                  child: Text('<<First Page', style: TextStyle(fontSize: 20)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
