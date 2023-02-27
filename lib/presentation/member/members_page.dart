part of member_page;

class MembersPage extends StatefulWidget {
  const MembersPage({Key? key}) : super(key: key);

  @override
  _MembersPageState createState() => _MembersPageState();
}

class _MembersPageState extends State<MembersPage> {
  @override
  void initState() {
    super.initState();
    getIt<MembersCubit>().loadMembers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.goNamed(Routes.memberDetails);
        },
        child: const Icon(Icons.add),
      ),
      body: BlocConsumer<MembersCubit, MembersState>(
        bloc: getIt(),
        listener: (BuildContext context, MembersState state) {
          if (state is MembersLoadingFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.error)),
            );
          }
        },
        builder: (context, state) {
          if (state is MembersLoaded) {
            return ListView.builder(
              itemCount: state.members!.length,
              itemBuilder: (context, index) {
                final member = state.members![index];
                return ListTile(
                  title: Text(member.name ?? member.email),
                  subtitle: Text(member.ageGroup ?? ''),
                );
              },
            );
          }

          return const CircularProgressIndicator();
        },
      ),
    );
  }
}
