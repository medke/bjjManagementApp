part of session;

@immutable
class SessionState extends Equatable {
  final Session? session;

  const SessionState({this.session});

  @override
  List<Object?> get props => [session];
}

class SessionInitial extends SessionState {
  const SessionInitial() : super();
}

class SessionLoaded extends SessionState {
  const SessionLoaded.fromState({required Session session}) : super(session: session);

  const SessionLoaded(Session session) : super(session: session);
}

class SessionLoadingFailure extends SessionState {
  final String error;

  const SessionLoadingFailure({required this.error});
}

class SessionAdded extends SessionState {
  final String message;

  const SessionAdded({this.message = 'Session added successfully'});
}



class SessionLoading extends SessionState {
  const SessionLoading() : super();
}

class SessionFailure extends SessionState {
  final String error;

  const SessionFailure({required this.error});
}
