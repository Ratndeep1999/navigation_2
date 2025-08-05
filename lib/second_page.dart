import 'package:flutter/material.dart';
import 'package:navigation_2/Routes/string_routes.dart';

class SecondPage extends StatefulWidget {
  final Map args;

  const SecondPage({super.key, required this.args});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  final genderCtrl = TextEditingController();
  String title = ' ';

  // Advance error handling
  @override
  void initState() {
    if (widget.args.containsKey('title')) {
      title = widget.args['title'];
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second screen'),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Name and age
              Text('Title : $title', style: TextStyle(fontSize: 30)),
              // error handling
              Text(widget.args['name'], style: TextStyle(fontSize: 30)),
              Text(
                widget.args['age'].toString(),
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(height: 40),

              Text('navigate to third screen', style: TextStyle(fontSize: 15)),
              SizedBox(height: 10),
              SizedBox(
                height: 40,
                width: 200,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, RouteName.thirdScreen);
                  },
                  child: Text('Third screen>>', style: TextStyle(fontSize: 20)),
                ),
              ),
              SizedBox(height: 40),

              // gender
              SizedBox(
                height: 50,
                width: 250,
                child: TextField(
                  controller: genderCtrl,
                  decoration: InputDecoration(
                    hintText: 'Enter gender',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(50),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 40,
                width: 220,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, RouteName.thirdScreen, arguments: {
                      'name' : widget.args['name'],
                      'age' : widget.args['age'],
                      'gender' : genderCtrl.text
                    });
                  },
                  child: Text('Third screen>> Data', style: TextStyle(fontSize: 20)),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
