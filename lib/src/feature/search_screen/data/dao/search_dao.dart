import 'dart:async';

import 'package:drift/drift.dart';
import 'package:kinopoisk_test/src/core/database/src/app_database.dart';
import 'package:kinopoisk_test/src/core/database/src/tables/media_item_table.dart';
import 'package:kinopoisk_test/src/core/utils/refined_logger.dart';
import 'package:kinopoisk_test/src/feature/search_screen/data/data_source/search_data_source.dart';
import 'package:kinopoisk_test/src/feature/search_screen/model/film.dart';

part 'search_dao.g.dart';

/// DAO (Data Access Object) для поиска медиа-элементов.
///
/// Этот класс предоставляет методы для получения результатов поиска
/// и взаимодействия с базой данных.
@DriftAccessor(
  tables: [
    MediaItemTable,
    PostersTable,
    RatingsTable,
    GenresTable,
  ],
// include: {tables.drift},
)
class SearchDao extends DatabaseAccessor<AppDatabase>
    with _$SearchDaoMixin
    implements SearchDataSource {
  SearchDao(super.attachedDatabase);

  /// Получает результаты поиска на основе заданного запроса.
  ///
  /// Возвращает [Future], который завершается с объектом [FilmData],
  /// содержащим результаты поиска.
  ///
  /// Выбрасывает [Exception], если при получении результатов
  /// поиска возникает ошибка.
  @override
  Future<FilmData> getSearchList(String query) async {
    try {
      logger.info(mediaItemTable.name.toString());

      // Извлекаем основные данные и связанные данные с помощью JOIN
      final results = await (select(mediaItemTable).join(
        [
          leftOuterJoin(
            postersTable,
            postersTable.docId.equalsExp(mediaItemTable.id),
          ),
          leftOuterJoin(
            ratingsTable,
            ratingsTable.docId.equalsExp(mediaItemTable.id),
          ),
          leftOuterJoin(
            genresTable,
            genresTable.docId.equalsExp(mediaItemTable.id),
          ),
        ],
      )..where(mediaItemTable.name.collate(Collate.noCase).like(query)))
          .get();

      // Преобразуем найденные документы и связанные данные в FilmData
      final Map<int, MediaItem> mediaItems = {};

      for (final result in results) {
        final mediaItem = result.readTable(mediaItemTable);
        final poster = result.readTableOrNull(postersTable);
        final rating = result.readTableOrNull(ratingsTable);
        final genre = result.readTableOrNull(genresTable);

        if (!mediaItems.containsKey(mediaItem.id)) {
          mediaItems[mediaItem.id] = MediaItem(
            id: mediaItem.id,
            name: mediaItem.name,
            alternativeName: mediaItem.alternativeName,
            type: mediaItem.type,
            year: mediaItem.year,
            description: mediaItem.description,
            poster: poster != null
                ? Poster(
                    url: poster.url,
                    previewUrl: poster.previewUrl,
                  )
                : null,
            rating: rating != null
                ? Rating(
                    kp: rating.kp,
                    imdb: rating.imdb,
                  )
                : null,
            genres: <Genre>[
              if (genre != null)
                Genre(
                  name: genre.name,
                ),
            ],
          );
        }
      }
      return FilmData(docs: mediaItems.values.toList());
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> insertList(List<MediaItem> mediaItems) async {
    try {
      for (final mediaItem in mediaItems) {
        final mediaItemEntry = MediaItemTableCompanion(
          id: Value(mediaItem.id),
          name: Value(mediaItem.name),
          alternativeName: Value(mediaItem.alternativeName),
          type: Value(mediaItem.type),
          year: Value(mediaItem.year),
          description: Value(mediaItem.description),
        );

        await into(attachedDatabase.mediaItemTable)
            .insertOnConflictUpdate(mediaItemEntry);

        if (mediaItem.poster != null) {
          await _addPosterData(mediaItem);
        }

        if (mediaItem.rating != null) {
          await _addRatingData(mediaItem);
        }

        for (final genre in mediaItem.genres) {
          await _addGenresData(mediaItem, genre);
        }
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<void> _addGenresData(MediaItem mediaItem, Genre genre) async {
    final genreEntry = GenresTableCompanion(
      docId: Value(mediaItem.id),
      name: Value(genre.name),
    );
    await into(attachedDatabase.genresTable).insertOnConflictUpdate(genreEntry);
  }

  Future<void> _addRatingData(MediaItem mediaItem) async {
    final ratingEntry = RatingsTableCompanion(
      docId: Value(mediaItem.id),
      kp: Value(mediaItem.rating?.kp ?? 0),
      imdb: Value(mediaItem.rating?.imdb ?? 0),
    );
    await into(attachedDatabase.ratingsTable)
        .insertOnConflictUpdate(ratingEntry);
  }

  Future<void> _addPosterData(MediaItem mediaItem) async {
    final posterEntry = PostersTableCompanion(
      docId: Value(mediaItem.id),
      url: Value(mediaItem.poster!.url),
      previewUrl: Value(mediaItem.poster!.previewUrl),
    );
    await into(attachedDatabase.postersTable)
        .insertOnConflictUpdate(posterEntry);
  }
}
