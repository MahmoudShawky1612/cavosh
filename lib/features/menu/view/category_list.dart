import 'package:flutter/material.dart';
import '../../../core/constants/colors.dart';
import '../../../core/utils/text.dart';

class CategoryList extends StatelessWidget {
  final List<String> categories;
  final int current;
  final Function(int) onCategorySelected;

  const CategoryList({
    super.key,
    required this.categories,
    required this.current,
    required this.onCategorySelected,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => onCategorySelected(index),
            child: Container(
              margin: const EdgeInsets.only(right: 10, bottom: 10),
              width: 130,
              decoration: BoxDecoration(
                color:
                    current == index ? AppColors.primary : Colors.grey.shade50,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 5,
                    offset: const Offset(3, 3),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      image: const DecorationImage(
                        image: AssetImage("assets/images/cup.jpg"),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: SizedBox(
                      width: 70,
                      child: Text(
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        categories[index],
                        style: AppTextStyles.medium
                            .copyWith(color: AppColors.black),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
