import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_text_filde.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 50),
          CustomAppBar(title: 'Note Edit', icon: Icons.done),
          SizedBox(height: 50),
          CustomTextFilde(hint: 'Title'),
          SizedBox(height: 16),
          CustomTextFilde(hint: 'Content', maxLines: 7),
        ],
      ),
    );
  }
}
