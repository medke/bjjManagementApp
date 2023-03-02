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
            actions: [
              AuthStateChangeAction<UserCreated>(
                (context, state) {
                  Future.delayed(const Duration(seconds: 2)).then(
                    (value) {
                      context.goNamed(Routes.roleSelection);
                    },
                  );
                },
              ),
            ],
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
        MemberCubit().addUserToCollection(snapshot.data!);
        return const SplashScreenPage();
      },
    );
  }
}
