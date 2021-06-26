import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ShowSimpleMap extends StatefulWidget {
  @override
  _ShowSimpleMapState createState() => _ShowSimpleMapState();
}

class _ShowSimpleMapState extends State<ShowSimpleMap> {
  GoogleMapController mapController;
   static LatLng _center = const LatLng(12.9716, 77.5946);
   static LatLng _anotherloc = const LatLng(12.9352, 77.6245);

  void _onMapCreated(GoogleMapController controller){
    mapController=controller;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Maps"),
      ),
      body: GoogleMap(
        markers: {blrMarker,koramangalaMarker},
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(target: _center,zoom: 11.0)),

    );
  }



  Marker blrMarker = Marker(markerId: MarkerId("Bengaluru"),
  position: _center,
  infoWindow: InfoWindow(title: "Bengaluru",snippet: "City"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueMagenta));

  Marker koramangalaMarker = Marker(markerId: MarkerId("Koramangala"),
      position: _anotherloc,
      infoWindow: InfoWindow(title: "Koramangala",snippet: "Bangalore Urban"),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueMagenta));

}
