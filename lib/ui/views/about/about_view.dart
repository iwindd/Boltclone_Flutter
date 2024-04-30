import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'about_viewmodel.dart';

class AboutView extends StackedView<AboutViewModel> {
  // ignore: use_super_parameters
  const AboutView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AboutViewModel viewModel,
    Widget? child,
  ) {
    List<MenuItem> menuLists = [
      MenuItem("ให้คะแนนแอพ", Icons.star_outline),
      MenuItem("กดไลค์ให้เราที่ Facebook", Icons.thumb_up_outlined),
      MenuItem("โซลูชันสำหรับการโดยสารไปทำงาน", Icons.work_outline),
      MenuItem("งานที่โบลต์", Icons.favorite_outline),
      MenuItem("กฎหมาย", Icons.rule_outlined),
      MenuItem("ความเป็นส่วนตัว", Icons.description_outlined),
    ];

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        leading: IconButton(
            onPressed: viewModel.onClose, icon: const Icon(Icons.arrow_back)),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "เกี่ยวกับ",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 23,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  "Version CI.0001.0 (000000)",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: ListView.builder(
              itemCount: menuLists.length,
              itemBuilder: (context, index) {
                MenuItem menu = menuLists[index];
                return ListTile(
                  title: Text(menu.title),
                  leading: Icon(menu.icon),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    size: 12,
                    color: Colors.black38,
                  ),
                  shape: index < menuLists.length - 1
                      ? const Border(
                          bottom: BorderSide(color: Colors.black12, width: 1.0),
                        )
                      : null,
                );
              },
            ),
          ))
        ],
      ),
    );
  }

/* 


 */
  @override
  AboutViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      AboutViewModel();
}
