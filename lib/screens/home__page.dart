import 'package:arifspot/components/location.dart';
import 'package:flutter/material.dart';
import 'package:arifspot/components/searchbar.dart' as custom;
import 'package:arifspot/components/service__tag.dart';
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

      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
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

            //popular places
          ],
        ),
      ),
    );
  }
}
