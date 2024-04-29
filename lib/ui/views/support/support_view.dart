import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'support_viewmodel.dart';

class SupportView extends StackedView<SupportViewModel> {
  const SupportView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SupportViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      ),
    );
  }

  @override
  SupportViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SupportViewModel();
}
