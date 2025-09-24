import 'package:flutter/material.dart';

class FilterBar extends StatelessWidget {
  const FilterBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: [
          // Dropdown
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Text("AA0012"),
          ),
          const SizedBox(width: 8),

          // Chip
          Chip(
            label: const Text("Aayush"),
            deleteIcon: const Icon(Icons.close),
            onDeleted: () {},
          ),
          const SizedBox(width: 8),

          // Search bar + chips
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  const Icon(Icons.search, color: Colors.grey),
                  const SizedBox(width: 8),
                  const Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search for a stock, future, option or index",
                      ),
                    ),
                  ),
                  Wrap(
                    spacing: 6,
                    children: [
                      Chip(
                        label: const Text("Reliance"),
                        deleteIcon: const Icon(Icons.close, size: 18),
                        onDeleted: () {},
                      ),
                      Chip(
                        label: const Text("MRF"),
                        deleteIcon: const Icon(Icons.close, size: 18),
                        onDeleted: () {},
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),

          const SizedBox(width: 12),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              backgroundColor: Colors.redAccent,
              foregroundColor: Colors.black,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            child: const Text(
              "cancel",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
