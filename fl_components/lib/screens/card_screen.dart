import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardTextWidget(),
          SizedBox(height: 10),
          CustomCardImageWidget(
            imagePlaceHolder: 'A beatiful landscape',
            imageUrl:
                'https://s1.1zoom.me/big3/123/Summer_Scenery_Mountains_454585.jpg',
          ),
          SizedBox(height: 10),
          CustomCardImageWidget(
            imageUrl: 'https://fondosmil.com/fondo/64057.jpg',
          ),
          SizedBox(height: 10),
          CustomCardImageWidget(
            imageUrl:
                'https://3.bp.blogspot.com/-IZxESReH6n4/XQ0bLMliPeI/AAAAAAAAHlQ/6OfrGxWjNes1D3qfm1tKWS_1qeaDsHENQCKgBGAs/w5120-h2880-c/halo-infinite-master-chief-uhdpaper.com-8K-10.jpg',
          ),
          SizedBox(height: 100),
        ],
      ),
    );
  }
}
