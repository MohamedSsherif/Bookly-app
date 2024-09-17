import 'package:booklyapp/core/utils/styles.dart';
import 'package:booklyapp/core/widgets/custom_button.dart';
import 'package:booklyapp/feature/home/data/models/book_model/book_model.dart';
import 'package:booklyapp/feature/home/presentation/views/widgets/book_rating.dart';
import 'package:booklyapp/feature/home/presentation/views/widgets/books_action.dart';
import 'package:booklyapp/feature/home/presentation/views/widgets/custom_books_details_appbar.dart';
import 'package:booklyapp/feature/home/presentation/views/widgets/custom_book_item.dart';
import 'package:booklyapp/feature/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const CustomBookDetailsAppBar(),
                Padding(
                  padding:const EdgeInsets.only(top: 24.0),
                  child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child:  CustomBookImage(
                        imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ??
                            'https://th.bing.com/th/id/R.e10635ff3da0341144bdfddbbfe067be?rik=bSbed0euVqUutQ&riu=http%3a%2f%2fwww.fosternow.com.au%2fwp-content%2fuploads%2f2015%2f06%2fpicture-books-for-children-books.jpg&ehk=d2pVJFGXrW2pQmv3IcW2JFEbw%2bHjStz0jS5CgD80kKA%3d&risl=&pid=ImgRaw&r=0',
                      )),
                ),
                const SizedBox(height: 25),
                 Text(
                  bookModel.volumeInfo.title!,
                  style: Styles.textStyle30,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 6),
                Text(
                  bookModel.volumeInfo.authors![0],
                  style: Styles.textStyle18.copyWith(
                      color: Colors.grey, fontStyle: FontStyle.italic),
                ),
                const SizedBox(height: 14),
                const BookRating(
                  mainAxisAlignment: MainAxisAlignment.center,
                  rating: 4,
                  count: 2945,
                ),
                const SizedBox(height: 20),
                 BookAction(
                  bookModel: bookModel,
                ),
                const Expanded(child: SizedBox(height: 15)),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Text('You can also like',
                        style: Styles.textStyle14
                            .copyWith(fontWeight: FontWeight.w600))),
                const SizedBox(height: 5),
                const SimilarBooksListView()
              ],
            ),
          ),
        )
      ],
    );
  }
}
