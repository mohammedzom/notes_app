import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/consts.dart';
import 'package:notes_app/cubit/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isSelect, required this.color});
  final bool isSelect;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return isSelect
        ? CircleAvatar(
            radius: 35,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 31,
              backgroundColor: color,
            ),
          )
        : CircleAvatar(
            radius: 35,
            backgroundColor: color,
          );
  }
}

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int currentIndex = 0;

  List<Color> colors = const [
    Color(0xffa61c3c),
    Color(0xff694a38),
    Color(0xfff4ac45),
    Color(0xff92bfb1),
    Color(0xffdad6d6),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: GestureDetector(
                onTap: () {
                  currentIndex = index;
                  BlocProvider.of<AddNoteCubit>(context).color = colors[index];
                  setState(() {});
                },
                child: ColorItem(
                    isSelect: currentIndex == index, color: colors[index])),
          );
        },
      ),
    );
  }
}

class ColorListViewEdit extends StatefulWidget {
  const ColorListViewEdit({super.key, required this.note});
  final NoteModel note;

  @override
  State<ColorListViewEdit> createState() => _ColorListViewEditState();
}

class _ColorListViewEditState extends State<ColorListViewEdit> {
  late int currentIndex;

  @override
  void initState() {
    currentIndex = kColors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: GestureDetector(
                onTap: () {
                  currentIndex = index;
                  widget.note.color = kColors[index].value;
                  setState(() {});
                },
                child: ColorItem(
                    isSelect: currentIndex == index, color: kColors[index])),
          );
        },
      ),
    );
  }
}
