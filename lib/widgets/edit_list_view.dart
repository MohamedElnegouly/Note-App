import 'package:flutter/material.dart';
import 'package:note_app/Constants.dart';
import 'package:note_app/Models/note_model.dart';

import 'Colors_list_view.dart';

class EditListView extends StatefulWidget {
  const EditListView({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditListView> createState() => _EditListViewState();
}

class _EditListViewState extends State<EditListView> {
  late int currentIndex;
  @override
  void initState() {
    currentIndex = kcolors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
          itemCount: kcolors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: GestureDetector(
                onTap: () {
                  currentIndex = index;
                  widget.note.color = kcolors[index].value;
                  setState(() {});
                },
                child: ColorItem(
                  color: kcolors[index],
                  isActive: currentIndex == index,
                ),
              ),
            );
          }),
    );
  }
}
