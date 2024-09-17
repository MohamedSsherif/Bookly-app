import 'package:booklyapp/core/widgets/custom_error_widget.dart';
import 'package:booklyapp/feature/home/presentation/views/widgets/book_list_view_item.dart';
import 'package:booklyapp/feature/search/presentation/manager/search_book_cubit/search_book_cubit.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchSuccess) {
          return ListView.builder(
              shrinkWrap: true, 
              //physics: const NeverScrollableScrollPhysics(),
              itemCount: state.books.length,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: BookListViewItem(
                    bookModel: state.books[index],
                  ),
                );
              });
        } else if (state is SearchFailure) {
          return CustomErrorWidget(
            errMessage: state.erroMessage,
          );
        } else if (state is SearchInitial) {
          return const Center(
            child: Text('No results yet'),
          );
        } else {
          

          return const CircularProgressIndicator();
        }
      },
    );
  }
}