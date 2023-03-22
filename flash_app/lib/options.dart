import 'package:flutter/material.dart';

import 'home.dart';
import 'options.dart';

bool click = true;
List<Color> colors = [Colors.red, Colors.orange, Colors.yellow, Colors.green, Colors.blue, Colors.purple, Colors.grey, Colors.brown];
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
  dynamic size,height,width;
  dynamic sh, mh, lh, sw, mw, lw;

  @override
  Widget build(BuildContext context) {

    // getting the size of the window
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    sh = height / 70;
    mh = height / 40;
    lh = height / 10;
    sw = width / 40;
    mw = width / 10;
    lw = width / 3;

    Color getColor(Set<MaterialState> states) {
      Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        if (colorIndex < 3) {
          return colors[colorIndex + 3];
        } else if (colorIndex < 6) {
          return colors[colorIndex - 3];
        } else if (colorIndex == 6) {
          return colors[7];
        } else {
          return colors[6];
        }
      }
      return colors[colorIndex];
    }

    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: colors[colorIndex],
          centerTitle: true,
          title: const Text(
            "Options",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(
                    left: mw * 2,
                    right: mw * 2,
                    top: sh,
                    bottom: sh,
                  ),
                  margin: EdgeInsets.only(
                    left: sw,
                    right: sw,
                    top: sh,
                    bottom: 0,
                  ),
                  decoration: BoxDecoration(
                    color: colors[colorIndex],
                    border: Border.all(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text("Color: ",
                    style: TextStyle(
                      fontSize: sh * 2,
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
                  padding: EdgeInsets.only(
                    left: sw,
                    right: sw,
                    top: sh,
                    bottom: sh,
                  ),
                  child: SizedBox(
                    width: mh * 3,
                    height: mh * 3,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          click = !click;
                          colorIndex = 0;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: colors[0],
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
                  padding: EdgeInsets.only(
                    left: sw,
                    right: sw,
                    top: sh,
                    bottom: sh,
                  ),
                  child: SizedBox(
                    width: mh * 3,
                    height: mh * 3,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          click = !click;
                          colorIndex = 1;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: colors[1],
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
                  padding: EdgeInsets.only(
                    left: sw,
                    right: sw,
                    top: sh,
                    bottom: sh,
                  ),
                  child: SizedBox(
                    width: mh * 3,
                    height: mh * 3,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          click = !click;
                          colorIndex = 2;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: colors[2],
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
                  padding: EdgeInsets.only(
                    left: sw,
                    right: sw,
                    top: sh,
                    bottom: sh,
                  ),
                  child: SizedBox(
                    width: mh * 3,
                    height: mh * 3,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          click = !click;
                          colorIndex = 3;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: colors[3],
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
                  padding: EdgeInsets.only(
                    left: sw,
                    right: sw,
                    top: sh,
                    bottom: sh,
                  ),
                  child: SizedBox(
                    width: mh * 3,
                    height: mh * 3,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          click = !click;
                          colorIndex = 4;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: colors[4],
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
                  padding: EdgeInsets.only(
                    left: sw,
                    right: sw,
                    top: sh,
                    bottom: sh,
                  ),
                  child: SizedBox(
                    width: mh * 3,
                    height: mh * 3,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          click = !click;
                          colorIndex = 5;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: colors[5],
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
                  padding: EdgeInsets.only(
                    left: sw,
                    right: sw,
                    top: sh,
                    bottom: sh,
                  ),
                  child: SizedBox(
                    width: mh * 3,
                    height: mh * 3,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          click = !click;
                          colorIndex = 6;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: colors[6],
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
                  padding: EdgeInsets.only(
                    left: sw,
                    right: sw,
                    top: sh,
                    bottom: sh,
                  ),
                  child: SizedBox(
                    width: mh * 3,
                    height: mh * 3,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          click = !click;
                          colorIndex = 7;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: colors[7],
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
                  padding: EdgeInsets.only(
                    left: mw,
                    right: mw,
                    top: sh / 1.5,
                    bottom: sh / 1.5,
                  ),
                  margin: EdgeInsets.only(
                    left: sw,
                    right: sw,
                    top: sh / 1.5,
                    bottom: sh / 1.5,
                  ),
                  decoration: BoxDecoration(
                    color: colors[colorIndex],
                    border: Border.all(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text("Compass: ",
                      style: TextStyle(
                          fontSize: sh * 1.75,
                          fontWeight: FontWeight.bold,
                      ),
                  ),
                ),
                Transform.scale(
                    scale: sh / 5,
                    child: SizedBox(
                      width: mw,
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
                  padding: EdgeInsets.only(
                    left: mw,
                    right: mw,
                    top: sh / 1.5,
                    bottom: sh / 1.5,
                  ),
                  margin: EdgeInsets.only(
                    left: sw,
                    right: sw,
                    top: sh / 1.5,
                    bottom: sh / 1.5,
                  ),
                  decoration: BoxDecoration(
                    color: colors[colorIndex],
                    border: Border.all(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text("Yaw: ",
                    style: TextStyle(
                          fontSize: sh * 1.75,
                          fontWeight: FontWeight.bold,
                      ),
                  ),
                ),
                Transform.scale(
                    scale: sh / 5,
                    child: SizedBox(
                      width: mw,
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
                  padding: EdgeInsets.only(
                    left: mw,
                    right: mw,
                    top: sh / 1.5,
                    bottom: sh / 1.5,
                  ),
                  margin: EdgeInsets.only(
                    left: sw,
                    right: sw,
                    top: sh / 1.5,
                    bottom: sh / 1.5,
                  ),
                  decoration: BoxDecoration(
                    color: colors[colorIndex],
                    border: Border.all(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text("Pitch: ",
                    style: TextStyle(
                          fontSize: sh * 1.75,
                          fontWeight: FontWeight.bold,
                      ),
                  ),
                ),
                Transform.scale(
                    scale: sh / 5,
                    child: SizedBox(
                      width: mw,
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
                  padding: EdgeInsets.only(
                    left: mw,
                    right: mw,
                    top: sh / 1.5,
                    bottom: sh / 1.5,
                  ),
                  margin: EdgeInsets.only(
                    left: sw,
                    right: sw,
                    top: sh / 1.5,
                    bottom: sh / 1.5,
                  ),
                  decoration: BoxDecoration(
                    color: colors[colorIndex],
                    border: Border.all(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text("Angle of Attack: ",
                    style: TextStyle(
                          fontSize: sh * 1.75,
                          fontWeight: FontWeight.bold,
                      ),
                  ),
                ),
                Transform.scale(
                    scale: sh / 5,
                    child: SizedBox(
                      width: mw,
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
                  padding: EdgeInsets.only(
                    left: mw,
                    right: mw,
                    top: sh / 1.5,
                    bottom: sh / 1.5,
                  ),
                  margin: EdgeInsets.only(
                    left: sw,
                    right: sw,
                    top: sh / 1.5,
                    bottom: sh / 1.5,
                  ),
                  decoration: BoxDecoration(
                    color: colors[colorIndex],
                    border: Border.all(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text("Altitude: ",
                    style: TextStyle(
                          fontSize: sh * 1.75,
                          fontWeight: FontWeight.bold,
                      ),
                  ),
                ),
                Transform.scale(
                    scale: sh / 5,
                    child: SizedBox(
                      width: mw,
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
                  padding: EdgeInsets.only(
                    left: mw,
                    right: mw,
                    top: sh / 1.5,
                    bottom: sh / 1.5,
                  ),
                  margin: EdgeInsets.only(
                    left: sw,
                    right: sw,
                    top: sh / 1.5,
                    bottom: sh / 1.5,
                  ),
                  decoration: BoxDecoration(
                    color: colors[colorIndex],
                    border: Border.all(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text("Velocity: ",
                    style: TextStyle(
                          fontSize: sh * 1.75,
                          fontWeight: FontWeight.bold,
                      ),
                  ),
                ),
                Transform.scale(
                    scale: sh / 5,
                    child: SizedBox(
                      width: mw,
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
              padding: EdgeInsets.all(sh),
              child: Container(
                child: Column(
                  children: [
                    ElevatedButton(onPressed: () {
                      Navigator.pop(context);
                    },
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
                      child: Text(
                          "Go back",
                        style: TextStyle(
                            fontSize: sh * 1.75,
                            color: Colors.black,
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