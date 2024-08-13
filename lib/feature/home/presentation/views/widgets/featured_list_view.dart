import 'package:booklyapp/feature/home/presentation/views/widgets/custom_list_home_view.dart';
import 'package:flutter/material.dart';

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
         
        return const CustomBookImage();
      } ),
    );
  }
}