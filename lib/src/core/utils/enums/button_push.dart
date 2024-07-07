/// Перечисление, представляющее статус нажатия кнопки.
///
/// Перечисление `ButtonPushStatus` определяет возможные состояния кнопки.
enum ButtonPushStatus {
  /// Начальное состояние перед выполнением какого-либо действия.
  initial,

  /// Состояние, когда кнопка обрабатывается.
  loading,

  /// Состояние, когда действие кнопки выполнено успешно.
  success,

  /// Состояние, когда действие кнопки завершается неудачей.
  failure,
}

extension ButtonPushStatusX on ButtonPushStatus {
  bool get isInitial => this == ButtonPushStatus.initial;
  bool get isInLoading => this == ButtonPushStatus.loading;
  bool get isSuccess => this == ButtonPushStatus.success;
  bool get isFailure => this == ButtonPushStatus.failure;
}
