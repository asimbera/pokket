import 'package:flutter/material.dart';
import 'package:pokket/views/account/account_screen.dart';
import 'package:pokket/views/shared/shared_drawer.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex;

  @override
  void initState() {
    _currentIndex = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _getTitle(_currentIndex),
          style: Theme.of(context).primaryTextTheme.subtitle1,
        ),
        elevation: 0,
        actions: _getActions(context, _currentIndex),
      ),
      drawer: SharedDrawer(),
      body: IndexedStack(
        index: _currentIndex,
        children: [
          Container(),
          Container(),
          Container(),
          AccountScreen(),
        ],
      ),
      floatingActionButton: _getFab(_currentIndex),
      bottomNavigationBar: _getBottomNavigation(context: context),
    );
  }

  Widget _getBottomNavigation({BuildContext context}) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return BottomNavigationBar(
      backgroundColor: colorScheme.surface,
      selectedItemColor: colorScheme.onSurface,
      unselectedItemColor: colorScheme.onSurface.withOpacity(.50),
      selectedLabelStyle: textTheme.caption,
      unselectedLabelStyle: textTheme.caption,
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: true,
      onTap: (val) {
        setState(() => _currentIndex = val);
      },
      currentIndex: _currentIndex,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.analytics_rounded),
          label: 'Overview',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.receipt_rounded),
          label: 'Transactions',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.category_rounded),
          label: 'Categories',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.credit_card_rounded),
          label: 'Accounts',
        ),
      ],
    );
  }

  Widget _getFab(int currentIndex) {
    if (_currentIndex == 1) {
      return FloatingActionButton(
        onPressed: () => null,
        child: Icon(Icons.add),
      );
    } else {
      return null;
    }
  }

  String _getTitle(int currentIndex) {
    final headerTitles = <String>[
      'Overview',
      'Transactions',
      'Categories',
      'Accounts',
    ];

    return headerTitles[_currentIndex];
  }

  List<Widget> _getActions(
    BuildContext context,
    int currentIndex,
  ) {
    switch (currentIndex) {
      case 3:
        return [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () => AccountScreen.addAccountAction(
              context: context,
            ),
          ),
        ];
      case 2:
        return [
          IconButton(
            icon: Icon(Icons.edit_rounded),
            onPressed: () => null,
          ),
        ];
      case 1:
        return [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () => null,
          ),
        ];
      case 0:
        return [
          IconButton(
            icon: Icon(Icons.calendar_today_rounded),
            onPressed: () => null,
          ),
        ];
      default:
        return [];
    }
  }
}
