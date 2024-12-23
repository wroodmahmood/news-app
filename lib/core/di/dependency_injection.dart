import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:test_clean_archi/features/articales/data/repos/artical_repository_impl.dart';
import 'package:test_clean_archi/features/articales/domain/usecases/get_articales_usecase.dart';
import 'package:test_clean_archi/features/articales/presentation/bloc/cubit/articales_cubit.dart';

import '../../features/articales/data/datasources/remote/news_api_service.dart';
import '../../features/articales/domain/repo/artical_repository.dart';
import '../networking/dio_factory.dart';

final sl = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  sl.registerLazySingleton<NewsApiService>(() => NewsApiService(dio));

  // articales Repo
  sl.registerLazySingleton<ArticalRepository>(
      () => ArticalRepositoryImpl(newsApiService: sl()));
  //usecase
  sl.registerLazySingleton(() => GetArticalesUsecase(sl()));
  //bloc
  sl.registerFactory(() => ArticalesCubit(getArticalesUsecase: sl()));
}
