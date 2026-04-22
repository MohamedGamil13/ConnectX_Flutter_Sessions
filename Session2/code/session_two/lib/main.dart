import 'package:curved_navigation_bar/curved_navigation_bar.dart'; // استيراد الباكيج
import 'package:flutter/material.dart';

void main() => runApp(const ConnectXEventApp());

class ConnectXEventApp extends StatelessWidget {
  const ConnectXEventApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Poppins', // استخدام الخط المخصص
        colorSchemeSeed: const Color(0xFF1A237E), // لون ConnectX الأزرق
      ),
      home: const MainHolderPage(),
    );
  }
}

// 1. الصفحة الأساسية اللي بتمسك الـ Nav Bar والـ State
class MainHolderPage extends StatefulWidget {
  const MainHolderPage({super.key});

  @override
  State<MainHolderPage> createState() => _MainHolderPageState();
}

class _MainHolderPageState extends State<MainHolderPage> {
  int _currentIndex = 0; // State لـ Index الصفحة الحالية

  // قائمة بالصفحات اللي هنبدل بينها
  final List<Widget> _pages = const [
    EventsDashboardPage(), // الصفحة الإبداعية
    Center(child: Text("Search Events")),
    Center(child: Text("My Tickets")),
    Center(child: Text("Profile Settings")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F2F5),

      // 2. تطبيق الـ Curved Navigation Bar Package
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent, // لجعل الخلفية شفافة
        color: const Color(0xFF1A237E), // لون الـ Bar نفسه
        buttonBackgroundColor: const Color(0xFF1A237E), // لون الزرار المرتفع
        height: 60,
        index: _currentIndex,
        items: const [
          Icon(Icons.home, size: 30, color: Colors.white),
          Icon(Icons.search, size: 30, color: Colors.white),
          Icon(Icons.confirmation_number, size: 30, color: Colors.white),
          Icon(Icons.person, size: 30, color: Colors.white),
        ],
        // شرح الـ State Update: عند الضغط، غير الـ index
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),

      // تبديل المحتوى بناءً على الـ Index
      body: _pages[_currentIndex],
    );
  }
}

// 3. الصفحة الإبداعية: ConnectX Events Dashboard
class EventsDashboardPage extends StatelessWidget {
  const EventsDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // --- Header الإبداعي (شرح الـ Containers المتداخلة) ---
        Container(
          padding: const EdgeInsets.fromLTRB(25, 60, 25, 30),
          decoration: const BoxDecoration(
            color: Color(0xFF1A237E),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40),
            ),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Explore\nConnectX Events",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      height: 1.2,
                    ),
                  ),
                  // استخدام الـ Asset Image (لوجو ConnectX)
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.white24,
                    // استخدم AssetImage هنا مباشرة
                    backgroundImage: AssetImage(
                      'assets/images/connectLogo.jpg',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 25),
              // حقل البحث المودرن (TextField)
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Search for workshops, talks...",
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Color(0xFF1A237E),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 20),

        // --- قائمة الإيفينتات (الـ Grid الإبداعي) ---
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ListView(
              children: [
                const Text(
                  "Upcoming workshops",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 15),
                // شرح الـ Layout Mastery: GridView
                _buildEventCard("Flutter Workshop", "Aug 15", Colors.orange),
                _buildEventCard("AI Tech Talk", "Sep 02", Colors.purple),
                _buildEventCard("ConnectX Hackathon", "Oct 10", Colors.green),
              ],
            ),
          ),
        ),
      ],
    );
  }

  // --- Reusable Widget للإيفينت كارد (شرح الـ Refactoring) ---
  Widget _buildEventCard(String title, String date, Color color) {
    return Card(
      elevation: 0,
      margin: const EdgeInsets.only(bottom: 15),
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: ListTile(
        contentPadding: const EdgeInsets.all(15),
        leading: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Icon(Icons.event, color: color),
        ),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(
          "Date: $date",
          style: const TextStyle(color: Colors.grey),
        ),
        trailing: Icon(Icons.arrow_forward_ios, size: 16, color: color),
      ),
    );
  }
}
