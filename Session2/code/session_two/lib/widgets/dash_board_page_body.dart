import 'package:flutter/material.dart';
import 'package:session_two/widgets/action_button_row.dart';
import 'package:session_two/widgets/transactions_list_view.dart';
import 'package:session_two/widgets/visa_card.dart';

class DashBoardPageBody extends StatelessWidget {
  const DashBoardPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Welcome back, Mohamed!",
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
          SizedBox(height: 20),

          // --- THE GLASSMORPHISM CARD ---
          VisaCard(),
          SizedBox(height: 30),
          // --- QUICK ACTIONS ---
          ActionButtonRow(),
          SizedBox(height: 30),

          // --- RECENT TRANSACTIONS ---
          Text(
            "Recent Transactions",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 15),
          Expanded(child: TransactionsListView()),
        ],
      ),
    );
  }
}
