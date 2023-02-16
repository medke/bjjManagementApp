part of classes;

@freezed
class TrainingSession with _$TrainingSession{
  const factory TrainingSession({
    required String id,
    required String name,
    required String startTime,
    required String endTime,
    required String day,
    required String ageGroup,
  }) = _TrainingSession;

  factory TrainingSession.fromJson(Map<String, dynamic> json) => _$TrainingSessionFromJson(json);
}
