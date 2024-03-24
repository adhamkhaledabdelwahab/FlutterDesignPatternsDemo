import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/src/mvi/intent/counter_intent.dart';
import 'package:flutter_design_patterns/src/mvi/intent/counter_viewmodel.dart';

class MviCounterScreen extends StatefulWidget {
  const MviCounterScreen({super.key});

  @override
  State<MviCounterScreen> createState() => _MviCounterScreenState();
}

class _MviCounterScreenState extends State<MviCounterScreen> {
  late final CounterViewModel _counterViewModel;

  @override
  void initState() {
    _counterViewModel = CounterViewModel();
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
          "MVI",
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
            ValueListenableBuilder(
              valueListenable: _counterViewModel,
              builder: (context, counter, child) {
                return Text(
                  counter.counterModel.counter.toString(),
                  style: const TextStyle(fontSize: 70.0),
                );
              },
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton.outlined(
                  onPressed: () =>
                      _counterViewModel.handleIntent(CounterIntent.increment),
                  icon: const Icon(
                    Icons.add,
                    size: 50,
                  ),
                ),
                IconButton.outlined(
                  onPressed: () =>
                      _counterViewModel.handleIntent(CounterIntent.decrement),
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
