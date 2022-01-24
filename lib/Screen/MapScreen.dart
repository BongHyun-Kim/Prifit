import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../other/NavBar.dart';
import '../other/UpperBar.dart';
import '../other/BottomBar.dart';
import 'package:flutter_kakao_map/flutter_kakao_map.dart';
import 'package:flutter_kakao_map/kakao_maps_flutter_platform_interface.dart';
import 'package:geolocator/geolocator.dart';

void main() {
  runApp(MapScreen());
}

class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late String positionstate;

  late Position position;

  void _getcurrentPosition() async {
    LocationPermission permission = await Geolocator.requestPermission();

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        setState(() {
          positionstate = "Permission denied";
        });
      } else {
        var position = await Geolocator.getCurrentPosition(
            desiredAccuracy: LocationAccuracy.high);
        setState(() {
          double lat = position.latitude;
          double lng = position.longitude;
          _visibleRegion = MapPoint(lat, lng);
          _kInitialPosition =
          CameraPosition(target: MapPoint(lat, lng), zoom: 5);
        });
      }
    } else {
      var position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      setState(() {
        double lat = position.latitude;
        double lng = position.longitude;
        print(lat);
        print(lng);
       _visibleRegion = MapPoint(lat, lng);
        _kInitialPosition =
        CameraPosition(target: MapPoint(lat, lng), zoom: 5);
      });
    }
  }

  late KakaoMapController mapController;
  MapPoint _visibleRegion = MapPoint(37, 40);
  CameraPosition _kInitialPosition =
      CameraPosition(target: MapPoint(37, 40), zoom: 5);

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
      home: Builder(builder: (context) {
        return Scaffold(
          appBar: UpperBar(),
          drawer: NavBar(),
          body: Stack(children: [
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.82,
                child: KakaoMap(
                    showCurrentLocationMarker: true,
                    onMapCreated: onMapCreated,
                    initialCameraPosition: _kInitialPosition),
              ),
            ),
            Container(
                child: ElevatedButton(
                    onPressed: () {
                      _getcurrentPosition();
                    },
                    child: Icon(Icons.location_on)))
          ]),
          bottomNavigationBar: BottomBar(),
        );
      }),
    );
  }
}
