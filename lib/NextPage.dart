import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NextPage extends StatefulWidget {
  var name;
  NextPage({super.key, this.name});

  @override
  State<NextPage> createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Container(
              child:
                  Text("Welcome" + Get.arguments[0] + "and" + Get.arguments[1]),
            ),
            ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: Text("Go back"))
          ],
        ),
      ),
    );
  }
}
