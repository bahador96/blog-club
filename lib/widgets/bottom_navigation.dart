import 'package:blog_application/gen/assets.gen.dart';
import 'package:blog_application/screens/auth_screen.dart';
import 'package:blog_application/screens/main_screen.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  final Function(int index) onTab;

  final int selectedIndex;

  const BottomNavigation({
    Key? key,
    required this.onTab,
    required this.selectedIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double bottomNavigationHeight = 65;

    return SizedBox(
      height: 85,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 65,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 20,
                    color: const Color(0x1a9B8487).withOpacity(0.3),
                  )
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  BottomNavigationItem(
                    iconFileName: 'Home.png',
                    activeIconFileName: 'Home.png',
                    title: 'Home',
                    onTab: () {
                      onTab(homeIndex);
                    },
                    isActive: selectedIndex == homeIndex,
                  ),
                  BottomNavigationItem(
                    iconFileName: 'Articles.png',
                    activeIconFileName: 'Articles.png',
                    title: 'Articles',
                    onTab: () {
                      onTab(articleIndex);
                    },
                    isActive: selectedIndex == articleIndex,
                  ),
                  Expanded(child: Container()),
                  BottomNavigationItem(
                    iconFileName: 'Search.png',
                    activeIconFileName: 'Search.png',
                    title: 'Search',
                    onTab: () {
                      onTab(searchIndex);
                    },
                    isActive: selectedIndex == searchIndex,
                  ),
                  BottomNavigationItem(
                    iconFileName: 'Menu.png',
                    activeIconFileName: 'Menu.png',
                    title: 'Menu',
                    onTab: () {
                      onTab(menuIndex);
                    },
                    isActive: selectedIndex == menuIndex,
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Container(
              width: 65,
              height: 85,
              alignment: Alignment.topCenter,
              child: Container(
                height: bottomNavigationHeight,
                decoration: BoxDecoration(
                  color: const Color(0xff376AED),
                  border: Border.all(
                    color: Colors.white,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.circular(32.5),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) {
                        return const AuthScreen();
                      },
                    ));
                  },
                  child: Assets.img.icons.plus.image(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BottomNavigationItem extends StatelessWidget {
  final String iconFileName;
  final String activeIconFileName;
  final String title;
  final bool isActive;
  final Function() onTab;
  const BottomNavigationItem(
      {super.key,
      required this.iconFileName,
      required this.activeIconFileName,
      required this.title,
      required this.onTab,
      required this.isActive});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Expanded(
      child: InkWell(
        onTap: onTab,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/img/icons/$iconFileName'),
            const SizedBox(height: 4),
            Text(
              title,
              style: themeData.textTheme.caption!.apply(
                color: isActive
                    ? themeData.colorScheme.primary
                    : themeData.textTheme.caption!.color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
