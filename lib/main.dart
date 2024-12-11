import 'package:flutter/material.dart';
import 'package:flutter_application_2/Counter/counter.dart';
import 'package:flutter_application_2/Homepage.dart';
import 'package:get/get.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 255, 255, 255).withOpacity(.3)),
        useMaterial3: false,
      ),
      home: Login(),
    );
  }
}
