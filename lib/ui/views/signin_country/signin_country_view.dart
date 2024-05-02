import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'signin_country_viewmodel.dart';

class SigninCountryView extends StackedView<SigninCountryViewModel> {
  const SigninCountryView({super.key});

  @override
  Widget builder(
    BuildContext context,
    SigninCountryViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: const Text(
          "รหัสประเทศ",
          style: TextStyle(fontSize: 16),
        ),
        centerTitle: true,
        leading: IconButton(
            onPressed: viewModel.onClose, icon: const Icon(Icons.close)),
      ),
      body: Center(
        child: ListView(
          children: [
            ListTile(
              title: const Text('Thailand'),
              leading: Image.asset('assets/images/country/th.png'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('USA'),
              leading: Image.asset('assets/images/country/us.png'),
              onTap: () {},
              // เพิ่มรายการประเทศอื่น ๆ ตามต้องการ
            ),
          ],
        ),
      ),
    );
  }

  @override
  SigninCountryViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SigninCountryViewModel();
}
