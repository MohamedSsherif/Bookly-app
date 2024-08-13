import 'package:booklyapp/constants.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 3.6,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.red,
          image: const DecorationImage(
              image: AssetImage(testImage), fit: BoxFit.fill),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}