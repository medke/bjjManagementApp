// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SessionImpl _$$SessionImplFromJson(Map<String, dynamic> json) =>
    _$SessionImpl(
      time: json['time'] as String?,
      instructor: json['instructor'] as String?,
      level: $enumDecodeNullable(_$SessionLevelEnumMap, json['level']),
      type: $enumDecodeNullable(_$SessionTypeEnumMap, json['type']),
      id: json['id'] as String?,
      startTime: json['startTime'] as String?,
      endTime: json['endTime'] as String?,
      clubId: json['clubId'] as String,
      dayIndex: json['dayIndex'] as int,
    );

Map<String, dynamic> _$$SessionImplToJson(_$SessionImpl instance) =>
    <String, dynamic>{
      'time': instance.time,
      'instructor': instance.instructor,
      'level': _$SessionLevelEnumMap[instance.level],
      'type': _$SessionTypeEnumMap[instance.type],
      'id': instance.id,
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'clubId': instance.clubId,
      'dayIndex': instance.dayIndex,
    };

const _$SessionLevelEnumMap = {
  SessionLevel.beginner: 'beginner',
  SessionLevel.intermediate: 'intermediate',
  SessionLevel.advanced: 'advanced',
};

const _$SessionTypeEnumMap = {
  SessionType.Gi: 'Gi',
  SessionType.NoGi: 'NoGi',
  SessionType.OpenMat: 'OpenMat',
  SessionType.Kids: 'Kids',
};
