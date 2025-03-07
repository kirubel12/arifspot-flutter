import 'package:arifspot/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class PopularAccomodation extends StatefulWidget {
  final String name;
  final double rating;
  final String image;
  final String location;

  const PopularAccomodation({
    super.key,
    required this.name,
    required this.rating,
    required this.image,
    required this.location,
  });

  @override
  State<PopularAccomodation> createState() => _PopularAccomodationState();
}

class _PopularAccomodationState extends State<PopularAccomodation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 243,
      height: 290,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 207,
            height: 175,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                image: NetworkImage(widget.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.name,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  Icon(Iconsax.location, color: CustomColor.primary),
                  SizedBox(width: 8),
                  Text(
                    widget.location,
                    style: TextStyle(color: CustomColor.primary),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  Icon(Iconsax.star, color: CustomColor.primary),
                  SizedBox(width: 8),
                  Text(widget.rating.toString()),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
