// GENERATED CODE - DO NOT MODIFY BY HAND

part of club;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Club _$$_ClubFromJson(Map<String, dynamic> json) => _$_Club(
      id: json['id'] as String?,
      name: json['name'] as String?,
      logo: json['logo'] as String?,
      address: json['address'] as String?,
      trainingSessions: (json['trainingSessions'] as List<dynamic>?)
          ?.map((e) => TrainingSession.fromJson(e as Map<String, dynamic>))
          .toList(),
      members: (json['members'] as List<dynamic>?)
          ?.map((e) => Member.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ClubToJson(_$_Club instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'logo': instance.logo,
      'address': instance.address,
      'trainingSessions': instance.trainingSessions,
      'members': instance.members,
    };
