import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:flutter_kakao_map/flutter_kakao_map.dart';
import 'package:flutter_kakao_map/kakao_maps_flutter_platform_interface.dart';

void main(){
  runApp(trymap());
}

class trymap extends StatefulWidget {
  const trymap({Key? key}) : super(key: key);

  @override
  _trymapState createState() => _trymapState();
}

getPermission() async{
  var status = await Permission.location.status;
  if(status.isGranted){
    print('허락됨');
  }else if(status.isDenied){
    print('거절됨');
    Permission.location.request();
  }else{
    Permission.location.request();
  }
}

_getCurrentPosition() async {
  Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
}

class _trymapState extends State<trymap> {

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
                      _getCurrentPosition();
                    },
                    child: Icon(Icons.location_on)))
          ]),
        );
      }),
    );
  }
}
