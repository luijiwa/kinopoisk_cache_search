import 'package:kinopoisk_test/src/feature/search_screen/model/film.dart';

/// Интерфейс для работы с репозиторием поиска.
///
/// Этот интерфейс определяет метод `getSearchList`, который возвращает данные о фильмах,
/// соответствующих заданному запросу.
abstract interface class ISearchRepository {
  /// Получение списка фильмов, соответствующих заданному запросу.
  ///
  /// [query] - запрос для поиска фильмов.
  /// Возвращает [Future], который возвращает  [FilmData], содержащий список фильмов,
  /// соответствующих заданному запросу.
  Future<FilmData> getSearchList(String query);
}
