import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tute_getx1/Controllers/favouriteController.dart';

class MarkFavouriteApp extends StatefulWidget {
  const MarkFavouriteApp({super.key});

  @override
  State<MarkFavouriteApp> createState() => _MarkFavouriteAppState();
}

class _MarkFavouriteAppState extends State<MarkFavouriteApp> {
  FavouritesController controller = Get.put(FavouritesController());

  // List<String> movies = ["Iron man", "Spider man", "Avengers", "Infinity war"];
  // List temparr = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favourte App"),
      ),
      body: Container(
        child: ListView.builder(
            itemCount: controller.movies.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                    onTap: () {
                      //* without getx
                      // if (temparr.contains(movies[index].toString())) {
                      //   temparr.remove(movies[index].toString());
                      // } else {
                      //   temparr.add(movies[index].toString());
                      // }

                      // setState(() {});

                      //* With getx
                      // controller.toggleFavourite(index);
                      controller.toggleFavourite(index);
                    },
                    title: Text(controller.movies[index].toString()),
                    trailing: Obx(
                      () => Icon(Icons.favorite,
                          color: controller.checkIfExists(index)
                              ? Colors.red
                              : Colors.white),
                    )),
              );
            }),
      ),
    );
  }
}
