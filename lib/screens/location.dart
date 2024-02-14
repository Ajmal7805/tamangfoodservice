import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class Location extends StatefulWidget {
  const Location({super.key});

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    return await Geolocator.getCurrentPosition();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.close,
            color: Colors.black,
            size: 24,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Find restaurants near you ',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Please enter your location or allow access to your location to find restaurants near you.',
              style: TextStyle(
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 34,
            ),
            InkWell(onTap: () {
               _determinePosition();
            },
              child: Container(
                height: 48,
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Color(0xffEEA734)),
                    borderRadius: BorderRadius.circular(8)),
                    child: Row(mainAxisAlignment:MainAxisAlignment.center ,
                      children: [
                        Icon(Icons.near_me,color: Color(0xffEEA734),),
                        SizedBox(
                          width: 10,
                        ),
                        Text('Use current location',style: TextStyle(fontSize: 16,color: Color(0xffEEA734)),)
                      ],
                    ),
              ),
            ),
            SizedBox(
              height: 34,
            ),
            Container(
              height: 48,
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Color(0xff868686)),
                  borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.location_on,color: Color(0xff868686),),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Enter a new address',style: TextStyle(fontSize: 16,color: Color(0xff868686)),)
                    ],
                  ),
            )
          ],
        ),
      ),
    );
  }
}
