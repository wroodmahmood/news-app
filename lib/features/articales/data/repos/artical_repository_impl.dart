import 'package:test_clean_archi/core/networking/api_constants.dart';
import 'package:test_clean_archi/core/networking/api_result.dart';
import 'package:test_clean_archi/features/articales/data/models/artical_model.dart';
import 'package:test_clean_archi/features/articales/domain/repo/artical_repository.dart';

import '../../../../core/networking/api_error_handler.dart';
import '../datasources/remote/news_api_service.dart';

class ArticalRepositoryImpl implements ArticalRepository {
  final NewsApiService _newsApiService;

  ArticalRepositoryImpl({required NewsApiService newsApiService})
      : _newsApiService = newsApiService;
  @override
  Future<ApiResult<List<ArticalModel>>> getArticales() async {
    try {
      final response = await _newsApiService.getNewsArticales(
          apiKey: ApiConstants.apiKey,
          category: ApiConstants.category,
          country: ApiConstants.country);
      return ApiResult.success(response.articales);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
