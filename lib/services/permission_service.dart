import 'package:location/location.dart';

class PermissionService {
  Location location = Location();

  bool isLocationPerGiven = false;
  bool isLocationSerGiven = false;

  PermissionService() {
    location.changeSettings(accuracy: LocationAccuracy.low);
    location.hasPermission().then((isGiven) {
      if (isGiven == PermissionStatus.granted ||
          isGiven == PermissionStatus.grantedLimited) {
        location.serviceEnabled().then((isEnabled) {
          if (isEnabled) {
            isLocationSerGiven = true;
          } else {
            isLocationSerGiven = false;
          }
        });

        isLocationPerGiven = true;
      } else {
        isLocationPerGiven = false;
      }
    });
  }

  requestAppLocationPermission() {
    location.requestPermission().then((isGiven) {
      if (isGiven == PermissionStatus.granted ||
          isGiven == PermissionStatus.grantedLimited) {
        isLocationPerGiven = true;
      } else {
        isLocationPerGiven = false;
      }
    });
  }

  requestLocationServiceToEnable() {
    location.requestService().then((isGiven) {
      isLocationSerGiven = isGiven;
    });
  }

  Future<bool> checkAppLocationGranted() async {
    PermissionStatus permission = await location.hasPermission();

    return permission == PermissionStatus.granted ||
        permission == PermissionStatus.grantedLimited;
  }
}
