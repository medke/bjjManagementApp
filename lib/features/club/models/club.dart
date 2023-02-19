part of club;

@freezed
class Club with _$Club {
  const factory Club({
    String? id,
    String? name,
    String? logo,
    String? address,
    List<TrainingSession>? trainingSessions,
    List<Member>? members,
  }) = _Club;

  factory Club.fromJson(Map<String, dynamic> json) => _$ClubFromJson(json);

}


