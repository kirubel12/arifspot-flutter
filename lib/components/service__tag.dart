import 'package:arifspot/constants/color.dart';
import 'package:flutter/material.dart';

class ServiceTag extends StatefulWidget {
  final IconData icon;
  final String name;
  final bool isSelected;

  const ServiceTag({
    super.key,
    required this.icon,
    required this.name,
    this.isSelected = false,
  });

  @override
  State<ServiceTag> createState() => _ServiceTagState();
}

class _ServiceTagState extends State<ServiceTag> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: widget.isSelected ? Colors.blueAccent : CustomColor.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            widget.icon,
            color: widget.isSelected ? Colors.white : Colors.black,
          ),
          const SizedBox(width: 12),
          Text(
            widget.name,
            style: TextStyle(
              color: widget.isSelected ? Colors.white : Colors.black,
              fontWeight:
                  widget.isSelected ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
