part of dashboard_page;

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final member = getIt<MemberCubit>().state.member;
    print(">>>> member2 $member");
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Text('Dashboard'),
        ),
      ),
    );
  }
}
