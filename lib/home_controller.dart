import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  TextEditingController setname = TextEditingController();
  TextEditingController setname2 = TextEditingController();

  RxString nama = RxString('');
  RxBool isOpen = RxBool(true);
  RxList<String> listname = RxList<String>([]);
  // Rx<String> nama1 = Rx<String>('');
  // RxString nama2 = ''.obs;

  void setName(String nm) {
    nama.value = nm;
    print(nama.value);
  }

  setIsOpen(value){
    isOpen(value);
  }

  void addSiswa(String nama) {
    listname.add(nama);
  }

}
