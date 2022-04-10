import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  const Listview2Screen({Key? key}) : super(key: key);

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
        title: const Text('Listview 2'),
      ),
      body: ListView.separated(
        separatorBuilder: (_, __) => const Divider(),
        itemCount: options.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(options[index]),
          trailing: const Icon(Icons.arrow_forward_ios_outlined),
          onTap: () => {},
        ),
      ),
    );
  }
}
