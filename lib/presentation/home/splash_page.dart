part of home_page;

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();

    getIt<LoginCubit>().checkUserLoggedIn();
  }

  void navigateToNextScreen(BuildContext context, Member? member) {
    if (member != null) {
      if (member.isAdmin == null) {
        context.goNamed(Routes.roleSelection);
      } else if (member.isAdmin == true && member.clubId == null) {
        context.goNamed(Routes.adminsComplete);
      } else {
        context.goNamed(Routes.home);
      }
    } else {
      context.goNamed(Routes.login);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: BlocConsumer<LoginCubit, LoginState>(
            listener: (context, state) {
              if (state is LoginFailure) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(state.error)),
                );
              } else if (state is LoginSuccess) {
                navigateToNextScreen(context, getIt<LoginCubit>().state.member);
              } else if (state is RedirectToLogin) {
                context.goNamed(Routes.login);
              }
            },
            builder: (context, state) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/images/logo.svg',
                      height: 150,
                      width: 150,
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'BJJ Management App',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Version 1.0',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              );
            },
          )),
    );
  }
}
