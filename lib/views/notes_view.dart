import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/notes_view_body.dart';

import 'widgets/add_note_bottom_sheet.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            shape:
                BeveledRectangleBorder(borderRadius: BorderRadius.circular(8)),
            context: context,
            builder: (context) => const AddNoteBottomSheet(),
          );
        },
        child: const Icon(Icons.add),
      ),
      body: const NotesViewBody(),
    );
  }
}
