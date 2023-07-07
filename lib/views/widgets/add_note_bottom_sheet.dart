import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_text_filde.dart';

import 'custom_button.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 32),
            CustomTextFilde(hint: 'Title'),
            SizedBox(height: 24),
            CustomTextFilde(hint: 'content', maxLines: 7),
            SizedBox(height: 85),
            CustomButton(),
            SizedBox(height: 16)
          ],
        ),
      ),
    );
  }
}
