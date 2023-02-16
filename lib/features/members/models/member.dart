part of members;

@freezed
class Member with _$Member {
  const factory Member({
    int? id,
    required String name,
    bool? isAdmin,
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

  factory Member.fromJson(Map<String, dynamic> json) => _$MemberFromJson(json);
}
