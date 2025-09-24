import 'package:flutter/material.dart';
import '../models/order_model.dart';

class OrderTable extends StatelessWidget {
  final List<OrderModel> orders;
  const OrderTable({super.key, required this.orders});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.15),
              spreadRadius: 2,
              blurRadius: 6,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: DataTable(
          headingRowColor: WidgetStateProperty.all(Colors.grey.shade200),
          columns: const [
            DataColumn(label: Text("Time")),
            DataColumn(label: Text("Client")),
            DataColumn(label: Text("Ticker")),
            DataColumn(label: Text("Side")),
            DataColumn(label: Text("Product")),
            DataColumn(label: Text("Qty (Executed/Total)")),
            DataColumn(label: Text("Price")),
            DataColumn(label: Text("Actions")),
          ],
          rows: orders
              .map(
                (order) => DataRow(
                  cells: [
                    DataCell(Text(order.time)),
                    DataCell(Text(order.client)),
                    DataCell(Text(order.ticker)),
                    DataCell(Text(order.side)),
                    DataCell(Text(order.product)),
                    DataCell(Text("${order.executedQty}/${order.totalQty}")),
                    DataCell(Text(order.price.toStringAsFixed(2))),
                    const DataCell(Icon(Icons.more_horiz)),
                  ],
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
