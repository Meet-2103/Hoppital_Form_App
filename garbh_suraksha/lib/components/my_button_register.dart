import 'package:flutter/material.dart';

//import '../pages/home_page.dart';
import '../pages/login_page1.dart';
//import '../pages/login_page.dart';

class MyButton1 extends StatelessWidget {
  final Function()? onTap;
  const MyButton1({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => LoginPage1())),
      child: Container(
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 237, 232, 232),
            borderRadius: BorderRadius.circular(8)),
        child: const Center(
          child: Text(
            'Register Now',
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
