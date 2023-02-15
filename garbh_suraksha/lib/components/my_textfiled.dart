import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final dynamic controller;
  final String hintTEXT;
  final bool obscureText;

  const MyTextField({
    super.key,
    required this.controller,
    required this.hintTEXT,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 45),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.lightBlueAccent),
            ),
            fillColor: Colors.grey.shade200,
            filled: true,
            hintText: hintTEXT,
            hintStyle: TextStyle(color: Colors.grey[500], fontSize: 14)),
      ),
    );
  }
}
