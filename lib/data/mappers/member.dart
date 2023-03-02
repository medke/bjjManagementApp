part of mappers;

@LazySingleton()
class MemberMapper extends Mapper<Map<String, dynamic>, Member> {
  const MemberMapper();

  @override
  Member fromEntity(Map<String, dynamic> entity) {
    return Member(
      id: entity['id'],
      email: entity['email'],
      name: entity['name'],
      clubId: entity['clubId'],
      isAdmin: entity['isAdmin'],
      password: entity['password'],
      membershipStartDate: DateTimeExtensions.parseNotNull(entity['membershipStartDate']),
      membershipEndDate: DateTimeExtensions.parseNotNull(entity['membershipEndDate']),
      membershipType: entity['membershipType'],
      bjjBelt: entity['bjjBelt'],
      beltObtainedDate: DateTimeExtensions.parseNotNull(entity['beltObtainedDate']),
      lastPaymentDate: DateTimeExtensions.parseNotNull(entity['lastPaymentDate']),
      ageGroup: entity['ageGroup'],
      phoneNumber: entity['phoneNumber'],
      paymentMethod: entity['paymentMethod'],
    );
  }

  @override
  Map<String, dynamic> toEntity(Member item) {
    throw UnimplementedError();
  }
}
