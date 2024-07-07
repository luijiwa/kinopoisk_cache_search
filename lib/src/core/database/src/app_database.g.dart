// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $MediaItemTableTable extends MediaItemTable
    with TableInfo<$MediaItemTableTable, MediaItemTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MediaItemTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _alternativeNameMeta =
      const VerificationMeta('alternativeName');
  @override
  late final GeneratedColumn<String> alternativeName = GeneratedColumn<String>(
      'alternative_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
      'type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _yearMeta = const VerificationMeta('year');
  @override
  late final GeneratedColumn<int> year = GeneratedColumn<int>(
      'year', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, name, alternativeName, type, year, description];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'media_item_table';
  @override
  VerificationContext validateIntegrity(Insertable<MediaItemTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('alternative_name')) {
      context.handle(
          _alternativeNameMeta,
          alternativeName.isAcceptableOrUnknown(
              data['alternative_name']!, _alternativeNameMeta));
    } else if (isInserting) {
      context.missing(_alternativeNameMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('year')) {
      context.handle(
          _yearMeta, year.isAcceptableOrUnknown(data['year']!, _yearMeta));
    } else if (isInserting) {
      context.missing(_yearMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MediaItemTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MediaItemTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      alternativeName: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}alternative_name'])!,
      type: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}type'])!,
      year: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}year'])!,
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description'])!,
    );
  }

  @override
  $MediaItemTableTable createAlias(String alias) {
    return $MediaItemTableTable(attachedDatabase, alias);
  }
}

