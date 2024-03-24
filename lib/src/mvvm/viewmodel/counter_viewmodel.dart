import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/src/mvvm/model/counter_model.dart';
import 'package:flutter_design_patterns/src/mvvm/viewmodel/counter_repository.dart';

class CounterViewModel {
  late CounterRepository _counterRepo;

  ValueNotifier<CounterModel> get counter => _counterRepo.counterModel;

  CounterViewModel({required int count}) {
    _counterRepo = CounterRepository(count: count);
  }

  void increment() => _counterRepo.increment();

  void decrement() => _counterRepo.decrement();
}
