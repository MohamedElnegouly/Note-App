import 'package:flutter/material.dart';
import 'package:note_app/widgets/Custom_App_Bar.dart';
import 'package:note_app/widgets/Custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(
            height: 35,
          ),
          CustomAppBar(
            title: 'Edit Note',
            icon: Icons.check,
          ),
          SizedBox(
            height: 35,
          ),
          CustomTextField(hint: 'title'),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            hint: 'Content',
            maxLine: 5,
          ),
        ],
      ),
    );
  }
}
