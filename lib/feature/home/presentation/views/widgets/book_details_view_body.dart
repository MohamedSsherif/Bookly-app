import 'package:booklyapp/core/utils/styles.dart';
import 'package:booklyapp/feature/home/presentation/views/widgets/book_rating.dart';
import 'package:booklyapp/feature/home/presentation/views/widgets/custom_books_details_appbar.dart';
import 'package:booklyapp/feature/home/presentation/views/widgets/custom_list_home_view.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CustomBookDetailsAppBar(),
          const Padding(
            padding: EdgeInsets.only(top: 24.0),
            child: CustomBookImage(),
          ),
          const SizedBox(height: 30),
          const Text(
            'The Jungle Book',
            style: Styles.textStyle30,
          ),
          const SizedBox(height: 6),
          Text('Rudyard Kipling',
              style: Styles.textStyle18
                  .copyWith(
                    color: Colors.grey,
                     fontStyle: FontStyle.italic),),
          const BookRating(),
        ],
      ),
    );
  }
}