class MediaItemTableData extends DataClass
    implements Insertable<MediaItemTableData> {
  final int id;
  final String name;
  final String alternativeName;
  final String type;
  final int year;
  final String description;
  const MediaItemTableData(
      {required this.id,
      required this.name,
      required this.alternativeName,
      required this.type,
      required this.year,
      required this.description});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['alternative_name'] = Variable<String>(alternativeName);
    map['type'] = Variable<String>(type);
    map['year'] = Variable<int>(year);
    map['description'] = Variable<String>(description);
    return map;
  }

  MediaItemTableCompanion toCompanion(bool nullToAbsent) {
    return MediaItemTableCompanion(
      id: Value(id),
      name: Value(name),
      alternativeName: Value(alternativeName),
      type: Value(type),
      year: Value(year),
      description: Value(description),
    );
  }

  factory MediaItemTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MediaItemTableData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      alternativeName: serializer.fromJson<String>(json['alternativeName']),
      type: serializer.fromJson<String>(json['type']),
      year: serializer.fromJson<int>(json['year']),
      description: serializer.fromJson<String>(json['description']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'alternativeName': serializer.toJson<String>(alternativeName),
      'type': serializer.toJson<String>(type),
      'year': serializer.toJson<int>(year),
      'description': serializer.toJson<String>(description),
    };
  }

  MediaItemTableData copyWith(
          {int? id,
          String? name,
          String? alternativeName,
          String? type,
          int? year,
          String? description}) =>
      MediaItemTableData(
        id: id ?? this.id,
        name: name ?? this.name,
        alternativeName: alternativeName ?? this.alternativeName,
        type: type ?? this.type,
        year: year ?? this.year,
        description: description ?? this.description,
      );
  @override
  String toString() {
    return (StringBuffer('MediaItemTableData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('alternativeName: $alternativeName, ')
          ..write('type: $type, ')
          ..write('year: $year, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, name, alternativeName, type, year, description);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MediaItemTableData &&
          other.id == this.id &&
          other.name == this.name &&
          other.alternativeName == this.alternativeName &&
          other.type == this.type &&
          other.year == this.year &&
          other.description == this.description);
}

class MediaItemTableCompanion extends UpdateCompanion<MediaItemTableData> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> alternativeName;
  final Value<String> type;
  final Value<int> year;
  final Value<String> description;
  const MediaItemTableCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.alternativeName = const Value.absent(),
    this.type = const Value.absent(),
    this.year = const Value.absent(),
    this.description = const Value.absent(),
  });
  MediaItemTableCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required String alternativeName,
    required String type,
    required int year,
    required String description,
  })  : name = Value(name),
        alternativeName = Value(alternativeName),
        type = Value(type),
        year = Value(year),
        description = Value(description);
  static Insertable<MediaItemTableData> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? alternativeName,
    Expression<String>? type,
    Expression<int>? year,
    Expression<String>? description,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (alternativeName != null) 'alternative_name': alternativeName,
      if (type != null) 'type': type,
      if (year != null) 'year': year,
      if (description != null) 'description': description,
    });
  }

  MediaItemTableCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<String>? alternativeName,
      Value<String>? type,
      Value<int>? year,
      Value<String>? description}) {
    return MediaItemTableCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      alternativeName: alternativeName ?? this.alternativeName,
      type: type ?? this.type,
      year: year ?? this.year,
      description: description ?? this.description,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (alternativeName.present) {
      map['alternative_name'] = Variable<String>(alternativeName.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (year.present) {
      map['year'] = Variable<int>(year.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MediaItemTableCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('alternativeName: $alternativeName, ')
          ..write('type: $type, ')
          ..write('year: $year, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }
}

class $PostersTableTable extends PostersTable
    with TableInfo<$PostersTableTable, PostersTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PostersTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _docIdMeta = const VerificationMeta('docId');
  @override
  late final GeneratedColumn<int> docId = GeneratedColumn<int>(
      'doc_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES media_item_table (id)'));
  static const VerificationMeta _urlMeta = const VerificationMeta('url');
  @override
  late final GeneratedColumn<String> url = GeneratedColumn<String>(
      'url', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _previewUrlMeta =
      const VerificationMeta('previewUrl');
  @override
  late final GeneratedColumn<String> previewUrl = GeneratedColumn<String>(
      'preview_url', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, docId, url, previewUrl];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'posters_table';
  @override
  VerificationContext validateIntegrity(Insertable<PostersTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('doc_id')) {
      context.handle(
          _docIdMeta, docId.isAcceptableOrUnknown(data['doc_id']!, _docIdMeta));
    } else if (isInserting) {
      context.missing(_docIdMeta);
    }
    if (data.containsKey('url')) {
      context.handle(
          _urlMeta, url.isAcceptableOrUnknown(data['url']!, _urlMeta));
    } else if (isInserting) {
      context.missing(_urlMeta);
    }
    if (data.containsKey('preview_url')) {
      context.handle(
          _previewUrlMeta,
          previewUrl.isAcceptableOrUnknown(
              data['preview_url']!, _previewUrlMeta));
    } else if (isInserting) {
      context.missing(_previewUrlMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PostersTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PostersTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      docId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}doc_id'])!,
      url: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}url'])!,
      previewUrl: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}preview_url'])!,
    );
  }

  @override
  $PostersTableTable createAlias(String alias) {
    return $PostersTableTable(attachedDatabase, alias);
  }
}

class PostersTableData extends DataClass
    implements Insertable<PostersTableData> {
  final int id;
  final int docId;
  final String url;
  final String previewUrl;
  const PostersTableData(
      {required this.id,
      required this.docId,
      required this.url,
      required this.previewUrl});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['doc_id'] = Variable<int>(docId);
    map['url'] = Variable<String>(url);
    map['preview_url'] = Variable<String>(previewUrl);
    return map;
  }

  PostersTableCompanion toCompanion(bool nullToAbsent) {
    return PostersTableCompanion(
      id: Value(id),
      docId: Value(docId),
      url: Value(url),
      previewUrl: Value(previewUrl),
    );
  }

  factory PostersTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PostersTableData(
      id: serializer.fromJson<int>(json['id']),
      docId: serializer.fromJson<int>(json['docId']),
      url: serializer.fromJson<String>(json['url']),
      previewUrl: serializer.fromJson<String>(json['previewUrl']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'docId': serializer.toJson<int>(docId),
      'url': serializer.toJson<String>(url),
      'previewUrl': serializer.toJson<String>(previewUrl),
    };
  }

  PostersTableData copyWith(
          {int? id, int? docId, String? url, String? previewUrl}) =>
      PostersTableData(
        id: id ?? this.id,
        docId: docId ?? this.docId,
        url: url ?? this.url,
        previewUrl: previewUrl ?? this.previewUrl,
      );
  @override
  String toString() {
    return (StringBuffer('PostersTableData(')
          ..write('id: $id, ')
          ..write('docId: $docId, ')
          ..write('url: $url, ')
          ..write('previewUrl: $previewUrl')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, docId, url, previewUrl);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PostersTableData &&
          other.id == this.id &&
          other.docId == this.docId &&
          other.url == this.url &&
          other.previewUrl == this.previewUrl);
}

