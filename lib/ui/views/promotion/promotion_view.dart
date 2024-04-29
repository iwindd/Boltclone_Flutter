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
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        leading: IconButton(
            onPressed: viewModel.onClose, icon: const Icon(Icons.arrow_back)),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      ),
    );
  }

  @override
  PromotionViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PromotionViewModel();
}
