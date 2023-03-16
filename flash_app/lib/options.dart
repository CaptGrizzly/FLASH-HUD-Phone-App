import 'package:flutter/material.dart';

import 'home.dart';
import 'options.dart';

bool click = true;
List<Color> colors = [Colors.red, Colors.orange, Colors.yellow, Colors.green, Colors.blue, Colors.indigo, Colors.purple, Colors.pink];
int colorIndex = 0;

class options extends StatefulWidget {
  @override
  _options createState() => _options();
}

class _options extends State<options> {
  double _opacity = 50;
  double _uiSize = 50;
  bool isChecked = false;

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
          title: Text("Options"),
        ),
        backgroundColor: Colors.white,
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
            image: AssetImage("assets/images/night.jfif"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: <Widget>[
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(
                    left: 50,
                    right: 50,
                    top: 10,
                    bottom: 10,
                  ),
                  margin: const EdgeInsets.only(
                    left: 20,
                    right: 10,
                    top: 50,
                    bottom: 20,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    border: Border.all(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text("Color: ",
                      style: TextStyle(fontSize: 15)),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                    top:10,
                    bottom: 30,
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
                    top:10,
                    bottom: 30,
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
                    top:10,
                    bottom: 30,
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
                    top:10,
                    bottom: 30,
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
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                    top:10,
                    bottom: 30,
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
                    top:10,
                    bottom: 30,
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
                    top:10,
                    bottom: 30,
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
                    top: 10,
                    bottom: 30,
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
              children: [
                Container(
                  padding: const EdgeInsets.only(
                    left: 50,
                    right: 50,
                    top: 10,
                    bottom: 10,
                  ),
                  margin: const EdgeInsets.only(
                    left: 20,
                    right: 10,
                    top: 20,
                    bottom: 20,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    border: Border.all(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text("Compass: ",
                      style: TextStyle(fontSize: 15)),
                ),
                Transform.scale(
                    scale: 2,
                    child: SizedBox(
                      width: 100.0,
                      child: Checkbox(
                        checkColor: Colors.white,
                        fillColor: MaterialStateProperty.resolveWith(getColor),
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                    )
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: Column(
                  children: [
                    Slider(
                      min: 0,
                      max: 100,
                      label: "Opacity",
                      value: _opacity,
                      onChanged: (value) {
                        setState(() {
                          _opacity = value;
                        });
                      },
                    ),
                    Slider(
                      min: 0,
                      max: 100,
                      value: _uiSize,
                      onChanged: (value) {
                        setState(() {
                          _uiSize = value;
                        });
                      },
                    ),
                    ElevatedButton(onPressed: () {
                      Navigator.pop(context);
                    },
                      child: Text("Go back"),
                    )
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