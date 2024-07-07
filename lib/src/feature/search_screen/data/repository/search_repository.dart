import 'dart:async';

import 'package:kinopoisk_test/src/core/utils/refined_logger.dart';
import 'package:kinopoisk_test/src/feature/search_screen/data/data_source/search_data_source.dart';
import 'package:kinopoisk_test/src/feature/search_screen/data/repository/i_search_repository.dart';
import 'package:kinopoisk_test/src/feature/search_screen/model/film.dart';

/// Класс `SearchRepository` представляет собой репозиторий для поиска фильмов.
/// Он предоставляет методы для выполнения поиска и работы с данными.
final class SearchRepository implements ISearchRepository {
  /// Данный источник данных используется для выполнения внешнего поиска фильмов.
  final SearchDataSource dataSource;

  /// Данный источник данных используется для выполнения внутреннего поиска фильмов и сохранения результатов.
  final SearchDataSource searchDao;

  /// Создает новый экземпляр класса `SearchRepository`.
  ///
  /// Аргументы:
  /// - [dataSource]: источник данных для внешнего поиска фильмов.
  /// - [searchDao]: источник данных для внутреннего поиска фильмов и сохранения результатов.
  const SearchRepository(this.dataSource, this.searchDao);

  @override
  Future<FilmData> getSearchList(String query) async {
    // Выполняем внутренний поиск
    final internalResult = await searchDao.getSearchList(query);

    // Если результат внутреннего поиска пуст, выполняем внешний поиск
    if (internalResult.docs.isEmpty) {
      final externalResult = await dataSource.getSearchList(query);

      // Сохраняем результаты внешнего поиска в БД
      unawaited(searchDao.insertList(externalResult.docs));

      return externalResult;
    }
    logger.error('Result: $internalResult');

    return internalResult;
  }
}
