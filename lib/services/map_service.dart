import 'package:location/location.dart';
class MapService {
  Future<LocationData> getUserLocation() async {
    return Location().getLocation();
  }

}
