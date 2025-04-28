import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    super.key,
    required this.searchController,
    required this.color,
  });
  final Color color;
  final TextEditingController searchController;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      height: 38,
      width: 216,
      child: TextField(
        controller: searchController,
        decoration: InputDecoration(
          fillColor: color,
          border: InputBorder.none,

          hintText: "Search",
          prefixIcon: SizedBox(
            height: 24,
            width: 24,
            child: SvgPicture.asset(
              'assets/icons/search.svg',
              fit: BoxFit.scaleDown,
            ),
          ),
        ),
      ),
    );
  }
}
