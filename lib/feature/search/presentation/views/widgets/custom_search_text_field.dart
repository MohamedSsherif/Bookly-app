import 'package:booklyapp/feature/search/presentation/manager/search_book_cubit/search_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSearchTextField extends StatelessWidget {
  CustomSearchTextField({super.key});

  final textController = TextEditingController();
  final textKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: textKey,
      child: TextFormField(
        controller: textController,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'This Field is required';
          } else {
            return null;
          }
        },
        onFieldSubmitted: (value) {
          if (textKey.currentState!.validate()) {
            BlocProvider.of<SearchCubit>(context)
                .fetchSearchedBooks(catagory: value);
            textController.clear();
          }
        },
        decoration: InputDecoration(
          hintText: 'Search',
          suffixIcon: IconButton(
            onPressed: () {
              if (textKey.currentState!.validate()) {
                BlocProvider.of<SearchCubit>(context)
                    .fetchSearchedBooks(catagory: textController.text);
                textController.clear();
              }
            },
            icon: const Icon(
              Icons.search_rounded,
              size: 25,
            ),
          ),
          enabledBorder: buildOutlineInputBorder(),
          focusedBorder: buildOutlineInputBorder(),
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Colors.white),
    );
  }
}




// import 'package:flutter/material.dart';

// class CustomSearchTextField extends StatelessWidget {
//   const CustomSearchTextField({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(20.0),
//       child: TextField(
//         onSubmitted: (query) {
         
//         },
//         decoration: InputDecoration(
//           hintText: 'Search',
//           prefixIcon: const Icon(Icons.search),
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(10),
//           ),
//         ),
//       ),
//     );
//   }
// }
