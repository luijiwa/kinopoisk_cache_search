abstract interface class SearchDataSource {
  Future<List<String>> getSearchList(String query);
}
