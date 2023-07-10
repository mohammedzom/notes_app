import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubit/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/colors_list_view.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_text_filde.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title;
  String? subTitle;
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Form(
        key: formKey,
        autovalidateMode: autovalidateMode,
        child: Column(
          children: [
            const SizedBox(height: 50),
            CustomAppBar(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  widget.note.title = title!;
                  widget.note.subTitle = subTitle!;
                  // widget.note.color = ;
                  widget.note.save();
                  Navigator.pop(context);
                  BlocProvider.of<NotesCubit>(context).fatchAllNotes();
                } else {
                  autovalidateMode = AutovalidateMode.always;
                }
              },
              title: 'Note Edit',
              icon: Icons.done,
            ),
            const SizedBox(height: 50),
            CustomTextFilde(
              hint: 'Title',
              iniValue: widget.note.title,
              onsaved: (p0) => title = p0!,
            ),
            const SizedBox(height: 16),
            CustomTextFilde(
                hint: 'Content',
                maxLines: 7,
                iniValue: widget.note.subTitle,
                onsaved: (p0) => subTitle = p0),
            const SizedBox(height: 35),
            ColorListViewEdit(note: widget.note)
          ],
        ),
      ),
    );
  }
}
