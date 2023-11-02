part of member_details;

@LazySingleton()
class MemberDetailsCubit extends Cubit<MembersDetailsState> {
  MemberDetailsCubit() : super(const MemberDetailsInitial());

  // reset the state to initial
  void reset() {
    emit(const MemberDetailsInitial());
  }

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
      await FirebaseFirestore.instance.collection('members').doc(member.id).set(member.toJson());

      emit(const MemberAddingSuccess(message: 'Member Added Successfully'));
    } catch (e) {
      emit(MemberAddingFailure(message: e.toString()));
    }
  }

  // update existing member
  Future<void> updateMember(Member member) async {
    try {
      // update the member data to Firestore without the password
      await FirebaseFirestore.instance.collection('members').doc(member.id).set(member.toJsonWithoutPassword());

      emit(const MemberAddingSuccess(message: 'Member Updated Successfully'));
    } catch (e) {
      emit(MemberAddingFailure(message: e.toString()));
    }
  }
}
