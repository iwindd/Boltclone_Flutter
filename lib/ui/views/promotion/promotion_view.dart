import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'promotion_viewmodel.dart';

class PromotionView extends StackedView<PromotionViewModel> {
  const PromotionView({super.key});

  @override
  Widget builder(
    BuildContext context,
    PromotionViewModel viewModel,
    Widget? child,
  ) {
    final theme = Theme.of(context);

    AppBar appBar = AppBar(
      leading: IconButton(
          onPressed: viewModel.onClose, icon: const Icon(Icons.arrow_back)),
    );

    return Scaffold(
      backgroundColor: theme.colorScheme.secondary,
      appBar: appBar,
      body: Column(
        children: [
          Container(
            height: 100,
            padding: const EdgeInsets.only(left: 20, right: 20),
            decoration: BoxDecoration(
              color: theme.colorScheme.surface,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
            ),
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "โปรโมชัน",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 23,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(height: 10),
                GestureDetector(
                  onTap: viewModel.onEnterPromotion,
                  child: const ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text("กรอกรหัสโปรโมชัน"),
                    leading: Icon(Icons.sell_outlined, color: Colors.black54),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                      color: Colors.black38,
                    ),
                    shape: Border(
                      bottom: BorderSide(color: Colors.black12, width: 1.0),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 5),
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: theme.colorScheme.surface,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
            ),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height -
                (105 + appBar.preferredSize.height),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Color.fromARGB(255, 244, 244, 244),
                  child: Icon(
                    Icons.sell,
                    color: Colors.grey,
                  ),
                ),
                Text("ส่วนลดของคุณ", style: TextStyle(color: Colors.grey)),
                Text("จะปรากฏที่นี่", style: TextStyle(color: Colors.grey))
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  PromotionViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PromotionViewModel();
}
