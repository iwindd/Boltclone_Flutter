import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:boltclone_stacked/app/app.locator.dart';
import 'package:boltclone_stacked/app/app.router.dart';

class SearchViewModel extends FormViewModel {
  final _navigationService = locator<NavigationService>();

  void onClose() async {
    await _navigationService.navigateTo(
      Routes.homeView,
      transition: TransitionsBuilders.slideBottom,
    );
  }
}
