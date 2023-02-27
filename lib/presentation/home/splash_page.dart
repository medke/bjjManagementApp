part of home_page;

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2)).then((_) {
      getIt<MemberCubit>().checkUserLoggedIn();
    });
    super.initState();
  }

  void navigateToNextScreen(BuildContext context, Member? member) {
    print(">>>> here3");
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
        child: BlocConsumer<MemberCubit, MemberState>(
          bloc: getIt(),
          listener: (context, state) {
            print(">>>> listener");

            if (state is LoginFailure) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(state.error)),
              );
              Future.delayed(const Duration(seconds: 2)).then((value) {
                context.goNamed(Routes.login);
              });
            }
            if (state is LoginSuccess) {
              navigateToNextScreen(context, getIt<MemberCubit>().state.member);
            }

            if (state is RedirectToLogin) {
              context.goNamed(Routes.login);
            }
          },
          builder: (context, state) {
            print(">>>> built ${state.runtimeType}");

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
        ),
      ),
    );
  }
}
