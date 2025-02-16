import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';
import '../../../core/utils/text.dart';

class VerticalListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: _buildItem(double.infinity, isVertical: true),
        );
      },
    );
  }
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
                        style: AppTextStyles.small
                            .copyWith(color: AppColors.primary, fontSize: 12)),
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
