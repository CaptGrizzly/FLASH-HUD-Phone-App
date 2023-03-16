import 'package:flutter/material.dart';

import 'newFlight.dart';
import 'options.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/night.jfif"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 100, bottom: 10),
                child:Image.asset(
                  'assets/images/FLASH Logo.png',
                  height: 150,
                  width: 427,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 80, bottom: 0),
                child: SizedBox(
                  width: 200,
                  height: 60,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.lightBlue.shade100,
                    ),
                    onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> newFlight()));},
                    child: const Text('New Flight!', style: TextStyle(fontSize: 20),),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 0, bottom: 0),
                child: SizedBox(
                  width: 200,
                  height: 60,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.lightBlue.shade100,
                    ),
                    onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> options()));},
                    child: const Text('Options', style: TextStyle(fontSize: 20),),
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