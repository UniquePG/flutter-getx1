import 'package:get/get.dart';

class CounterController extends GetxController {
  // here we use the getx datatypes(it starts with Rx)
  RxInt counter = 0.obs; // we add obs in the datatypes(it means  that it will be observed by GetX)

  incrementCounter() {
    counter.value++;

  }
  decreaseCounter() {
    counter.value--;

  }
}
