part of session;

@freezed
class Session with _$Session {
  const factory Session({
    String? time,
    String? instructor,
    SessionLevel? level,
    SessionType? type,
    String? id,
    String? startTime,
    String? endTime,
    required String clubId,
    required int dayIndex,
  }) = _Session;

  factory Session.fromJson(Map<String, dynamic> json) => _$SessionFromJson(json);
}
