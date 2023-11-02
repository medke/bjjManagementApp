part of sessions;

List<Session> getSessionsPerDayIndex(List<Session> sessions, int dayIndex) {
  return sessions.where((Session session) => session.dayIndex == dayIndex).toList();
}
