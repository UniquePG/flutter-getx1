import 'package:get/get.dart';

class FavouritesController extends GetxController {
  RxList<String> movies =
      ["Iron man", "Spider man", "Avengers", "Infinity war"].obs;

  RxList temparr = [].obs;

  toggleFavourite(int index) {
    if (temparr.contains(movies[index].toString())) {
      temparr.remove(movies[index].toString());
    } else {
      temparr.add(movies[index].toString());
    }
  }

  checkIfExists(int index) {
    return temparr.contains(movies[index].toString()) ? true : false;
  }
}
