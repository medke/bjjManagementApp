part of session_page;



class SessionSchedulePage extends StatefulWidget {
  @override
  _SessionSchedulePageState createState() => _SessionSchedulePageState();
}

class _SessionSchedulePageState extends State<SessionSchedulePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Class Schedule'),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: const Text('Monday'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SessionDetailsPage(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('Tuesday'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SessionDetailsPage(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('Wednesday'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SessionDetailsPage(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('Thursday'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SessionDetailsPage(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('Friday'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SessionDetailsPage(),
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
