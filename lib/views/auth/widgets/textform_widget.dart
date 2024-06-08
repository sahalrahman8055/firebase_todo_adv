import 'package:flutter/material.dart';

class MyTextformfield extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  const MyTextformfield({
    super.key,
    required this.controller,
    required this.hint,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        focusedBorder:
            OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        hintText: hint,
        hintStyle: TextStyle(color: Colors.white),
      ),
    );
  }
}
