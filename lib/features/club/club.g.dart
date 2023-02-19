// GENERATED CODE - DO NOT MODIFY BY HAND

part of club;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Club _$$_ClubFromJson(Map<String, dynamic> json) => _$_Club(
      id: json['id'] as String,
      name: json['name'] as String,
      logo: json['logo'] as String?,
      address: json['address'] as String?,
      adminId: json['adminId'] as String,
      trainingSessions: (json['trainingSessions'] as List<dynamic>?)
          ?.map((e) => TrainingSession.fromJson(e as Map<String, dynamic>))
          .toList(),
      members:
          (json['members'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_ClubToJson(_$_Club instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'logo': instance.logo,
      'address': instance.address,
      'adminId': instance.adminId,
      'trainingSessions':
          instance.trainingSessions?.map((e) => e.toJson()).toList(),
      'members': instance.members,
    };
