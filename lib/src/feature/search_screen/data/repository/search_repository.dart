import 'dart:async';

import 'package:kinopoisk_test/src/core/utils/refined_logger.dart';
import 'package:kinopoisk_test/src/feature/search_screen/data/data_source/search_data_source.dart';
import 'package:kinopoisk_test/src/feature/search_screen/data/repository/i_search_repository.dart';
import 'package:kinopoisk_test/src/feature/search_screen/model/film.dart';

final class SearchRepository implements ISearchRepository {
  final SearchDataSource dataSource;
  final SearchDataSource searchDao;
  const SearchRepository(this.dataSource, this.searchDao);
  @override
  Future<FilmData> getSearchList(String query) async {
    final internalResult = await searchDao.getSearchList(query);
    if (internalResult.docs.isEmpty) {
      final externalResult = await dataSource.getSearchList(query);
      unawaited(searchDao.insertList(externalResult.docs));
      return externalResult;
    }
    logger.error('Result: $internalResult');
    return internalResult;
  }
}
