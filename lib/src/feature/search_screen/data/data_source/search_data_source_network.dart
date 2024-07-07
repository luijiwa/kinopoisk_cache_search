import 'package:kinopoisk_test/src/core/rest_client/rest_client.dart';
import 'package:kinopoisk_test/src/core/utils/refined_logger.dart';
import 'package:kinopoisk_test/src/feature/search_screen/data/data_source/search_data_source.dart';
import 'package:kinopoisk_test/src/feature/search_screen/model/film.dart';

/// Данные для поиска фильмов в интернете.
///
/// Этот класс предоставляет методы для поиска фильмов с использованием строки запроса.
/// Он использует `RestClient`, чтобы выполнять HTTP-запросы к API Kinopoisk.
class SearchDataSourceNetwork implements SearchDataSource {
  /// [RestClient], используется для выполнения HTTP-запросов.
  final RestClient restClient;

  /// Конструктор класса `SearchDataSourceNetwork`.
  ///
  /// Принимает экземпляр `RestClient`.
  const SearchDataSourceNetwork(this.restClient);

  @override
  Future<FilmData> getSearchList(String query) async {
    try {
      logger.info('Поиск в интернете по слову: $query');
      final films = await restClient.get(
        '/v1.4/movie/search',
        queryParams: {
          'query': query,
          'page': '1',
          'limit': '10',
        },
        headers: {
          'X-API-KEY': 'Q87FN8C-VDC4VJR-JF8W9C9-G17DS97',
        },
      );
      logger.info(films.toString());
      if (films == null) throw Exception(films.toString());

      return FilmData.fromJson(films);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> insertList(List<MediaItem> mediaItems) {
    throw UnimplementedError(
      'Метод предназначен исключительно для локального сохранения',
    );
  }
}
