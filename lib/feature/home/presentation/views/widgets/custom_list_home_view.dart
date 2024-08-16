import 'package:booklyapp/constants.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.imageUrl});

  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: AspectRatio(
        aspectRatio: 2.7 / 3.6,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                  imageUrl,
                ),
                fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
