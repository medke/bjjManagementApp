part of login;

@immutable
class LoginState extends Equatable {
  final Member? member;

  const LoginState({this.member});

  @override
  List<Object?> get props => [member];
}

class LoginInitial extends LoginState {}

class RedirectToLogin extends LoginState {}

class LoginSuccess extends LoginState {
  const LoginSuccess.fromState({Member? member}) : super(member: member);
}

class MemberUpdate extends LoginState {
  const MemberUpdate.fromState({Member? member}) : super(member: member);
}

class LoginFailure extends LoginState {
  final String error;

  const LoginFailure({required this.error});
}
