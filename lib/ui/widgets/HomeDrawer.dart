import 'package:boltclone_stacked/app/app.locator.dart';
import 'package:boltclone_stacked/app/app.router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class MenuItem {
  IconData icon;
  String title;
  String route;
  String? subtitle;

  MenuItem(this.route, this.title, this.icon, this.subtitle);
}

class HomeDrawer extends StatefulWidget {
  const HomeDrawer({super.key});

  @override
  State<HomeDrawer> createState() => _HomeDrawerState();
}

class _HomeDrawerState extends State<HomeDrawer> {
  final _navigationService = locator<NavigationService>();
  List<MenuItem> menuLists = [
    MenuItem(Routes.paymentView, "การชำระเงิน", Icons.credit_card_outlined, ""),
    MenuItem(Routes.promotionView, "โปรโมชัน", Icons.sell_outlined,
        "กรอกรหัสโปรโมชั่น"),
    MenuItem(
        Routes.historyView, "การโดยสารของฉัน", Icons.schedule_outlined, ""),
    MenuItem(Routes.workhistoryView, "ประวัติการทำงาน", Icons.work_outline, ""),
    MenuItem(Routes.supportView, "การสนับสนุน", Icons.help_outline, ""),
    MenuItem(Routes.aboutView, "เกี่ยวกับ", Icons.info_outline, ""),
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Drawer(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(0), bottomRight: Radius.circular(0))),
        backgroundColor: theme.colorScheme.secondary,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              height: 100,
              alignment: Alignment.bottomCenter,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: () async {
                    await _navigationService.navigateTo(
                      Routes.profileView,
                      transition: TransitionsBuilders.slideRight,
                    );
                  },
                  child: const ListTile(
                    title: Text(
                      "Title",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w800),
                    ),
                    subtitle: Text(
                      "บัญชีของฉัน",
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 13,
                      ),
                    ),
                    leading: CircleAvatar(
                      radius: 40,
                      backgroundColor: Color.fromARGB(255, 244, 244, 244),
                      child: Icon(
                        Icons.person,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              height: MediaQuery.of(context).size.height - 108,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: ListView.builder(
                itemCount: menuLists.length,
                itemBuilder: (context, index) {
                  MenuItem menu = menuLists[index];

                  return GestureDetector(
                      onTap: () async {
                        await _navigationService.navigateTo(
                          menu.route,
                          transition: TransitionsBuilders.slideRight,
                        );
                      },
                      child: ListTile(
                        title: Text(menu.title),
                        leading: Icon(menu.icon),
                        subtitle: menu.subtitle != ""
                            ? Text(menu.subtitle ?? "")
                            : null,
                      ));
                },
              ),
            )
          ],
        ));
  }
}
