import 'package:flutter/material.dart';

import '../pages/home_page.dart';

class MyButton extends StatelessWidget {
  final Function()? onTap;
  const MyButton({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => const HomePage())),

      ///directed to home page
      child: Container(
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.symmetric(horizontal: 45),
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(8)),
        child: const Center(
          child: Text(
            'Sign In',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w200),
          ),
        ),
      ),
    );
  }
}
