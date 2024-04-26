import 'package:geolocator/geolocator.dart';

class MapService {
  Future<Position> getUserLocation() async {
    return Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.bestForNavigation);
  }
}
