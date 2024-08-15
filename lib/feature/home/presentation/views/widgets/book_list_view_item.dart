import 'package:booklyapp/constants.dart';
import 'package:booklyapp/core/utils/styles.dart';
import 'package:booklyapp/feature/home/presentation/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        GoRouter.of(context).push('/BookDetailesView');
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.25,
                height: MediaQuery.of(context).size.height * 0.18,
                decoration: BoxDecoration(
                  color: Colors.red,
                  image: const DecorationImage(
                      image: AssetImage(testImage), fit: BoxFit.fill),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            const SizedBox(width: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      'Harry Potter and the Goblet of Fire',
                      style: Styles.textStyle20.copyWith(
                        fontFamily: kGtSectraFine,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(height: 3),
                  const Text(
                    'J.K. Rowling',
                    style: Styles.textStyle14,
                  ),
                   const SizedBox(height: 3),
                  Row(children: [
                    Text('19.99 @',
                        style: Styles.textStyle20.copyWith(
                          fontWeight: FontWeight.bold,
                        )),
                        const Spacer(),
                        const BookRating(),
                  ])
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
