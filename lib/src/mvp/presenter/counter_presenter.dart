import 'package:flutter_design_patterns/src/mvp/model/counter_model.dart';
import 'package:flutter_design_patterns/src/mvp/view/counter_view.dart';

class CounterPresenter {
  final CounterModel _counterModel;
  final CounterView _counterView;

  CounterPresenter({
    required CounterModel counterModel,
    required CounterView counterView,
  })  : _counterModel = counterModel,
        _counterView = counterView;

  void increment() {
    _counterModel.counter++;
    _counterView.updateCounter(_counterModel.counter);
  }

  void decrement() {
    if (_counterModel.counter > 0) {
      _counterModel.counter--;
    }
    _counterView.updateCounter(_counterModel.counter);
  }
}
