part of login;

@LazySingleton()
class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  Future<void> addUserToCollection(User user) async {
    final userRef = FirebaseFirestore.instance.collection('members').doc(user.uid);
    final userDoc = await userRef.get();

    if (!userDoc.exists) {
      await userRef.set({
        'email': user.email,

      });
    }
  }
  Future<void> getUserFromCollection(String uid) async {
    final memberRef = FirebaseFirestore.instance.collection('members').doc(uid);
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
