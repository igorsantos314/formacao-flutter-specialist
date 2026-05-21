import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_specialist/mobx/counter_mobx_service.dart';

class Mobx extends StatelessWidget {
  final CounterMobxService counterMobxService;

  const Mobx({super.key, required this.counterMobxService});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('MobX')),
      body: Center(
        child: Column(
          children: [
            const Text('MobX Page'),
            const SizedBox(height: 16),
            Observer(
              builder: (context) {
                return Text('Counter value: ${counterMobxService.value}');
              }
            ),
            const SizedBox(height: 16),
            TextButton(onPressed: () {
              counterMobxService.increment();
            }, child: const Text('Increment')),
            TextButton(onPressed: () {
              counterMobxService.reset();
            }, child: const Text('Reset')),
          ],
        ),
      ),
    );
  }
}
