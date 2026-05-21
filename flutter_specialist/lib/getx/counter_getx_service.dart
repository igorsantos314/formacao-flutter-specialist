import 'package:get/get.dart';

class CounterGetxService extends GetxController {
  var counter = 0.obs;

  void increment() {
    counter++;
  }

  void reset() {
    counter.value = 0;
  }
}