import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  //const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),

      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {
              setState(() {
                counter += 1;
              });
            }, child: const Text('Add')),
            const SizedBox(
              width: 40,
            ),
            Text('$counter'),
            const SizedBox(
              width: 40,
            ),
            ElevatedButton(onPressed: () {
              setState(() {
                counter -= 1;
              });
            },
                child: const Text('Min')
            ),
          ],
        ),
      ),
    );
  }
}
