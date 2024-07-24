import 'package:flutter/material.dart';
import 'package:hst_project/feature/login/login_view.dart';
import 'package:hst_project/feature/register/register_view.dart';
import 'package:hst_project/feature/splash/splash_view.dart';
import 'package:hst_project/feature/starter/start_view.dart';
import 'package:hst_project/feature/home/home_view.dart';
import 'package:hst_project/product/constants/color_constants.dart';


void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fintech App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 16, 80, 98)),
        useMaterial3: true,
      ),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  final List<Widget> pages = [
    const HomeView(),
    const LoginView(),
    const RegisterView(),
    const StartView(),
    const HomeView()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            tabItem(Icons.home, "Anasayfa", 0),
            tabItem(Icons.credit_card, "Satış Yap", 1),
            FloatingActionButton(
              onPressed: () => onTabTapped(2),
              backgroundColor: Color.fromARGB(255, 3, 6, 6),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
              child: const Icon(
                Icons.qr_code_scanner,
                color: Colors.white,
              ),
            ),
            tabItem(Icons.bar_chart, "Ödeme Al", 3),
            tabItem(Icons.person, "Ayarlar", 4),
          ],
        ),
      ),
    );
  }

  Widget tabItem(IconData icon, String label, int index) {
    return IconButton(
      onPressed: () => onTabTapped(index),
      icon: Column(
        children: [
          Icon(
            icon,
            color: currentIndex == index ? Colors.black : Colors.grey,
          ),
          Text(
            label,
            style: TextStyle(fontSize: 10, color: currentIndex == index ? Theme.of(context).primaryColor : Colors.grey),
          )
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}
