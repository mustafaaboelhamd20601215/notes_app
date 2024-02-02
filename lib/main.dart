
import 'package:flutter/material.dart';
import 'package:notes_app/screens/edit_note.dart';
import 'package:notes_app/screens/notes_screen.dart';
void main() {
  runApp(const MyApp());
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
    EditNote.id: (context) =>  EditNote(),
  },
    );
  }
}