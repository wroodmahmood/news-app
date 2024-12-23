import 'package:test_clean_archi/features/articales/domain/entities/artical.dart';

import '../../../../core/networking/api_result.dart';
import '../repo/artical_repository.dart';

class GetArticalesUsecase {
  final ArticalRepository repository;

  GetArticalesUsecase(this.repository);

  Future<ApiResult<List<ArticalEntity>>> call() async {
    return await repository.getArticales();
  }
}
