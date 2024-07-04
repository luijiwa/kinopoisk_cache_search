import 'package:kinopoisk_test/src/core/rest_client/rest_client.dart';
import 'package:kinopoisk_test/src/feature/search_screen/data/data_source/search_data_source.dart';
import 'package:kinopoisk_test/src/feature/search_screen/data/repository/i_search_repository.dart';

class SearchDataSourceNetwork implements SearchDataSource {
  final RestClient restClient;
  SearchDataSourceNetwork(this.restClient);
  @override
  Future<List<String>> getSearchList(String query) {
    try {
      // TODO: implement getSearchList
      throw UnimplementedError();
    } catch (e) {
      rethrow;
    }
  }
}
