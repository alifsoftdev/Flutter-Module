import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:localigation_getx/local_string.dart';
import 'package:localigation_getx/view/home.dart';

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
      translations: LocaleString(),
      locale: Locale('en','US'),
      home: HomeView()
    );
  }
}
