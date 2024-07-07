import 'package:kinopoisk_test/src/feature/search_screen/model/film.dart';

/// Интерфейс для получения результатов поиска медиа-элементов
/// по заданному запросу и сохранения результата в БД
abstract interface class SearchDataSource {
  /// Метод для поиска медиа-элементов
  Future<FilmData> getSearchList(String query);

  /// Метод предназначен исключительно для локального сохранения фильмов в БД
  Future<void> insertList(List<MediaItem> mediaItems);
}
