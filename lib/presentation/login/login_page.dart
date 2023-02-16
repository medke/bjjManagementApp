part of login_page;

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return auth_ui.SignInScreen(
            headerBuilder: (context, constraints, _) => const Center(
              child: Text(
                'Bjj Management App',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            providers: [
              auth_ui.EmailAuthProvider(),
            ],
          );
        }
        LoginCubit().addUserToCollection(snapshot.data!);
        return const HomePage();
      },
    );
  }
}
