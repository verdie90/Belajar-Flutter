import 'package:flutter/material.dart';

class TeksfieldKu extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  const TeksfieldKu({
    required this.controller, 
    required this.hintText, 
    required this.obscureText, 
    super.key
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.inversePrimary
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.secondary
            ),
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            color: Theme.of(context).colorScheme.inversePrimary
          ),
        ),
      ),
    );
  }
}