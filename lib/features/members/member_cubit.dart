part of members;

@LazySingleton()
class MemberCubit extends Cubit<MemberState> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  MemberCubit() : super(const MemberState());

  Future<void> add(Member member) async {
    await _firestore.collection('members').add(member.toJson());
    emit(MemberAdded(member));
  }

  Future<void> signup({required Member member}) async {
    await _firestore.collection('members').add(member.toJson());
    emit(MemberAdded(member));
  }

  Future<bool> confirm({required String inviteCode}) async {
    return true;
  }
}
