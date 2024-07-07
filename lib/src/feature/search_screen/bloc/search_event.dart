part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  /// Представляет событие, первоначальной загрузки экрана поиска.
  const factory SearchEvent.started() = _Started;

  /// Представляет событие, изменения  поиска.
  ///
  ///  Параметр [query] представляет новый поисковый запрос.
  const factory SearchEvent.searchTypeChanged(String query) =
      _SearchTypeChanged;
}
