part of club;

@freezed
class Club with _$Club {
  const factory Club({
    required String id,
    required String name,
    @Default('') String logo ,
    required String address,
    required List<TrainingSession> trainingSessions,
    required List<Member> members,
  }) = _Club;

  factory Club.fromJson(Map<String, dynamic> json) => _$ClubFromJson(json);

}


