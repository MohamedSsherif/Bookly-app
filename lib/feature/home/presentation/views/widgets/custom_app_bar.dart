import 'package:booklyapp/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
      padding: const EdgeInsets.only(left: 20, right: 20, top: 60, bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(AssetsData.logo,
              width: MediaQuery.of(context).size.width * 0.25),
          IconButton(
            icon: const Icon(FontAwesomeIcons.magnifyingGlass),
            onPressed: () {
              GoRouter.of(context).push('/search');
            },
          )
        ],
      ),
    );
  }
}
