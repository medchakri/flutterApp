import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

const LatLng SOURCE_LOCATION = LatLng(30.440712, -9.5923412);
const LatLng DEST_LOCATION = LatLng(30.4943604, -9.6078037);

const double CAMERA_ZOOM = 10;
const double CAMERA_TILT = 80;
const double CAMERA_BEARING = 30;

class MapPage extends StatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  Completer<GoogleMapController> _controller = Completer();
  late BitmapDescriptor sourceIcon;
  late BitmapDescriptor destIcon;
  Set<Marker> _markers = Set<Marker>();

  // late Position currentPosition;
  // var geoLocator = Geolocator();
  // void locatePosition() async {
  //   final GoogleMapController controller = await _controller.future;
  //   Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
  //   currentPosition = position;
  //
  //   LatLng latePosition = LatLng(position.latitude,position.longitude);
  //   CameraPosition cameraposition = new CameraPosition(target: latePosition, zoom : 14);
  //   controller.animateCamera(CameraUpdate.newCameraPosition(cameraposition));
  // }

  late LatLng currentLocation;
  late LatLng destLocation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // set up inital locations
    this.setInitialLocation();
    // set up the marker icons
    this.setSourceAndDestinationMarkerIcons();
  }

  void setSourceAndDestinationMarkerIcons() async {
    sourceIcon = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(devicePixelRatio: 2.0), 'assets/images/pin.png');
    destIcon = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(devicePixelRatio: 2.0),
        'assets/images/placeholder.png');
  }

  void setInitialLocation() {
    currentLocation =
        LatLng(SOURCE_LOCATION.latitude, SOURCE_LOCATION.longitude);
    destLocation = LatLng(DEST_LOCATION.latitude, DEST_LOCATION.longitude);
  }

  @override
  Widget build(BuildContext context) {
    print('build called');
    CameraPosition initialCameraPosition = CameraPosition(
        zoom: CAMERA_ZOOM,
        tilt: CAMERA_TILT,
        bearing: CAMERA_BEARING,
        target: SOURCE_LOCATION);

    return // Scaffold(
        // appBar: AppBar(
        //   leading: IconButton(
        //     icon: const Icon(Icons.arrow_back),
        //     color: Colors.black87,
        //     onPressed: () {
        //       Navigator.of(context).pop();
        //     },
        //   ),
        //   title: Text(
        //     "Carte",
        //     style: TextStyle(
        //         fontSize: 14.0, color: Colors.black, fontFamily: 'PoppinsBold'),
        //   ),
        //   backgroundColor: Colors.white,
        // ),
        //body:
        Container(
      height: MediaQuery.of(context).size.height - 250,
      child: GoogleMap(
        myLocationButtonEnabled: true,
        compassEnabled: false,
        tiltGesturesEnabled: false,
        markers: _markers,
        mapType: MapType.normal,
        initialCameraPosition: initialCameraPosition,
        onMapCreated: (GoogleMapController controller) {
          print('onMapCreated called');
          _controller.complete(controller);
          showPinsOnMap();
         // locatePosition();
        },
      ),
      // ),
    );
  }

  void showPinsOnMap() {
    setState(() {
      _markers.add(Marker(
        markerId: MarkerId('sourcePin'),
        position: currentLocation,
        icon: sourceIcon,
      ));
      _markers.add(Marker(
        markerId: MarkerId('destinationPin'),
        position: destLocation,
        icon: destIcon,
      ));
    });
  }
}
