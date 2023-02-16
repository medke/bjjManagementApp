part of session_page;

class SessionDetailsPage extends StatefulWidget {
  @override
  _SessionDetailsPageState createState() => _SessionDetailsPageState();
}

class _SessionDetailsPageState extends State<SessionDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Class Details'),
      ),
      body: Container(
        child: const Center(
          child: Text('Class Details'),
        ),
      ),
    );
  }
}
