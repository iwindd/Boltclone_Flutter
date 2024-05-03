import 'package:boltclone_stacked/app/app.dialogs.dart';
import 'package:boltclone_stacked/app/app.locator.dart';
import 'package:boltclone_stacked/app/app.router.dart';
import 'package:boltclone_stacked/services/authentication_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class ProfileViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _authService = locator<AuthenticationService>();
  final _dialogService = locator<DialogService>();

  void onClose() {
    _navigationService.navigateToHomeView();
  }

  String getUserFullname() {
    return "${_authService.userData?.firstname} ${_authService.userData?.lastname}";
  }

  void onLogout() async {
    var response = await _dialogService.showCustomDialog(
      variant: DialogType.logout,
      description: 'แน่ใจไหมว่าต้องการออกจากระบบ',
    );

    bool confirmationResult = response!.confirmed;
    
    if (confirmationResult){
      _authService.logout();
      _navigationService.replaceWith(Routes.startupView);
    }
  }
}
