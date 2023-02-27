part of member;

@freezed
class Member with _$Member {
  const factory Member({
    String? id,
    String? name,
    String? clubId,
    bool? isAdmin,
    String? password,
    String? code,
    DateTime? membershipStartDate,
    DateTime? membershipEndDate,
    String? membershipType,
    String? bjjBelt,
    DateTime? beltObtainedDate,
    DateTime? lastPaymentDate,
    String? ageGroup,
    DateTime? phoneNumber,
    String? paymentMethod,
    required String email,
  }) = _Member;

  factory Member.fromJson(Map<String, dynamic> json) => _$MemberFromJson(json);
}
