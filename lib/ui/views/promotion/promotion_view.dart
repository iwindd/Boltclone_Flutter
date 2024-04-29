import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'promotion_viewmodel.dart';

class PromotionView extends StackedView<PromotionViewModel> {
  const PromotionView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    PromotionViewModel viewModel,
    Widget? child,
  ) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.colorScheme.secondary,
      appBar: AppBar(
        leading: IconButton(
            onPressed: viewModel.onClose, icon: const Icon(Icons.arrow_back)),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            decoration: BoxDecoration(
              color: theme.colorScheme.surface,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            width: MediaQuery.of(context).size.width,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "โปรโมชัน",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 23,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(height: 10),
                ListTile(
                  title: Text("กรอกรหัสโปรโมชัน"),
                  leading: Icon(Icons.sell_outlined),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 12,
                    color: Colors.black38,
                  ),
                  shape: Border(
                    bottom: BorderSide(color: Colors.black12, width: 1.0),
                  ),
                )
              ],
            ),
          ),
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
