import 'package:booklyapp/core/utils/api_service.dart';
import 'package:booklyapp/feature/home/data/repos/home_repo.dart';
import 'package:booklyapp/feature/home/data/repos/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setupServiceLocator() {
  getIt.registerLazySingleton<ApiService>(() => ApiService(Dio()));
  getIt.registerFactory<HomeRepoImpl>(
      () => HomeRepoImpl(getIt.get<ApiService>()));
}
