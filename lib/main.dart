import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tute_getx1/ColorSlider.dart';
import 'package:tute_getx1/CounterApp.dart';
import 'package:tute_getx1/HomePage.dart';
import 'package:tute_getx1/ImagePicker.dart';
import 'package:tute_getx1/MarkFavouriteApp.dart';
import 'package:tute_getx1/NextPage.dart';
import 'package:tute_getx1/ThirdPage.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
      getPages: [
        GetPage(name: "/", page: () => HomePage()),
        GetPage(name: "/second", page: () => NextPage()),
        GetPage(name: "/third", page: () => ThirdPage()),
        GetPage(name: "/counterapp", page: () => CounterApp()),
        GetPage(name: "/colorslider", page: () => const ColorSlider()),
        GetPage(name: "/favourite", page: () => const MarkFavouriteApp()),
        GetPage(name: "/picker", page: () => const ImagePicker()),
      ],
    );
  }
}
