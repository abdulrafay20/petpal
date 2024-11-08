import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String? iconPath; // Changed to accept image asset path
  final String label;
  final bool isSelected;
  final VoidCallback onTap;
  final bool isAllCategory; // Added to check if it's the "All" category

  const CategoryItem({
    Key? key,
    this.iconPath,
    required this.label,
    required this.isSelected,
    required this.onTap,
    this.isAllCategory = false, // Default to false
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(right: 12),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: isSelected ? Colors.brown[300] : Colors.grey.withOpacity(0.1),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            if (isAllCategory)
              Icon(
                Icons.pets,
                color: isSelected ? Colors.white : Colors.grey,
                size: 20,
              )
            else if (iconPath != null)
              Image.asset(
                iconPath!,
                width: 20,
                height: 20,
                color: isSelected ? Colors.white : Colors.grey,
              ),
            const SizedBox(width: 8),
            Text(
              label,
              style: TextStyle(
                color: isSelected ? Colors.white : Colors.grey,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
