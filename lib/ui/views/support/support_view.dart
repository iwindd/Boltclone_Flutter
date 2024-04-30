import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'support_viewmodel.dart';

class SupportView extends StackedView<SupportViewModel> {
  const SupportView({super.key});

  @override
  Widget builder(
    BuildContext context,
    SupportViewModel viewModel,
    Widget? child,
  ) {
    final theme = Theme.of(context);
    List<MenuItem> menuLists = [
      MenuItem("เกี่ยวกับ Bolt"),
      MenuItem("แอป และคุณสมบัติ"),
      MenuItem("บัญชี และ ข้อมูล"),
      MenuItem("ราคาและการชำระค่าโดยสาร"),
      MenuItem("การใช้งาน Bolt"),
    ];

    return Scaffold(
      backgroundColor: theme.colorScheme.background,
      appBar: AppBar(
        leading: IconButton(
            onPressed: viewModel.onClose, icon: const Icon(Icons.arrow_back)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: const Text(
              "เราช่วยได้อย่างไร",
              style: TextStyle(
                color: Colors.black,
                fontSize: 23,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "เคสการสนับสนุน",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                ListTile(
                  contentPadding: EdgeInsets.all(0),
                  leading: CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 244, 244, 244),
                    child: Icon(Icons.chat_outlined),
                  ),
                  title: Text(
                    "กล่องข้อความ",
                    style: TextStyle(fontSize: 14),
                  ),
                  subtitle: Text(
                    "ดูแชทที่เปิดอยู่",
                    style: TextStyle(fontSize: 10, color: Colors.grey),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 14,
                    color: Colors.black38,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "รับความช่วยเหลือในเรื่องอื่นๆ",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w800,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: ListView.builder(
                itemCount: menuLists.length,
                itemBuilder: (context, index) {
                  MenuItem menu = menuLists[index];

                  return ListTile(
                    title: Text(menu.title),
                    contentPadding: const EdgeInsets.all(0),
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      size: 12,
                      color: Colors.black38,
                    ),
                    shape: index < menuLists.length - 1
                        ? const Border(
                            bottom:
                                BorderSide(color: Colors.black12, width: 1.0),
                          )
                        : null,
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  SupportViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SupportViewModel();
}
