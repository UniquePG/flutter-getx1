import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tute_getx1/Controllers/imagePickerController.dart';

class ImagePicker extends StatefulWidget {
  const ImagePicker({super.key});

  @override
  State<ImagePicker> createState() => _ImagePickerState();
}

class _ImagePickerState extends State<ImagePicker> {
  ImagePickerController controller = Get.put(ImagePickerController());

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Image picker"),
        ),
        body: Obx(() {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: CircleAvatar(
                    radius: 50,
                    backgroundImage: controller.imgPath.isNotEmpty
                        ? FileImage(File(controller.imgPath.toString()))
                        : null),
              ),
              TextButton(
                  onPressed: () {
                    Get.bottomSheet(Container(
                      height: 150,
                      color: Colors.blue,
                      child: Column(
                        children: [
                          ListTile(
                            title: const Text(
                              "Camera",
                              style: TextStyle(
                                fontSize: 22,
                              ),
                            ),
                            onTap: () {
                              controller.getCameraImage();
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: const Text(
                              "Gallery",
                              style: TextStyle(
                                fontSize: 22,
                              ),
                            ),
                            onTap: () {
                              controller.getGalleryImage();
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      ),
                    ));
                  },
                  child: const Text(
                    "Pick Image",
                    style: TextStyle(fontSize: 20),
                  )),
              if (controller.imgPath.isNotEmpty)
                TextButton(
                    onPressed: () {
                      controller.removeImage();
                    },
                    child: const Text(
                      "Remove image",
                      style: TextStyle(fontSize: 20),
                    ))
            ],
          );
        }));
  }
}
