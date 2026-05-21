import 'package:flutter/material.dart';
import 'package:flutter_specialist/mobx/counter_mobx_service.dart';
import 'package:flutter_specialist/mobx/mobx_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Specialist',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MultiProvider(
        providers: [
          Provider<CounterMobxService>(create: (_) => CounterMobxService()),
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
                              counterMobxService: mainContext
                                  .read<CounterMobxService>(),
                            ),
                          ),
                        );
                      },
                      child: const Text('Go to MobX'),
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
