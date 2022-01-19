import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_kakao_map/flutter_kakao_map.dart';
import 'package:flutter_kakao_map/kakao_maps_flutter_platform_interface.dart';
import '../other/NavBar.dart';
import '../other/UpperBar.dart';
import '../other/BottomBar.dart';
import 'package:location/location.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late double lat;
  late double lng;
  Location location = new Location();
  late bool _serviceEnabled;
  late PermissionStatus _permissionGranted;

  _locationMe() async{
    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled){
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled){
        return;
      }
    }
    _permissionGranted = await location.hasPermission();
    if(_permissionGranted == PermissionStatus.denied){
      _permissionGranted = await location.requestPermission();
      if(_permissionGranted != PermissionStatus.granted){
        return;
      }
    }
    location.onLocationChanged.listen((res) {
      setState(() {
        lat = res.latitude;
        lng = res.longitude;
      });
    });
  }


  late KakaoMapController mapController;
  MapPoint _visibleRegion = MapPoint(lat, lng);
  CameraPosition _kInitialPosition =
  CameraPosition(target: MapPoint(35.020396, 126.793590), zoom: 5);

  void onMapCreated(KakaoMapController controller) async {
    final MapPoint visibleRegion = await controller.getMapCenterPoint();
    setState(() {
      mapController = controller;
      _visibleRegion = visibleRegion;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
        builder: (context) {
          return Scaffold(
            appBar: UpperBar(),
            drawer: NavBar(),
            body: Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.95,
                height: MediaQuery.of(context).size.height * 0.8,
                child:
                KakaoMap(
                  onMapCreated: onMapCreated,
                  initialCameraPosition: _kInitialPosition,
                ),
              ),
            ),
            bottomNavigationBar: BottomBar(),
          );
        }
      )
    );
  }
}
