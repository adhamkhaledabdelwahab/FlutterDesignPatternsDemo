import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/src/mvi/model/counter_model.dart';

@immutable
abstract class CounterState {
  final CounterModel counterModel;

  const CounterState({required this.counterModel});

  CounterState copyWith(CounterState state) => state;
}

class CounterInitialState extends CounterState {
  CounterInitialState() : super(counterModel: CounterModel(counter: 0));
}

class CounterIncreasedState extends CounterState {
  const CounterIncreasedState({required super.counterModel});
}

class CounterDecreasedState extends CounterState {
  const CounterDecreasedState({required super.counterModel});
}
