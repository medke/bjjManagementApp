part of member_details;

@LazySingleton()
class MemberDetailsCubit extends Cubit<MembersDetailsState> {
  MemberDetailsCubit() : super(MemberDetailsInitial());

  Future<void> addMember(Member member) async {
    final FirebaseAuth auth = FirebaseAuth.instance;

    final memberRef = FirebaseFirestore.instance.collection('members');

    try {
      QuerySnapshot querySnapshot = await memberRef.where('email', isEqualTo: member.email).get();
      if (querySnapshot.docs.isNotEmpty) {
        throw ('Email already exists');
      }
      auth
          .createUserWithEmailAndPassword(
        email: member.email,
        password: member.password!,
      )
          .then((result) {
        User user = result.user!;
        AdditionalUserInfo additionalUserInfo = AdditionalUserInfo(
          profile: {'member': member.toJson()},
          isNewUser: true,
        );
        FirebaseFirestore.instance
            .collection('members')
            .doc(user.uid)
            .set({'member': member.toJson()})
            .then((value) => print("User added"))
            .catchError((error) => print("Failed to add user: $error"));
        user.sendEmailVerification();
      }).catchError((error) {
        throw (error);
      });

      emit(const MemberAddingSuccess(message: "Member Added Succesffuly"));
    } catch (e) {
      emit(MemberAddingFailure(message: e.toString()));
    }
  }
}
