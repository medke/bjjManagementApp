// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MemberImpl _$$MemberImplFromJson(Map<String, dynamic> json) => _$MemberImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      clubId: json['clubId'] as String?,
      isAdmin: json['isAdmin'] as bool?,
      password: json['password'] as String?,
      code: json['code'] as String?,
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
      phoneNumber: json['phoneNumber'] as String?,
      paymentMethod: json['paymentMethod'] as String?,
      email: json['email'] as String,
    );

Map<String, dynamic> _$$MemberImplToJson(_$MemberImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'clubId': instance.clubId,
      'isAdmin': instance.isAdmin,
      'password': instance.password,
      'code': instance.code,
      'membershipStartDate': instance.membershipStartDate?.toIso8601String(),
      'membershipEndDate': instance.membershipEndDate?.toIso8601String(),
      'membershipType': instance.membershipType,
      'bjjBelt': instance.bjjBelt,
      'beltObtainedDate': instance.beltObtainedDate?.toIso8601String(),
      'lastPaymentDate': instance.lastPaymentDate?.toIso8601String(),
      'ageGroup': instance.ageGroup,
      'phoneNumber': instance.phoneNumber,
      'paymentMethod': instance.paymentMethod,
      'email': instance.email,
    };
