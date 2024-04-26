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
      body: const Text('access denied'),
    );
  }

  @override
  PermissionViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PermissionViewModel();
}
