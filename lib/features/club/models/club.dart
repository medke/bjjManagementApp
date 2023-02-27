part of club;

@freezed
class Club with _$Club {
  @JsonSerializable(explicitToJson: true)
  const factory Club({
    required String id,
    required String name,
    String? logo,
    String? address,
    required String adminId,
    List<TrainingSession>? trainingSessions,
  }) = _Club;

  factory Club.fromJson(Map<String, dynamic> json) => _$ClubFromJson(json);
}
