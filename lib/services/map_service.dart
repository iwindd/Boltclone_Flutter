import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapService {
  Future<Position> getUserLocation() async {
    return Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.bestForNavigation);
  }
}
