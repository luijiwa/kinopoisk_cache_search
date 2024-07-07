// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'film.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FilmDataImpl _$$FilmDataImplFromJson(Map<String, dynamic> json) =>
    _$FilmDataImpl(
      docs: (json['docs'] as List<dynamic>?)
              ?.map((e) => MediaItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <MediaItem>[],
      total: (json['total'] as num?)?.toInt() ?? 0,
      limit: (json['limit'] as num?)?.toInt() ?? 0,
      page: (json['page'] as num?)?.toInt() ?? 0,
      pages: (json['pages'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$FilmDataImplToJson(_$FilmDataImpl instance) =>
    <String, dynamic>{
      'docs': instance.docs,
      'total': instance.total,
      'limit': instance.limit,
      'page': instance.page,
      'pages': instance.pages,
    };

_$MediaItemImpl _$$MediaItemImplFromJson(Map<String, dynamic> json) =>
    _$MediaItemImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? '',
      alternativeName: json['alternativeName'] as String? ?? '',
      type: json['type'] as String? ?? '',
      year: (json['year'] as num?)?.toInt() ?? 0,
      description: json['description'] as String? ?? '',
      poster: json['poster'] == null
          ? null
          : Poster.fromJson(json['poster'] as Map<String, dynamic>),
      rating: json['rating'] == null
          ? null
          : Rating.fromJson(json['rating'] as Map<String, dynamic>),
      genres: (json['genres'] as List<dynamic>?)
              ?.map((e) => Genre.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Genre>[],
    );

Map<String, dynamic> _$$MediaItemImplToJson(_$MediaItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'alternativeName': instance.alternativeName,
      'type': instance.type,
      'year': instance.year,
      'description': instance.description,
      'poster': instance.poster,
      'rating': instance.rating,
      'genres': instance.genres,
    };

_$GenreImpl _$$GenreImplFromJson(Map<String, dynamic> json) => _$GenreImpl(
      name: json['name'] as String? ?? '',
    );

Map<String, dynamic> _$$GenreImplToJson(_$GenreImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

_$PosterImpl _$$PosterImplFromJson(Map<String, dynamic> json) => _$PosterImpl(
      url: json['url'] as String? ?? '',
      previewUrl: json['previewUrl'] as String? ?? '',
    );

Map<String, dynamic> _$$PosterImplToJson(_$PosterImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'previewUrl': instance.previewUrl,
    };

_$RatingImpl _$$RatingImplFromJson(Map<String, dynamic> json) => _$RatingImpl(
      kp: (json['kp'] as num?)?.toDouble() ?? 0.0,
      imdb: (json['imdb'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$RatingImplToJson(_$RatingImpl instance) =>
    <String, dynamic>{
      'kp': instance.kp,
      'imdb': instance.imdb,
    };
