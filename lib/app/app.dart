import 'package:boltclone_stacked/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:boltclone_stacked/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:boltclone_stacked/ui/views/home/home_view.dart';
import 'package:boltclone_stacked/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:boltclone_stacked/ui/views/permission/permission_view.dart';
import 'package:boltclone_stacked/services/map_service.dart';
import 'package:boltclone_stacked/services/permission_service.dart';
import 'package:boltclone_stacked/ui/views/search/search_view.dart';
import 'package:boltclone_stacked/ui/views/about/about_view.dart';
import 'package:boltclone_stacked/ui/views/promotion/promotion_view.dart';
import 'package:boltclone_stacked/ui/views/payment/payment_view.dart';
import 'package:boltclone_stacked/ui/views/history/history_view.dart';
import 'package:boltclone_stacked/ui/views/workhistory/workhistory_view.dart';
import 'package:boltclone_stacked/ui/views/support/support_view.dart';
import 'package:boltclone_stacked/ui/views/promotion_enter/promotion_enter_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: PermissionView),
    MaterialRoute(page: SearchView),
    MaterialRoute(page: AboutView),
    MaterialRoute(page: PromotionView),
    MaterialRoute(page: PaymentView),
    MaterialRoute(page: HistoryView),
    MaterialRoute(page: WorkhistoryView),
    MaterialRoute(page: SupportView),
    MaterialRoute(page: PromotionEnterView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: MapService),
    LazySingleton(classType: PermissionService),
// @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
