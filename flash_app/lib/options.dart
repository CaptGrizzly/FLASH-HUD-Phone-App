import 'package:flutter/material.dart';

import 'home.dart';
import 'options.dart';

bool click = true;
List<Color> colors = [Colors.red, Colors.orange, Colors.yellow, Colors.green, Colors.blue, Colors.indigo, Colors.purple, Colors.pink];
int colorIndex = 0;
bool compassChecked = true;
bool yawChecked = true;
bool pitchChecked = true;
bool angleChecked = true;
bool altChecked = true;
bool velChecked = true;

class options extends StatefulWidget {
  @override
  _options createState() => _options();
}

class _options extends State<options> {
  double _opacity = 50;
  double _uiSize = 50;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.green;
      }
      return Colors.red;
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: colors[colorIndex],
          centerTitle: true,
          title: Text(
            "Options",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
<<<<<<< HEAD
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
            image: AssetImage("assets/images/night.jfif"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
=======
        backgroundColor: Colors.white,
        body: ListView(
>>>>>>> 6b66fdb3fbc3e14e30b954f034cb017c7e33768b
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.only(
                    left: 40,
                    right: 40,
                    top: 5,
                    bottom: 5,
                  ),
                  margin: const EdgeInsets.only(
                    left: 20,
                    right: 10,
                    top: 20,
                    bottom: 20,
                  ),
                  decoration: BoxDecoration(
                    color: colors[colorIndex],
                    border: Border.all(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text("Color: ",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                    top: 0,
                    bottom: 10,
                  ),
                  child: SizedBox(
                    width: 40,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          click = !click;
                          colorIndex = 0;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        side: const BorderSide(
                            width: 1,
                            color: Colors.black
                        ),
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                      child: null,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                    top: 0,
                    bottom: 10,
                  ),
                  child: SizedBox(
                    width: 40,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          click = !click;
                          colorIndex = 1;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        side: const BorderSide(
                            width: 1,
                            color: Colors.black
                        ),
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                      child: null,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                    top: 0,
                    bottom: 10,
                  ),
                  child: SizedBox(
                    width: 40,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          click = !click;
                          colorIndex = 2;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.yellow,
                        side: const BorderSide(
                            width: 1,
                            color: Colors.black
                        ),
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                      child: null,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                    top: 0,
                    bottom: 10,
                  ),
                  child: SizedBox(
                    width: 40,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          click = !click;
                          colorIndex = 3;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        side: const BorderSide(
                            width: 1,
                            color: Colors.black
                        ),
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                      child: null,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                    top: 0,
                    bottom: 10,
                  ),
                  child: SizedBox(
                    width: 40,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          click = !click;
                          colorIndex = 4;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        side: const BorderSide(
                            width: 1,
                            color: Colors.black
                        ),
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                      child: null,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                    top: 0,
                    bottom: 10,
                  ),
                  child: SizedBox(
                    width: 40,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          click = !click;
                          colorIndex = 5;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.indigo,
                        side: const BorderSide(
                            width: 1,
                            color: Colors.black
                        ),
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                      child: null,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                    top: 0,
                    bottom: 10,
                  ),
                  child: SizedBox(
                    width: 40,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          click = !click;
                          colorIndex = 6;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple,
                        side: const BorderSide(
                            width: 1,
                            color: Colors.black
                        ),
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                      child: null,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                    top: 0,
                    bottom: 10,
                  ),
                  child: SizedBox(
                    width: 40,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          click = !click;
                          colorIndex = 7;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.pink,
                        side: const BorderSide(
                            width: 1,
                            color: Colors.black
                        ),
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                      child: null,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.only(
                    left: 37,
                    right: 37,
                    top: 5,
                    bottom: 5,
                  ),
                  margin: const EdgeInsets.only(
                    left: 20,
                    right: 10,
                    top: 10,
                    bottom: 10,
                  ),
                  decoration: BoxDecoration(
                    color: colors[colorIndex],
                    border: Border.all(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text("Compass: ",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                      ),
                  ),
                ),
                Transform.scale(
                    scale: 1.75,
                    child: SizedBox(
                      width: 100.0,
                      child: Checkbox(
                        checkColor: Colors.white,
                        fillColor: MaterialStateProperty.resolveWith(getColor),
                        value: compassChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            compassChecked = value!;
                          });
                        },
                      ),
                    )
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.only(
                    left: 55,
                    right: 55,
                    top: 5,
                    bottom: 5,
                  ),
                  margin: const EdgeInsets.only(
                    left: 20,
                    right: 10,
                    top: 10,
                    bottom: 10,
                  ),
                  decoration: BoxDecoration(
                    color: colors[colorIndex],
                    border: Border.all(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text("Yaw: ",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Transform.scale(
                    scale: 1.75,
                    child: SizedBox(
                      width: 100.0,
                      child: Checkbox(
                        checkColor: Colors.white,
                        fillColor: MaterialStateProperty.resolveWith(getColor),
                        value: yawChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            yawChecked = value!;
                          });
                        },
                      ),
                    )
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.only(
                    left: 50,
                    right: 50,
                    top: 5,
                    bottom: 5,
                  ),
                  margin: const EdgeInsets.only(
                    left: 20,
                    right: 10,
                    top: 10,
                    bottom: 10,
                  ),
                  decoration: BoxDecoration(
                    color: colors[colorIndex],
                    border: Border.all(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text("Pitch: ",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Transform.scale(
                    scale: 1.75,
                    child: SizedBox(
                      width: 100.0,
                      child: Checkbox(
                        checkColor: Colors.white,
                        fillColor: MaterialStateProperty.resolveWith(getColor),
                        value: pitchChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            pitchChecked = value!;
                          });
                        },
                      ),
                    )
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.only(
                    left: 15,
                    right: 15,
                    top: 5,
                    bottom: 5,
                  ),
                  margin: const EdgeInsets.only(
                    left: 20,
                    right: 10,
                    top: 10,
                    bottom: 10,
                  ),
                  decoration: BoxDecoration(
                    color: colors[colorIndex],
                    border: Border.all(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text("Angle of Attack: ",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Transform.scale(
                    scale: 1.75,
                    child: SizedBox(
                      width: 100.0,
                      child: Checkbox(
                        checkColor: Colors.white,
                        fillColor: MaterialStateProperty.resolveWith(getColor),
                        value: angleChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            angleChecked = value!;
                          });
                        },
                      ),
                    )
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.only(
                    left: 40,
                    right: 40,
                    top: 5,
                    bottom: 5,
                  ),
                  margin: const EdgeInsets.only(
                    left: 20,
                    right: 10,
                    top: 10,
                    bottom: 10,
                  ),
                  decoration: BoxDecoration(
                    color: colors[colorIndex],
                    border: Border.all(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text("Altitude: ",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Transform.scale(
                    scale: 1.75,
                    child: SizedBox(
                      width: 100.0,
                      child: Checkbox(
                        checkColor: Colors.white,
                        fillColor: MaterialStateProperty.resolveWith(getColor),
                        value: altChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            altChecked = value!;
                          });
                        },
                      ),
                    )
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.only(
                    left: 40,
                    right: 40,
                    top: 5,
                    bottom: 5,
                  ),
                  margin: const EdgeInsets.only(
                    left: 20,
                    right: 10,
                    top: 10,
                    bottom: 10,
                  ),
                  decoration: BoxDecoration(
                    color: colors[colorIndex],
                    border: Border.all(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text("Velocity: ",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Transform.scale(
                    scale: 1.75,
                    child: SizedBox(
                      width: 100.0,
                      child: Checkbox(
                        checkColor: Colors.white,
                        fillColor: MaterialStateProperty.resolveWith(getColor),
                        value: velChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            velChecked = value!;
                          });
                        },
                      ),
                    )
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                child: Column(
                  children: [
                    ElevatedButton(onPressed: () {
                      Navigator.pop(context);
                    },
                      child: Text(
                          "Go back",
                        style: TextStyle(
                            color: Colors.black,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: colors[colorIndex],
                        side: const BorderSide(
                            width: 1,
                            color: Colors.black
                        ),
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ],
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