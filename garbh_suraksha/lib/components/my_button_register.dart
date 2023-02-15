import 'package:flutter/material.dart';

import '../pages/home_page.dart';
import '../pages/login_page1.dart';

class MyButton1 extends StatelessWidget {
  final Function()? onTap;
  const MyButton1({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => LoginPage())),
      child: Container(
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.symmetric(horizontal: 45),
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(8)),
        child: const Center(
          child: Text(
            'Register Now',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w200),
          ),
        ),
      ),
    );
  }
}
