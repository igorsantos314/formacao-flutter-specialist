import 'package:mobx/mobx.dart';

class CounterMobxService {
  final _value = Observable(0);
  int get value => _value.value;

  set value(int newValue) => _value.value = newValue;
  late Action increment;
  late Action reset;

  CounterMobxService() {
    increment = Action(_increment);
    reset = Action(_reset);
  }

  void _increment() {
    _value.value++;
  }

  void _reset() {
    _value.value = 0;
  }
}