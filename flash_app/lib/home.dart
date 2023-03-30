import 'dart:async';
import 'dart:io' show Platform;

import 'package:flutter/material.dart';
import 'package:flutter_reactive_ble/flutter_reactive_ble.dart';
import 'package:location_permissions/location_permissions.dart';

import 'newFlight.dart';
import 'options.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  dynamic size,height,width;
  bool foundDevice = false;
  bool scanStarted = false;
  bool connected = false;
// Bluetooth related variables
  late DiscoveredDevice uniqueDevice;
  final flutterReactiveBle = FlutterReactiveBle();
  late StreamSubscription<DiscoveredDevice> _scanStream;
  late QualifiedCharacteristic _rxCharacteristic;
// These are the UUIDs of your device
  final Uuid serviceUuid = Uuid.parse("75C276C3-8F97-20BC-A143-B354244886D4");
  final Uuid characteristicUuid = Uuid.parse("6ACF4F08-CC9D-D495-6B41-AA7E60C4E8A6");

  void startScan() async {
// Platform permissions handling stuff
    bool permGranted = false;
    setState(() {
      scanStarted = true;
    });
    PermissionStatus permission;
    if (Platform.isAndroid) {
      permission = await LocationPermissions().requestPermissions();
      if (permission == PermissionStatus.granted) permGranted = true;
    } else if (Platform.isIOS) {
      permGranted = true;
    }
// Main scanning logic happens here ⤵️
    if (permGranted) {
      _scanStream = flutterReactiveBle
          .scanForDevices(withServices: [serviceUuid]).listen((device) {
        // Change this string to what you defined in Zephyr
        if (device.name == 'UNIQUE') {
          setState(() {
            uniqueDevice = device;
            foundDevice = true;
          });
        }
      });
    }
  }

  void connectToDevice() {
    _scanStream.cancel();
    // Let's listen to our connection so we can make updates on a state change
    Stream<ConnectionStateUpdate> currentConnectionStream = flutterReactiveBle
        .connectToAdvertisingDevice(
        id: uniqueDevice.id,
        prescanDuration: const Duration(seconds: 1),
        withServices: [serviceUuid, characteristicUuid]);
    currentConnectionStream.listen((event) {
      switch (event.connectionState) {
      // We're connected and good to go!
        case DeviceConnectionState.connected:
          {
            _rxCharacteristic = QualifiedCharacteristic(
                serviceId: serviceUuid,
                characteristicId: characteristicUuid,
                deviceId: event.deviceId);
            setState(() {
              foundDevice = false;
              connected = true;
            });
            break;
          }
      // Can add various state state updates on disconnect
        case DeviceConnectionState.disconnected:
          {
            break;
          }
        default:
      }
    });
  }

  void partyTime() {
    if (connected) {
      flutterReactiveBle
          .writeCharacteristicWithResponse(_rxCharacteristic, value: [
        0xff,
      ]);
    }
  }

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
          padding: EdgeInsets.all(height / 40),
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
      persistentFooterButtons: [
        // We want to enable this button if the scan has NOT started
        // If the scan HAS started, it should be disabled.
        scanStarted
        // True condition
            ? ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.grey, // background
            onPrimary: Colors.white, // foreground
          ),
          onPressed: () {},
          child: const Icon(Icons.search),
        )
        // False condition
            : ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.blue, // background
            onPrimary: Colors.white, // foreground
          ),
          onPressed: startScan,
          child: const Icon(Icons.search),
        ),
        foundDevice
        // True condition
            ? ElevatedButton(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white, primary: Colors.blue, // foreground
          ),
          onPressed: connectToDevice,
          child: const Icon(Icons.bluetooth),
        )
        // False condition
            : ElevatedButton(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white, primary: Colors.grey, // foreground
          ),
          onPressed: () {},
          child: const Icon(Icons.bluetooth),
        ),
        connected
        // True condition
            ? ElevatedButton(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white, primary: Colors.blue, // foreground
          ),
          onPressed: partyTime,
          child: const Icon(Icons.celebration_rounded),
        )
        // False condition
            : ElevatedButton(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white, primary: Colors.grey, // foreground
          ),
          onPressed: () {},
          child: const Icon(Icons.celebration_rounded),
        ),
      ],
    );
  }
}