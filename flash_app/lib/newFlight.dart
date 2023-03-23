import 'package:flutter/material.dart';

import 'home.dart';
import 'options.dart';

class newFlight extends StatefulWidget {
  @override
  _newFlight createState() => _newFlight();
}

class _newFlight extends State<newFlight> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            child: Column(
              children: [
                Text("https://www.youtube.com/watch?v=dQw4w9WgXcQ",style: TextStyle(fontSize: 30),),
                ElevatedButton(onPressed: () {
                  Navigator.pop(context);
                },
                  child: Text("Go back"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}