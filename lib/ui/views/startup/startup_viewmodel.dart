import 'package:boltclone_stacked/services/permission_service.dart';
import 'package:stacked/stacked.dart';
import 'package:boltclone_stacked/app/app.locator.dart';
import 'package:boltclone_stacked/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';

class StartupViewModel extends BaseViewModel {
  final _permissionService = locator<PermissionService>();
  final _navigationService = locator<NavigationService>();

  // Place anything here that needs to happen before we get into the application
  Future runStartupLogic() async {
    await Future.delayed(const Duration(seconds: 3));
    await _permissionService.requestAppLocationPermission();
    // This is where you can make decisions on where your app should navigate when
    // you have custom startup logic

    bool hasPermission = await _permissionService.hasPermission();

    if (!hasPermission) {
      _permissionService.requestAppLocationPermission();
      _navigationService.replaceWith(Routes.permissionView);
    } else {
      _navigationService.replaceWithHomeView();
    }
  }
}
