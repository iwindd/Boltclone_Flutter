import 'package:boltclone_stacked/app/app.router.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:boltclone_stacked/app/app.locator.dart';

class MenuItem {
  IconData icon;
  String title;

  MenuItem(this.title, this.icon);
}

class AboutViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  void onClose() {
    _navigationService.navigateToHomeView();
  }
}
