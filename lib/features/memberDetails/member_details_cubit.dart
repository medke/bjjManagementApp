part of member_details;

@LazySingleton()
class MemberDetailsCubit extends Cubit<MembersDetailsState> {
  MemberDetailsCubit() : super(MemberDetailsInitial());

  Future<void> addMember(Member member) async {
    final memberRef = FirebaseFirestore.instance.collection('members');

    try {
      QuerySnapshot querySnapshot = await memberRef.where('email', isEqualTo: member.email).get();
      if (querySnapshot.docs.isNotEmpty) {
        throw ('Email already exists');
      }

      // Create a new instance of the FirebaseAuth class
      final FirebaseAuth auth = FirebaseAuth.instanceFor(app: Firebase.app("member_cubit"));

      // Create a new user account with the specified email and password
     await auth.createUserWithEmailAndPassword(email: member.email, password: member.password!);

      // Save the member data to Firestore
      await FirebaseFirestore.instance
          .collection('members')
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .set(member.toJson());

      emit(const MemberAddingSuccess(message: "Member Added Successfully"));
    } catch (e) {
      emit(MemberAddingFailure(message: e.toString()));
    }
  }
}
