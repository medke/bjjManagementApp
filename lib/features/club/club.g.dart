// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'club.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClubImpl _$$ClubImplFromJson(Map<String, dynamic> json) => _$ClubImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      logo: json['logo'] as String?,
      address: json['address'] as String?,
      adminId: json['adminId'] as String,
      trainingSessions: (json['trainingSessions'] as List<dynamic>?)
          ?.map((e) => TrainingSession.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ClubImplToJson(_$ClubImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'logo': instance.logo,
      'address': instance.address,
      'adminId': instance.adminId,
      'trainingSessions':
          instance.trainingSessions?.map((e) => e.toJson()).toList(),
    };
