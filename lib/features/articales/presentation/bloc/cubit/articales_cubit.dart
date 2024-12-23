import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/networking/api_error_handler.dart';
import '../../../domain/entities/artical.dart';
import '../../../domain/usecases/get_articales_usecase.dart';

part 'articales_state.dart';
part 'articales_cubit.freezed.dart';

class ArticalesCubit extends Cubit<ArticalesState> {
  ArticalesCubit({required this.getArticalesUsecase})
      : super(const ArticalesState.initial());
  final GetArticalesUsecase getArticalesUsecase;
  Future<void> getAllArticales() async {
    emit(const ArticalesState.loading());
    final response = await getArticalesUsecase.call();
    response.when(success: (articales) {
      emit(ArticalesState.succes(articales));
    }, failure: (e) {
      emit(ArticalesState.error(e));
    });
  }
}
