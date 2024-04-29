import 'dart:async';

import 'package:boltclone_stacked/app/app.locator.dart';
import 'package:boltclone_stacked/services/map_service.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  // service
  final _mapService = locator<MapService>();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  // variable
  LatLng _currentPosition = const LatLng(0, 0);
  double currentZoom = 18;

  final Completer<GoogleMapController> googleMapCompleterController =
      Completer<GoogleMapController>();
  GoogleMapController? _mapController;

  // getter
  LatLng get currentPosition => _currentPosition;
  GlobalKey<ScaffoldState> get scaffoldKey => _scaffoldKey;

  HomeViewModel() {
    _mapService.getUserLocation().then((data) {
      _currentPosition = LatLng(data.latitude, data.longitude);
    });
  }

  get goback => null;

  void onMapCreated(GoogleMapController controller) {
    _mapController = controller;

    googleMapCompleterController.complete(_mapController);
    _mapController?.animateCamera(CameraUpdate.newCameraPosition(
        CameraPosition(target: _currentPosition, zoom: currentZoom)));
  }

  void goBack() {
    _mapService.getUserLocation().then((data) {
      _currentPosition = LatLng(data.latitude, data.longitude);
      _mapController?.animateCamera(CameraUpdate.newCameraPosition(
          CameraPosition(target: _currentPosition, zoom: currentZoom)));
    });
  }
}
