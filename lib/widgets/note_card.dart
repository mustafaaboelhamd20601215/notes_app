import 'package:flutter/material.dart';
import 'package:notes_app/screens/edit_note.dart';


class NoteCard extends StatelessWidget {
const   NoteCard({super.key});



  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
          Navigator.pushNamed(context, EditNote.id 
          
          // , arguments: email.text 
          
          
          );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16), color: const Color(0xfffecd7e)),
          child: Column(
            children: [
              ListTile(
                title: const Text(
                  "Note title",
                  style: TextStyle(fontSize: 27, color: Colors.black),
                ),
                subtitle: const Text(
                  "Note Subtitle",
                  style: TextStyle(fontSize: 17, color: Colors.black),
                ),
                trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.delete,
                      color: Colors.black,
                      size: 30,
                    )),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "data 20 :25 ",
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
