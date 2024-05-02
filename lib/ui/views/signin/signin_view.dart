import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'signin_viewmodel.dart';

class SigninView extends StackedView<SigninViewModel> {
  const SigninView({super.key});

  @override
  Widget builder(
    BuildContext context,
    SigninViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Stack(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(30.0, 30, 30.0, 25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "กรอกเบอร์โทรของคุณ",
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: viewModel.onCountry,
                        child: Container(
                          padding: const EdgeInsets.only(left: 15.0),
                          height: 55,
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 240, 240, 240),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            ),
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/images/country/th.png',
                                height: 24,
                              ),
                              const Icon(
                                Icons.expand_more,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: viewModel.onNumber,
                          child: Container(
                            padding: const EdgeInsets.only(left: 10.0),
                            height: 55,
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 240, 240, 240),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                            ),
                            child: const Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    '+66',
                                    style: TextStyle(
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
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {},
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
                          'เข้าสู่ระบบ',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Divider(),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          'หรือ',
                          style: TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(255, 130, 130, 130)),
                        ),
                      ),
                      Expanded(
                        child: Divider(),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(double.infinity, 55),
                            side: const BorderSide(
                              color: Color.fromARGB(255, 201, 201, 201),
                              width: 1,
                            ),
                            elevation: 0,
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/images/icon/google_icon.png',
                                width: 24,
                                height: 24,
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                child: Text(
                                  'เข้าสู่ระบบด้วย Google',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(double.infinity, 55),
                            side: BorderSide(
                              color: Color.fromARGB(255, 201, 201, 201),
                              width: 1,
                            ),
                            elevation: 0,
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/images/icon/facebook_icon.png',
                                width: 24,
                                height: 24,
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                child: Text(
                                  'เข้าสู่ระบบด้วย Facebook',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.all(30),
              child: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                  children: [
                    TextSpan(
                      text: 'เมื่อลงทะเบียน คุณยอมรับ ',
                    ),
                    TextSpan(
                      text: 'ข้อกำหนดเงื่อนไข',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    TextSpan(
                      text: ' ของเรา รับทราบ ',
                    ),
                    TextSpan(
                      text: 'นโยบายความเป็นส่วนตัว',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    TextSpan(
                      text:
                          'และยืนยันว่าคุณอายุเกิน 18 ปีเราอาจส่งโปรโมชันที่เกี่ยวข้องกับบริการของเรา คุณสามารถยกเลิกสมาชิกได้ตลอดเวลาใน การตั้งค่าการสื่อสารภายใต้โปรไฟล์คุณ',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  SigninViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SigninViewModel();
}
