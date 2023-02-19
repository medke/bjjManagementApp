// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of club;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Club _$ClubFromJson(Map<String, dynamic> json) {
  return _Club.fromJson(json);
}

/// @nodoc
mixin _$Club {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get logo => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  List<TrainingSession>? get trainingSessions =>
      throw _privateConstructorUsedError;
  List<Member>? get members => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClubCopyWith<Club> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClubCopyWith<$Res> {
  factory $ClubCopyWith(Club value, $Res Function(Club) then) =
      _$ClubCopyWithImpl<$Res, Club>;
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? logo,
      String? address,
      List<TrainingSession>? trainingSessions,
      List<Member>? members});
}

/// @nodoc
class _$ClubCopyWithImpl<$Res, $Val extends Club>
    implements $ClubCopyWith<$Res> {
  _$ClubCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? logo = freezed,
    Object? address = freezed,
    Object? trainingSessions = freezed,
    Object? members = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      trainingSessions: freezed == trainingSessions
          ? _value.trainingSessions
          : trainingSessions // ignore: cast_nullable_to_non_nullable
              as List<TrainingSession>?,
      members: freezed == members
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<Member>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ClubCopyWith<$Res> implements $ClubCopyWith<$Res> {
  factory _$$_ClubCopyWith(_$_Club value, $Res Function(_$_Club) then) =
      __$$_ClubCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? logo,
      String? address,
      List<TrainingSession>? trainingSessions,
      List<Member>? members});
}

/// @nodoc
class __$$_ClubCopyWithImpl<$Res> extends _$ClubCopyWithImpl<$Res, _$_Club>
    implements _$$_ClubCopyWith<$Res> {
  __$$_ClubCopyWithImpl(_$_Club _value, $Res Function(_$_Club) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? logo = freezed,
    Object? address = freezed,
    Object? trainingSessions = freezed,
    Object? members = freezed,
  }) {
    return _then(_$_Club(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      trainingSessions: freezed == trainingSessions
          ? _value._trainingSessions
          : trainingSessions // ignore: cast_nullable_to_non_nullable
              as List<TrainingSession>?,
      members: freezed == members
          ? _value._members
          : members // ignore: cast_nullable_to_non_nullable
              as List<Member>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Club implements _Club {
  const _$_Club(
      {this.id,
      this.name,
      this.logo,
      this.address,
      final List<TrainingSession>? trainingSessions,
      final List<Member>? members})
      : _trainingSessions = trainingSessions,
        _members = members;

  factory _$_Club.fromJson(Map<String, dynamic> json) => _$$_ClubFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? logo;
  @override
  final String? address;
  final List<TrainingSession>? _trainingSessions;
  @override
  List<TrainingSession>? get trainingSessions {
    final value = _trainingSessions;
    if (value == null) return null;
    if (_trainingSessions is EqualUnmodifiableListView)
      return _trainingSessions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Member>? _members;
  @override
  List<Member>? get members {
    final value = _members;
    if (value == null) return null;
    if (_members is EqualUnmodifiableListView) return _members;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Club(id: $id, name: $name, logo: $logo, address: $address, trainingSessions: $trainingSessions, members: $members)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Club &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.address, address) || other.address == address) &&
            const DeepCollectionEquality()
                .equals(other._trainingSessions, _trainingSessions) &&
            const DeepCollectionEquality().equals(other._members, _members));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      logo,
      address,
      const DeepCollectionEquality().hash(_trainingSessions),
      const DeepCollectionEquality().hash(_members));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClubCopyWith<_$_Club> get copyWith =>
      __$$_ClubCopyWithImpl<_$_Club>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClubToJson(
      this,
    );
  }
}

abstract class _Club implements Club {
  const factory _Club(
      {final String? id,
      final String? name,
      final String? logo,
      final String? address,
      final List<TrainingSession>? trainingSessions,
      final List<Member>? members}) = _$_Club;

  factory _Club.fromJson(Map<String, dynamic> json) = _$_Club.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get logo;
  @override
  String? get address;
  @override
  List<TrainingSession>? get trainingSessions;
  @override
  List<Member>? get members;
  @override
  @JsonKey(ignore: true)
  _$$_ClubCopyWith<_$_Club> get copyWith => throw _privateConstructorUsedError;
}
