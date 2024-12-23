import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'package:test_clean_archi/core/networking/api_constants.dart';
import 'package:test_clean_archi/features/articales/data/models/artical_model.dart';

part 'news_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class NewsApiService {
  factory NewsApiService(Dio dio, {String? baseUrl}) = _NewsApiService;

  @GET('top-headlines')
  Future<ArticalesResponse> getNewsArticales(
      {@Query("apiKey") String? apiKey,
      @Query("country") String? country,
      @Query("category") String? category});
}