class PostersTableCompanion extends UpdateCompanion<PostersTableData> {
  final Value<int> id;
  final Value<int> docId;
  final Value<String> url;
  final Value<String> previewUrl;
  const PostersTableCompanion({
    this.id = const Value.absent(),
    this.docId = const Value.absent(),
    this.url = const Value.absent(),
    this.previewUrl = const Value.absent(),
  });
  PostersTableCompanion.insert({
    this.id = const Value.absent(),
    required int docId,
    required String url,
    required String previewUrl,
  })  : docId = Value(docId),
        url = Value(url),
        previewUrl = Value(previewUrl);
  static Insertable<PostersTableData> custom({
    Expression<int>? id,
    Expression<int>? docId,
    Expression<String>? url,
    Expression<String>? previewUrl,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (docId != null) 'doc_id': docId,
      if (url != null) 'url': url,
      if (previewUrl != null) 'preview_url': previewUrl,
    });
  }

  PostersTableCompanion copyWith(
      {Value<int>? id,
      Value<int>? docId,
      Value<String>? url,
      Value<String>? previewUrl}) {
    return PostersTableCompanion(
      id: id ?? this.id,
      docId: docId ?? this.docId,
      url: url ?? this.url,
      previewUrl: previewUrl ?? this.previewUrl,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (docId.present) {
      map['doc_id'] = Variable<int>(docId.value);
    }
    if (url.present) {
      map['url'] = Variable<String>(url.value);
    }
    if (previewUrl.present) {
      map['preview_url'] = Variable<String>(previewUrl.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PostersTableCompanion(')
          ..write('id: $id, ')
          ..write('docId: $docId, ')
          ..write('url: $url, ')
          ..write('previewUrl: $previewUrl')
          ..write(')'))
        .toString();
  }
}

class $RatingsTableTable extends RatingsTable
    with TableInfo<$RatingsTableTable, RatingsTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RatingsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _docIdMeta = const VerificationMeta('docId');
  @override
  late final GeneratedColumn<int> docId = GeneratedColumn<int>(
      'doc_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES media_item_table (id)'));
  static const VerificationMeta _kpMeta = const VerificationMeta('kp');
  @override
  late final GeneratedColumn<double> kp = GeneratedColumn<double>(
      'kp', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _imdbMeta = const VerificationMeta('imdb');
  @override
  late final GeneratedColumn<double> imdb = GeneratedColumn<double>(
      'imdb', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, docId, kp, imdb];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'ratings_table';
  @override
  VerificationContext validateIntegrity(Insertable<RatingsTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('doc_id')) {
      context.handle(
          _docIdMeta, docId.isAcceptableOrUnknown(data['doc_id']!, _docIdMeta));
    } else if (isInserting) {
      context.missing(_docIdMeta);
    }
    if (data.containsKey('kp')) {
      context.handle(_kpMeta, kp.isAcceptableOrUnknown(data['kp']!, _kpMeta));
    } else if (isInserting) {
      context.missing(_kpMeta);
    }
    if (data.containsKey('imdb')) {
      context.handle(
          _imdbMeta, imdb.isAcceptableOrUnknown(data['imdb']!, _imdbMeta));
    } else if (isInserting) {
      context.missing(_imdbMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  RatingsTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return RatingsTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      docId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}doc_id'])!,
      kp: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}kp'])!,
      imdb: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}imdb'])!,
    );
  }

  @override
  $RatingsTableTable createAlias(String alias) {
    return $RatingsTableTable(attachedDatabase, alias);
  }
}

