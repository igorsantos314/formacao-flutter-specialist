import 'package:flutter/material.dart';
import 'package:flutter_specialist/getx/getx_page.dart';
import 'package:flutter_specialist/mobx/counter_mobx_codegen_service.dart';
import 'package:flutter_specialist/mobx/mobx_page.dart';
import 'package:get/route_manager.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Specialist',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MultiProvider(
        providers: [
          Provider<CounterMobxCodegenService>(create: (_) => CounterMobxCodegenService()),
        ],
        builder: (context, widget) {
          return const Menu();
        },
      ),
    );
  }
}

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext mainContext) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                color: Colors.blue,
                child: const Center(
                  child: Text(
                    'Menu',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.push(
                          mainContext,
                          MaterialPageRoute(
                            builder: (context) => Mobx(
                              service: mainContext
                                  .read<CounterMobxCodegenService>(),
                            ),
                          ),
                        );
                      },
                      child: const Text('Go to MobX'),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {
                        Get.to(() => const GetxPage());
                      },
                      child: const Text('Go to GetX'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
