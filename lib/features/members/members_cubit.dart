part of members;

@LazySingleton()
class MembersCubit extends Cubit<MembersState> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  MembersCubit() : super(const MembersInitial());

  List<Member> members = [];

  void loadMembers() async {
    try {
      _firestore
          .collection('members')
          .where('clubId', isEqualTo: getIt<MemberCubit>().state.member!.clubId)
          .where('isAdmin', isNotEqualTo: true)
          .snapshots()
          .listen((snapshot) {
        members = snapshot.docs.map((doc) => Member.fromJson(doc.data())).toList();
        emit(MembersLoaded.fromState(members: members));
      });
    } catch (e) {
      emit(MembersLoadingFailure(error: e.toString()));
    }
  }

  // add a method to delete a member
  Future<void> deleteMember(String memberId) async {
    try {
      await _firestore.collection('members').doc(memberId).delete();
    } catch (e) {
      emit(MembersLoadingFailure(error: e.toString()));
    }
  }

  // add a method to promote a member to the next belt
  Future<void> promoteMember(String memberId) async {
    try {
      final member = await _firestore.collection('members').doc(memberId).get();
      final currentBelt = member.data()!['bjjBelt'];
      final nextBelt = BjjBelt.getNextBjjBelt(currentBelt);
      await _firestore.collection('members').doc(memberId).update({'bjjBelt': nextBelt});
    } catch (e) {
      emit(MembersLoadingFailure(error: e.toString()));
    }
  }

  // add a method to update the last payment date
  Future<void> updatePayment(String memberId) async {
    try {
      await _firestore
          .collection('members')
          .doc(memberId)
          .update({'lastPaymentDate': DateTime.now().toIso8601String()});
    } catch (e) {
      emit(MembersLoadingFailure(error: e.toString()));
    }
  }

  // add a method to update the medical certificate
  Future<void> updateMedicalCertificate(String memberId) async {
    try {
      await _firestore.collection('members').doc(memberId).update({'hasMedicalCertificate': true});
    } catch (e) {
      emit(MembersLoadingFailure(error: e.toString()));
    }
  }

  void searchMembers(String query) {
    final filteredMembers = members.where((member) {
      if (query.isEmpty || member.name == null) return true;
      return member.name!.contains(query) || member.email.contains(query);
    }).toList();

    emit(MembersLoaded(filteredMembers));
  }

  void sortMembers(SortOption option) {
    List<Member> sortedMembers = List.from(members); // Assuming _allMembers is where you store all the members
    switch (option) {
      case SortOption.name:
        sortedMembers.sort((a, b) => a.name?.compareTo(b.name ?? '') ?? 0);
        break;
      case SortOption.beltColor:
        sortedMembers.sort((a, b) => a.bjjBelt?.compareTo(b.bjjBelt ?? '') ?? 0);
        break;
      case SortOption.lastPaymentDate:
        sortedMembers.sort((a, b) => a.lastPaymentDate?.compareTo(b.lastPaymentDate!) ?? 0);
        break;
      case SortOption.alphabetically:
        sortedMembers.sort((a, b) => a.name?.compareTo(b.name ?? '') ?? 0);
        break;
    }

    emit(MembersLoaded(sortedMembers));
  }
}
