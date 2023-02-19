part of profile_page;

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProfileScreen(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text('Profile'),
      ),
      children: const [
        MemberDetailsPage(),
      ],
    );
  }
}
