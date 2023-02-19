// GENERATED CODE - DO NOT MODIFY BY HAND

part of members;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Member _$$_MemberFromJson(Map<String, dynamic> json) => _$_Member(
      id: json['id'] as String?,
      name: json['name'] as String?,
      isAdmin: json['isAdmin'] as bool?,
      hasClub: json['hasClub'] as bool? ?? false,
      password: json['password'] as String?,
      membershipStartDate: json['membershipStartDate'] == null
          ? null
          : DateTime.parse(json['membershipStartDate'] as String),
      membershipEndDate: json['membershipEndDate'] == null
          ? null
          : DateTime.parse(json['membershipEndDate'] as String),
      membershipType: json['membershipType'] as String?,
      bjjBelt: json['bjjBelt'] as String?,
      beltObtainedDate: json['beltObtainedDate'] == null
          ? null
          : DateTime.parse(json['beltObtainedDate'] as String),
      lastPaymentDate: json['lastPaymentDate'] == null
          ? null
          : DateTime.parse(json['lastPaymentDate'] as String),
      ageGroup: json['ageGroup'] as String?,
      phoneNumber: json['phoneNumber'] == null
          ? null
          : DateTime.parse(json['phoneNumber'] as String),
      email: json['email'] as String,
    );

Map<String, dynamic> _$$_MemberToJson(_$_Member instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'isAdmin': instance.isAdmin,
      'hasClub': instance.hasClub,
      'password': instance.password,
      'membershipStartDate': instance.membershipStartDate?.toIso8601String(),
      'membershipEndDate': instance.membershipEndDate?.toIso8601String(),
      'membershipType': instance.membershipType,
      'bjjBelt': instance.bjjBelt,
      'beltObtainedDate': instance.beltObtainedDate?.toIso8601String(),
      'lastPaymentDate': instance.lastPaymentDate?.toIso8601String(),
      'ageGroup': instance.ageGroup,
      'phoneNumber': instance.phoneNumber?.toIso8601String(),
      'email': instance.email,
    };
