part of login;

@LazySingleton()
class LoginCubit extends Cubit<LoginState> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  LoginCubit() : super(LoginInitial());

  Future<void> addUserToCollection(User user) async {
    final userRef = _firestore.collection('members').doc(user.uid);
    final userDoc = await userRef.get();

    if (!userDoc.exists) {
      await userRef.set({
        'email': user.email,
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
      print(">>>> memberDoc ${memberDoc.data()}");
      final member = Member(
        id: uid,
        email: memberDoc.data()!['email'],
      );
      emit(LoginSuccess.fromState(member: member));
    } else {
      emit(LoginFailure());
    }
  }

  Future<void> checkUserLoggedIn() async {
    final user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      await getUserFromCollection(user.uid);
    } else {
      emit(LoginFailure());
    }
  }
}
