abstract interface class ISearchRepository {
  Future<List<String>> getSearchList(String query);
}
