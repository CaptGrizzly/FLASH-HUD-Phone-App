import 'package:flutter/material.dart';

import 'newFlight.dart';
import 'options.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  dynamic size,height,width;

  @override
  Widget build(BuildContext context) {

    // getting the size of the window
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/night.jfif"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
<<<<<<< HEAD
          padding: EdgeInsets.all(height / 40),
=======
          padding: const EdgeInsets.all(20),
>>>>>>> 97b9a03b52385210e835b77a5ecffab93f4bb83e
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: width / 40, right: width / 40, top: height / 5, bottom: height / 70),
                child:Image.asset(
                  'assets/images/FLASH Logo.png',
                  height: height / 5,
                  width: width,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: width / 40, right: width / 40, top: height / 10, bottom: 0),
                child: SizedBox(
                  width: width / 2,
                  height: height / 10,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.lightBlue.shade100,
                    ),
                    onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> newFlight()));},
                    child: Text('New Flight!', style: TextStyle(fontSize: height / 35),),
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(left: width / 40, right: width / 40, top: 0, bottom: 0),
                child: SizedBox(
                  width: width / 2,
                  height: height / 10,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.lightBlue.shade100,
                    ),
                    onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> options()));},
                    child: Text('Options', style: TextStyle(fontSize: height / 35),),
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