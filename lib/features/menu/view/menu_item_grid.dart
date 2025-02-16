import 'package:flutter/material.dart';
import 'menu_item_card.dart';

class MenuItemGrid extends StatelessWidget {
  final List<Map<String, dynamic>> filteredItems;

  const MenuItemGrid({super.key, required this.filteredItems});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: filteredItems.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.68,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return MenuItemCard(item: filteredItems[index]);
        },
      ),
    );
  }
}
