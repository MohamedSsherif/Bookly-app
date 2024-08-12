import 'package:booklyapp/core/utils/styles.dart';
import 'package:booklyapp/feature/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:booklyapp/feature/home/presentation/views/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';


class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBar(),
         FeaturedBooksListView(),
         Padding(
           padding: EdgeInsets.only(top: 40, left: 20),
           child: Text(
            'Best Seller',
            style: Styles.titleMedium,
           ),
         )
      
      ],
    );
  }
}

