import 'package:boltclone_stacked/ui/views/signin_number/signin_number_view.form.dart';
import 'package:boltclone_stacked/ui/widgets/common/signin_radio/signin_radio.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import 'signin_number_viewmodel.dart';

@FormView(fields: [
  FormTextField(name: 'number'),
])
class SigninNumberView extends StackedView<SigninNumberViewModel> with $SigninNumberView {
  const SigninNumberView({super.key});
  
  @override
  void onDispose(SigninNumberViewModel viewModel) {
    super.onDispose(viewModel);
    disposeForm();
  }

  @override
  Widget builder(
    BuildContext context,
    SigninNumberViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        leading: IconButton(
            onPressed: viewModel.onClose, icon: const Icon(Icons.arrow_back)),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(30.0, 0, 30.0, 25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "กรอกเบอร์โทรของคุณ",
                    style: TextStyle(
                      fontSize: 23,
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(height: 7),
                  const Text(
                    "เราจะส่งรหัสเพื่อการยืนยัน",
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: viewModel.onCountry,
                        child: Container(
                          padding: const EdgeInsets.only(left: 15.0),
                          height: 55,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 240, 240, 240),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/images/country/th.png',
                                height: 24,
                              ),
                              const SizedBox(width: 10),
                              const Text(
                                "+66",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                ),
                                textAlign: TextAlign.start,
                              ),
                              const SizedBox(width: 5),
                              const Icon(
                                Icons.expand_more,
                                color: Colors.grey,
                              ),
                              const SizedBox(width: 10),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 5),
                      Expanded(
                        child: GestureDetector(
                          child: Container(
                            padding: const EdgeInsets.only(left: 10.0),
                            height: 55,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 240, 240, 240),
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: const Color.fromARGB(255, 47, 201, 129),
                                width: 2,
                              ),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: TextFormField(
                                    autofocus: true,
                                    controller: numberController,
                                    keyboardType: TextInputType.phone,
                                    decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "หมายเลขโทรศัพท์",
                                      hintStyle: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    style: const TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SigninRadio()
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(30),
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            style: const TextStyle(fontSize: 14, color: Colors.grey),
            children: [
              const TextSpan(
                text: "Bolt จะไม่ส่งใดๆ โดยไม่ได้รับความยินยอมจากคุณ",
              ),
              WidgetSpan(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: ElevatedButton(
                    onPressed: viewModel.onSubmit,
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      backgroundColor: const Color.fromARGB(255, 47, 201, 129),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 10,
                          height: 55,
                        ),
                        Text(
                          'ดำเนินการต่อ',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void onViewModelReady(SigninNumberViewModel viewModel) {
    syncFormWithViewModel(viewModel);
  }

  @override
  SigninNumberViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SigninNumberViewModel();
}
