/* import 'package:location/location.dart'; */

import 'package:geolocator/geolocator.dart';

class PermissionService {
  Future<bool> hasPermission() {
    return Geolocator.isLocationServiceEnabled();
  }

  Future<LocationPermission> requestAppLocationPermission() {
    return Geolocator.requestPermission();
  }
}
