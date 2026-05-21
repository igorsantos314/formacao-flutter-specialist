import 'package:mobx/mobx.dart';

part 'counter_mobx_codegen_service.g.dart';

class CounterMobxCodegenService = _CounterMobxCodegenService
    with _$CounterMobxCodegenService;

abstract class _CounterMobxCodegenService with Store {
  @observable
  int counter = 0;

  @action
  void increment() {
    counter++;
  }

  @action
  void reset() {
    counter = 0;
  }
}
