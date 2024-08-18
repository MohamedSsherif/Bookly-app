import 'package:booklyapp/core/widgets/custom_error_widget.dart';
import 'package:booklyapp/feature/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:booklyapp/feature/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.13,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return const CustomBookImage(
                    imageUrl:
                        'https://th.bing.com/th/id/R.e10635ff3da0341144bdfddbbfe067be?rik=bSbed0euVqUutQ&riu=http%3a%2f%2fwww.fosternow.com.au%2fwp-content%2fuploads%2f2015%2f06%2fpicture-books-for-children-books.jpg&ehk=d2pVJFGXrW2pQmv3IcW2JFEbw%2bHjStz0jS5CgD80kKA%3d&risl=&pid=ImgRaw&r=0',
                  );
                }),
          );
        } else if (state is SimilarBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
    ;
  }
}
