import 'package:drift/drift.dart';
import 'package:kinopoisk_test/src/core/database/database.dart';
import 'package:kinopoisk_test/src/core/database/src/tables/media_item_table.dart';

part 'app_database.g.dart';

/// {@template app_database}
/// The drift-managed database configuration
/// {@endtemplate}
@DriftDatabase(
  tables: [
    MediaItemTable,
    PostersTable,
    RatingsTable,
    GenresTable,
  ],
  // include: {
  //   'tables/index.drift',
  // },
)
class AppDatabase extends _$AppDatabase {
  /// {@macro app_database}
  AppDatabase([QueryExecutor? executor]) : super(executor ?? createExecutor());

  @override
  int get schemaVersion => 1;
}
