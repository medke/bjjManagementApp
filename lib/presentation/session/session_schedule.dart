part of session_page;



class SessionSchedulePage extends StatelessWidget {
  const SessionSchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
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
    );
  }
}
