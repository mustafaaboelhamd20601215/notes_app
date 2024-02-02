import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/note_card.dart';

class NotesView extends StatefulWidget {
  const NotesView({super.key});

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
          return Container(
            width: double.infinity,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 70,
                ),
                        FractionallySizedBox(
                  widthFactor: .9,
                  child: TextField(
                      controller: title,
                      // maxLength: 20,
                      textInputAction: TextInputAction.next,
                      decoration:  InputDecoration(labelText: "Title" , 
                      
                      // main Control Padding Around Content
                    // contentPadding: EdgeInsets.symmetric(horizontal: 10 , vertical: 10),

                // main textFeild details

                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.circular(10),
                ),

                // To Control TextFeild " Before Typing"
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color.fromARGB(255, 122, 122, 122)),
                  borderRadius: BorderRadius.circular(20),
                ),
                // To Control TextFeild " After Typing"
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: const Color.fromARGB(255, 255, 255, 255)),
                )
                      
                      
                      )),
                ),
                const SizedBox(
                  height: 50,
                ),
                FractionallySizedBox(
                  widthFactor: .9,
                  child: TextField(
                      controller: content,
                      // maxLength: 20,
                      textInputAction: TextInputAction.next,
                      decoration:  InputDecoration(labelText: "Content" , 
                      
                      // main Control Padding Around Content
                    contentPadding: EdgeInsets.symmetric(horizontal: 10 , vertical: 10),

                // main textFeild details

                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.circular(10),
                ),

                // To Control TextFeild " Before Typing"
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color.fromARGB(255, 122, 122, 122)),
                  borderRadius: BorderRadius.circular(20),
                ),
                // To Control TextFeild " After Typing"
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: const Color.fromARGB(255, 255, 255, 255)),
                )
                      
                      
                      )),
                ),
                const SizedBox(
                  height: 100,
                ),
                FractionallySizedBox(
                    widthFactor: .9,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text("Add"),
                      style: ButtonStyle(
                          backgroundColor: const MaterialStatePropertyAll(
                              Color.fromARGB(255, 1, 170, 114)),
                          foregroundColor:
                              const MaterialStatePropertyAll(Colors.white),
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)))),
                    )),
              ],
            ),
          );
        });
  }

  NoteModel noteModel = NoteModel(
      title: "title",
      subTitle: "subTitle",
      color: const Color(0xfffecd7e),
      createdDate: "createdDate");

  List<NoteModel> notesList = [
    NoteModel(
        title: "Note1",
        subTitle: "subTitle",
        color: const Color(0xfffecd7e),
        createdDate: "createdDate")
  ];

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
            children: [CustomAppBar(), NoteCard()],
          ),
        ),
      ),
    );
  }
}





     
              