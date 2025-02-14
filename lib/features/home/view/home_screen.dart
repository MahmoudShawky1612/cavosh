import 'package:cavosh/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:cavosh/core/widgets/custom_header.dart';
import '../../../core/utils/text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchController = TextEditingController();
  bool _isSearchFocused = false;

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 150,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    const Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      child: CustomHeader(
                        height: 150,
                      ),
                    ),
                    Positioned(
                      top: 95,
                      left: 20,
                      right: 20,
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 200),
                        height: 55,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.circular(_isSearchFocused ? 15 : 30),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 10,
                              offset: const Offset(0, 5),
                            ),
                          ],
                        ),
                        child: Focus(
                          onFocusChange: (hasFocus) {
                            setState(() {
                              _isSearchFocused = hasFocus;
                            });
                          },
                          child: TextField(
                            controller: _searchController,
                            decoration: InputDecoration(
                              hintText: 'Search...',
                              hintStyle: TextStyle(
                                color: Colors.grey.shade400,
                                fontSize: 16,
                              ),
                              prefixIcon: AnimatedContainer(
                                duration: const Duration(milliseconds: 200),
                                padding:
                                    EdgeInsets.all(_isSearchFocused ? 8 : 12),
                                child: Icon(
                                  Icons.search_rounded,
                                  color: _isSearchFocused
                                      ? Theme.of(context).primaryColor
                                      : Colors.grey.shade400,
                                ),
                              ),
                              suffixIcon: _searchController.text.isNotEmpty
                                  ? IconButton(
                                      icon: const Icon(Icons.clear_rounded),
                                      color: Colors.grey.shade400,
                                      onPressed: () {
                                        setState(() {
                                          _searchController.clear();
                                        });
                                      },
                                    )
                                  : null,
                              border: InputBorder.none,
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 15,
                              ),
                            ),
                            onChanged: (value) {
                              setState(() {});
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 30.0, bottom: 80, top: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("New Arrivals", style: AppTextStyles.medium),
                        const SizedBox(height: 10),
                        SizedBox(
                          height: 253,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 15,
                            itemBuilder: (context, index) {
                              return _buildItem(150);
                            },
                          ),
                        ),
                        const SizedBox(height: 40),
                        const Text("Frequently Ordered",
                            style: AppTextStyles.medium),
                        const SizedBox(height: 10),
                        ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 20.0),
                              child:
                                  _buildItem(double.infinity, isVertical: true),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildItem(double width, {bool isVertical = false}) {
    return Container(
      width: width,
      height: isVertical ? 100 : 250,
      // Adjust height for vertical items
      margin: const EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 5,
            offset: const Offset(3, 3),
          ),
        ],
      ),
      child: isVertical
          ? Row(
              children: [
                // Image on the left
                Container(
                  width: 120, // Fixed width for image
                  height: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/latte.jpg'),
                      fit: BoxFit.contain,
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                  ),
                ),
                // Text and price section
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Latte Milk",
                          style: AppTextStyles.headLine.copyWith(
                            color: AppColors.black,
                            fontSize: 16,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            Text("\$",
                                style: AppTextStyles.small.copyWith(
                                    color: AppColors.primary, fontSize: 12)),
                            const SizedBox(width: 2),
                            Text("5.99",
                                style: AppTextStyles.headLine
                                    .copyWith(color: AppColors.black)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                // Button on the right
                Container(
                  height: double.infinity,
                  decoration: const BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.add, color: AppColors.white),
                    onPressed: () {},
                  ),
                ),
              ],
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: 150,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/latte.jpg'),
                        fit: BoxFit.contain),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                      width: 100,
                      height: 45,
                      child: Text("Latte Milk",
                          style: AppTextStyles.headLine
                              .copyWith(color: AppColors.black, fontSize: 16),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Row(
                    children: [
                      Text("\$",
                          style: AppTextStyles.small.copyWith(
                              color: AppColors.primary, fontSize: 12)),
                      const SizedBox(width: 2),
                      Text("5.99",
                          style: AppTextStyles.headLine
                              .copyWith(color: AppColors.black)),
                      const Spacer(),
                      Container(
                        height: 40,
                        decoration: const BoxDecoration(
                          color: AppColors.primary,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.add, color: AppColors.white),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}
