import 'package:flutter/material.dart';

class imagesV extends StatelessWidget {
  const imagesV({
    required this.playingDices,
  });

  final List<String> playingDices;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 100,
          child: Image(image: AssetImage(playingDices[0])),
        ),
        SizedBox(width: 20),
        Container(
          height: 100,
          child: Image(image: AssetImage(playingDices[1])),
        ),
      ],
    );
  }
}

