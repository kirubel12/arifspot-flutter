import 'package:arifspot/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),

      width: 450,
      height: 52,
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(color: CustomColor.secondary, width: 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        textAlign: TextAlign.start,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Search',
          hintStyle: TextStyle(color: CustomColor.secondary),
          prefixIcon: Icon(Iconsax.search_normal, color: CustomColor.secondary),
          suffixIcon: Icon(Iconsax.filter, color: CustomColor.secondary),
        ),
      ),
    );
  }
}
