import 'package:bookly_app1/Core/utilis/assets.dart';
import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: AspectRatio(
            aspectRatio: 2.7 / 4,
            child: Container(
              height: 200,
              width: 100,
              decoration: BoxDecoration(
                image: const DecorationImage(
                    image: AssetImage(AssetsData.testimage), fit: BoxFit.fill),
                borderRadius: BorderRadius.circular(12),
                color: Colors.red,
              ),
            )));
  }
}
