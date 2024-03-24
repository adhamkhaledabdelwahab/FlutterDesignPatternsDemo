import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/src/mvvm/model/counter_model.dart';

class CounterRepository {
  late final ValueNotifier<CounterModel> _counterModel;

  CounterRepository({required int count}) {
    _counterModel = ValueNotifier(CounterModel(counter: count));
  }

  ValueNotifier<CounterModel> get counterModel => _counterModel;

  void increment() {
    var oldValue = _counterModel.value.counter;
    var newValue = oldValue + 1;
    _counterModel.value = CounterModel(counter: newValue);
  }

  void decrement() {
    var oldValue = _counterModel.value.counter;
    if (oldValue > 0) {
      var newValue = oldValue - 1;
      _counterModel.value = CounterModel(counter: newValue);
    }
  }
}
