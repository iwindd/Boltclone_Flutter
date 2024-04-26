import 'package:boltclone_stacked/ui/widgets/MapSearchBottomSheet.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return const Scaffold(
      body: SafeArea(child: MapSearchBottomSheet()),
    );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}
