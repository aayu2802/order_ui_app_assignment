import 'package:flutter/material.dart';

class Page_endBar extends StatelessWidget {
  const Page_endBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      alignment: Alignment.centerRight, // 🔹 Align to right
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          /// Previous button
          TextButton(
            onPressed: () {},
            child: const Text("Previous"),
          ),

          const SizedBox(width: 8),

          /// Page number
          const Text(
            "1",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(width: 8),

          /// Next button
          TextButton(
            onPressed: () {},
            child: const Text("Next"),
          ),
        ],
      ),
    );
  }
}
