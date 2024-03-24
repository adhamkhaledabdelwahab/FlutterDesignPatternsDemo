import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/src/mvc/controller/counter_controller.dart';
import 'package:flutter_design_patterns/src/mvc/model/counter_model.dart';

class MvcCounterScreen extends StatefulWidget {
  const MvcCounterScreen({super.key});

  @override
  State<MvcCounterScreen> createState() => _MvcCounterScreenState();
}

class _MvcCounterScreenState extends State<MvcCounterScreen> {
  late final CounterModel _counter;
  late final CounterController _controller;

  @override
  void initState() {
    _counter = CounterModel(count: 0);
    _controller = CounterController(counterModel: _counter);
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
          "MVC",
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
              _counter.count.toString(),
              style: const TextStyle(fontSize: 70.0),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton.outlined(
                  onPressed: () => setState(() => _controller.increment()),
                  icon: const Icon(
                    Icons.add,
                    size: 50,
                  ),
                ),
                IconButton.outlined(
                  onPressed: () => setState(() => _controller.decrement()),
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
