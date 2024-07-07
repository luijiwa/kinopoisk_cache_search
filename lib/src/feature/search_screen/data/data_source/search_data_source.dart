import 'package:kinopoisk_test/src/feature/search_screen/model/film.dart';

abstract interface class SearchDataSource {
  Future<FilmData> getSearchList(String query);

  Future<void> insertList(List<MediaItem> mediaItems);
}
