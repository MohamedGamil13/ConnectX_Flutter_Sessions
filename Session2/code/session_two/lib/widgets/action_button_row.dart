import 'package:flutter/material.dart';
import 'package:session_two/widgets/action_button.dart';

class ActionButtonRow extends StatelessWidget {
  const ActionButtonRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ActionButton(icon: Icons.send, label: "Send"),
        ActionButton(icon: Icons.wallet, label: "Top Up"),
        ActionButton(icon: Icons.pie_chart, label: "Stats"),
      ],
    );
  }
}