class RatingsTableData extends DataClass
    implements Insertable<RatingsTableData> {
  final int id;
  final int docId;
  final double kp;
  final double imdb;
  const RatingsTableData(
      {required this.id,
      required this.docId,
      required this.kp,
      required this.imdb});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['doc_id'] = Variable<int>(docId);
    map['kp'] = Variable<double>(kp);
    map['imdb'] = Variable<double>(imdb);
    return map;
  }

  RatingsTableCompanion toCompanion(bool nullToAbsent) {
    return RatingsTableCompanion(
      id: Value(id),
      docId: Value(docId),
      kp: Value(kp),
      imdb: Value(imdb),
    );
  }

  factory RatingsTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RatingsTableData(
      id: serializer.fromJson<int>(json['id']),
      docId: serializer.fromJson<int>(json['docId']),
      kp: serializer.fromJson<double>(json['kp']),
      imdb: serializer.fromJson<double>(json['imdb']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'docId': serializer.toJson<int>(docId),
      'kp': serializer.toJson<double>(kp),
      'imdb': serializer.toJson<double>(imdb),
    };
  }

  RatingsTableData copyWith({int? id, int? docId, double? kp, double? imdb}) =>
      RatingsTableData(
        id: id ?? this.id,
        docId: docId ?? this.docId,
        kp: kp ?? this.kp,
        imdb: imdb ?? this.imdb,
      );
  @override
  String toString() {
    return (StringBuffer('RatingsTableData(')
          ..write('id: $id, ')
          ..write('docId: $docId, ')
          ..write('kp: $kp, ')
          ..write('imdb: $imdb')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, docId, kp, imdb);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RatingsTableData &&
          other.id == this.id &&
          other.docId == this.docId &&
          other.kp == this.kp &&
          other.imdb == this.imdb);
}

class RatingsTableCompanion extends UpdateCompanion<RatingsTableData> {
  final Value<int> id;
  final Value<int> docId;
  final Value<double> kp;
  final Value<double> imdb;
  const RatingsTableCompanion({
    this.id = const Value.absent(),
    this.docId = const Value.absent(),
    this.kp = const Value.absent(),
    this.imdb = const Value.absent(),
  });
  RatingsTableCompanion.insert({
    this.id = const Value.absent(),
    required int docId,
    required double kp,
    required double imdb,
  })  : docId = Value(docId),
        kp = Value(kp),
        imdb = Value(imdb);
  static Insertable<RatingsTableData> custom({
    Expression<int>? id,
    Expression<int>? docId,
    Expression<double>? kp,
    Expression<double>? imdb,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (docId != null) 'doc_id': docId,
      if (kp != null) 'kp': kp,
      if (imdb != null) 'imdb': imdb,
    });
  }

  RatingsTableCompanion copyWith(
      {Value<int>? id,
      Value<int>? docId,
      Value<double>? kp,
      Value<double>? imdb}) {
    return RatingsTableCompanion(
      id: id ?? this.id,
      docId: docId ?? this.docId,
      kp: kp ?? this.kp,
      imdb: imdb ?? this.imdb,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (docId.present) {
      map['doc_id'] = Variable<int>(docId.value);
    }
    if (kp.present) {
      map['kp'] = Variable<double>(kp.value);
    }
    if (imdb.present) {
      map['imdb'] = Variable<double>(imdb.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RatingsTableCompanion(')
          ..write('id: $id, ')
          ..write('docId: $docId, ')
          ..write('kp: $kp, ')
          ..write('imdb: $imdb')
          ..write(')'))
        .toString();
  }
}

class $GenresTableTable extends GenresTable
    with TableInfo<$GenresTableTable, GenresTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $GenresTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _docIdMeta = const VerificationMeta('docId');
  @override
  late final GeneratedColumn<int> docId = GeneratedColumn<int>(
      'doc_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES media_item_table (id)'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, docId, name];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'genres_table';
  @override
  VerificationContext validateIntegrity(Insertable<GenresTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('doc_id')) {
      context.handle(
          _docIdMeta, docId.isAcceptableOrUnknown(data['doc_id']!, _docIdMeta));
    } else if (isInserting) {
      context.missing(_docIdMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  GenresTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return GenresTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      docId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}doc_id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
    );
  }

  @override
  $GenresTableTable createAlias(String alias) {
    return $GenresTableTable(attachedDatabase, alias);
  }
}

