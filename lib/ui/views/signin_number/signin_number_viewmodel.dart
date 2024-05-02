import 'package:boltclone_stacked/app/app.locator.dart';
import 'package:boltclone_stacked/app/app.router.dart';
import 'package:boltclone_stacked/services/authentication_service.dart';
import 'package:boltclone_stacked/ui/views/signin_number/signin_number_view.form.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SigninNumberViewModel extends FormViewModel {
  final _navigationService = locator<NavigationService>();
  final _authService = locator<AuthenticationService>();

  void onClose() {
    _navigationService.replaceWith(Routes.signinView);
  }

  void onCountry() {
    _navigationService.replaceWith(Routes.signinCountryView);
  }

  void onSubmit(){
    _authService.signIn(numberValue.toString());

    if (_authService.isLoggedIn()){
      _navigationService.replaceWith(Routes.startupView);
    }
  }
}
