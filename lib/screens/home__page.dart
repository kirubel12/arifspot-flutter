import 'package:arifspot/components/location.dart';
import 'package:arifspot/components/popular__accomodation.dart';
import 'package:arifspot/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:arifspot/components/searchbar.dart' as custom;
import 'package:arifspot/components/service__tag.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:iconsax/iconsax.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isSelected1 = false;
  bool isSelected2 = false;
  bool isSelected3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Explorer!',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
        ),
        actions: [
          IconButton(
            onPressed: () => {},
            icon: Icon(Icons.notifications_outlined, size: 30),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 12),
              custom.SearchBar(),
              SizedBox(height: 32),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          // Only select the first ServiceTag and deselect others
                          isSelected1 = true;
                          isSelected2 = false;
                          isSelected3 = false;
                        });
                      },
                      child: ServiceTag(
                        icon: Iconsax.activity,
                        name: "Activity",
                        isSelected: isSelected1,
                      ),
                    ),
                    SizedBox(width: 16),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          // Only select the second ServiceTag and deselect others
                          isSelected1 = false;
                          isSelected2 = true;
                          isSelected3 = false;
                        });
                      },
                      child: ServiceTag(
                        icon: Iconsax.activity,
                        name: "Learn with vue",
                        isSelected: isSelected2,
                      ),
                    ),
                    SizedBox(width: 16),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          // Only select the third ServiceTag and deselect others
                          isSelected1 = false;
                          isSelected2 = false;
                          isSelected3 = true;
                        });
                      },
                      child: ServiceTag(
                        icon: Iconsax.activity4,
                        name: "Learn with react",
                        isSelected: isSelected3,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 32),
              //list location
              Location(),
              SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular Accomodation",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text("see all", style: TextStyle(color: CustomColor.primary)),
                ],
              ),
              SizedBox(height: 12),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    PopularAccomodation(
                      name: "Hotel Sunshine",
                      location: "California, USA",
                      rating: 4.5,
                      image:
                          "https://img.freepik.com/free-photo/male-chef-preparing-sushi-order-takeaway_23-2149050359.jpg?t=st=1741354218~exp=1741357818~hmac=dd9845508810af459d6b7f5a008b57f6c4c372e34a3cef12d1a1192b86b76666&w=1060",
                    ),
                    PopularAccomodation(
                      name: "Mountain Retreat",
                      location: "Aspen, Colorado",
                      rating: 4.8,
                      image:
                          "https://img.freepik.com/free-photo/male-chef-preparing-sushi-order-takeaway_23-2149050359.jpg?t=st=1741354218~exp=1741357818~hmac=dd9845508810af459d6b7f5a008b57f6c4c372e34a3cef12d1a1192b86b76666&w=1060",
                    ),
                    PopularAccomodation(
                      name: "City Lights Hotel",
                      location: "New York, USA",
                      rating: 4.2,
                      image:
                          "https://img.freepik.com/free-photo/male-chef-preparing-sushi-order-takeaway_23-2149050359.jpg?t=st=1741354218~exp=1741357818~hmac=dd9845508810af459d6b7f5a008b57f6c4c372e34a3cef12d1a1192b86b76666&w=1060",
                    ),
                    PopularAccomodation(
                      name: "Beachside Resort",
                      location: "Miami, Florida",
                      rating: 4.7,
                      image:
                          "https://img.freepik.com/free-photo/male-chef-preparing-sushi-order-takeaway_23-2149050359.jpg?t=st=1741354218~exp=1741357818~hmac=dd9845508810af459d6b7f5a008b57f6c4c372e34a3cef12d1a1192b86b76666&w=1060",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8),
        child: GNav(
          hoverColor: CustomColor.primary,
          haptic: true,
          activeColor: CustomColor.primary,
          textStyle: TextStyle(color: CustomColor.white),

          gap: 4,
          tabBorderRadius: 8,
          tabActiveBorder: Border.all(color: Colors.transparent, width: 1),
          tabBorder: Border.all(color: Colors.transparent, width: 1),
          tabShadow: [
            BoxShadow(color: Colors.white.withAlpha(1), blurRadius: 4),
          ],
          curve: Curves.easeInOutCubicEmphasized,
          duration: const Duration(milliseconds: 1),

          color: CustomColor.secondary,

          iconSize: 24,
          tabBackgroundColor: CustomColor.primary.withAlpha(180),
          tabs: [
            GButton(icon: Iconsax.home, text: 'Home'),
            GButton(icon: Iconsax.search_normal, text: 'Search'),
            GButton(icon: Iconsax.heart, text: 'Favourite'),
            GButton(icon: Iconsax.user, text: 'Profile'),
          ],
        ),
      ),
    );
  }
}
