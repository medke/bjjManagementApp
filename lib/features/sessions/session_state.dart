part of sessions;

@immutable
class SessionsState extends Equatable {
  final List<Session>? sessions;

  const SessionsState({this.sessions});

  @override
  List<Object?> get props => [sessions];
}

class SessionsInitial extends SessionsState {
  const SessionsInitial() : super(sessions: const []);
}

class SessionsLoading extends SessionsState {
  const SessionsLoading() : super();
}

class SessionsLoaded extends SessionsState {
  const SessionsLoaded.fromState({required List<Session> sessions}) : super(sessions: sessions);

  const SessionsLoaded(List<Session> sessions) : super(sessions: sessions);
}

class SessionsLoadingFailure extends SessionsState {
  final String error;

  const SessionsLoadingFailure({required this.error});
}

class SessionRemoved extends SessionsState {
  final String message;

  const SessionRemoved({this.message = 'Session removed successfully'});
}