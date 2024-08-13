import 'package:booklyapp/constants.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.45,
        height: MediaQuery.of(context).size.height * 0.35,
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