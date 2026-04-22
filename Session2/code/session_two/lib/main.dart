import 'package:flutter/material.dart';
import 'package:session_two/Screens/dash_board_page.dart';

void main() => runApp(const SwiftPayApp());

class SwiftPayApp extends StatelessWidget {
  const SwiftPayApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true, brightness: Brightness.light),
      home: const DashboardPage(),
    );
  }
}
