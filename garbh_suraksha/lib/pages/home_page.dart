import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      bottomNavigationBar: GNav(
        tabs: [
          GButton(icon: Icons.home),
          GButton(icon: Icons.shopping_cart),
          // GButton(icon: Icons.p),
          GButton(icon: Icons.person)
        ],
      ),
    ));
  }
}
