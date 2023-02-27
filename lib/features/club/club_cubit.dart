part of club;

@LazySingleton()
class ClubCubit extends Cubit<ClubState> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  ClubCubit() : super(const ClubLoading());

  Future<void> createClub({
    required Club club,
    required Member admin,
  }) async {
    try {
      await _firestore.collection('clubs').doc(club.id).set(club.toJson());
      getIt<MemberCubit>().addMemberToClub(
        member: admin,
        clubId: club.id,
        isAdmin: true,
      );
      emit(ClubCreatedSuccess(club));
    } catch (e) {
      emit(ClubCreatedError(e.toString()));
    }
  }

Future<void> updateClass(TrainingSession trainingSession) async {
    emit(const ClubLoading());
    try {} catch (e) {
      emit(ClubCreatedError(e.toString()));
    }
  }

// Future<void> addMemberToClub({required Member member, required Club club}) async {
//   emit(const ClubLoading());
//   try {
//     // final club = await _clubRepository.addMember(member);
//     emit(ClubLoaded(club));
//   } catch (e) {
//     emit(ClubError(e.toString()));
//   }
// }
}
