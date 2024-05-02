import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'signin_country_viewmodel.dart';

class SigninCountryView extends StackedView<SigninCountryViewModel> {
  const SigninCountryView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SigninCountryViewModel viewModel,
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
  SigninCountryViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SigninCountryViewModel();
}
