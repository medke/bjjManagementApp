part of login;

@immutable
abstract class LoginState {
  final User? user;

  const LoginState({this.user});

}

class LoginInitial extends LoginState {}

class LoginSuccess extends LoginState{
  const LoginSuccess.fromState({User? user}) : super(user: user);
}
class LoginFailure extends LoginState {}
