import 'package:kinopoisk_test/src/feature/search_screen/data/data_source/search_data_source.dart';
import 'package:kinopoisk_test/src/feature/search_screen/data/repository/i_search_repository.dart';

final class SearchRepository implements ISearchRepository {
  final SearchDataSource dataSource;
  SearchRepository(this.dataSource);
  @override
  Future<List<String>> getSearchList(String query) {
    // TODO: implement getSearchList
    throw UnimplementedError();
  }
}
