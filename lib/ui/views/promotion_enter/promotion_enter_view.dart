import 'package:boltclone_stacked/ui/views/promotion_enter/promotion_enter_view.form.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import 'promotion_enter_viewmodel.dart';

@FormView(fields: [
  FormTextField(name: 'promotion'),
])
class PromotionEnterView extends StackedView<PromotionEnterViewModel>
    with $PromotionEnterView {
  const PromotionEnterView({super.key});

  @override
  Widget builder(
    BuildContext context,
    PromotionEnterViewModel viewModel,
    Widget? child,
  ) {
    final theme = Theme.of(context);
    AppBar appBar = AppBar(
      leading: IconButton(
          onPressed: viewModel.onClose, icon: const Icon(Icons.arrow_back)),
    );

    return Scaffold(
      appBar: appBar,
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            decoration: BoxDecoration(
              color: theme.colorScheme.surface,
            ),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height -
                appBar.preferredSize.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "กรอกรหัสโปรโมชัน",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 23,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(controller: promotionController),
              ],
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        width: MediaQuery.of(context).size.width - 30,
        height: 50.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: theme.colorScheme.primary,
        ),
        child: RawMaterialButton(
          elevation: 0.0,
          child: const Text(
            "ใช้",
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {},
        ),
      ),
    );
  }

  @override
  void onViewModelReady(PromotionEnterViewModel viewModel) {
    syncFormWithViewModel(viewModel);
  }

  @override
  PromotionEnterViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PromotionEnterViewModel();
}
