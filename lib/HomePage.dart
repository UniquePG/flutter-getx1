import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tute_getx1/ColorSlider.dart';
import 'package:tute_getx1/NextPage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Utility Classes"),
      ),
      body: Container(
        child: Column(
          children: [
            Card(
              child: ListTile(
                title: Text("Dialog box"),
                subtitle: Text("open dialog with getX"),
                onTap: () {
                  Get.defaultDialog(
                      title: "Dialog title",
                      content: Text("Dialog box content"),
                      confirm: ElevatedButton(
                          onPressed: () {
                            Get.to(NextPage(
                              name: "Rohan gupta",
                            ));
                          },
                          child: const Text("Yes")),
                      cancel: ElevatedButton(
                          onPressed: () {
                            Get.back();
                          },
                          child: const Text("Cancle")));
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text("bottom sheet"),
                subtitle: Text("Bottom sheet with getx"),
                onTap: () {
                  Get.bottomSheet(Container(
                    color: Colors.blue,
                    child: Column(
                      children: [
                        ListTile(
                          leading: const Icon(Icons.light_mode),
                          title: const Text('Light Theme'),
                          onTap: () {
                            Get.changeTheme(ThemeData.light());
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.dark_mode),
                          title: const Text("Dark mode"),
                          onTap: () {
                            Get.changeTheme(ThemeData.dark());
                          },
                        )
                      ],
                    ),
                  ));
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Navigation"),
                subtitle: Text("Navigation with getx"),
                onTap: () {
                  Get.bottomSheet(Container(
                    color: Colors.blue,
                    child: Column(
                      children: [
                        ListTile(
                          title: const Text('2nd page'),
                          onTap: () {
                            Get.toNamed("/second", arguments: [
                              "pavan gupta",
                              "Rohan gupta",
                            ]);
                          },
                        ),
                        ListTile(
                          title: const Text("3rd page"),
                          onTap: () {
                            Get.toNamed("/third");
                          },
                        )
                      ],
                    ),
                  ));
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Counter app"),
                subtitle: Text("counter app with getx"),
                onTap: () {
                  Get.toNamed("/counterapp");
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Color slider"),
                subtitle: Text("color slider with getx"),
                onTap: () {
                  // Get.toNamed("/colorslider");
                  Get.to(ColorSlider());
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Mark favourite"),
                subtitle: Text("Mark favourite app with getx"),
                onTap: () {
                  // Get.toNamed("/colorslider");
                  Get.toNamed("/favourite");
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Image picker"),
                subtitle: Text("image picker app with getx"),
                onTap: () {
                  // Get.toNamed("/colorslider");
                  Get.toNamed("/picker");
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Get.snackbar("Snack bar", "message");
      }),
    );
  }
}
