part of member_details;


@immutable
class MembersDetailsState extends Equatable {
  final String? message;

  const MembersDetailsState({this.message});

  @override
  List<Object?> get props => [message];
}
class MemberDetailsInitial extends MembersDetailsState {}

class MemberAddingFailure extends MembersDetailsState {
  const MemberAddingFailure({required String message}) : super(message: message);
}

class MemberAddingSuccess extends MembersDetailsState {
  const MemberAddingSuccess({required String message}) : super(message: message);
}
