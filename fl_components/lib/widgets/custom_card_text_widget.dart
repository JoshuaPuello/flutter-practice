import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardTextWidget extends StatelessWidget {
  const CustomCardTextWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            title: Text('Main Title'),
            leading: Icon(Icons.filter_hdr, color: AppTheme.primaryColor),
            subtitle: Text(
                'Irure amet nisi commodo amet Lorem. Deserunt aliquip sunt consectetur consectetur do et enim occaecat. Adipisicing aliqua pariatur cillum culpa culpa quis eiusmod dolore in sint ex irure.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('Ok'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
