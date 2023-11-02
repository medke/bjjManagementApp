part of home_page;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  bool _isSearching = false;
  final TextEditingController _searchController = TextEditingController();

  static const List<Widget> _widgetOptions = <Widget>[
    DashboardPage(),
    MembersPage(),
    SessionSchedulePage(),
    PaymentsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // if the user is on MembersPage, show a search icon, that when clicked, shows a search bar on the app bar
  // also add an icon to sort the members by name or by belt color, last payment date, or alphabetically

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _isSearching
            ? TextField(
                controller: _searchController,
                onChanged: (text) {
                  getIt<MembersCubit>().searchMembers(text);
                },
                decoration: const InputDecoration(
                  hintText: 'Search members...',
                ),
              )
            : const Text('My App'),
        actions: <Widget>[
          if (_selectedIndex == 1) ...[
            if (_isSearching) ...[
              IconButton(
                icon: const Icon(Icons.close),
                onPressed: () {
                  setState(() {
                    _isSearching = false;
                    _searchController.clear();
                  });
                },
              ),
            ] else ...[
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {
                  setState(() {
                    _isSearching = true;
                  });
                },
              ),
              PopupMenuButton<SortOption>(
                icon: const Icon(Icons.sort),
                onSelected: (SortOption result) {
                  getIt<MembersCubit>().sortMembers(result);
                },
                itemBuilder: (BuildContext context) => <PopupMenuEntry<SortOption>>[
                  const PopupMenuItem<SortOption>(
                    value: SortOption.name,
                    child: Text('Sort by Name'),
                  ),
                  const PopupMenuItem<SortOption>(
                    value: SortOption.beltColor,
                    child: Text('Sort by Belt Color'),
                  ),
                  const PopupMenuItem<SortOption>(
                    value: SortOption.lastPaymentDate,
                    child: Text('Last Payment Date'),
                  ),
                ],
              ),
            ]
          ],
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              context.goNamed(Routes.profile);
            },
          ),
        ],
      ),
      body: SafeArea(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // This is all you need!

        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Members',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.schedule),
            label: 'Schedule',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.payment),
            label: 'Payments',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
