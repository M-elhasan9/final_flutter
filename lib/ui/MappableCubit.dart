import 'package:google_maps_flutter/google_maps_flutter.dart';

mixin MappableCubit {
  LatLng? latLng;
  List<Marker> locations = [];

  Set<Marker> getMarkers() {
    return {
      ...locations ,

      if (latLng != null) Marker(position: latLng!, markerId: MarkerId('f'))
    };
  }

  void onMapTap(LatLng value) {
    latLng = value;
    onRefresh();
  }

  onRefresh();
}