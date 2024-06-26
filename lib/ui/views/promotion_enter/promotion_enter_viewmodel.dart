import 'package:boltclone_stacked/app/app.locator.dart';
import 'package:boltclone_stacked/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class PromotionEnterViewModel extends FormViewModel {
  final _navigationService = locator<NavigationService>();

  void onClose() {
    _navigationService.navigateTo(Routes.promotionView);
  }
}
