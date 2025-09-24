import 'package:flutter/material.dart';

class MarketNavBar extends StatelessWidget {
  const MarketNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          /// 📊 Stock Indices (Left Side)
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  _MarketInfo(title: "SIGNORIA", value: "0.00"),
                  SizedBox(width: 24),
                  _MarketInfo(title: "NIFTY BANK", value: "52,323.30"),
                  SizedBox(width: 24),
                  _MarketInfo(title: "NIFTY FIN SERVICE", value: "25,255.75"),
                  SizedBox(width: 24),
                  _MarketInfo(title: "RELCHEMQ", value: "162.73"),
                ],
              ),
            ),
          ),

          /// 📂 Navigation Menu (Right Side)
          Row(
            children: const [
              _NavItem("MARKETWATCH"),
              SizedBox(width: 20),
              _NavItem("EXCHANGE FILES"),
              SizedBox(width: 20),
              _NavItem("PORTFOLIO"),
              SizedBox(width: 20),
              _NavItem("FUNDS"),
              SizedBox(width: 20),
              CircleAvatar(
                radius: 14,
                backgroundColor: Colors.black54,
                child: Text(
                  "AG",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

/// 📊 Stock Info Widget
class _MarketInfo extends StatelessWidget {
  final String title;
  final String value;

  const _MarketInfo({
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w500,
            color: Colors.black87,
          ),
        ),
        const SizedBox(width: 6),
        Text(
          value,
          style: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.bold,
            color: Colors.green, // 🔹 Positive values in green
          ),
        ),
      ],
    );
  }
}

/// 📂 Navigation Item Widget
class _NavItem extends StatelessWidget {
  final String label;

  const _NavItem(this.label);

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: const TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w500,
        color: Colors.black87,
      ),
    );
  }
}
