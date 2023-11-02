part of member_page;

class MembersPage extends StatefulWidget {
  const MembersPage({super.key});

  @override
  _MembersPageState createState() => _MembersPageState();
}

class _MembersPageState extends State<MembersPage> {
  @override
  void initState() {
    super.initState();
    getIt<MembersCubit>().loadMembers();
  }

  bool _isLongPress = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if(_isLongPress) {
            setState(() {
              _isLongPress = false;
            });
          } else {
            context.goNamed(Routes.memberDetails);
          }
        },
        child: _isLongPress? const Icon(Icons.edit) : const Icon(Icons.add),
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
                final beltColor = BjjBelt.getBjjBeltFromString(member.bjjBelt).color;

                return ListTile(
                  title: Text(member.name ?? member.email),
                  subtitle: Text(member.ageGroup ?? ''),
                  leading: Container(
                    width: 30,
                    height: 50,
                    decoration: BoxDecoration(
                      color: beltColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    // remove the padding between the icons
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.attach_money),
                        color: Colors.green,

                        onPressed: () {
                          getIt<MembersCubit>().updatePayment(member.id!);
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.delete),
                        color: Colors.red,
                        onPressed: () {
                          getIt<MembersCubit>().deleteMember(member.id!);
                        },
                      ),
                    ],
                  ),
                  onTap: () {
                    context.goNamed(Routes.memberDetails, extra: MemberDetailsExtra(member: member));
                  },
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
