part of presentation;

class Routes {
  static const String root = '/';

  static const String onboard = '/onboard';

  static const String login = '/login';
  static const String signUpAdmin = 'signup-admin';
  static const String signUpMember = 'signup-member';

  static const String login_signUp = '/login/signup';

  static const String signUpSuccess = 'signup-success';
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

  static const String roleSelection = '/role-selection';
  static const String adminsComplete = 'admin-complete';
  static const String membersComplete = 'members-complete';

  static const String addSessionPage = 'session-add';

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
        ],
      ),
      GoRoute(
        name: Routes.roleSelection,
        path: Routes.roleSelection,
        pageBuilder: (context, state) => MaterialPage(key: state.pageKey, child: const RoleSelectionPage()),
        routes: [
          GoRoute(
            name: Routes.adminsComplete,
            path: Routes.adminsComplete,
            pageBuilder: (context, state) => MaterialPage(key: state.pageKey, child: ClubCreatePage()),
          ),
          GoRoute(
            name: Routes.membersComplete,
            path: Routes.membersComplete,
            pageBuilder: (context, state) => MaterialPage(key: state.pageKey, child: MemberConfirmation()),
          ),
        ],
      ),
      GoRoute(
        name: Routes.home,
        path: Routes.home,
        pageBuilder: (context, state) => MaterialPage(key: state.pageKey, child: const HomePage()),
        routes: [
          GoRoute(
            name: Routes.memberDetails,
            path: Routes.memberDetails,
            pageBuilder: (context, state) {
              final extra = state.extra as MemberDetailsExtra?;
              return MaterialPage(key: state.pageKey, child: MemberDetailsPage(member: extra?.member));
            },
          ),
          GoRoute(
            name: Routes.addSessionPage,
            path: Routes.addSessionPage,
            pageBuilder: (context, state) {
              final index = state.extra as int?;
              return MaterialPage(key: state.pageKey, child: SessionAddPage(index: index!));
            },
          ),
          GoRoute(
            name: Routes.profile,
            path: Routes.profile,
            pageBuilder: (context, state) => MaterialPage(
              key: state.pageKey,
              child: const ProfilePage(),
            ),
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

class MemberDetailsExtra {
  const MemberDetailsExtra({required this.member});

  final Member member;
}
