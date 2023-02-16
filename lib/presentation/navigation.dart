part of presentation;

class Routes {
  static const String root = '/';

  static const String onboard = '/onboard';

  static const String login = '/login';
  static const String signUpAdmin = 'signup-admin';
  static const String signUpMember = 'signup-member';


  static const String login_signUp = '/login/signup';

  static const String signUpSuccess = 'signup-success';
  static const String profileComplete = 'profile-complete';
  static const String resendPinCode = 'resend-pincode';
  static const String resetOldCode = 'reset-pincode';

  static const String home = '/home';
  static const String profile = 'profile';
  static const String memberDetails = 'member-details';
  static const String memberOverview = 'member-overview';
  static const String payment = 'payment';
  static const String paymentDetails = 'payment-details';
  static const String session = 'session';
  static const String sessionDetails = 'session-details';
  static const String roleSelection = 'role-selection';

  static final router = GoRouter(
    routes: [
      GoRoute(
        name: Routes.root,
        path: Routes.root,
        pageBuilder: (context, state) => const MaterialPage(child: SplashScreenPage()),
      ),
      GoRoute(
        name: Routes.login,
        path: Routes.login,
        pageBuilder: (context, state) => MaterialPage(key: state.pageKey, child: const LoginPage()),
        routes: [
          GoRoute(
            name: Routes.signUpAdmin,
            path: Routes.signUpAdmin,
            pageBuilder: (context, state) => const MaterialPage(child: AdminSignupPage()),
          ),
          GoRoute(
            name: Routes.signUpMember,
            path: Routes.signUpMember,
            pageBuilder: (context, state) => const MaterialPage(child: MemberSignupPage()),
          ),
          GoRoute(
            name: Routes.signUpSuccess,
            path: Routes.signUpSuccess,
            pageBuilder: (context, state) => MaterialPage(key: state.pageKey, child: const SignUpSuccessPage()),
          ),
          GoRoute(
            name: Routes.profileComplete,
            path: Routes.profileComplete,
            pageBuilder: (context, state) => MaterialPage(key: state.pageKey, child: const CompleteProfilePage()),
          ),
        ],
      ),
      GoRoute(
        name: Routes.home,
        path: Routes.home,
        pageBuilder: (context, state) => MaterialPage(key: state.pageKey, child: HomePage()),
        routes: [
          GoRoute(
            name: Routes.memberDetails,
            path: Routes.memberDetails,
            pageBuilder: (context, state) => MaterialPage(key: state.pageKey, child: const MemberDetailsPage()),
          ),
        ],
      ),
    ],
  );
}

extension GoRouterExtension on BuildContext {
  void popAndGoNamed(String route) {
    Navigator.pop(this);
    goNamed(route);
  }
}
