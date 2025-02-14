import 'package:flutter/material.dart';
import '../../../core/constants/colors.dart';
import '../../cart/view/cart_screen.dart';
import '../../profile/view/profile_screen.dart';
import '../../menu/view/menu_screen.dart';
import '../../Favorites/view/favorites_screen.dart';
import '../../home/view/home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    HomeScreen(),
    MenuScreen(),
    FavoritesScreen(),
    ProfileScreen(),
    CartScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Stack(
        children: [
          _screens[_currentIndex],
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 30,
                    offset: const Offset(0, 10),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: BottomNavigationBar(
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  type: BottomNavigationBarType.fixed,
                  currentIndex: _currentIndex,
                  onTap: (index) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                  selectedItemColor: AppColors.primary,
                  unselectedItemColor: AppColors.black,
                  selectedFontSize: 12,
                  unselectedFontSize: 12,
                  items: [
                    _buildNavItem(
                        Icons.home_rounded, Icons.home_outlined, "Home"),
                    _buildNavItem(Icons.restaurant_menu_rounded,
                        Icons.restaurant_menu_outlined, "Menu"),
                    _buildNavItem(Icons.favorite_rounded,
                        Icons.favorite_outline_rounded, "Favorites"),
                    _buildNavItem(Icons.person_rounded,
                        Icons.person_outline_rounded, "Profile"),
                    _buildNavItem(Icons.shopping_cart_rounded,
                        Icons.shopping_cart_outlined, "Cart"),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  BottomNavigationBarItem _buildNavItem(
      IconData selectedIcon, IconData unselectedIcon, String label) {
    return BottomNavigationBarItem(
      icon: AnimatedSwitcher(
        duration: const Duration(milliseconds: 200),
        child: Icon(
          _currentIndex == items.indexOf(label) ? selectedIcon : unselectedIcon,
          key: ValueKey<bool>(_currentIndex == items.indexOf(label)),
          size: _currentIndex == items.indexOf(label) ? 28 : 24,
        ),
      ),
      label: label,
    );
  }

  List<String> get items => ["Home", "Menu", "Favorites", "Profile", "Cart"];
}
