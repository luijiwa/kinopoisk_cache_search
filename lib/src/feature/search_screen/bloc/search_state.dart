part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    @Default(ScreenStatus.initial) ScreenStatus screenStatus,
  }) = _SearchState;
}
