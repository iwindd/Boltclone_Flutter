import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MenuItem {
  String title;
  IconData icon;
  String? subtitle;

  MenuItem(this.title, this.icon, this.subtitle);
}

class HomeDrawer extends StatefulWidget {
  const HomeDrawer({super.key});

  @override
  State<HomeDrawer> createState() => _HomeDrawerState();
}

class _HomeDrawerState extends State<HomeDrawer> {
  List<MenuItem> menuLists = [
    MenuItem("การชำระเงิน", Icons.credit_card_outlined, ""),
    MenuItem("โปรโมชัน", Icons.sell_outlined, "กรอกรหัสโปรโมชั่น"),
    MenuItem("การโดยสารของฉัน", Icons.schedule_outlined, ""),
    MenuItem("ค่าโดยสารของคุณ", Icons.work_outline, ""),
    MenuItem("การสนับสนุน", Icons.help_outline, ""),
    MenuItem("เกี่ยวกับ", Icons.info_outline, ""),
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(0), bottomRight: Radius.circular(0))),
        backgroundColor: Colors.grey,
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
              child: const Align(
                alignment: Alignment.center,
                child: ListTile(
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
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
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

                  return ListTile(
                    title: Text(menu.title),
                    leading: Icon(menu.icon),
                    subtitle:
                        menu.subtitle != "" ? Text(menu.subtitle ?? "") : null,
                  );
                },
              ),
            )
          ],
        ));
  }
}