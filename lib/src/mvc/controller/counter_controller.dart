import 'package:flutter_design_patterns/src/mvc/model/counter_model.dart';

class CounterController {
  final CounterModel _counterModel;

  CounterController({required CounterModel counterModel})
      : _counterModel = counterModel;

  void decrement() {
    if (_counterModel.count > 0) {
      _counterModel.count--;
    }
  }

  void increment() {
    _counterModel.count++;
  }
}
