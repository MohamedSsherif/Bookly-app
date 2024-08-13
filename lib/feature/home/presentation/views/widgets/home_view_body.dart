import 'package:booklyapp/constants.dart';
import 'package:booklyapp/core/utils/assets.dart';
import 'package:booklyapp/core/utils/styles.dart';
import 'package:booklyapp/feature/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:booklyapp/feature/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:booklyapp/feature/home/presentation/views/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        //mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomAppBar(),
          FeaturedBooksListView(),
          SizedBox(height: 50),
          Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              'Best Seller',
              style: Styles.textStyle18,
            ),
          ),
          SizedBox(height: 20),
          BestSellerListViewItem(),
        ],
      ),
    );
  }
}

