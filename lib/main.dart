import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/constants/constants.dart';

import 'package:notes_app/screens/edit_note.dart';
import 'package:notes_app/screens/notes_screen.dart';

void main() async {
  runApp(const MyApp());


  // "important" Hive From Flutter 
  await Hive.initFlutter();

  // name of collection at DataBase
  await Hive.openBox(kNoteBox);


}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      initialRoute: NotesView.id,
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        NotesView.id: (context) => const NotesView(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        EditNote.id: (context) => EditNote(),
      },
    );
  }
}
