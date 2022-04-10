import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0;

  void incrementCounter() {
    setState(() => counter++);
  }

  void decrementCounter() {
    setState(() => counter--);
  }

  void resetCounter() {
    setState(() => counter = 0);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('AppBar'),
          elevation: 3,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('$counter data'),
              const Text('1'),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: CustomFloatingActions(
          incrementCounter: incrementCounter,
          decrementCounter: decrementCounter,
          resetCounter: resetCounter,
        ),
      ),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {
  final Function incrementCounter;
  final Function decrementCounter;
  final Function resetCounter;

  const CustomFloatingActions(
      {Key? key,
      required this.incrementCounter,
      required this.decrementCounter,
      required this.resetCounter})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          child: const Icon(Icons.exposure_plus_1_outlined),
          onPressed: () => incrementCounter(),
        ),
        FloatingActionButton(
          child: const Icon(Icons.remove_circle_outline),
          onPressed: () => resetCounter(),
        ),
        FloatingActionButton(
          child: const Icon(Icons.exposure_minus_1_outlined),
          onPressed: () => decrementCounter(),
        ),
      ],
    );
  }
}
