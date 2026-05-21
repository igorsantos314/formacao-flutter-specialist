import 'package:flutter/material.dart';
import 'package:flutter_specialist/getx/counter_getx_service.dart';
import 'package:get/get.dart';

class GetxPage extends StatelessWidget {
  const GetxPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(CounterGetxService());

    return Scaffold(
      body: Center(
        child: Obx(() {
          final counter = Get.find<CounterGetxService>().counter;
          return Text('Counter value: $counter');
        }),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 'increment',
            onPressed: () {
              Get.find<CounterGetxService>().increment();
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            heroTag: 'reset',
            onPressed: () {
              Get.find<CounterGetxService>().reset();
            },
            child: const Icon(Icons.refresh),
          ),
        ],
      ),
    );
  }
}
