import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'payment_viewmodel.dart';

class PaymentView extends StackedView<PaymentViewModel> {
  const PaymentView({super.key});

  @override
  Widget builder(
    BuildContext context,
    PaymentViewModel viewModel,
    Widget? child,
  ) {
    final theme = Theme.of(context);

    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        appBar: AppBar(
          leading: IconButton(
              onPressed: viewModel.onClose, icon: const Icon(Icons.arrow_back)),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                color: theme.colorScheme.surface,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15)),
              ),
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "การชำระเงิน",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 23,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(height: 7),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: theme.colorScheme.secondary,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "ยอดคงเหลือ Bolt",
                          style: TextStyle(color: Colors.black87),
                        ),
                        Text(
                          "฿0",
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: Colors.grey),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Divider(
                          height: 1,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "ยอดคงเหลือ Bolt จะไม่พร้อมใช้งานกับวิธีการชำระเงินนี้",
                          style: TextStyle(fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 7),
                  const ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text("ยอดคงเหลือ Bolt คืออะไร"),
                    leading: Icon(Icons.help_outline, color: Colors.black54),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                      color: Colors.black38,
                    ),
                    shape: Border(
                      bottom: BorderSide(color: Colors.black12, width: 1.0),
                    ),
                  ),
                  const ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text("ดูธุรกรรมยอดคงเหลือของ Bolt"),
                    leading:
                        Icon(Icons.schedule_outlined, color: Colors.black54),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                      color: Colors.black38,
                    ),
                    shape: Border(
                      bottom: BorderSide(color: Colors.black12, width: 1.0),
                    ),
                  ),
                  const SizedBox(height: 7),
                ],
              ),
            ),
            const SizedBox(height: 7),
            Container(
              padding: const EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: theme.colorScheme.surface,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "วิธีชำระเงิน",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text("เงินสด"),
                    leading: Icon(
                      Icons.money,
                      color: Colors.green,
                    ),
                    trailing: Icon(
                      Icons.check_circle_rounded,
                      size: 22,
                      color: Colors.green,
                    ),
                    shape: Border(
                      bottom: BorderSide(color: Colors.black12, width: 1.0),
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text("เพิ่มบัตรเครดิต"),
                    leading: Icon(Icons.add_outlined),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                      color: Colors.black38,
                    ),
                    shape: Border(
                      bottom: BorderSide(color: Colors.black12, width: 1.0),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 7),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: theme.colorScheme.surface,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(
                    "ตั้งค่าโปรไฟล์ที่ทำงานของคุณ",
                    style: TextStyle(fontSize: 15),
                  ),
                  leading: Icon(
                    Icons.work_outline,
                    color: Colors.black54,
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                    color: Colors.black38,
                  ),
                  shape: Border(
                    bottom: BorderSide(color: Colors.black12, width: 1.0),
                  ),
                ),
              ),
            )
          ],
        ));
  }

  @override
  PaymentViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PaymentViewModel();
}
