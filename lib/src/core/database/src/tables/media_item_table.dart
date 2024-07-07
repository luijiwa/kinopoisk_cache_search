import 'package:drift/drift.dart';

@TableIndex(name: 'media_item_name', columns: {#name})
class MediaItemTable extends Table {
  IntColumn get id => integer()();
  TextColumn get name => text()();
  TextColumn get alternativeName => text()();
  TextColumn get type => text()();
  IntColumn get year => integer()();
  TextColumn get description => text()();

  @override
  Set<Column> get primaryKey => {id}; // Указываем ID как первичный ключ
}

class PostersTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get docId =>
      integer().references(MediaItemTable, #id)(); // ID фильма
  TextColumn get url => text()();
  TextColumn get previewUrl => text()();
}

class RatingsTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get docId =>
      integer().references(MediaItemTable, #id)(); // ID фильма
  RealColumn get kp => real()();
  RealColumn get imdb => real()();
}

class GenresTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get docId =>
      integer().references(MediaItemTable, #id)(); // ID фильма
  TextColumn get name => text()();
}
