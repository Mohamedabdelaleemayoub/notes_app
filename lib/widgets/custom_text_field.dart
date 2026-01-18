import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextFormField extends StatelessWidget {
  final int maxLines;
  final String hint;
  final void Function(String?)? onSaved;
  const CustomTextFormField({
    super.key,
    required this.hint,
    this.maxLines = 1,
    this.onSaved,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Field is required';
        } else {
          return null;
        }
      },
      onSaved: onSaved,
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
