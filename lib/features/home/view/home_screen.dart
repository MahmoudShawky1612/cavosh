import 'package:flutter/material.dart';
import 'package:cavosh/features/home/view/header.dart';
import 'package:cavosh/features/home/view/horizontal_list_view.dart';
import 'package:cavosh/features/home/view/vertical_list_view.dart';
import 'package:cavosh/features/home/view/search_bar.dart';
import '../../../core/utils/text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchController = TextEditingController();

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
                    const Header(),
                    SearchBarWidget(controller: _searchController),
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
                        HorizontalListView(),
                        const SizedBox(height: 40),
                        const Text("Frequently Ordered",
                            style: AppTextStyles.medium),
                        const SizedBox(height: 10),
                        VerticalListView(),
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
}