class GenresTableData extends DataClass implements Insertable<GenresTableData> {
  final int id;
  final int docId;
  final String name;
  const GenresTableData(
      {required this.id, required this.docId, required this.name});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['doc_id'] = Variable<int>(docId);
    map['name'] = Variable<String>(name);
    return map;
  }

  GenresTableCompanion toCompanion(bool nullToAbsent) {
    return GenresTableCompanion(
      id: Value(id),
      docId: Value(docId),
      name: Value(name),
    );
  }

  factory GenresTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return GenresTableData(
      id: serializer.fromJson<int>(json['id']),
      docId: serializer.fromJson<int>(json['docId']),
      name: serializer.fromJson<String>(json['name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'docId': serializer.toJson<int>(docId),
      'name': serializer.toJson<String>(name),
    };
  }

  GenresTableData copyWith({int? id, int? docId, String? name}) =>
      GenresTableData(
        id: id ?? this.id,
        docId: docId ?? this.docId,
        name: name ?? this.name,
      );
  @override
  String toString() {
    return (StringBuffer('GenresTableData(')
          ..write('id: $id, ')
          ..write('docId: $docId, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, docId, name);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is GenresTableData &&
          other.id == this.id &&
          other.docId == this.docId &&
          other.name == this.name);
}

class GenresTableCompanion extends UpdateCompanion<GenresTableData> {
  final Value<int> id;
  final Value<int> docId;
  final Value<String> name;
  const GenresTableCompanion({
    this.id = const Value.absent(),
    this.docId = const Value.absent(),
    this.name = const Value.absent(),
  });
  GenresTableCompanion.insert({
    this.id = const Value.absent(),
    required int docId,
    required String name,
  })  : docId = Value(docId),
        name = Value(name);
  static Insertable<GenresTableData> custom({
    Expression<int>? id,
    Expression<int>? docId,
    Expression<String>? name,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (docId != null) 'doc_id': docId,
      if (name != null) 'name': name,
    });
  }

  GenresTableCompanion copyWith(
      {Value<int>? id, Value<int>? docId, Value<String>? name}) {
    return GenresTableCompanion(
      id: id ?? this.id,
      docId: docId ?? this.docId,
      name: name ?? this.name,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (docId.present) {
      map['doc_id'] = Variable<int>(docId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('GenresTableCompanion(')
          ..write('id: $id, ')
          ..write('docId: $docId, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  _$AppDatabaseManager get managers => _$AppDatabaseManager(this);
  late final $MediaItemTableTable mediaItemTable = $MediaItemTableTable(this);
  late final $PostersTableTable postersTable = $PostersTableTable(this);
  late final $RatingsTableTable ratingsTable = $RatingsTableTable(this);
  late final $GenresTableTable genresTable = $GenresTableTable(this);
  late final Index mediaItemName = Index('media_item_name',
      'CREATE INDEX media_item_name ON media_item_table (name)');
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [mediaItemTable, postersTable, ratingsTable, genresTable, mediaItemName];
}

typedef $$MediaItemTableTableInsertCompanionBuilder = MediaItemTableCompanion
    Function({
  Value<int> id,
  required String name,
  required String alternativeName,
  required String type,
  required int year,
  required String description,
});
typedef $$MediaItemTableTableUpdateCompanionBuilder = MediaItemTableCompanion
    Function({
  Value<int> id,
  Value<String> name,
  Value<String> alternativeName,
  Value<String> type,
  Value<int> year,
  Value<String> description,
});

class $$MediaItemTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $MediaItemTableTable,
    MediaItemTableData,
    $$MediaItemTableTableFilterComposer,
    $$MediaItemTableTableOrderingComposer,
    $$MediaItemTableTableProcessedTableManager,
    $$MediaItemTableTableInsertCompanionBuilder,
    $$MediaItemTableTableUpdateCompanionBuilder> {
  $$MediaItemTableTableTableManager(
      _$AppDatabase db, $MediaItemTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$MediaItemTableTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$MediaItemTableTableOrderingComposer(ComposerState(db, table)),
          getChildManagerBuilder: (p) =>
              $$MediaItemTableTableProcessedTableManager(p),
          getUpdateCompanionBuilder: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String> alternativeName = const Value.absent(),
            Value<String> type = const Value.absent(),
            Value<int> year = const Value.absent(),
            Value<String> description = const Value.absent(),
          }) =>
              MediaItemTableCompanion(
            id: id,
            name: name,
            alternativeName: alternativeName,
            type: type,
            year: year,
            description: description,
          ),
          getInsertCompanionBuilder: ({
            Value<int> id = const Value.absent(),
            required String name,
            required String alternativeName,
            required String type,
            required int year,
            required String description,
          }) =>
              MediaItemTableCompanion.insert(
            id: id,
            name: name,
            alternativeName: alternativeName,
            type: type,
            year: year,
            description: description,
          ),
        ));
}

class $$MediaItemTableTableProcessedTableManager extends ProcessedTableManager<
    _$AppDatabase,
    $MediaItemTableTable,
    MediaItemTableData,
    $$MediaItemTableTableFilterComposer,
    $$MediaItemTableTableOrderingComposer,
    $$MediaItemTableTableProcessedTableManager,
    $$MediaItemTableTableInsertCompanionBuilder,
    $$MediaItemTableTableUpdateCompanionBuilder> {
  $$MediaItemTableTableProcessedTableManager(super.$state);
}

class $$MediaItemTableTableFilterComposer
    extends FilterComposer<_$AppDatabase, $MediaItemTableTable> {
  $$MediaItemTableTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get alternativeName => $state.composableBuilder(
      column: $state.table.alternativeName,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get type => $state.composableBuilder(
      column: $state.table.type,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get year => $state.composableBuilder(
      column: $state.table.year,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get description => $state.composableBuilder(
      column: $state.table.description,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ComposableFilter postersTableRefs(
      ComposableFilter Function($$PostersTableTableFilterComposer f) f) {
    final $$PostersTableTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $state.db.postersTable,
        getReferencedColumn: (t) => t.docId,
        builder: (joinBuilder, parentComposers) =>
            $$PostersTableTableFilterComposer(ComposerState($state.db,
                $state.db.postersTable, joinBuilder, parentComposers)));
    return f(composer);
  }

  ComposableFilter ratingsTableRefs(
      ComposableFilter Function($$RatingsTableTableFilterComposer f) f) {
    final $$RatingsTableTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $state.db.ratingsTable,
        getReferencedColumn: (t) => t.docId,
        builder: (joinBuilder, parentComposers) =>
            $$RatingsTableTableFilterComposer(ComposerState($state.db,
                $state.db.ratingsTable, joinBuilder, parentComposers)));
    return f(composer);
  }

  ComposableFilter genresTableRefs(
      ComposableFilter Function($$GenresTableTableFilterComposer f) f) {
    final $$GenresTableTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $state.db.genresTable,
        getReferencedColumn: (t) => t.docId,
        builder: (joinBuilder, parentComposers) =>
            $$GenresTableTableFilterComposer(ComposerState($state.db,
                $state.db.genresTable, joinBuilder, parentComposers)));
    return f(composer);
  }
}

class $$MediaItemTableTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $MediaItemTableTable> {
  $$MediaItemTableTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get alternativeName => $state.composableBuilder(
      column: $state.table.alternativeName,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get type => $state.composableBuilder(
      column: $state.table.type,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get year => $state.composableBuilder(
      column: $state.table.year,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get description => $state.composableBuilder(
      column: $state.table.description,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$PostersTableTableInsertCompanionBuilder = PostersTableCompanion
    Function({
  Value<int> id,
  required int docId,
  required String url,
  required String previewUrl,
});
typedef $$PostersTableTableUpdateCompanionBuilder = PostersTableCompanion
    Function({
  Value<int> id,
  Value<int> docId,
  Value<String> url,
  Value<String> previewUrl,
});

class $$PostersTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $PostersTableTable,
    PostersTableData,
    $$PostersTableTableFilterComposer,
    $$PostersTableTableOrderingComposer,
    $$PostersTableTableProcessedTableManager,
    $$PostersTableTableInsertCompanionBuilder,
    $$PostersTableTableUpdateCompanionBuilder> {
  $$PostersTableTableTableManager(_$AppDatabase db, $PostersTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$PostersTableTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$PostersTableTableOrderingComposer(ComposerState(db, table)),
          getChildManagerBuilder: (p) =>
              $$PostersTableTableProcessedTableManager(p),
          getUpdateCompanionBuilder: ({
            Value<int> id = const Value.absent(),
            Value<int> docId = const Value.absent(),
            Value<String> url = const Value.absent(),
            Value<String> previewUrl = const Value.absent(),
          }) =>
              PostersTableCompanion(
            id: id,
            docId: docId,
            url: url,
            previewUrl: previewUrl,
          ),
          getInsertCompanionBuilder: ({
            Value<int> id = const Value.absent(),
            required int docId,
            required String url,
            required String previewUrl,
          }) =>
              PostersTableCompanion.insert(
            id: id,
            docId: docId,
            url: url,
            previewUrl: previewUrl,
          ),
        ));
}

class $$PostersTableTableProcessedTableManager extends ProcessedTableManager<
    _$AppDatabase,
    $PostersTableTable,
    PostersTableData,
    $$PostersTableTableFilterComposer,
    $$PostersTableTableOrderingComposer,
    $$PostersTableTableProcessedTableManager,
    $$PostersTableTableInsertCompanionBuilder,
    $$PostersTableTableUpdateCompanionBuilder> {
  $$PostersTableTableProcessedTableManager(super.$state);
}

class $$PostersTableTableFilterComposer
    extends FilterComposer<_$AppDatabase, $PostersTableTable> {
  $$PostersTableTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get url => $state.composableBuilder(
      column: $state.table.url,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get previewUrl => $state.composableBuilder(
      column: $state.table.previewUrl,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  $$MediaItemTableTableFilterComposer get docId {
    final $$MediaItemTableTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.docId,
        referencedTable: $state.db.mediaItemTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$MediaItemTableTableFilterComposer(ComposerState($state.db,
                $state.db.mediaItemTable, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$PostersTableTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $PostersTableTable> {
  $$PostersTableTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get url => $state.composableBuilder(
      column: $state.table.url,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get previewUrl => $state.composableBuilder(
      column: $state.table.previewUrl,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  $$MediaItemTableTableOrderingComposer get docId {
    final $$MediaItemTableTableOrderingComposer composer =
        $state.composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.docId,
            referencedTable: $state.db.mediaItemTable,
            getReferencedColumn: (t) => t.id,
            builder: (joinBuilder, parentComposers) =>
                $$MediaItemTableTableOrderingComposer(ComposerState($state.db,
                    $state.db.mediaItemTable, joinBuilder, parentComposers)));
    return composer;
  }
}

typedef $$RatingsTableTableInsertCompanionBuilder = RatingsTableCompanion
    Function({
  Value<int> id,
  required int docId,
  required double kp,
  required double imdb,
});
typedef $$RatingsTableTableUpdateCompanionBuilder = RatingsTableCompanion
    Function({
  Value<int> id,
  Value<int> docId,
  Value<double> kp,
  Value<double> imdb,
});

class $$RatingsTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $RatingsTableTable,
    RatingsTableData,
    $$RatingsTableTableFilterComposer,
    $$RatingsTableTableOrderingComposer,
    $$RatingsTableTableProcessedTableManager,
    $$RatingsTableTableInsertCompanionBuilder,
    $$RatingsTableTableUpdateCompanionBuilder> {
  $$RatingsTableTableTableManager(_$AppDatabase db, $RatingsTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$RatingsTableTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$RatingsTableTableOrderingComposer(ComposerState(db, table)),
          getChildManagerBuilder: (p) =>
              $$RatingsTableTableProcessedTableManager(p),
          getUpdateCompanionBuilder: ({
            Value<int> id = const Value.absent(),
            Value<int> docId = const Value.absent(),
            Value<double> kp = const Value.absent(),
            Value<double> imdb = const Value.absent(),
          }) =>
              RatingsTableCompanion(
            id: id,
            docId: docId,
            kp: kp,
            imdb: imdb,
          ),
          getInsertCompanionBuilder: ({
            Value<int> id = const Value.absent(),
            required int docId,
            required double kp,
            required double imdb,
          }) =>
              RatingsTableCompanion.insert(
            id: id,
            docId: docId,
            kp: kp,
            imdb: imdb,
          ),
        ));
}

class $$RatingsTableTableProcessedTableManager extends ProcessedTableManager<
    _$AppDatabase,
    $RatingsTableTable,
    RatingsTableData,
    $$RatingsTableTableFilterComposer,
    $$RatingsTableTableOrderingComposer,
    $$RatingsTableTableProcessedTableManager,
    $$RatingsTableTableInsertCompanionBuilder,
    $$RatingsTableTableUpdateCompanionBuilder> {
  $$RatingsTableTableProcessedTableManager(super.$state);
}

class $$RatingsTableTableFilterComposer
    extends FilterComposer<_$AppDatabase, $RatingsTableTable> {
  $$RatingsTableTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get kp => $state.composableBuilder(
      column: $state.table.kp,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get imdb => $state.composableBuilder(
      column: $state.table.imdb,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  $$MediaItemTableTableFilterComposer get docId {
    final $$MediaItemTableTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.docId,
        referencedTable: $state.db.mediaItemTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$MediaItemTableTableFilterComposer(ComposerState($state.db,
                $state.db.mediaItemTable, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$RatingsTableTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $RatingsTableTable> {
  $$RatingsTableTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get kp => $state.composableBuilder(
      column: $state.table.kp,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get imdb => $state.composableBuilder(
      column: $state.table.imdb,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  $$MediaItemTableTableOrderingComposer get docId {
    final $$MediaItemTableTableOrderingComposer composer =
        $state.composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.docId,
            referencedTable: $state.db.mediaItemTable,
            getReferencedColumn: (t) => t.id,
            builder: (joinBuilder, parentComposers) =>
                $$MediaItemTableTableOrderingComposer(ComposerState($state.db,
                    $state.db.mediaItemTable, joinBuilder, parentComposers)));
    return composer;
  }
}

typedef $$GenresTableTableInsertCompanionBuilder = GenresTableCompanion
    Function({
  Value<int> id,
  required int docId,
  required String name,
});
typedef $$GenresTableTableUpdateCompanionBuilder = GenresTableCompanion
    Function({
  Value<int> id,
  Value<int> docId,
  Value<String> name,
});

class $$GenresTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $GenresTableTable,
    GenresTableData,
    $$GenresTableTableFilterComposer,
    $$GenresTableTableOrderingComposer,
    $$GenresTableTableProcessedTableManager,
    $$GenresTableTableInsertCompanionBuilder,
    $$GenresTableTableUpdateCompanionBuilder> {
  $$GenresTableTableTableManager(_$AppDatabase db, $GenresTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$GenresTableTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$GenresTableTableOrderingComposer(ComposerState(db, table)),
          getChildManagerBuilder: (p) =>
              $$GenresTableTableProcessedTableManager(p),
          getUpdateCompanionBuilder: ({
            Value<int> id = const Value.absent(),
            Value<int> docId = const Value.absent(),
            Value<String> name = const Value.absent(),
          }) =>
              GenresTableCompanion(
            id: id,
            docId: docId,
            name: name,
          ),
          getInsertCompanionBuilder: ({
            Value<int> id = const Value.absent(),
            required int docId,
            required String name,
          }) =>
              GenresTableCompanion.insert(
            id: id,
            docId: docId,
            name: name,
          ),
        ));
}

class $$GenresTableTableProcessedTableManager extends ProcessedTableManager<
    _$AppDatabase,
    $GenresTableTable,
    GenresTableData,
    $$GenresTableTableFilterComposer,
    $$GenresTableTableOrderingComposer,
    $$GenresTableTableProcessedTableManager,
    $$GenresTableTableInsertCompanionBuilder,
    $$GenresTableTableUpdateCompanionBuilder> {
  $$GenresTableTableProcessedTableManager(super.$state);
}

class $$GenresTableTableFilterComposer
    extends FilterComposer<_$AppDatabase, $GenresTableTable> {
  $$GenresTableTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  $$MediaItemTableTableFilterComposer get docId {
    final $$MediaItemTableTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.docId,
        referencedTable: $state.db.mediaItemTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$MediaItemTableTableFilterComposer(ComposerState($state.db,
                $state.db.mediaItemTable, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$GenresTableTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $GenresTableTable> {
  $$GenresTableTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  $$MediaItemTableTableOrderingComposer get docId {
    final $$MediaItemTableTableOrderingComposer composer =
        $state.composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.docId,
            referencedTable: $state.db.mediaItemTable,
            getReferencedColumn: (t) => t.id,
            builder: (joinBuilder, parentComposers) =>
                $$MediaItemTableTableOrderingComposer(ComposerState($state.db,
                    $state.db.mediaItemTable, joinBuilder, parentComposers)));
    return composer;
  }
}

class _$AppDatabaseManager {
  final _$AppDatabase _db;
  _$AppDatabaseManager(this._db);
  $$MediaItemTableTableTableManager get mediaItemTable =>
      $$MediaItemTableTableTableManager(_db, _db.mediaItemTable);
  $$PostersTableTableTableManager get postersTable =>
      $$PostersTableTableTableManager(_db, _db.postersTable);
  $$RatingsTableTableTableManager get ratingsTable =>
      $$RatingsTableTableTableManager(_db, _db.ratingsTable);
  $$GenresTableTableTableManager get genresTable =>
      $$GenresTableTableTableManager(_db, _db.genresTable);
}
