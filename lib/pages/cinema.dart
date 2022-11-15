import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Cinema extends StatefulWidget {
  const Cinema({Key? key}) : super(key: key);

  @override
  State<Cinema> createState() => _CinemaState();
}

class _CinemaState extends State<Cinema> {
  static const _positioncamera =
      CameraPosition(target: LatLng(50.326361, 3.517028), zoom: 11.5);

  late GoogleMapController _googleMapController;
  late MapType _currentMapType = MapType.normal;

  static final Marker _votreposition = Marker(
    markerId: const MarkerId('_yourposition'),
    infoWindow: const InfoWindow(title: 'Votre position !'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
    position: const LatLng(50.326361, 3.517028),
  );

  static final Marker _marker1 = Marker(
    markerId: const MarkerId('_marker1'),
    infoWindow: const InfoWindow(title: "Gaumont Valenciennes"),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
    position: const LatLng(50.34165484884704, 3.5148767086287283),
  );

  static final Marker _marker2 = Marker(
    markerId: const MarkerId('_marker2'),
    infoWindow: const InfoWindow(title: "Ociné Maubeuge"),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
    position: const LatLng(50.27262882869565, 3.971136143665995),
  );

  static final Marker _marker3 = Marker(
    markerId: const MarkerId('_marker3'),
    infoWindow: const InfoWindow(title: "Cinéma Cin'Amand"),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
    position: const LatLng(50.43462972528501, 3.440865799982101),
  );

  @override
  void dispose() {
    _googleMapController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text("Votre Ville"),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 32, 124, 244),
          actions: [
            TextButton(
              child: const Text("Hybrid"),
              onPressed: () => {
                setState(() {
                  _currentMapType = (_currentMapType == MapType.normal)
                      ? MapType.hybrid
                      : MapType.normal;
                })
              },
            ),
          ],
        ),
        body: GoogleMap(
          mapType: _currentMapType,
          myLocationButtonEnabled: false,
          zoomControlsEnabled: false,
          initialCameraPosition: _positioncamera,
          onMapCreated: (controller) => _googleMapController = controller,
          markers: {_votreposition, _marker1, _marker2, _marker3},
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white,
          foregroundColor: Colors.blue,
          onPressed: () => _googleMapController
              .animateCamera(CameraUpdate.newCameraPosition(_positioncamera)),
          child: const Icon(Icons.center_focus_strong),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      );
}
