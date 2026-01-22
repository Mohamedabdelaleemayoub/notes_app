import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  String? title, subTitle;
  final GlobalKey<FormState> forKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: forKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(height: 24),

          CustomTextFormField(
            onSaved: (value) {
              title = value;
            },
            hint: 'Title',
            maxLines: 1,
          ),
          const SizedBox(height: 16),
          CustomTextFormField(
            onSaved: (value) {
              subTitle = value;
            },
            hint: 'Content',
            maxLines: 5,
          ),
          const SizedBox(height: 30),
          CustomButton(
            onTap: () {
              if (forKey.currentState!.validate()) {
                forKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
        ],
      ),
    );
  }
}
