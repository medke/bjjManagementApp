part of member;

@LazySingleton()
class MemberCubit extends Cubit<MemberState> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  MemberCubit() : super(LoginInitial());

  Future<void> addUserToCollection(User user) async {
    final userRef = _firestore.collection('members').doc(user.uid);
    final userDoc = await userRef.get();

    if (!userDoc.exists) {
      await userRef.set({
        'email': user.email,
        'id': user.uid
      });
    }
  }

  Future<void> addMemberToClub({
    required Member member,
    required String clubId,
    bool isAdmin = false,
  }) async {
    try {
      member = member.copyWith(clubId: clubId, isAdmin: isAdmin);
      await _firestore.collection('members').doc(member.id).update(member.toJson());
      emit(MemberUpdate.fromState(member: member));
    } catch (e) {
      print(">>>> ADD MEMBER FAILURE: $e");
    }
  }


  Future<void> getUserFromCollection(String uid) async {
    final memberRef = _firestore.collection('members').doc(uid);
    final memberDoc = await memberRef.get();

    if (memberDoc.exists) {
      final member = getIt<MemberMapper>().fromEntity(memberDoc.data()!);
      emit(LoginSuccess.fromState(member: member));
    } else {
      emit(const LoginFailure(error: "Member does not exist"));
    }
  }

  Future<void> checkUserLoggedIn() async {
    emit(MemberLoading());

    final user = FirebaseAuth.instance.currentUser;
    try {
      if (user != null) {
        await getUserFromCollection(user.uid);
      } else {
        emit(RedirectToLogin());
      }
    } catch (e,s) {
      print(">>>>> $e $s");
      emit(LoginFailure(error: e.toString()));
    }
  }


}
