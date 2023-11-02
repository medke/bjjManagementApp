part of session_page;

class SessionSchedulePage extends StatefulWidget {
  const SessionSchedulePage({super.key});

  @override
  State<SessionSchedulePage> createState() => _SessionSchedulePageState();
}

class _SessionSchedulePageState extends State<SessionSchedulePage> {
  @override
  void initState() {
    super.initState();
    getIt<SessionsCubit>().loadSessions();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<SessionsCubit, SessionsState>(
        bloc: getIt(),
        listener: (context, state) {
          if (state is SessionsLoadingFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.error)),
            );
          }
        },
        builder: (context, state) {
          if (state is SessionsLoaded) {
            return ListView.builder(
              itemCount: daysOfWeek.length,
              itemBuilder: (context, index) {
                final day = daysOfWeek[index];
                return ExpansionTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(day, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                    ],
                  ),
                  children: <Widget>[
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: getSessionsPerDayIndex(state.sessions ?? [], index).length,
                      itemBuilder: (context, i) {
                        final session = getSessionsPerDayIndex(state.sessions ?? [], index)[i];
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4.0),
                          child: SessionCard(session: session),
                        );
                      },
                    ),
                  ],
                );
              },
            );
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }



}

// Mockup data and widget for a session

class SessionCard extends StatelessWidget {
  final Session session;

  const SessionCard({super.key, required this.session});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: session.type?.color,
        child: ListTile(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${session.startTime} - ${session.endTime}',
                style: const TextStyle(fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                '${session.type?.value} - ${session.level?.name}',
                style: const TextStyle(fontSize: 14),
              ),
            ],
          ),
          subtitle: Text(session.instructor ?? ''),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: const Icon(Icons.edit),
                onPressed: () {
                  // Logic to edit the session
                },
              ),
              IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () {
                  print('Delete session ${session.id}');
                  getIt<SessionsCubit>().removeSession(session.id!);
                },
              ),
            ],
          ),
          onTap: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text('${session.type} - ${session.level}'),
                  content: Text('Time: ${session.time}\nInstructor: ${session.instructor}'),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
