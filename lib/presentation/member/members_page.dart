part of member_page;

class MembersPage extends StatelessWidget {
  const MembersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          ListTile(
            title: const Text('John Doe'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MemberDetailsPage(),
                ),
              );
            },
          ),
          ListTile(
            title: const Text('Jane Doe'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MemberDetailsPage(),
                ),
              );
            },
          ),
          ListTile(
            title: const Text('Bob Smith'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MemberDetailsPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
