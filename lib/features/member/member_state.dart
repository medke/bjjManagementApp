part of member;

@immutable
class MemberState extends Equatable {
  final Member? member;

  const MemberState({this.member});

  @override
  List<Object?> get props => [member];
}

class LoginInitial extends MemberState {}

class MemberLoading extends MemberState {}

class RedirectToLogin extends MemberState {}

class LoginSuccess extends MemberState {
  const LoginSuccess.fromState({Member? member}) : super(member: member);
}

class MemberUpdate extends MemberState {
  const MemberUpdate.fromState({Member? member}) : super(member: member);
}

class LoginFailure extends MemberState {
  final String error;

  const LoginFailure({required this.error});
}

