import 'package:cavosh/features/home/view/header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../core/constants/colors.dart';
import '../../../core/utils/text.dart';
import '../../home/view/search_bar.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  int current = 0;

  // Sample categories
  final List<String> categories = [
    "Cold drinks",
    "Hot drinks",
    "Latte",
    "Hot chocolate",
  ];

  final List<Map<String, dynamic>> allItems = List.generate(20, (index) {
    return {
      "name": "Milky Latte${index + 1}",
      "category": index % 4, // Assigning categories in a cyclic way
      "image": "assets/images/latte.jpg"
    };
  });

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
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 80.0),
                  child: Column(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20.0, bottom: 0, top: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Categories",
                              style:
                                  AppTextStyles.medium.copyWith(color: AppColors.black),
                            ),
                            const SizedBox(height: 10),
                            SizedBox(
                              height: 60,
                              child: ListView.builder(
                                itemCount: categories.length,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  return GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        current = index;
                                      });
                                    },
                                    child: Container(
                                      margin:
                                          const EdgeInsets.only(right: 10, bottom: 10),
                                      width: 130,
                                      decoration: BoxDecoration(
                                        color: current == index
                                            ? AppColors.primary
                                            : Colors.grey.shade50,
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
                                                image:
                                                    AssetImage("assets/images/cup.jpg"),
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
                            ),
                            const SizedBox(height: 10),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:20,right:20,),
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
                            return Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    blurRadius: 5,
                                    offset: const Offset(3, 3),
                                  ),
                                ],
                              ),
                              child: Column(
                                children: [
                                  Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      Container(
                                        height: 120,
                                        decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.vertical(
                                              top: Radius.circular(15)),
                                          image: DecorationImage(
                                            image: AssetImage(
                                                filteredItems[index]["image"]),
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        top: 10,
                                        right: 10,
                                        child: IconButton(
                                          onPressed: () {},
                                          icon: const FaIcon(
                                            FontAwesomeIcons.heart,
                                            color: AppColors.primary,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: SizedBox(
                                        width: 50,
                                        height: 50,
                                        child: Text(
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 2,
                                          filteredItems[index]["name"],
                                          style: AppTextStyles.medium
                                              .copyWith(color: AppColors.black),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      const SizedBox(width: 10),
                                      Text(
                                        "\$",
                                        style: AppTextStyles.small.copyWith(
                                            color: AppColors.primary, fontSize: 12),
                                      ),
                                      const SizedBox(width: 2),
                                      Text(
                                        "5.99",
                                        style: AppTextStyles.headLine
                                            .copyWith(color: AppColors.black),
                                      ),
                                      const Spacer(),
                                      Container(
                                        height: 41,
                                        width: 50,
                                        decoration: const BoxDecoration(
                                          color: AppColors.primary,
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(10),
                                            bottomRight: Radius.circular(10),
                                          ),
                                        ),
                                        child: const Icon(
                                          Icons.add,
                                          color: AppColors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
