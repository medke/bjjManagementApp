// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of members;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Member _$MemberFromJson(Map<String, dynamic> json) {
  return _Member.fromJson(json);
}

/// @nodoc
mixin _$Member {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  bool? get isAdmin => throw _privateConstructorUsedError;
  bool get hasClub => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  DateTime? get membershipStartDate => throw _privateConstructorUsedError;
  DateTime? get membershipEndDate => throw _privateConstructorUsedError;
  String? get membershipType => throw _privateConstructorUsedError;
  String? get bjjBelt => throw _privateConstructorUsedError;
  DateTime? get beltObtainedDate => throw _privateConstructorUsedError;
  DateTime? get lastPaymentDate => throw _privateConstructorUsedError;
  String? get ageGroup => throw _privateConstructorUsedError;
  DateTime? get phoneNumber => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemberCopyWith<Member> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberCopyWith<$Res> {
  factory $MemberCopyWith(Member value, $Res Function(Member) then) =
      _$MemberCopyWithImpl<$Res, Member>;
  @useResult
  $Res call(
      {String? id,
      String? name,
      bool? isAdmin,
      bool hasClub,
      String? password,
      DateTime? membershipStartDate,
      DateTime? membershipEndDate,
      String? membershipType,
      String? bjjBelt,
      DateTime? beltObtainedDate,
      DateTime? lastPaymentDate,
      String? ageGroup,
      DateTime? phoneNumber,
      String email});
}

/// @nodoc
class _$MemberCopyWithImpl<$Res, $Val extends Member>
    implements $MemberCopyWith<$Res> {
  _$MemberCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? isAdmin = freezed,
    Object? hasClub = null,
    Object? password = freezed,
    Object? membershipStartDate = freezed,
    Object? membershipEndDate = freezed,
    Object? membershipType = freezed,
    Object? bjjBelt = freezed,
    Object? beltObtainedDate = freezed,
    Object? lastPaymentDate = freezed,
    Object? ageGroup = freezed,
    Object? phoneNumber = freezed,
    Object? email = null,
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
      isAdmin: freezed == isAdmin
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasClub: null == hasClub
          ? _value.hasClub
          : hasClub // ignore: cast_nullable_to_non_nullable
              as bool,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      membershipStartDate: freezed == membershipStartDate
          ? _value.membershipStartDate
          : membershipStartDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      membershipEndDate: freezed == membershipEndDate
          ? _value.membershipEndDate
          : membershipEndDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      membershipType: freezed == membershipType
          ? _value.membershipType
          : membershipType // ignore: cast_nullable_to_non_nullable
              as String?,
      bjjBelt: freezed == bjjBelt
          ? _value.bjjBelt
          : bjjBelt // ignore: cast_nullable_to_non_nullable
              as String?,
      beltObtainedDate: freezed == beltObtainedDate
          ? _value.beltObtainedDate
          : beltObtainedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastPaymentDate: freezed == lastPaymentDate
          ? _value.lastPaymentDate
          : lastPaymentDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      ageGroup: freezed == ageGroup
          ? _value.ageGroup
          : ageGroup // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MemberCopyWith<$Res> implements $MemberCopyWith<$Res> {
  factory _$$_MemberCopyWith(_$_Member value, $Res Function(_$_Member) then) =
      __$$_MemberCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? name,
      bool? isAdmin,
      bool hasClub,
      String? password,
      DateTime? membershipStartDate,
      DateTime? membershipEndDate,
      String? membershipType,
      String? bjjBelt,
      DateTime? beltObtainedDate,
      DateTime? lastPaymentDate,
      String? ageGroup,
      DateTime? phoneNumber,
      String email});
}

