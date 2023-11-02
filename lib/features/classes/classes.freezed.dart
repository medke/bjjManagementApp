// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'classes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TrainingSession _$TrainingSessionFromJson(Map<String, dynamic> json) {
  return _TrainingSession.fromJson(json);
}

/// @nodoc
mixin _$TrainingSession {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get startTime => throw _privateConstructorUsedError;
  String get endTime => throw _privateConstructorUsedError;
  String get day => throw _privateConstructorUsedError;
  String get ageGroup => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrainingSessionCopyWith<TrainingSession> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrainingSessionCopyWith<$Res> {
  factory $TrainingSessionCopyWith(
          TrainingSession value, $Res Function(TrainingSession) then) =
      _$TrainingSessionCopyWithImpl<$Res, TrainingSession>;
  @useResult
  $Res call(
      {String id,
      String name,
      String startTime,
      String endTime,
      String day,
      String ageGroup});
}

/// @nodoc
class _$TrainingSessionCopyWithImpl<$Res, $Val extends TrainingSession>
    implements $TrainingSessionCopyWith<$Res> {
  _$TrainingSessionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? day = null,
    Object? ageGroup = null,
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
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      ageGroup: null == ageGroup
          ? _value.ageGroup
          : ageGroup // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrainingSessionImplCopyWith<$Res>
    implements $TrainingSessionCopyWith<$Res> {
  factory _$$TrainingSessionImplCopyWith(_$TrainingSessionImpl value,
          $Res Function(_$TrainingSessionImpl) then) =
      __$$TrainingSessionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String startTime,
      String endTime,
      String day,
      String ageGroup});
}

/// @nodoc
class __$$TrainingSessionImplCopyWithImpl<$Res>
    extends _$TrainingSessionCopyWithImpl<$Res, _$TrainingSessionImpl>
    implements _$$TrainingSessionImplCopyWith<$Res> {
  __$$TrainingSessionImplCopyWithImpl(
      _$TrainingSessionImpl _value, $Res Function(_$TrainingSessionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? day = null,
    Object? ageGroup = null,
  }) {
    return _then(_$TrainingSessionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      ageGroup: null == ageGroup
          ? _value.ageGroup
          : ageGroup // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrainingSessionImpl implements _TrainingSession {
  const _$TrainingSessionImpl(
      {required this.id,
      required this.name,
      required this.startTime,
      required this.endTime,
      required this.day,
      required this.ageGroup});

  factory _$TrainingSessionImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrainingSessionImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String startTime;
  @override
  final String endTime;
  @override
  final String day;
  @override
  final String ageGroup;

  @override
  String toString() {
    return 'TrainingSession(id: $id, name: $name, startTime: $startTime, endTime: $endTime, day: $day, ageGroup: $ageGroup)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrainingSessionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.ageGroup, ageGroup) ||
                other.ageGroup == ageGroup));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, startTime, endTime, day, ageGroup);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrainingSessionImplCopyWith<_$TrainingSessionImpl> get copyWith =>
      __$$TrainingSessionImplCopyWithImpl<_$TrainingSessionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrainingSessionImplToJson(
      this,
    );
  }
}

abstract class _TrainingSession implements TrainingSession {
  const factory _TrainingSession(
      {required final String id,
      required final String name,
      required final String startTime,
      required final String endTime,
      required final String day,
      required final String ageGroup}) = _$TrainingSessionImpl;

  factory _TrainingSession.fromJson(Map<String, dynamic> json) =
      _$TrainingSessionImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get startTime;
  @override
  String get endTime;
  @override
  String get day;
  @override
  String get ageGroup;
  @override
  @JsonKey(ignore: true)
  _$$TrainingSessionImplCopyWith<_$TrainingSessionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
