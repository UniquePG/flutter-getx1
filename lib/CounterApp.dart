import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tute_getx1/Controllers/counterController.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  // this is the dependency injection here we initialize our controller
  CounterController controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter app"),
      ),
      body: Container(
        child: Center(child: Obx(() {
          return Text(
            controller.counter.value.toString(),
            style: TextStyle(fontSize: 40),
          );
        })),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            controller.incrementCounter();
            // controller.decreaseCounter();
          },
          child: Icon(Icons.add)),
    );
  }
}
