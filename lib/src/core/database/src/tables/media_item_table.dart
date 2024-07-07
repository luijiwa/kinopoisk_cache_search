import 'package:drift/drift.dart';

/// Представляет таблицу для хранения медиа-элементов (фильмов сериалов).
///
/// Эта таблица содержит столбцы для id, названия, альтернативного названия, типа, года и описания.
@TableIndex(name: 'media_item_name', columns: {#name})
class MediaItemTable extends Table {
  /// Столбец id медиа-элемента.
  IntColumn get id => integer()();

  /// Столбец названия медиа-элемента.
  TextColumn get name => text()();

  /// Столбец названия медиа-элемента.
  TextColumn get alternativeName => text()();
  TextColumn get type => text()();
  IntColumn get year => integer()();
  TextColumn get description => text()();

  @override
  Set<Column> get primaryKey => {id}; // Указываем ID как первичный ключ
}

class PostersTable extends Table {
  IntColumn get id => integer().autoIncrement()();

  /// Столбец id медиа-элемента из таблицы MediaItemTable.
  IntColumn get docId =>
      integer().references(MediaItemTable, #id)(); // ID фильма

  TextColumn get url => text()();
  TextColumn get previewUrl => text()();
}

class RatingsTable extends Table {
  IntColumn get id => integer().autoIncrement()();

  /// Столбец id медиа-элемента из таблицы MediaItemTable.
  IntColumn get docId =>
      integer().references(MediaItemTable, #id)(); // ID фильма

  RealColumn get kp => real()();
  RealColumn get imdb => real()();
}

class GenresTable extends Table {
  IntColumn get id => integer().autoIncrement()();

  /// Столбец id медиа-элемента из таблицы MediaItemTable.
  IntColumn get docId =>
      integer().references(MediaItemTable, #id)(); // ID фильма
  TextColumn get name => text()();
}
