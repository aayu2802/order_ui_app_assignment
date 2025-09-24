import 'package:flutter/material.dart';
import '../models/order_model.dart';

class OrderCard extends StatelessWidget {
  final OrderModel order;
  const OrderCard({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 6),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: ListTile(
        leading: Text(order.time,
            style: const TextStyle(fontWeight: FontWeight.bold)),
        title: Text("${order.client} - ${order.ticker}"),
        subtitle: Text(
            "${order.side} | ${order.product}\n${order.executedQty}/${order.totalQty} @ ${order.price}"),
        trailing: IconButton(
          icon: const Icon(Icons.more_vert),
          onPressed: () {},
        ),
      ),
    );
  }
}
