// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter_mobx_codegen_service.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CounterMobxCodegenService on _CounterMobxCodegenService, Store {
  late final _$counterAtom = Atom(
    name: '_CounterMobxCodegenService.counter',
    context: context,
  );

  @override
  int get counter {
    _$counterAtom.reportRead();
    return super.counter;
  }

  @override
  set counter(int value) {
    _$counterAtom.reportWrite(value, super.counter, () {
      super.counter = value;
    });
  }

  late final _$_CounterMobxCodegenServiceActionController = ActionController(
    name: '_CounterMobxCodegenService',
    context: context,
  );

  @override
  void increment() {
    final _$actionInfo = _$_CounterMobxCodegenServiceActionController
        .startAction(name: '_CounterMobxCodegenService.increment');
    try {
      return super.increment();
    } finally {
      _$_CounterMobxCodegenServiceActionController.endAction(_$actionInfo);
    }
  }

  @override
  void reset() {
    final _$actionInfo = _$_CounterMobxCodegenServiceActionController
        .startAction(name: '_CounterMobxCodegenService.reset');
    try {
      return super.reset();
    } finally {
      _$_CounterMobxCodegenServiceActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
counter: ${counter}
    ''';
  }
}
