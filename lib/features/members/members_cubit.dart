part of members;

@LazySingleton()
class MembersCubit extends Cubit<MembersState> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  MembersCubit() : super(const MembersInitial());

  void loadMembers() async {
    try {
      _firestore
          .collection('members')
          .where('clubId', isEqualTo: getIt<MemberCubit>().state.member!.clubId)
          // .where('isAdmin', isNotEqualTo: true)
          .snapshots()
          .listen((snapshot) {
        final members = snapshot.docs.map((doc) => Member.fromJson(doc.data())).toList();
        emit(MembersLoaded.fromState(members: members));
      });
    } catch (e) {
      emit(MembersLoadingFailure(error: e.toString()));
    }
  }


}
