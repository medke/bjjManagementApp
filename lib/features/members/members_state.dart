part of members;

@immutable
class MembersState extends Equatable {
  final List<Member>? members;

  const MembersState({this.members});

  @override
  List<Object?> get props => [members];
}

class MembersInitial extends MembersState {
  const MembersInitial() : super(members: const []);
}

class MembersLoaded extends MembersState {
  const MembersLoaded.fromState({required List<Member> members}) : super(members: members);
  const MembersLoaded(List<Member> members) : super(members: members);
}

class MembersLoadingFailure extends MembersState {
  final String error;

  const MembersLoadingFailure({required this.error});
}

