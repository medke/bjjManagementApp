part of signup_page;

class RoleSelectionPage extends StatelessWidget {
  const RoleSelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Choose User Type'),

      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Text('Are you:'),
              const SizedBox(height: 5.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      context.goNamed(Routes.adminsComplete);
                    },
                    child: const Text('Club Owner'),
                  ),
                  const SizedBox(width: 10.0),
                  ElevatedButton(
                    onPressed: () {
                      context.goNamed(Routes.membersComplete);

                    },
                    child: const Text('Member'),
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
    );
  }
}
