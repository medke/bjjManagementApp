part of members;

class MemberState extends Equatable {
  final Member? member;

  const MemberState({this.member});

  @override
  List<Object?> get props => throw UnimplementedError();
}

class MemberInitial extends MemberState {
  const MemberInitial() : super();
}

class MemberAdded extends MemberState {
  const MemberAdded(Member member) : super(member: member);
}
