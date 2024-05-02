import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'signin_radio_model.dart';

class SigninRadio extends StackedView<SigninRadioModel> {
  const SigninRadio({super.key});

  @override
  Widget builder(
    BuildContext context,
    SigninRadioModel viewModel,
    Widget? child,
  ) {
    return Column(
      children: [
        RadioListTile<SingingCharacter>(
          title: const Row(
            children: [
              Icon(
                Icons.sms_outlined,
                color: Colors.grey,
              ),
              SizedBox(width: 10),
              Text(
                'ใช้ SMS',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          value: SingingCharacter.sms,
          groupValue: viewModel.character,
          onChanged: viewModel.onChange,
          activeColor: const Color.fromARGB(255, 47, 201, 129),
          controlAffinity: ListTileControlAffinity.trailing,
          contentPadding: const EdgeInsets.symmetric(horizontal: 30),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Divider(color: Colors.grey),
        ),
        RadioListTile<SingingCharacter>(
          title: Row(
            children: [
              Image.asset(
                'assets/images/icon/whatsapp_icon.png',
                width: 24,
                height: 24,
              ),
              const SizedBox(width: 10),
              const Text(
                'ใช้ WhatsApp',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          value: SingingCharacter.whatsapp,
          groupValue: viewModel.character,
          onChanged: viewModel.onChange,
          activeColor: const Color.fromARGB(255, 47, 201, 129),
          controlAffinity: ListTileControlAffinity.trailing,
          contentPadding: const EdgeInsets.symmetric(horizontal: 30),
        ),
      ],
    );
  }

  @override
  SigninRadioModel viewModelBuilder(
    BuildContext context,
  ) =>
      SigninRadioModel();
}
