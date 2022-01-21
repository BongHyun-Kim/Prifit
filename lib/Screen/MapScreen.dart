import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../other/NavBar.dart';
import '../other/UpperBar.dart';
import '../other/BottomBar.dart';
import 'package:flutter_kakao_map/flutter_kakao_map.dart';
import 'package:flutter_kakao_map/kakao_maps_flutter_platform_interface.dart';
import 'package:geolocator/geolocator.dart';

void main(){
  runApp(MapScreen());
}

Future<Position> _determinePosition() async{
  bool serviceEnabled;
  LocationPermission permission;

  serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if(!serviceEnabled){
    return Future.error('Location services are disabled');
  }

  permission = await Geolocator.checkPermission();
  if(permission == LocationPermission.denied){
    permission = await Geolocator.requestPermission();
    if(permission == LocationPermission.denied){
      return Future.error('Location permissions are denied');
    }
  }
  if(permission == LocationPermission.deniedForever){
    return Future.error('Location permissions are permanently denied, we cannot request permissions');
  }
  return await Geolocator.getCurrentPosition();
}


class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late double lat ;
  late double lng;

  @override
  void initState(){
    super.initState();
    bool loading = true;
    getPosition();
  }

  getPosition() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.best);
    try{
      setState((){
        lat = position.latitude;
        lng = position.longitude;
        print(lat);
        print(lng);
      });
    } on PlatformException catch (e){
      print(e);
    }
  }

  late KakaoMapController mapController;
  MapPoint _visibleRegion = MapPoint(37.5087553, 127.0632877);
  CameraPosition _kInitialPosition =
  CameraPosition(target: MapPoint(37.5087553, 127.0632877), zoom: 5);

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
            body: Stack(
              children: [Center(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.82,
                  child: KakaoMap(showCurrentLocationMarker: true,
                      onMapCreated: onMapCreated,
                      initialCameraPosition: _kInitialPosition),
                ),
              ),
              Container(
                child: ElevatedButton(onPressed: (){
                  _determinePosition();
                }, child: Icon(Icons.location_on))
              )]
            ),
            bottomNavigationBar: BottomBar(),
          );
        }
      ),
    );
  }
}