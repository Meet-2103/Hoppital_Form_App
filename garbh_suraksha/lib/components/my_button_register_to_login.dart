import 'package:flutter/material.dart';
import 'package:modern_ui_login_page/pages/login_page.dart';

//import '../pages/login_page.dart';

class MyButton2 extends StatelessWidget {
  final Function()? onTap;
  const MyButton2({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => LoginPage())),

      ///directed to home page
      child: Container(
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.symmetric(horizontal: 45),
        decoration: BoxDecoration(
            color: Colors.blue[800], borderRadius: BorderRadius.circular(8)),
        child: const Center(
          child: Text(
            'Register',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
