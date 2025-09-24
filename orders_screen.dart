import 'package:flutter/material.dart';
import 'package:orders_ui_app/widgets/market_nav_bar.dart';
import '../models/order_model.dart';
import '../widgets/filter_bar.dart';
import '../widgets/order_table.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final orders = [
      OrderModel(
          time: "09:15:50",
          client: "AAB0121",
          ticker: "Reliance",
          side: "SELL",
          product: "CNC",
          executedQty: 50,
          totalQty: 1000,
          price: 250.50),
      OrderModel(
          time: "08:14:31",
          client: "AAA003",
          ticker: "MRF",
          side: "Buy",
          product: "NRML",
          executedQty: 10,
          totalQty: 20,
          price: 2700.00),
      OrderModel(
          time: "08:14:31",
          client: "AAA3232",
          ticker: "AsianPaint",
          side: "Buy",
          product: "NRML",
          executedQty: 10,
          totalQty: 20,
          price: 1500.60),
      OrderModel(
          time: "08:14:31",
          client: "AAA002",
          ticker: "TataInvest",
          side: "Sell",
          product: "INTRADAY",
          executedQty: 10,
          totalQty: 20,
          price: 2300.10),
    ];

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const MarketNavBar(),
            const Divider(height: 1),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      bool isSmallScreen = constraints.maxWidth < 600;

                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Header + Download
                          isSmallScreen
                              ? Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Open Orders",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(height: 8),
                                    TextButton(
                                      onPressed: () {},
                                      style: TextButton.styleFrom(
                                        backgroundColor: Colors.grey.shade200,
                                        foregroundColor: Colors.black,
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 16, vertical: 12),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(4),
                                        ),
                                      ),
                                      child: const Text(
                                        "Download",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                )
                              : Row(
                                  children: [
                                    const Expanded(
                                      child: Text(
                                        "Open Orders",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {},
                                      style: TextButton.styleFrom(
                                        backgroundColor: Colors.grey.shade200,
                                        foregroundColor: Colors.black,
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 16, vertical: 12),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(4),
                                        ),
                                      ),
                                      child: const Text(
                                        "Download",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                          const SizedBox(height: 12),

                          // FilterBar
                          const FilterBar(),
                          const Divider(height: 1),

                          // Table
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: ConstrainedBox(
                              constraints: BoxConstraints(
                                  minWidth: constraints.maxWidth),
                              child: OrderTable(orders: orders),
                            ),
                          ),

                          // Pagination
                          const SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Wrap(
                                spacing: 12,
                                runSpacing: 8,
                                children: [
                                  // Previous button
                                  TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      foregroundColor: Colors.black,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16, vertical: 12),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                    ),
                                    child: const Text(
                                      "Previous",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),

                                  // Page number (bold text only)
                                  const Text(
                                    "Page 1",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),

                                  // Next button
                                  TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      foregroundColor: Colors.black,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16, vertical: 12),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                    ),
                                    child: const Text(
                                      "Next",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
