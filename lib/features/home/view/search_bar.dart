import 'package:flutter/material.dart';

class SearchBarWidget extends StatefulWidget {
  final TextEditingController controller;

  const SearchBarWidget({super.key, required this.controller});

  @override
  State<SearchBarWidget> createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  bool _isSearchFocused = false;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 95,
      left: 20,
      right: 20,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        height: 55,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(_isSearchFocused ? 15 : 30),
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
            controller: widget.controller,
            decoration: InputDecoration(
              hintText: 'Search...',
              hintStyle: TextStyle(
                color: Colors.grey.shade400,
                fontSize: 16,
              ),
              prefixIcon: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                padding: EdgeInsets.all(_isSearchFocused ? 8 : 12),
                child: Icon(
                  Icons.search_rounded,
                  color: _isSearchFocused
                      ? Theme.of(context).primaryColor
                      : Colors.grey.shade400,
                ),
              ),
              suffixIcon: widget.controller.text.isNotEmpty
                  ? IconButton(
                      icon: const Icon(Icons.clear_rounded),
                      color: Colors.grey.shade400,
                      onPressed: () {
                        setState(() {
                          widget.controller.clear();
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
    );
  }
}
