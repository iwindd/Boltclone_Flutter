import 'package:boltclone_stacked/app/app.locator.dart';
import 'package:boltclone_stacked/app/app.router.dart';
import 'package:boltclone_stacked/services/authentication_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class ProfileViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _authService = locator<AuthenticationService>();

  void onClose() {
    _navigationService.navigateToHomeView();
  }

  // ignore: non_constant_identifier_names
  String GetUserFullName() {

    print(_authService.userData);
    print(_authService.isLoggedIn());
    return "${_authService.userData?.firstname} ${_authService.userData?.lastname}";
  }
}
