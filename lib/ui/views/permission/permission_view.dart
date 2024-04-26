import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'permission_viewmodel.dart';

class PermissionView extends StackedView<PermissionViewModel> {
  const PermissionView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    PermissionViewModel viewModel,
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
  PermissionViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PermissionViewModel();
}
