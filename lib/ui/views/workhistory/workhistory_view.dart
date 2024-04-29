import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'workhistory_viewmodel.dart';

class WorkhistoryView extends StackedView<WorkhistoryViewModel> {
  const WorkhistoryView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    WorkhistoryViewModel viewModel,
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
  WorkhistoryViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      WorkhistoryViewModel();
}
