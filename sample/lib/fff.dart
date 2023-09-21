import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class Locationgps extends StatefulWidget {
  const Locationgps({super.key});

  @override
  State<Locationgps> createState() => _LocationgpsState();
}

class _LocationgpsState extends State<Locationgps> {
  var latitued = "loading";
  var longitude = "loading";
  Future<void> location() async {
    Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );
    print(position);
    setState(() {
      latitued = position.latitude.toString();
      longitude = position.longitude.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text(latitued)),
          Center(child: Text(longitude)),
          ElevatedButton(
              onPressed: () {
                location();
              },
              child: Text("ghgh"))
        ],
      ),
    );
  }
}
