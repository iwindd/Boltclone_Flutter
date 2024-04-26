import 'package:boltclone_stacked/app/app.locator.dart';
import 'package:boltclone_stacked/services/map_service.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  final _mapService = locator<MapService>();
  LatLng _currentPosition = const LatLng(37.42796133580664, -122.085749655962);
  double currentZoom = 19;

  // currentPosition Getter
  LatLng get currentPosition => _currentPosition;

  HomeViewModel() {
    _mapService.getUserLocation().then((data) => _currentPosition =
        LatLng(data.latitude as double, data.longitude as double));
  }
}
