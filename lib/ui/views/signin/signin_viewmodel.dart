import 'package:boltclone_stacked/app/app.locator.dart';
import 'package:boltclone_stacked/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SigninViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  void onClose() {}

  void onCountry() {
    _navigationService.replaceWith(Routes.signinCountryView);
  }

  void onNumber() {
    _navigationService.replaceWith(Routes.signinNumberView);
  }
}
