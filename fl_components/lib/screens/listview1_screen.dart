import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  const Listview1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const List<String> options = [
      'Halo Reach',
      'Halo Infinity',
      'Halo Guarding',
      'FIFA 21'
    ];

    return Scaffold(
        appBar: AppBar(
          title: const Text('Listview 1'),
        ),
        body: ListView(
          children: [
            ...options
                .map(
                  (value) => ListTile(
                    title: Text(value),
                    trailing: const Icon(Icons.arrow_forward_ios_outlined),
                  ),
                )
                .toList()
          ],
        ));
  }
}
