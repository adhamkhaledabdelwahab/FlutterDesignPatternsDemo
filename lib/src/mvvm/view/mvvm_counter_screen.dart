import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/src/mvvm/viewmodel/counter_viewmodel.dart';

class MvvmCounterScreen extends StatefulWidget {
  const MvvmCounterScreen({super.key});

  @override
  State<MvvmCounterScreen> createState() => _MvvmCounterScreenState();
}

class _MvvmCounterScreenState extends State<MvvmCounterScreen> {
  late final CounterViewModel _counterViewModel;
  late int _counter;

  @override
  void initState() {
    _counter = 0;
    _counterViewModel = CounterViewModel(count: _counter);
    _counterViewModel.counter.addListener(() {
      setState(() {
        _counter = _counterViewModel.counter.value.counter;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        title: Text(
          "MVVM",
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                color: Colors.white,
              ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _counter.toString(),
              style: const TextStyle(fontSize: 70.0),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton.outlined(
                  onPressed: _counterViewModel.increment,
                  icon: const Icon(
                    Icons.add,
                    size: 50,
                  ),
                ),
                IconButton.outlined(
                  onPressed: _counterViewModel.decrement,
                  icon: const Icon(
                    Icons.remove,
                    size: 50,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
