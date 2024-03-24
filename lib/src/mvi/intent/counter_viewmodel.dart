import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/src/mvi/intent/counter_intent.dart';
import 'package:flutter_design_patterns/src/mvi/model/counter_model.dart';
import 'package:flutter_design_patterns/src/mvi/intent/counter_state.dart';

class CounterViewModel extends ValueNotifier<CounterState> {
  CounterViewModel() : super(CounterInitialState());

  void handleIntent(CounterIntent intent) {
    switch (intent) {
      case CounterIntent.increment:
        _increment();
        break;
      case CounterIntent.decrement:
        _decrement();
        break;
    }
  }

  void _increment() {
    final oldValue = value.counterModel.counter;
    final newValue = oldValue + 1;
    value = value.copyWith(
      CounterIncreasedState(
        counterModel: CounterModel(counter: newValue),
      ),
    );
  }

  void _decrement() {
    final oldValue = value.counterModel.counter;
    if (oldValue > 0) {
      final newValue = oldValue - 1;
      value = value.copyWith(
        CounterDecreasedState(
          counterModel: CounterModel(counter: newValue),
        ),
      );
    }
  }
}
