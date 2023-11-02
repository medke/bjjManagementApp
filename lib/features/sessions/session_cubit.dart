part of sessions;

@LazySingleton()
class SessionsCubit extends Cubit<SessionsState> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  SessionsCubit() : super(const SessionsInitial());

  List<Session> sessions = [];

  Future<void> loadSessions() async {
    try {
      emit(const SessionsLoading());
      _firestore
          .collection('sessions')
          .where('clubId', isEqualTo: getIt<MemberCubit>().state.member!.clubId)
          .snapshots()
          .listen((snapshot) {
        sessions = snapshot.docs.map((doc) => Session.fromJson(doc.data())).toList();
        emit(SessionsLoaded.fromState(sessions: sessions));
      });
    } catch (e) {
      emit(SessionsLoadingFailure(error: e.toString()));
    }
  }

  Future<void> removeSession(String sessionId) async {
    try {
      await _firestore.collection('sessions').doc(sessionId).delete();
      final List<Session>? updatedSessions = state.sessions?.where((session) => session.id != sessionId).toList();

      emit(SessionsLoaded(updatedSessions ?? []));
    } catch (e) {
      emit(SessionsLoadingFailure(error: e.toString()));
    }
  }
}
