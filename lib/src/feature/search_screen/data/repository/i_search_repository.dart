import 'package:kinopoisk_test/src/feature/search_screen/model/film.dart';

abstract interface class ISearchRepository {
  Future<FilmData> getSearchList(String query);
}
