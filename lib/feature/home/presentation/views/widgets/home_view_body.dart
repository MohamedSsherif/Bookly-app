import 'package:booklyapp/constants.dart';
import 'package:booklyapp/feature/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:booklyapp/feature/home/presentation/views/widgets/custom_list_home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBar(),
         FeaturedBooksListView(),
      
      ],
    );
  }
}
class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
           scrollDirection: Axis.horizontal,
           shrinkWrap: true,
        itemBuilder:(context,index){
         
        return const CustomListHomeViewItems();
      } ),
    );
  }
}
