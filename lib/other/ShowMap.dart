import 'dart:async';

import 'package:flutter/material.dart';
import 'package:naver_map_plugin/naver_map_plugin.dart';

class ShowMap extends StatefulWidget {
  const ShowMap({Key? key}) : super(key: key);

  @override
  _ShowMapState createState() => _ShowMapState();
}

class _ShowMapState extends State<ShowMap> {

  final scaffoldKey = GlobalKey<ScaffoldState>();
  Completer<NaverMapController> _controller = Completer();

  void onMapCreated(NaverMapController controller) {
    if (_controller.isCompleted) _controller = Completer();
    _controller.complete(controller);
  }

  @override
  Widget build(BuildContext context) {
    return NaverMap(
      onMapCreated: onMapCreated,
      zoomGestureEnable: false,
      rotationGestureEnable: false,
      scrollGestureEnable: false,
      initLocationTrackingMode: LocationTrackingMode.None,
      markers: [Marker(markerId: 'location', position: LatLng(37.5670135, 126.9783740))],

    );
  }
}