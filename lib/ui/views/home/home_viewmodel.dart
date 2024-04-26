import 'dart:async';

import 'package:boltclone_stacked/app/app.locator.dart';
import 'package:boltclone_stacked/services/map_service.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  // service
  final _mapService = locator<MapService>();

  // variable
  LatLng _currentPosition = const LatLng(0, 0);
  double currentZoom = 18;

  final Completer<GoogleMapController> googleMapCompleterController =
      Completer<GoogleMapController>();
  GoogleMapController? _mapController;

  // getter
  LatLng get currentPosition => _currentPosition;

  HomeViewModel() {
    _mapService.getUserLocation().then((data) {
      _currentPosition = LatLng(data.latitude, data.longitude);
    });
  }

  void onMapCreated(GoogleMapController controller) {
    _mapController = controller;

    googleMapCompleterController.complete(_mapController);
    _mapController?.animateCamera(CameraUpdate.newCameraPosition(
        CameraPosition(target: _currentPosition, zoom: currentZoom)));
  }
}
