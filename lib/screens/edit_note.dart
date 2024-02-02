import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';

class EditNote extends StatelessWidget {
  EditNote({super.key});
  static String id = "EditNote";

  TextEditingController title = TextEditingController();
  TextEditingController content = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16 , vertical: 16),
              child: CustomAppBar(
                appBarTitle: 'Notes',
                icon: Icons.check,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            FractionallySizedBox(
              widthFactor: .9,
              child: TextField(
                  controller: title,
                  // maxLength: 20,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                      labelText: "Title",
      
                      // main Control Padding Around Content
                      // contentPadding: EdgeInsets.symmetric(horizontal: 10 , vertical: 10),
      
                      // main textFeild details
      
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.blue),
                        borderRadius: BorderRadius.circular(10),
                      ),
      
                      // To Control TextFeild " Before Typing"
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 122, 122, 122)),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      // To Control TextFeild " After Typing"
                      focusedBorder: const OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromARGB(255, 255, 255, 255)),
                      ))),
            ),
            const SizedBox(
              height: 30,
            ),
            FractionallySizedBox(
              widthFactor: .9,
              child: TextField(
                  controller: content,
                  // maxLength: 20,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                      labelText: "Content",
      
                      // main Control Padding Around Content
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 80),
      
                      // main textFeild details
      
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.blue),
                        borderRadius: BorderRadius.circular(10),
                      ),
      
                      // To Control TextFeild " Before Typing"
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 122, 122, 122)),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      // To Control TextFeild " After Typing"
                      focusedBorder: const OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromARGB(255, 255, 255, 255)),
                      ))),
            ),
            const SizedBox(
              height: 50,
            ),
            // FractionallySizedBox(
            //     widthFactor: .9,
            //     child: ElevatedButton(
            //       onPressed: () {},
            //       child: const Text("Add"),
            //       style: ButtonStyle(
            //           backgroundColor: const MaterialStatePropertyAll(
            //               Color.fromARGB(255, 1, 170, 114)),
            //           foregroundColor:
            //               const MaterialStatePropertyAll(Colors.white),
            //           shape: MaterialStatePropertyAll(RoundedRectangleBorder(
            //               borderRadius: BorderRadius.circular(15)))),
            //     )),
          
          ],
        ),
      ),
    );
  }
}
