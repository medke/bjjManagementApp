part of session;

@LazySingleton()
class SessionCubit extends Cubit<SessionState> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  SessionCubit() : super(const SessionInitial());

  reset() {
    emit(const SessionInitial());
  }

  Future<void> addSession(Session session) async {
    try {
      await _firestore.collection('sessions').doc(session.id).set(session.toJson());
      emit(const SessionAdded());
    } catch (e) {
      emit(SessionFailure(error: e.toString()));
    }
  }



  Future<void> updateSession(Session session) async {
    try {
      await _firestore.collection('sessions').doc(session.id).update(session.toJson());
    } catch (e) {
      emit(SessionFailure(error: e.toString()));
    }
  }
}
