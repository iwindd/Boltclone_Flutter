import 'package:boltclone_stacked/ui/widgets/MapSearchBottomSheet.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:stacked/stacked.dart';
import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({super.key});

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return Material(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: Stack(
          children: <Widget>[
            GoogleMap(
              initialCameraPosition: CameraPosition(
                target: viewModel.currentPosition,
                zoom: viewModel.currentZoom,
              ),
              myLocationEnabled: true,
              rotateGesturesEnabled: false,
              tiltGesturesEnabled: false,
              zoomGesturesEnabled: true,
              onMapCreated: viewModel.onMapCreated,
            ),
            Text(viewModel.currentPosition.toString()),
            const MapSearchBottomSheet()
          ],
        ),
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}
