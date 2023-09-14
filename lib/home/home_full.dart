import 'package:flutter/material.dart';
import 'package:real_estate_app/explore/explore_empty.dart';
import 'package:real_estate_app/favorites/favorites_empty.dart';
import 'package:real_estate_app/profile/profile_transaction.dart';
import 'package:real_estate_app/widgets/homescreen.dart';

class HomeFull extends StatefulWidget {
  @override
  State<HomeFull> createState() => _HomeFullState();
}

class _HomeFullState extends State<HomeFull> {
  int index = 0;

  final screens = [
    HomeScreen(),
    ExploreEmpty(),
    FavoritesEmpty(),
    ProfileTransaction(),
  ];

  final List<IconData> _icons = [
    Icons.home,
    Icons.search,
    Icons.favorite_outlined,
    Icons.person_outline_outlined,
  ];

  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        body: PageView(
          controller: _pageController,
          children: screens,
          onPageChanged: (newIndex) {
            setState(() {
              index = newIndex;
            });
          },
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedItemColor: Color(0xFF234F68),
          unselectedItemColor: Colors.grey,
          currentIndex: index,
          onTap: (value) {
            setState(() {
              index = value;
              if (value == 1) {
                _navigateToExploreEmpty();
              } else {
                _pageController.jumpToPage(value);
              }
            });
          },
          items: _icons
              .map(
                (icon) => BottomNavigationBarItem(
                  icon: _buildNavIcon(icon, _icons.indexOf(icon)),
                  label: '',
                ),
              )
              .toList(),
        ),
      ),
    );
  }

  Widget _buildNavIcon(IconData iconData, int navIndex) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 6),
          child: Icon(
            iconData,
            size: 25,
          ),
        ),
        if (index == navIndex)
          Positioned(
            bottom: 0,
            child: Container(
              width: 6,
              height: 6,
              decoration: BoxDecoration(
                color: Color(0xFF234F68),
                shape: BoxShape.circle,
              ),
            ),
          ),
      ],
    );
  }

  void _navigateToExploreEmpty() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => ExploreEmpty(),
      ),
    );
  }
}
