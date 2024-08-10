import 'package:booklyapp/constants.dart';
import 'package:flutter/material.dart';

class CustomListHomeViewItems extends StatelessWidget {
  const CustomListHomeViewItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.33,
        width: MediaQuery.of(context).size.width * 0.45,
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