/// Представляет статус экрана.
///
/// Перечисление `ScreenStatus` используется для указания текущего состояния экрана. Следующие значения доступны:
/// - `initial`: указывает на начальное состояние до выполнения каких-либо действий.
/// - `loading`: указывает на то, что экран сейчас загружается.
/// - `success`: указывает на то, что действие на экране было успешным.
/// - `empty`: указывает на то, что на экране нет данных для отображения.
/// - `failure`: указывает на то, что действие на экране завершилось с ошибкой.
enum ScreenStatus {
  /// Начальное состояние до выполнения каких-либо действий.
  initial,

  /// Состояние, когда экран сейчас загружается.
  loading,

  /// Состояние, когда действие на экране было успешным.
  success,

  /// Состояние, когда на экране нет данных для отображения.
  empty,

  /// Состояние, когда действие на экране завершено с ошибкой.
  failure,
}

extension ScreenStatusX on ScreenStatus {
  bool get isInitial => this == ScreenStatus.initial;
  bool get isInLoading => this == ScreenStatus.loading;
  bool get isSuccess => this == ScreenStatus.success;
  bool get isEmpty => this == ScreenStatus.empty;
  bool get isFailure => this == ScreenStatus.failure;
}
