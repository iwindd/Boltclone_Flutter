import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'profile_viewmodel.dart';

class ProfileView extends StackedView<ProfileViewModel> {
  const ProfileView({super.key});

  @override
  Widget builder(
    BuildContext context,
    ProfileViewModel viewModel,
    Widget? child,
  ) {
    final theme = Theme.of(context);
    String fullname = viewModel.GetUserFullName();

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      appBar: AppBar(
        leading: IconButton(
            onPressed: viewModel.onClose, icon: const Icon(Icons.arrow_back)),
      ),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: theme.colorScheme.surface,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    const CircleAvatar(
                      radius: 25,
                      backgroundColor: Color.fromARGB(255, 244, 244, 244),
                      child: Icon(
                        Icons.person,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      fullname,
                      style: const TextStyle(
                          fontWeight: FontWeight.w700, fontSize: 20),
                    ),
                    const SizedBox(height: 7),
                    const ListTile(
                      title: Text("ข้อมูลส่วนตัว"),
                      leading: Icon(Icons.person, color: Colors.black54),
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
                      title: Text("เข้าสู่ระบบและการรักษาความปลอดภัย"),
                      leading: Icon(Icons.verified_user_outlined,
                          color: Colors.black54),
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
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: theme.colorScheme.surface,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20, top: 20),
                      child: Text(
                        "สถานที่ที่บันทึก",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text("เพิ่มที่อยู่บ้าน"),
                      leading: Icon(Icons.home_outlined, color: Colors.black54),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                        color: Colors.black38,
                      ),
                      shape: Border(
                        bottom: BorderSide(color: Colors.black12, width: 1.0),
                      ),
                    ),
                    ListTile(
                      title: Text("เพิ่มที่อยู่ที่ทำงาน"),
                      leading: Icon(Icons.work_outline, color: Colors.black54),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                        color: Colors.black38,
                      ),
                      shape: Border(
                        bottom: BorderSide(color: Colors.black12, width: 1.0),
                      ),
                    ),
                    ListTile(
                      title: Text("เพิ่มสถานที่"),
                      leading: Icon(Icons.add_outlined, color: Colors.black54),
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
              Container(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: theme.colorScheme.surface,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      title: Text("การสื่อสารที่ต้องการ"),
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
                  padding: const EdgeInsets.only(top: 10),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: theme.colorScheme.surface,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: viewModel.onLogout,
                        child: const ListTile(
                          title: Text("ออกจากระบบ"),
                          leading: Icon(Icons.logout, color: Colors.black54),
                          shape: Border(
                            bottom:
                                BorderSide(color: Colors.black12, width: 1.0),
                          ),
                        ),
                      ),
                      const ListTile(
                        title: Text("ลบบัญชีผู้ใข้"),
                        leading:
                            Icon(Icons.delete_outline, color: Colors.black54),
                        shape: Border(
                          bottom: BorderSide(color: Colors.black12, width: 1.0),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  ProfileViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ProfileViewModel();
}
