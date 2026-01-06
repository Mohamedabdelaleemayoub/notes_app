import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  final int maxLines;
  final String hint;
  const CustomTextField({super.key, required this.hint, this.maxLines = 1});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintMaxLines: maxLines,
        hint: Text(hint, style: TextStyle(color: kPrimaryColor)),

        border: buildBoder(),
        enabledBorder: buildBoder(),
        focusedBorder: buildBoder(),
      ),
    );
  }

  OutlineInputBorder buildBoder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: Colors.white),
    );
  }
}
