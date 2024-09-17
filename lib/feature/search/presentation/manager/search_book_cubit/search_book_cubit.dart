import 'package:bloc/bloc.dart';
import 'package:booklyapp/feature/home/data/models/book_model/book_model.dart';
import 'package:booklyapp/feature/search/data/repos/search_repo.dart';
import 'package:equatable/equatable.dart';

part 'search_book_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.homeRepo) : super(SearchInitial());
  final SearchRepo homeRepo;
  Future<void> fetchSearchedBooks({required String catagory}) async {
    emit(SearchLoading());
    var result = await homeRepo.fetchSearchedBooks(category: catagory);
    result.fold(
      (failure) => emit(
        SearchFailure(failure.errMessage),
      ),
      (books) => emit(
        SearchSuccess(books),
      ),
    );
  }
}