// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchEvent {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SearchTypeChanged value) searchTypeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SearchTypeChanged value)? searchTypeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SearchTypeChanged value)? searchTypeChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res, SearchEvent>;
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res, $Val extends SearchEvent>
    implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'SearchEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SearchTypeChanged value) searchTypeChanged,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SearchTypeChanged value)? searchTypeChanged,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SearchTypeChanged value)? searchTypeChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SearchEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$SearchTypeChangedImplCopyWith<$Res> {
  factory _$$SearchTypeChangedImplCopyWith(_$SearchTypeChangedImpl value,
          $Res Function(_$SearchTypeChangedImpl) then) =
      __$$SearchTypeChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchTypeChangedImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$SearchTypeChangedImpl>
    implements _$$SearchTypeChangedImplCopyWith<$Res> {
  __$$SearchTypeChangedImplCopyWithImpl(_$SearchTypeChangedImpl _value,
      $Res Function(_$SearchTypeChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SearchTypeChangedImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchTypeChangedImpl implements _SearchTypeChanged {
  const _$SearchTypeChangedImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'SearchEvent.searchTypeChanged(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchTypeChangedImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchTypeChangedImplCopyWith<_$SearchTypeChangedImpl> get copyWith =>
      __$$SearchTypeChangedImplCopyWithImpl<_$SearchTypeChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SearchTypeChanged value) searchTypeChanged,
  }) {
    return searchTypeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SearchTypeChanged value)? searchTypeChanged,
  }) {
    return searchTypeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SearchTypeChanged value)? searchTypeChanged,
    required TResult orElse(),
  }) {
    if (searchTypeChanged != null) {
      return searchTypeChanged(this);
    }
    return orElse();
  }
}

abstract class _SearchTypeChanged implements SearchEvent {
  const factory _SearchTypeChanged(final String query) =
      _$SearchTypeChangedImpl;

  String get query;
  @JsonKey(ignore: true)
  _$$SearchTypeChangedImplCopyWith<_$SearchTypeChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchState {
  ScreenStatus get screenStatus => throw _privateConstructorUsedError;
  ScreenStatus get searchStatus => throw _privateConstructorUsedError;
  List<MediaItem> get mediaItems => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
  @useResult
  $Res call(
      {ScreenStatus screenStatus,
      ScreenStatus searchStatus,
      List<MediaItem> mediaItems});
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? screenStatus = null,
    Object? searchStatus = null,
    Object? mediaItems = null,
  }) {
    return _then(_value.copyWith(
      screenStatus: null == screenStatus
          ? _value.screenStatus
          : screenStatus // ignore: cast_nullable_to_non_nullable
              as ScreenStatus,
      searchStatus: null == searchStatus
          ? _value.searchStatus
          : searchStatus // ignore: cast_nullable_to_non_nullable
              as ScreenStatus,
      mediaItems: null == mediaItems
          ? _value.mediaItems
          : mediaItems // ignore: cast_nullable_to_non_nullable
              as List<MediaItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchStateImplCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$$SearchStateImplCopyWith(
          _$SearchStateImpl value, $Res Function(_$SearchStateImpl) then) =
      __$$SearchStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ScreenStatus screenStatus,
      ScreenStatus searchStatus,
      List<MediaItem> mediaItems});
}

/// @nodoc
class __$$SearchStateImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchStateImpl>
    implements _$$SearchStateImplCopyWith<$Res> {
  __$$SearchStateImplCopyWithImpl(
      _$SearchStateImpl _value, $Res Function(_$SearchStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? screenStatus = null,
    Object? searchStatus = null,
    Object? mediaItems = null,
  }) {
    return _then(_$SearchStateImpl(
      screenStatus: null == screenStatus
          ? _value.screenStatus
          : screenStatus // ignore: cast_nullable_to_non_nullable
              as ScreenStatus,
      searchStatus: null == searchStatus
          ? _value.searchStatus
          : searchStatus // ignore: cast_nullable_to_non_nullable
              as ScreenStatus,
      mediaItems: null == mediaItems
          ? _value._mediaItems
          : mediaItems // ignore: cast_nullable_to_non_nullable
              as List<MediaItem>,
    ));
  }
}

/// @nodoc

class _$SearchStateImpl implements _SearchState {
  const _$SearchStateImpl(
      {this.screenStatus = ScreenStatus.initial,
      this.searchStatus = ScreenStatus.initial,
      final List<MediaItem> mediaItems = const <MediaItem>[]})
      : _mediaItems = mediaItems;

  @override
  @JsonKey()
  final ScreenStatus screenStatus;
  @override
  @JsonKey()
  final ScreenStatus searchStatus;
  final List<MediaItem> _mediaItems;
  @override
  @JsonKey()
  List<MediaItem> get mediaItems {
    if (_mediaItems is EqualUnmodifiableListView) return _mediaItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mediaItems);
  }

  @override
  String toString() {
    return 'SearchState(screenStatus: $screenStatus, searchStatus: $searchStatus, mediaItems: $mediaItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchStateImpl &&
            (identical(other.screenStatus, screenStatus) ||
                other.screenStatus == screenStatus) &&
            (identical(other.searchStatus, searchStatus) ||
                other.searchStatus == searchStatus) &&
            const DeepCollectionEquality()
                .equals(other._mediaItems, _mediaItems));
  }

  @override
  int get hashCode => Object.hash(runtimeType, screenStatus, searchStatus,
      const DeepCollectionEquality().hash(_mediaItems));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchStateImplCopyWith<_$SearchStateImpl> get copyWith =>
      __$$SearchStateImplCopyWithImpl<_$SearchStateImpl>(this, _$identity);
}

abstract class _SearchState implements SearchState {
  const factory _SearchState(
      {final ScreenStatus screenStatus,
      final ScreenStatus searchStatus,
      final List<MediaItem> mediaItems}) = _$SearchStateImpl;

  @override
  ScreenStatus get screenStatus;
  @override
  ScreenStatus get searchStatus;
  @override
  List<MediaItem> get mediaItems;
  @override
  @JsonKey(ignore: true)
  _$$SearchStateImplCopyWith<_$SearchStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
