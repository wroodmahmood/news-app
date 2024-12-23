import 'package:test_clean_archi/core/networking/api_result.dart';
import 'package:test_clean_archi/features/articales/domain/entities/artical.dart';

abstract class ArticalRepository {
  Future<ApiResult<List<ArticalEntity>>> getArticales();
}
