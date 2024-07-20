import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tute_getx1/Controllers/sliderController.dart';

class ColorSlider extends StatefulWidget {
  const ColorSlider({super.key});

  @override
  State<ColorSlider> createState() => _ColorSliderState();
}

class _ColorSliderState extends State<ColorSlider> {
  SliderController controller = Get.put(SliderController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Color slider"),
      ),
      body: Center(
        child: Column(
          children: [
            Obx(
              () => Container(
                height: 200,
                width: 200,
                color: Colors.red.withOpacity(controller.opacity.value),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Obx(() => Slider(
                value: controller.opacity.value,
                onChanged: (value) {
                  controller.setSliderValue(value);
                })),
          ],
        ),
      ),
    );
  }
}
