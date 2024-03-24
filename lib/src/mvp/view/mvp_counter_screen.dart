import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/src/mvp/model/counter_model.dart';
import 'package:flutter_design_patterns/src/mvp/presenter/counter_presenter.dart';
import 'package:flutter_design_patterns/src/mvp/view/counter_view.dart';

class MvpCounterScreen extends StatefulWidget {
  const MvpCounterScreen({super.key});

  @override
  State<MvpCounterScreen> createState() => _MvpCounterScreenState();
}

class _MvpCounterScreenState extends State<MvpCounterScreen>
    implements CounterView {
  late final CounterModel _counterModel;
  late final CounterPresenter _counterPresenter;

  @override
  void initState() {
    _counterModel = CounterModel(counter: 0);
    _counterPresenter = CounterPresenter(
      counterModel: _counterModel,
      counterView: this,
    );
    super.initState();
  }

  @override
  void updateCounter(int value) {
    setState(() {
      _counterModel.counter = value;
    });
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
          "MVP",
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
              _counterModel.counter.toString(),
              style: const TextStyle(fontSize: 70.0),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton.outlined(
                  onPressed: _counterPresenter.increment,
                  icon: const Icon(
                    Icons.add,
                    size: 50,
                  ),
                ),
                IconButton.outlined(
                  onPressed: _counterPresenter.decrement,
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
