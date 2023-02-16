part of home_page;

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BJJ Membership Management'),
      ),
      body: ListView(
        children: <Widget>[
          const SignOutButton(),
          ListTile(
            title: const Text('Members'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MembersPage(),
                ),
              );
            },
          ),
          ListTile(
            title: const Text('Class Schedule'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SessionSchedulePage(),
                ),
              );
            },
          ),
          ListTile(
            title: const Text('Payments'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PaymentsPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
