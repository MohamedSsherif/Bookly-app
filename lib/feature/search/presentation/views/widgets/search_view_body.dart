import 'package:booklyapp/feature/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
           CustomSearchTextField(),
             Expanded(
              child: Center(
                child: Text('Search Results'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

