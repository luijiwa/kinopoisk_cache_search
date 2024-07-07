// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'film.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FilmData _$FilmDataFromJson(Map<String, dynamic> json) {
  return _FilmData.fromJson(json);
}

/// @nodoc
mixin _$FilmData {
  List<MediaItem> get docs => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get pages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilmDataCopyWith<FilmData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilmDataCopyWith<$Res> {
  factory $FilmDataCopyWith(FilmData value, $Res Function(FilmData) then) =
      _$FilmDataCopyWithImpl<$Res, FilmData>;
  @useResult
  $Res call({List<MediaItem> docs, int total, int limit, int page, int pages});
}

/// @nodoc
class _$FilmDataCopyWithImpl<$Res, $Val extends FilmData>
    implements $FilmDataCopyWith<$Res> {
  _$FilmDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? docs = null,
    Object? total = null,
    Object? limit = null,
    Object? page = null,
    Object? pages = null,
  }) {
    return _then(_value.copyWith(
      docs: null == docs
          ? _value.docs
          : docs // ignore: cast_nullable_to_non_nullable
              as List<MediaItem>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FilmDataImplCopyWith<$Res>
    implements $FilmDataCopyWith<$Res> {
  factory _$$FilmDataImplCopyWith(
          _$FilmDataImpl value, $Res Function(_$FilmDataImpl) then) =
      __$$FilmDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MediaItem> docs, int total, int limit, int page, int pages});
}

/// @nodoc
class __$$FilmDataImplCopyWithImpl<$Res>
    extends _$FilmDataCopyWithImpl<$Res, _$FilmDataImpl>
    implements _$$FilmDataImplCopyWith<$Res> {
  __$$FilmDataImplCopyWithImpl(
      _$FilmDataImpl _value, $Res Function(_$FilmDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? docs = null,
    Object? total = null,
    Object? limit = null,
    Object? page = null,
    Object? pages = null,
  }) {
    return _then(_$FilmDataImpl(
      docs: null == docs
          ? _value._docs
          : docs // ignore: cast_nullable_to_non_nullable
              as List<MediaItem>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FilmDataImpl with DiagnosticableTreeMixin implements _FilmData {
  const _$FilmDataImpl(
      {final List<MediaItem> docs = const <MediaItem>[],
      this.total = 0,
      this.limit = 0,
      this.page = 0,
      this.pages = 0})
      : _docs = docs;

  factory _$FilmDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$FilmDataImplFromJson(json);

  final List<MediaItem> _docs;
  @override
  @JsonKey()
  List<MediaItem> get docs {
    if (_docs is EqualUnmodifiableListView) return _docs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_docs);
  }

  @override
  @JsonKey()
  final int total;
  @override
  @JsonKey()
  final int limit;
  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final int pages;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FilmData(docs: $docs, total: $total, limit: $limit, page: $page, pages: $pages)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FilmData'))
      ..add(DiagnosticsProperty('docs', docs))
      ..add(DiagnosticsProperty('total', total))
      ..add(DiagnosticsProperty('limit', limit))
      ..add(DiagnosticsProperty('page', page))
      ..add(DiagnosticsProperty('pages', pages));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilmDataImpl &&
            const DeepCollectionEquality().equals(other._docs, _docs) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pages, pages) || other.pages == pages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_docs), total, limit, page, pages);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilmDataImplCopyWith<_$FilmDataImpl> get copyWith =>
      __$$FilmDataImplCopyWithImpl<_$FilmDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FilmDataImplToJson(
      this,
    );
  }
}

abstract class _FilmData implements FilmData {
  const factory _FilmData(
      {final List<MediaItem> docs,
      final int total,
      final int limit,
      final int page,
      final int pages}) = _$FilmDataImpl;

  factory _FilmData.fromJson(Map<String, dynamic> json) =
      _$FilmDataImpl.fromJson;

