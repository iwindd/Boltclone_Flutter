import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'workhistory_viewmodel.dart';

class WorkhistoryView extends StackedView<WorkhistoryViewModel> {
  const WorkhistoryView({super.key});

  @override
  Widget builder(
    BuildContext context,
    WorkhistoryViewModel viewModel,
    Widget? child,
  ) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        leading: IconButton(
            onPressed: viewModel.onClose, icon: const Icon(Icons.arrow_back)),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 20),
            alignment: Alignment.topCenter,
            child: const Column(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 40,
                  child: Icon(
                    Icons.work,
                    size: 50,
                  ),
                ),
                Text(
                  "เบาใจกับค่ารถมาทำงาน",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 10),
                Text(
                  "ตรงกับโปรไฟล์ Bolt Work",
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
            child: const Column(
              children: [
                ListTile(
                  leading: Icon(Icons.check, color: Colors.green, size: 20),
                  title: Text(
                    "เชื่อมประวัติการทำงานเข้ากับผู้ให้บริการค่าใช้จ่ายของบริษัทของคุณ",
                    style: TextStyle(fontSize: 12, color: Colors.black54),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.check, color: Colors.green, size: 20),
                  title: Text(
                    "ส่งใบเสร็จ VAT ไปที่อีเมลที่ทำงานของคุณ",
                    style: TextStyle(fontSize: 12, color: Colors.black54),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.check, color: Colors.green, size: 20),
                  title: Text(
                    "ดูรายงานประจำเดือนพร้อมรายละเอียดการโดยสาร",
                    style: TextStyle(fontSize: 12, color: Colors.black54),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.check, color: Colors.green, size: 20),
                  title: Text(
                    "เพิ่มบัตรชำระเงินใบที่สองหากจำเป็น",
                    style: TextStyle(fontSize: 12, color: Colors.black54),
                  ),
                )
              ],
            ),
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SizedBox(
        width: MediaQuery.of(context).size.width - 30,
        height: 100.0,
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width - 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: theme.colorScheme.primary,
              ),
              child: RawMaterialButton(
                elevation: 0.0,
                child: const Text(
                  "เริ่มเลย",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {},
              ),
            ),
            const SizedBox(height: 10),
            const Text("อยากมีรถรับส่งพนักงานทุกคนในทีมรึเปล่า", style: TextStyle(fontSize: 12, color: Colors.grey)),
            const Text("ตั้งค่าบัญชี Bolt Business", style: TextStyle(fontSize: 12, color: Colors.green)),
          ],
        ),
      ),
    );
  }

  @override
  WorkhistoryViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      WorkhistoryViewModel();
}
