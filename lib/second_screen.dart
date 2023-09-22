import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reactive_widget_getx/home_controller.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var data = Get.arguments;
    HomeController homecontroller = Get.find();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(data),
            ),
            Obx(() => Switch(
                value: homecontroller.isOpen.value,
                onChanged: (value) => {homecontroller.setIsOpen(value)})),
            SizedBox(height: 20),
            TextField(
              controller: homecontroller.setname2,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: 'Masukan Nama'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                homecontroller.addSiswa(homecontroller.setname2.text);
              },
              child: Text('Submit'),
            ),
            Obx(
              () => ListView.builder(
                shrinkWrap: true,
                  itemCount: homecontroller.listname.length,
                  itemBuilder: (context, index) {
                // ignore: invalid_use_of_protected_member
                return Text(homecontroller.listname.value[index]);
              })
            )
          ],
        ),
      ),
    );
  }
}
