import 'package:flutter/material.dart';

import 'home.dart';
import 'options.dart';

import 'package:sensors_plus/sensors_plus.dart';

class newFlight extends StatefulWidget {
  @override
  _newFlight createState() => _newFlight();
}

class _newFlight extends State<newFlight> {
  dynamic x, y, z;
  List<double>? _accelerometerValues;
  List<double>? _userAccelerometerValues;
  List<double>? _gyroscopeValues;
  List<double>? _magnetometerValues;
  @override
  Widget build(BuildContext context) {
    dynamic accelerometer =
    _accelerometerValues?.map((double v) => v.toStringAsFixed(1)).toList();
    dynamic gyroscope =
    _gyroscopeValues?.map((double v) => v.toStringAsFixed(1)).toList();
    dynamic userAccelerometer =
    _userAccelerometerValues?.map((double v) => v.toStringAsFixed(1)).toList();
    dynamic magnetometer =
    _magnetometerValues?.map((double v) => v.toStringAsFixed(1)).toList();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text('Accelerometer: $accelerometer'),
            Text('UserAccelerometer: $userAccelerometer'),
            Text('Gyroscope: $gyroscope'),
            Text('Magnetometer: $magnetometer')
          ],
        ),
      ),
    );
  }
}