import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'signin_number_viewmodel.dart';

class SigninNumberView extends StackedView<SigninNumberViewModel> {
  const SigninNumberView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SigninNumberViewModel viewModel,
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
  SigninNumberViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SigninNumberViewModel();
}
