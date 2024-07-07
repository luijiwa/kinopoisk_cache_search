import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'film.freezed.dart';
part 'film.g.dart';

@freezed
class FilmData with _$FilmData {
  const factory FilmData({
    @Default(<MediaItem>[]) List<MediaItem> docs,
    @Default(0) int total,
    @Default(0) int limit,
    @Default(0) int page,
    @Default(0) int pages,
  }) = _FilmData;

  factory FilmData.fromJson(Map<String, dynamic> json) =>
      _$FilmDataFromJson(json);
}

@freezed
class MediaItem with _$MediaItem {
  const factory MediaItem({
    @Default(0) int id,
    @Default('') String name,
    @Default('') String alternativeName,
    @Default('') String type,
    @Default(0) int year,
    @Default('') String description,
    Poster? poster,
    Rating? rating,
    @Default(<Genre>[]) List<Genre> genres,
  }) = _MediaItem;

  factory MediaItem.fromJson(Map<String, dynamic> json) =>
      _$MediaItemFromJson(json);
}

@freezed
class Genre with _$Genre {
  const factory Genre({
    @Default('') String name,
  }) = _Genre;

  factory Genre.fromJson(Map<String, dynamic> json) => _$GenreFromJson(json);
}

@freezed
class Poster with _$Poster {
  const factory Poster({
    @Default('') String url,
    @Default('') String previewUrl,
  }) = _Poster;

  factory Poster.fromJson(Map<String, dynamic> json) => _$PosterFromJson(json);
}

@freezed
class Rating with _$Rating {
  const factory Rating({
    @Default(0.0) double kp,
    @Default(0.0) double imdb,
  }) = _Rating;

  factory Rating.fromJson(Map<String, dynamic> json) => _$RatingFromJson(json);
}
