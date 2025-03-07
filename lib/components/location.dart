import 'package:flutter/material.dart';
import 'package:arifspot/constants/color.dart';
import 'package:iconsax/iconsax.dart';

class Location extends StatefulWidget {
  const Location({super.key});

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Location",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text("see all", style: TextStyle(color: CustomColor.primary)),
          ],
        ),
        SizedBox(height: 12),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _buildLocationCard(
                imageUrl:
                    'https://img.freepik.com/free-photo/3d-view-map_23-2150471683.jpg?t=st=1741352499~exp=1741356099~hmac=fb644245868aeae06013caac5e12dd95494b3d95a1a8e3090aa9689bf3587469&w=826',
                locationName: 'Near By',
              ),
              _buildLocationCard(
                imageUrl:
                    'https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bG9uZG9ufGVufDB8fDB8fHww%3D%3D',
                locationName: 'London',
              ),
              _buildLocationCard(
                imageUrl:
                    'https://images.unsplash.com/photo-1549880338-65ddcdfd017b?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGFyaXN8ZW58MHx8MHx8fDA%3D',
                locationName: 'Paris',
              ),
              _buildLocationCard(
                imageUrl:
                    'https://images.unsplash.com/photo-1512453979798-5ea266f8880c?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dG9reW98ZW58MHx8MHx8fDA%3D',
                locationName: 'Tokyo',
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildLocationCard({
    required String imageUrl,
    required String locationName,
  }) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 150,
            height: 149,
            decoration: BoxDecoration(
              color: CustomColor.primary,
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: NetworkImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Icon(Iconsax.location, color: CustomColor.primary),
              SizedBox(width: 8),
              Text(
                locationName,
                style: TextStyle(color: CustomColor.primary, fontSize: 12),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
