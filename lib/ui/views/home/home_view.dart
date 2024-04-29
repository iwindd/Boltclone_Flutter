import 'package:boltclone_stacked/ui/widgets/HomeDrawer.dart';
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
        key: viewModel.scaffoldKey,
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
            MapSearchBottomSheet(
              goBack: viewModel.goBack,
            )
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
        floatingActionButton: SizedBox.fromSize(
          size: const Size.square(60),
          child: Padding(
            padding: const EdgeInsets.only(top: 20, right: 20),
            child: FloatingActionButton(
              onPressed: () {
                viewModel.scaffoldKey.currentState?.openDrawer();
              },
              backgroundColor: Colors.white,
              child: const Icon(Icons.menu),
            ),
          ),
        ),
        drawer: const HomeDrawer(),
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}
