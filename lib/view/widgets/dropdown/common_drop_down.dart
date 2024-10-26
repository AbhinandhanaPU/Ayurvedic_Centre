import 'package:flutter/material.dart';

class CommonDropdown<T> extends StatelessWidget {
  final List<T> items; // List of items for the dropdown
  final String hintText; // Hint text to display
  final ValueChanged<T?> onChanged; // Callback for when an item is selected
  final String Function(T)
      itemToString; // Converts each item to a display string
  final double width; // Custom width for the dropdown

  const CommonDropdown({
    super.key,
    required this.items,
    required this.hintText,
    required this.onChanged,
    required this.itemToString,
    this.width = 100, // Default width, adjustable
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        color: const Color(0xffd9d9d9).withOpacity(0.4),
        border: Border.all(
          color: Colors.grey.shade400,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: DropdownButton<T>(
        isExpanded: true,
        underline: const SizedBox(),
        icon: Icon(Icons.keyboard_arrow_down, color: Colors.grey.shade700),
        hint: Text(
          hintText,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.grey,
            fontWeight: FontWeight.w300,
          ),
        ),
        items: items
            .map((item) => DropdownMenuItem<T>(
                  value: item,
                  child: Text(itemToString(item)),
                ))
            .toList(),
        onChanged: onChanged,
      ),
    );
  }
}