  @override
  List<MediaItem> get docs;
  @override
  int get total;
  @override
  int get limit;
  @override
  int get page;
  @override
  int get pages;
  @override
  @JsonKey(ignore: true)
  _$$FilmDataImplCopyWith<_$FilmDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MediaItem _$MediaItemFromJson(Map<String, dynamic> json) {
  return _MediaItem.fromJson(json);
}

/// @nodoc
mixin _$MediaItem {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get alternativeName => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  int get year => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  Poster? get poster => throw _privateConstructorUsedError;
  Rating? get rating => throw _privateConstructorUsedError;
  List<Genre> get genres => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MediaItemCopyWith<MediaItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaItemCopyWith<$Res> {
  factory $MediaItemCopyWith(MediaItem value, $Res Function(MediaItem) then) =
      _$MediaItemCopyWithImpl<$Res, MediaItem>;
  @useResult
  $Res call(
      {int id,
      String name,
      String alternativeName,
      String type,
      int year,
      String description,
      Poster? poster,
      Rating? rating,
      List<Genre> genres});

  $PosterCopyWith<$Res>? get poster;
  $RatingCopyWith<$Res>? get rating;
}

/// @nodoc
class _$MediaItemCopyWithImpl<$Res, $Val extends MediaItem>
    implements $MediaItemCopyWith<$Res> {
  _$MediaItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? alternativeName = null,
    Object? type = null,
    Object? year = null,
    Object? description = null,
    Object? poster = freezed,
    Object? rating = freezed,
    Object? genres = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      alternativeName: null == alternativeName
          ? _value.alternativeName
          : alternativeName // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      poster: freezed == poster
          ? _value.poster
          : poster // ignore: cast_nullable_to_non_nullable
              as Poster?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as Rating?,
      genres: null == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genre>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PosterCopyWith<$Res>? get poster {
    if (_value.poster == null) {
      return null;
    }

    return $PosterCopyWith<$Res>(_value.poster!, (value) {
      return _then(_value.copyWith(poster: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RatingCopyWith<$Res>? get rating {
    if (_value.rating == null) {
      return null;
    }

    return $RatingCopyWith<$Res>(_value.rating!, (value) {
      return _then(_value.copyWith(rating: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MediaItemImplCopyWith<$Res>
    implements $MediaItemCopyWith<$Res> {
  factory _$$MediaItemImplCopyWith(
          _$MediaItemImpl value, $Res Function(_$MediaItemImpl) then) =
      __$$MediaItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String alternativeName,
      String type,
      int year,
      String description,
      Poster? poster,
      Rating? rating,
      List<Genre> genres});

  @override
  $PosterCopyWith<$Res>? get poster;
  @override
  $RatingCopyWith<$Res>? get rating;
}

/// @nodoc
class __$$MediaItemImplCopyWithImpl<$Res>
    extends _$MediaItemCopyWithImpl<$Res, _$MediaItemImpl>
    implements _$$MediaItemImplCopyWith<$Res> {
  __$$MediaItemImplCopyWithImpl(
      _$MediaItemImpl _value, $Res Function(_$MediaItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? alternativeName = null,
    Object? type = null,
    Object? year = null,
    Object? description = null,
    Object? poster = freezed,
    Object? rating = freezed,
    Object? genres = null,
  }) {
    return _then(_$MediaItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      alternativeName: null == alternativeName
          ? _value.alternativeName
          : alternativeName // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      poster: freezed == poster
          ? _value.poster
          : poster // ignore: cast_nullable_to_non_nullable
              as Poster?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as Rating?,
      genres: null == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genre>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MediaItemImpl with DiagnosticableTreeMixin implements _MediaItem {
  const _$MediaItemImpl(
      {this.id = 0,
      this.name = '',
      this.alternativeName = '',
      this.type = '',
      this.year = 0,
      this.description = '',
      this.poster,
      this.rating,
      final List<Genre> genres = const <Genre>[]})
      : _genres = genres;

  factory _$MediaItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$MediaItemImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String alternativeName;
  @override
  @JsonKey()
  final String type;
  @override
  @JsonKey()
  final int year;
  @override
  @JsonKey()
  final String description;
  @override
  final Poster? poster;
  @override
  final Rating? rating;
  final List<Genre> _genres;
  @override
  @JsonKey()
  List<Genre> get genres {
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genres);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MediaItem(id: $id, name: $name, alternativeName: $alternativeName, type: $type, year: $year, description: $description, poster: $poster, rating: $rating, genres: $genres)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MediaItem'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('alternativeName', alternativeName))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('year', year))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('poster', poster))
      ..add(DiagnosticsProperty('rating', rating))
      ..add(DiagnosticsProperty('genres', genres));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.alternativeName, alternativeName) ||
                other.alternativeName == alternativeName) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.poster, poster) || other.poster == poster) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            const DeepCollectionEquality().equals(other._genres, _genres));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      alternativeName,
      type,
      year,
      description,
      poster,
      rating,
      const DeepCollectionEquality().hash(_genres));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaItemImplCopyWith<_$MediaItemImpl> get copyWith =>
      __$$MediaItemImplCopyWithImpl<_$MediaItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MediaItemImplToJson(
      this,
    );
  }
}

abstract class _MediaItem implements MediaItem {
  const factory _MediaItem(
      {final int id,
      final String name,
      final String alternativeName,
      final String type,
      final int year,
      final String description,
      final Poster? poster,
      final Rating? rating,
      final List<Genre> genres}) = _$MediaItemImpl;

  factory _MediaItem.fromJson(Map<String, dynamic> json) =
      _$MediaItemImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get alternativeName;
  @override
  String get type;
  @override
  int get year;
  @override
  String get description;
  @override
  Poster? get poster;
  @override
  Rating? get rating;
  @override
  List<Genre> get genres;
  @override
  @JsonKey(ignore: true)
  _$$MediaItemImplCopyWith<_$MediaItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Genre _$GenreFromJson(Map<String, dynamic> json) {
  return _Genre.fromJson(json);
}

/// @nodoc
mixin _$Genre {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenreCopyWith<Genre> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenreCopyWith<$Res> {
  factory $GenreCopyWith(Genre value, $Res Function(Genre) then) =
      _$GenreCopyWithImpl<$Res, Genre>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$GenreCopyWithImpl<$Res, $Val extends Genre>
    implements $GenreCopyWith<$Res> {
  _$GenreCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GenreImplCopyWith<$Res> implements $GenreCopyWith<$Res> {
  factory _$$GenreImplCopyWith(
          _$GenreImpl value, $Res Function(_$GenreImpl) then) =
      __$$GenreImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$GenreImplCopyWithImpl<$Res>
    extends _$GenreCopyWithImpl<$Res, _$GenreImpl>
    implements _$$GenreImplCopyWith<$Res> {
  __$$GenreImplCopyWithImpl(
      _$GenreImpl _value, $Res Function(_$GenreImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$GenreImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GenreImpl with DiagnosticableTreeMixin implements _Genre {
  const _$GenreImpl({this.name = ''});

  factory _$GenreImpl.fromJson(Map<String, dynamic> json) =>
      _$$GenreImplFromJson(json);

  @override
  @JsonKey()
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Genre(name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Genre'))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenreImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GenreImplCopyWith<_$GenreImpl> get copyWith =>
      __$$GenreImplCopyWithImpl<_$GenreImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GenreImplToJson(
      this,
    );
  }
}

abstract class _Genre implements Genre {
  const factory _Genre({final String name}) = _$GenreImpl;

  factory _Genre.fromJson(Map<String, dynamic> json) = _$GenreImpl.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$GenreImplCopyWith<_$GenreImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Poster _$PosterFromJson(Map<String, dynamic> json) {
  return _Poster.fromJson(json);
}

/// @nodoc
mixin _$Poster {
  String get url => throw _privateConstructorUsedError;
  String get previewUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PosterCopyWith<Poster> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PosterCopyWith<$Res> {
  factory $PosterCopyWith(Poster value, $Res Function(Poster) then) =
      _$PosterCopyWithImpl<$Res, Poster>;
  @useResult
  $Res call({String url, String previewUrl});
}

/// @nodoc
class _$PosterCopyWithImpl<$Res, $Val extends Poster>
    implements $PosterCopyWith<$Res> {
  _$PosterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? previewUrl = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      previewUrl: null == previewUrl
          ? _value.previewUrl
          : previewUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PosterImplCopyWith<$Res> implements $PosterCopyWith<$Res> {
  factory _$$PosterImplCopyWith(
          _$PosterImpl value, $Res Function(_$PosterImpl) then) =
      __$$PosterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url, String previewUrl});
}

/// @nodoc
class __$$PosterImplCopyWithImpl<$Res>
    extends _$PosterCopyWithImpl<$Res, _$PosterImpl>
    implements _$$PosterImplCopyWith<$Res> {
  __$$PosterImplCopyWithImpl(
      _$PosterImpl _value, $Res Function(_$PosterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? previewUrl = null,
  }) {
    return _then(_$PosterImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      previewUrl: null == previewUrl
          ? _value.previewUrl
          : previewUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PosterImpl with DiagnosticableTreeMixin implements _Poster {
  const _$PosterImpl({this.url = '', this.previewUrl = ''});

  factory _$PosterImpl.fromJson(Map<String, dynamic> json) =>
      _$$PosterImplFromJson(json);

  @override
  @JsonKey()
  final String url;
  @override
  @JsonKey()
  final String previewUrl;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Poster(url: $url, previewUrl: $previewUrl)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Poster'))
      ..add(DiagnosticsProperty('url', url))
      ..add(DiagnosticsProperty('previewUrl', previewUrl));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PosterImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.previewUrl, previewUrl) ||
                other.previewUrl == previewUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, previewUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PosterImplCopyWith<_$PosterImpl> get copyWith =>
      __$$PosterImplCopyWithImpl<_$PosterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PosterImplToJson(
      this,
    );
  }
}

abstract class _Poster implements Poster {
  const factory _Poster({final String url, final String previewUrl}) =
      _$PosterImpl;

  factory _Poster.fromJson(Map<String, dynamic> json) = _$PosterImpl.fromJson;

  @override
  String get url;
  @override
  String get previewUrl;
  @override
  @JsonKey(ignore: true)
  _$$PosterImplCopyWith<_$PosterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Rating _$RatingFromJson(Map<String, dynamic> json) {
  return _Rating.fromJson(json);
}

/// @nodoc
mixin _$Rating {
  double get kp => throw _privateConstructorUsedError;
  double get imdb => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RatingCopyWith<Rating> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingCopyWith<$Res> {
  factory $RatingCopyWith(Rating value, $Res Function(Rating) then) =
      _$RatingCopyWithImpl<$Res, Rating>;
  @useResult
  $Res call({double kp, double imdb});
}

/// @nodoc
class _$RatingCopyWithImpl<$Res, $Val extends Rating>
    implements $RatingCopyWith<$Res> {
  _$RatingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kp = null,
    Object? imdb = null,
  }) {
    return _then(_value.copyWith(
      kp: null == kp
          ? _value.kp
          : kp // ignore: cast_nullable_to_non_nullable
              as double,
      imdb: null == imdb
          ? _value.imdb
          : imdb // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RatingImplCopyWith<$Res> implements $RatingCopyWith<$Res> {
  factory _$$RatingImplCopyWith(
          _$RatingImpl value, $Res Function(_$RatingImpl) then) =
      __$$RatingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double kp, double imdb});
}

/// @nodoc
class __$$RatingImplCopyWithImpl<$Res>
    extends _$RatingCopyWithImpl<$Res, _$RatingImpl>
    implements _$$RatingImplCopyWith<$Res> {
  __$$RatingImplCopyWithImpl(
      _$RatingImpl _value, $Res Function(_$RatingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kp = null,
    Object? imdb = null,
  }) {
    return _then(_$RatingImpl(
      kp: null == kp
          ? _value.kp
          : kp // ignore: cast_nullable_to_non_nullable
              as double,
      imdb: null == imdb
          ? _value.imdb
          : imdb // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RatingImpl with DiagnosticableTreeMixin implements _Rating {
  const _$RatingImpl({this.kp = 0.0, this.imdb = 0.0});

  factory _$RatingImpl.fromJson(Map<String, dynamic> json) =>
      _$$RatingImplFromJson(json);

  @override
  @JsonKey()
  final double kp;
  @override
  @JsonKey()
  final double imdb;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Rating(kp: $kp, imdb: $imdb)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Rating'))
      ..add(DiagnosticsProperty('kp', kp))
      ..add(DiagnosticsProperty('imdb', imdb));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatingImpl &&
            (identical(other.kp, kp) || other.kp == kp) &&
            (identical(other.imdb, imdb) || other.imdb == imdb));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, kp, imdb);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RatingImplCopyWith<_$RatingImpl> get copyWith =>
      __$$RatingImplCopyWithImpl<_$RatingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RatingImplToJson(
      this,
    );
  }
}

abstract class _Rating implements Rating {
  const factory _Rating({final double kp, final double imdb}) = _$RatingImpl;

  factory _Rating.fromJson(Map<String, dynamic> json) = _$RatingImpl.fromJson;

  @override
  double get kp;
  @override
  double get imdb;
  @override
  @JsonKey(ignore: true)
  _$$RatingImplCopyWith<_$RatingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
