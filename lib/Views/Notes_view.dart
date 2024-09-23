import 'package:flutter/material.dart';
import 'package:note_app/Constants.dart';
import 'package:note_app/widgets/Add_Note_Buttom_sheet.dart';
import '../widgets/Notes_View_Body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButton: FloatingActionButton(
        backgroundColor: kPrimaryColor,
        onPressed: () {
          showModalBottomSheet(
            //to be scrollable
            isScrollControlled: true,
            context: context,
            builder: (context) {
              return const AddNoteButtomSheet();
            },
          );
        },
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 0.5, color: Colors.white),
          borderRadius: BorderRadius.circular(100),
        ),
        child: const Icon(
          Icons.add,
          size: 27,
          color: Colors.black,
        ),
      ),
      body: const NotesViewBody(),
    );
  }
}
