import 'package:flutter/material.dart';

class TransactionsListView extends StatelessWidget {
  const TransactionsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _buildTransactionTile(
          "Adobe Premiere",
          "Entertainment",
          "-\$20.00",
          Icons.movie,
          Colors.orange,
        ),
        _buildTransactionTile(
          "Salary",
          "Payment",
          "+\$4,500.00",
          Icons.work,
          Colors.green,
        ),
        _buildTransactionTile(
          "Starbucks",
          "Food",
          "-\$5.50",
          Icons.coffee,
          Colors.brown,
        ),
      ],
    );
  }
}

Widget _buildTransactionTile(
  String title,
  String sub,
  String amount,
  IconData icon,
  Color color,
) {
  return Card(
    elevation: 0,
    margin: const EdgeInsets.only(bottom: 12),
    color: Colors.white,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    child: ListTile(
      leading: CircleAvatar(
        backgroundColor: color.withOpacity(0.1),
        child: Icon(icon, color: color),
      ),
      title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(sub),
      trailing: Text(
        amount,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: amount.startsWith('+') ? Colors.green : Colors.black,
        ),
      ),
    ),
  );
}
