// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'classes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TrainingSessionImpl _$$TrainingSessionImplFromJson(
        Map<String, dynamic> json) =>
    _$TrainingSessionImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      startTime: json['startTime'] as String,
      endTime: json['endTime'] as String,
      day: json['day'] as String,
      ageGroup: json['ageGroup'] as String,
    );

Map<String, dynamic> _$$TrainingSessionImplToJson(
        _$TrainingSessionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'day': instance.day,
      'ageGroup': instance.ageGroup,
    };
