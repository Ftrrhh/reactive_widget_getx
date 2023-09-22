import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController homecontroller = Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(
        title: Text("Reactive Widget Getx"),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: homecontroller.setname,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: 'Masukan Nama'),
              onSubmitted: (value) {
                homecontroller.setName(homecontroller.setname.text);

                //SnackBar
                // Get.snackbar('Nama', homecontroller.nama.value);

                Get.defaultDialog(
                  title: 'Nama',
                  middleText: homecontroller.nama.value,
                  onConfirm: () {
                    Get.toNamed('/SecScreen', arguments: 'Ini Adalah Data Dari Halaman Home Screen');
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
