part of 'articales_cubit.dart';

@freezed
class ArticalesState with _$ArticalesState {
  const factory ArticalesState.initial() = _Initial;
  const factory ArticalesState.loading() = Loading;
  const factory ArticalesState.succes(List<ArticalEntity> data) = Success;
  const factory ArticalesState.error(ErrorHandler errorHandler) = Error;
}
