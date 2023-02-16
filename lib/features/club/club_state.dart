part of club;

abstract class ClubState extends Equatable {
  const ClubState();
}

class ClubLoading extends ClubState {
  const ClubLoading();

  @override
  List<Object> get props => [];
}

class ClubLoaded extends ClubState {
  final Club club;

  const ClubLoaded(this.club);

  @override
  List<Object> get props => [club];
}

class ClubError extends ClubState {
  final String error;

  const ClubError(this.error);

  @override
  List<Object> get props => [error];
}