// import 'package:booklyapp/core/utils/styles.dart';
// import 'package:booklyapp/feature/home/presentation/views/widgets/book_list_view_item.dart';
// import 'package:booklyapp/feature/search/manager/search_book_cubit/search_book_cubit.dart';
// import 'package:booklyapp/feature/search/presentation/views/widgets/custom_search_text_field.dart';
// import 'package:booklyapp/feature/search/presentation/views/widgets/search_result_list_view.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class SearchViewBody extends StatelessWidget {
//   const SearchViewBody({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             CustomSearchTextField(
//               onSubmitted: (query) {
//                 // Trigger the search when the user submits the query
//                 context.read<SearchBookCubit>().fetchBooksByQuery(query: query);
//               },
//             ),
//             const Padding(
//               padding: EdgeInsets.all(12.0),
//               child: Text(
//                 'Search Results',
//                 style: Styles.textStyle16,
//               ),
//             ),
//             const Expanded(child: SearchResultListView()),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:booklyapp/core/utils/styles.dart';
import 'package:booklyapp/feature/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:booklyapp/feature/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 80,
              ),
             CustomSearchTextField(),
              const SizedBox(
                height: 16,
              ),
              const Text(
                'Search Result',
                style: Styles.textStyle18,
              ),
              const SizedBox(
                height: 16,
              ),
              const Expanded(child: SearchResultListView()),
            ],
          ),
        ),
    );
    
  }
}


