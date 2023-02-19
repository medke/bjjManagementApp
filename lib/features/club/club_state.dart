part of club;

abstract class ClubState extends Equatable {
  const ClubState();
}

class ClubLoading extends ClubState {
  const ClubLoading();

  @override
  List<Object> get props => [];
}

class ClubCreatedSuccess extends ClubState {
  final Club club;

  const ClubCreatedSuccess(this.club);

  @override
  List<Object> get props => [club];
}

class ClubCreatedError extends ClubState {
  final String error;

  const ClubCreatedError(this.error);

  @override
  List<Object> get props => [error];
}