/// @nodoc
class __$$_MemberCopyWithImpl<$Res>
    extends _$MemberCopyWithImpl<$Res, _$_Member>
    implements _$$_MemberCopyWith<$Res> {
  __$$_MemberCopyWithImpl(_$_Member _value, $Res Function(_$_Member) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? isAdmin = freezed,
    Object? hasClub = null,
    Object? password = freezed,
    Object? membershipStartDate = freezed,
    Object? membershipEndDate = freezed,
    Object? membershipType = freezed,
    Object? bjjBelt = freezed,
    Object? beltObtainedDate = freezed,
    Object? lastPaymentDate = freezed,
    Object? ageGroup = freezed,
    Object? phoneNumber = freezed,
    Object? email = null,
  }) {
    return _then(_$_Member(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      isAdmin: freezed == isAdmin
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasClub: null == hasClub
          ? _value.hasClub
          : hasClub // ignore: cast_nullable_to_non_nullable
              as bool,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      membershipStartDate: freezed == membershipStartDate
          ? _value.membershipStartDate
          : membershipStartDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      membershipEndDate: freezed == membershipEndDate
          ? _value.membershipEndDate
          : membershipEndDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      membershipType: freezed == membershipType
          ? _value.membershipType
          : membershipType // ignore: cast_nullable_to_non_nullable
              as String?,
      bjjBelt: freezed == bjjBelt
          ? _value.bjjBelt
          : bjjBelt // ignore: cast_nullable_to_non_nullable
              as String?,
      beltObtainedDate: freezed == beltObtainedDate
          ? _value.beltObtainedDate
          : beltObtainedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastPaymentDate: freezed == lastPaymentDate
          ? _value.lastPaymentDate
          : lastPaymentDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      ageGroup: freezed == ageGroup
          ? _value.ageGroup
          : ageGroup // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Member extends _Member {
  const _$_Member(
      {this.id,
      this.name,
      this.isAdmin,
      this.hasClub = false,
      this.password,
      this.membershipStartDate,
      this.membershipEndDate,
      this.membershipType,
      this.bjjBelt,
      this.beltObtainedDate,
      this.lastPaymentDate,
      this.ageGroup,
      this.phoneNumber,
      required this.email})
      : super._();

  factory _$_Member.fromJson(Map<String, dynamic> json) =>
      _$$_MemberFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final bool? isAdmin;
  @override
  @JsonKey()
  final bool hasClub;
  @override
  final String? password;
  @override
  final DateTime? membershipStartDate;
  @override
  final DateTime? membershipEndDate;
  @override
  final String? membershipType;
  @override
  final String? bjjBelt;
  @override
  final DateTime? beltObtainedDate;
  @override
  final DateTime? lastPaymentDate;
  @override
  final String? ageGroup;
  @override
  final DateTime? phoneNumber;
  @override
  final String email;

  @override
  String toString() {
    return 'Member(id: $id, name: $name, isAdmin: $isAdmin, hasClub: $hasClub, password: $password, membershipStartDate: $membershipStartDate, membershipEndDate: $membershipEndDate, membershipType: $membershipType, bjjBelt: $bjjBelt, beltObtainedDate: $beltObtainedDate, lastPaymentDate: $lastPaymentDate, ageGroup: $ageGroup, phoneNumber: $phoneNumber, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Member &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isAdmin, isAdmin) || other.isAdmin == isAdmin) &&
            (identical(other.hasClub, hasClub) || other.hasClub == hasClub) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.membershipStartDate, membershipStartDate) ||
                other.membershipStartDate == membershipStartDate) &&
            (identical(other.membershipEndDate, membershipEndDate) ||
                other.membershipEndDate == membershipEndDate) &&
            (identical(other.membershipType, membershipType) ||
                other.membershipType == membershipType) &&
            (identical(other.bjjBelt, bjjBelt) || other.bjjBelt == bjjBelt) &&
            (identical(other.beltObtainedDate, beltObtainedDate) ||
                other.beltObtainedDate == beltObtainedDate) &&
            (identical(other.lastPaymentDate, lastPaymentDate) ||
                other.lastPaymentDate == lastPaymentDate) &&
            (identical(other.ageGroup, ageGroup) ||
                other.ageGroup == ageGroup) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      isAdmin,
      hasClub,
      password,
      membershipStartDate,
      membershipEndDate,
      membershipType,
      bjjBelt,
      beltObtainedDate,
      lastPaymentDate,
      ageGroup,
      phoneNumber,
      email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MemberCopyWith<_$_Member> get copyWith =>
      __$$_MemberCopyWithImpl<_$_Member>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MemberToJson(
      this,
    );
  }
}

abstract class _Member extends Member {
  const factory _Member(
      {final String? id,
      final String? name,
      final bool? isAdmin,
      final bool hasClub,
      final String? password,
      final DateTime? membershipStartDate,
      final DateTime? membershipEndDate,
      final String? membershipType,
      final String? bjjBelt,
      final DateTime? beltObtainedDate,
      final DateTime? lastPaymentDate,
      final String? ageGroup,
      final DateTime? phoneNumber,
      required final String email}) = _$_Member;
  const _Member._() : super._();

  factory _Member.fromJson(Map<String, dynamic> json) = _$_Member.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  bool? get isAdmin;
  @override
  bool get hasClub;
  @override
  String? get password;
  @override
  DateTime? get membershipStartDate;
  @override
  DateTime? get membershipEndDate;
  @override
  String? get membershipType;
  @override
  String? get bjjBelt;
  @override
  DateTime? get beltObtainedDate;
  @override
  DateTime? get lastPaymentDate;
  @override
  String? get ageGroup;
  @override
  DateTime? get phoneNumber;
  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$_MemberCopyWith<_$_Member> get copyWith =>
      throw _privateConstructorUsedError;
}
