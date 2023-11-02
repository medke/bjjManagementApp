// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'club.dart';

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
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get logo => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String get adminId => throw _privateConstructorUsedError;
  List<TrainingSession>? get trainingSessions =>
      throw _privateConstructorUsedError;

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
      {String id,
      String name,
      String? logo,
      String? address,
      String adminId,
      List<TrainingSession>? trainingSessions});
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
    Object? id = null,
    Object? name = null,
    Object? logo = freezed,
    Object? address = freezed,
    Object? adminId = null,
    Object? trainingSessions = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      adminId: null == adminId
          ? _value.adminId
          : adminId // ignore: cast_nullable_to_non_nullable
              as String,
      trainingSessions: freezed == trainingSessions
          ? _value.trainingSessions
          : trainingSessions // ignore: cast_nullable_to_non_nullable
              as List<TrainingSession>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClubImplCopyWith<$Res> implements $ClubCopyWith<$Res> {
  factory _$$ClubImplCopyWith(
          _$ClubImpl value, $Res Function(_$ClubImpl) then) =
      __$$ClubImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String? logo,
      String? address,
      String adminId,
      List<TrainingSession>? trainingSessions});
}

/// @nodoc
class __$$ClubImplCopyWithImpl<$Res>
    extends _$ClubCopyWithImpl<$Res, _$ClubImpl>
    implements _$$ClubImplCopyWith<$Res> {
  __$$ClubImplCopyWithImpl(_$ClubImpl _value, $Res Function(_$ClubImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? logo = freezed,
    Object? address = freezed,
    Object? adminId = null,
    Object? trainingSessions = freezed,
  }) {
    return _then(_$ClubImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      adminId: null == adminId
          ? _value.adminId
          : adminId // ignore: cast_nullable_to_non_nullable
              as String,
      trainingSessions: freezed == trainingSessions
          ? _value._trainingSessions
          : trainingSessions // ignore: cast_nullable_to_non_nullable
              as List<TrainingSession>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ClubImpl implements _Club {
  const _$ClubImpl(
      {required this.id,
      required this.name,
      this.logo,
      this.address,
      required this.adminId,
      final List<TrainingSession>? trainingSessions})
      : _trainingSessions = trainingSessions;

  factory _$ClubImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClubImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String? logo;
  @override
  final String? address;
  @override
  final String adminId;
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

  @override
  String toString() {
    return 'Club(id: $id, name: $name, logo: $logo, address: $address, adminId: $adminId, trainingSessions: $trainingSessions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClubImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.adminId, adminId) || other.adminId == adminId) &&
            const DeepCollectionEquality()
                .equals(other._trainingSessions, _trainingSessions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, logo, address, adminId,
      const DeepCollectionEquality().hash(_trainingSessions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClubImplCopyWith<_$ClubImpl> get copyWith =>
      __$$ClubImplCopyWithImpl<_$ClubImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClubImplToJson(
      this,
    );
  }
}

abstract class _Club implements Club {
  const factory _Club(
      {required final String id,
      required final String name,
      final String? logo,
      final String? address,
      required final String adminId,
      final List<TrainingSession>? trainingSessions}) = _$ClubImpl;

  factory _Club.fromJson(Map<String, dynamic> json) = _$ClubImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String? get logo;
  @override
  String? get address;
  @override
  String get adminId;
  @override
  List<TrainingSession>? get trainingSessions;
  @override
  @JsonKey(ignore: true)
  _$$ClubImplCopyWith<_$ClubImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
