part of members;

@freezed
class Member with _$Member {
  const factory Member({
    String? id,
    String? name,
    bool? isAdmin,
    @Default(false) bool hasClub,
    String? password,
    DateTime? membershipStartDate,
    DateTime? membershipEndDate,
    String? membershipType,
    String? bjjBelt,
    DateTime? beltObtainedDate,
    DateTime? lastPaymentDate,
    String? ageGroup,
    DateTime? phoneNumber,
    required String email,
  }) = _Member;

  const Member._();

  bool get hasCompletedProfile => name != null && membershipStartDate != null && bjjBelt != null && ageGroup != null;

  factory Member.fromJson(Map<String, dynamic> json) => _$MemberFromJson(json);
}
