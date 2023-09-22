import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reactive_widget_getx/second_screen.dart';

import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: ()=>MyApp()),
        GetPage(name: '/SecScreen', page: ()=>SecondScreen())
      ],
      debugShowCheckedModeBanner: false,
      title: 'Reactive Widget Getx',
      home: HomeScreen(),
    );
  }
}

