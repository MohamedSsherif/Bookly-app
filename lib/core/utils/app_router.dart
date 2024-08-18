import 'package:booklyapp/core/utils/service_locator.dart';
import 'package:booklyapp/feature/home/data/models/book_model/book_model.dart';
import 'package:booklyapp/feature/home/data/repos/home_repo_impl.dart';
import 'package:booklyapp/feature/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:booklyapp/feature/home/presentation/views/home_views.dart';
import 'package:booklyapp/feature/home/presentation/views/widgets/book_details_view.dart';
import 'package:booklyapp/feature/search/presentation/views/widgets/search_view_body.dart';
import 'package:booklyapp/feature/splash/presentation/views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: '/homeView',
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: '/BookDetailesView',
      builder: (context, state) => BlocProvider(
        create: (context) => SimilarBooksCubit(
          getIt.get<HomeRepoImpl>(),
        ),
        child: BookDetailsView(
          bookModel: state.extra as BookModel,
        ),
      ),
    ),
    GoRoute(
      path: '/Search',
      builder: (context, state) => const SearchViewBody(),
    ),
  ]);
}
