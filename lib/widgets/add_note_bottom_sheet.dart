import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          const SizedBox(height: 24),

          CustomTextField(hint: 'Title', maxLines: 1),
          const SizedBox(height: 16),
          CustomTextField(hint: 'Content', maxLines: 5),
          const SizedBox(height: 30),
          CustomButton(),
        ],
      ),
    );
  }
}
