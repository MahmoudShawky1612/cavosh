import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../core/constants/colors.dart';
import '../../../core/utils/text.dart';
import '../../home/view/header.dart';
import '../../home/view/search_bar.dart';
import 'category_list.dart';
import 'menu_item_grid.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  final TextEditingController _searchController = TextEditingController();
  int current = 0;

  final List<String> categories = [
    "Cold drinks",
    "Hot drinks",
    "Latte",
    "Hot chocolate",
  ];

  final List<Map<String, dynamic>> allItems = List.generate(20, (index) {
    return {
      "name": "Milky Latte${index + 1}",
      "category": index % 4,
      "image": "assets/images/latte.jpg",
    };
  });

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> filteredItems =
        allItems.where((item) => item["category"] == current).toList();

    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 150,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  const Header(),
                  SearchBarWidget(controller: _searchController),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Categories",
                      style: AppTextStyles.medium
                          .copyWith(color: AppColors.black)),
                  const SizedBox(height: 10),
                  CategoryList(
                    categories: categories,
                    current: current,
                    onCategorySelected: (index) =>
                        setState(() => current = index),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.only(bottom: 80.0),
                child: MenuItemGrid(filteredItems: filteredItems),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
