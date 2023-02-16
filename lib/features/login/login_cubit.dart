part of login;

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

  Future<void> checkUserLoggedIn() async {
    final user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      emit(LoginSuccess.fromState(user: user));
    } else {
      emit(LoginFailure());
    }
  }
}
