import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_specialist/mobx/counter_mobx_codegen_service.dart';

class Mobx extends StatelessWidget {
  final CounterMobxCodegenService service;

  const Mobx({super.key, required this.service});

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
                return Text('Counter value: ${service.counter}');
              }
            ),
            const SizedBox(height: 16),
            TextButton(onPressed: () {
              service.increment();
            }, child: const Text('Increment')),
            TextButton(onPressed: () {
              service.reset();
            }, child: const Text('Reset')),
          ],
        ),
      ),
    );
  }
}
