part of member_page;

class MembersPage extends StatefulWidget {
  @override
  _MembersPageState createState() => _MembersPageState();
}

class _MembersPageState extends State<MembersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Members'),
      ),
      body: Container(
        child: ListView(
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
      ),
    );
  }
}
