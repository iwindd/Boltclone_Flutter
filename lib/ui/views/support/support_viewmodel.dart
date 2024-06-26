import 'package:boltclone_stacked/app/app.locator.dart';
import 'package:boltclone_stacked/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class MenuItem {
  String title;

  MenuItem(this.title);
}

class SupportViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  void onClose() {
    _navigationService.navigateToHomeView();
  }
}
