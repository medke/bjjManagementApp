part of club;

@LazySingleton()
class ClubCubit extends Cubit<ClubState> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  ClubCubit() : super(const ClubLoading());

  Future<void> createClub(Club club) async {
    emit(const ClubLoading());
    try {
      await _firestore.collection('club').add(club.toJson());
      emit(ClubLoaded(club));
    } catch (e) {
      emit(ClubError(e.toString()));
    }
  }

  Future<void> updateClass(TrainingSession trainingSession) async {
    emit(const ClubLoading());
    try {
    } catch (e) {
      emit(ClubError(e.toString()));
    }
  }

  Future<void> addMember(Club club) async {
    emit(const ClubLoading());
    try {
      // final club = await _clubRepository.addMember(member);
      emit(ClubLoaded(club));
    } catch (e) {
      emit(ClubError(e.toString()));
    }
  }
}
