import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../core/constants/colors.dart';
import '../../../core/utils/text.dart';

class MenuItemCard extends StatelessWidget {
  final Map<String, dynamic> item;

  const MenuItemCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
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
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(15)),
                  image: DecorationImage(
                    image: AssetImage(item["image"]),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Positioned(
                top: 10,
                right: 10,
                child: IconButton(
                  onPressed: () {},
                  icon: const FaIcon(FontAwesomeIcons.heart,
                      color: AppColors.primary),
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
                  item["name"],
                  style: AppTextStyles.medium.copyWith(color: AppColors.black),
                ),
              ),
            ),
          ),
          Row(
            children: [
              const SizedBox(width: 10),
              Text("\$",
                  style: AppTextStyles.small
                      .copyWith(color: AppColors.primary, fontSize: 12)),
              const SizedBox(width: 2),
              Text("5.99",
                  style:
                      AppTextStyles.headLine.copyWith(color: AppColors.black)),
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
                child: const Icon(Icons.add, color: AppColors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
