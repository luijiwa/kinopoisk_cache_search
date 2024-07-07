part of 'search_bloc.dart';

/// Представляет состояние экрана поиска.
///
/// Этот класс содержит текущий статус экрана и результаты поиска.
/// Он используется компонентом BLoC для управления состоянием экрана поиска.
@freezed
class SearchState with _$SearchState {
  /// Создает новый экземпляр класса [SearchState].
  ///
  /// Параметр [screenStatus] представляет текущий статус экрана.
  /// Параметр [searchStatus] представляет текущий статус поиска.
  /// Параметр [mediaItems] представляет список результатов поиска.
  const factory SearchState({
    @Default(ScreenStatus.initial) ScreenStatus screenStatus,
    @Default(ScreenStatus.initial) ScreenStatus searchStatus,
    @Default(<MediaItem>[]) List<MediaItem> mediaItems,
  }) = _SearchState;
}
