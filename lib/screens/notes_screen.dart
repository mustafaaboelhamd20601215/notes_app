import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/add_note_bottom_sheet.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/note_card.dart';

class NotesView extends StatefulWidget {
  const NotesView({super.key});
  static String id = "NotesView";

  @override
  State<NotesView> createState() => _NotesViewState();
}

class _NotesViewState extends State<NotesView> {
  TextEditingController title = TextEditingController();
  TextEditingController content = TextEditingController();

  showModelSheet() {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return SingleChildScrollView(
            child: BlocConsumer<AddNoteCubit, AddNoteState>(
              listener: (context, state) {
                if (state is AddNoteFailure) {
                  print("Failled ${state.errorMessage}");
                }

                if (state is AddNoteSuccess) {
                  Navigator.pop(context);
                }
              },
              builder: (context, state) {
                return ModalProgressHUD(
                    inAsyncCall: state is AddNoteLoading ? true : false,
                    child: const AddNoteBottomSheet());
              },
            ),
          );
        });
  }

  // NoteModel noteModel = NoteModel(
  //     title: "title",
  //     subTitle: "subTitle",
  //     // color:  Color(0xfffecd7e),
  //     createdDate: "createdDate");

  // List<NoteModel> notesList = [
  //   NoteModel(
  //       title: "Note1",
  //       subTitle: "subTitle",
  //       color: const Color(0xfffecd7e),
  //       createdDate: "createdDate")
  // ];

  @override
  void dispose() {
    title.dispose();
    content.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModelSheet();
          },
          child: const Icon(Icons.add),
        ),
        body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            children: [
              CustomAppBar(
                appBarTitle: 'Notes',
                icon: Icons.search,
              ),
              NoteCard()
            ],
          ),
        ),
      ),
    );
  }
}
