import 'package:blog_application/screens/article_screen.dart';
import 'package:blog_application/screens/home_screen.dart';
import 'package:blog_application/screens/profile_sceen.dart';
import 'package:blog_application/screens/search_screen.dart';
import 'package:blog_application/widgets/bottom_navigation.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

const homeIndex = 0;
const articleIndex = 1;
const searchIndex = 2;
const menuIndex = 3;
const double bottomNavigationHeight = 65;

class _MainScreenState extends State<MainScreen> {
  int selectedScreenIndex = homeIndex;
  final List<int> _history = [];

  final GlobalKey<NavigatorState> _homeKey = GlobalKey();
  final GlobalKey<NavigatorState> _articleKey = GlobalKey();
  final GlobalKey<NavigatorState> _searchKey = GlobalKey();
  final GlobalKey<NavigatorState> _menuKey = GlobalKey();

  late final map = {
    homeIndex: _homeKey,
    articleIndex: _articleKey,
    searchIndex: _searchKey,
    menuIndex: _menuKey,
  };

  Future<bool> _onWillPop() async {
    final NavigatorState currentSelectedTabNavigatorState =
        map[selectedScreenIndex]!.currentState!;
    if (currentSelectedTabNavigatorState.canPop()) {
      currentSelectedTabNavigatorState.pop();
      return false;
    } else if (_history.isNotEmpty) {
      setState(() {
        selectedScreenIndex = _history.last;
        _history.removeLast();
      });
      return false;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WillPopScope(
        onWillPop: _onWillPop,
        child: Scaffold(
          body: Stack(
            children: [
              Positioned.fill(
                bottom: bottomNavigationHeight,
                child: IndexedStack(
                  index: selectedScreenIndex,
                  children: [
                    _navigator(_homeKey, homeIndex, const HomeScreen()),
                    _navigator(
                        _articleKey, articleIndex, const ArticleScreen()),
                    _navigator(
                      _searchKey,
                      searchIndex,
                      const SimpleScreen(
                        tabName: 'Search',
                      ),
                    ),
                    _navigator(_menuKey, menuIndex, const ProfileScreen()),
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: BottomNavigation(
                  selectedIndex: selectedScreenIndex,
                  onTab: (int index) {
                    setState(() {
                      _history.remove(selectedScreenIndex);
                      _history.add(selectedScreenIndex);
                      selectedScreenIndex = index;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _navigator(GlobalKey key, int index, Widget child) {
    return key.currentState == null && selectedScreenIndex != index
        ? Container()
        : Navigator(
            key: key,
            onGenerateRoute: (settings) => MaterialPageRoute(
              builder: (context) {
                return Offstage(
                  offstage: selectedScreenIndex != index,
                  child: child,
                );
              },
            ),
          );
  }
}
