import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_text_form_feild.dart';

class AddNoteBottomSheet extends StatefulWidget {
  const AddNoteBottomSheet({
    super.key,
  });

  @override
  State<AddNoteBottomSheet> createState() => _AddNoteBottomSheetState();
}

class _AddNoteBottomSheetState extends State<AddNoteBottomSheet> {
  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: SizedBox(
        width: double.infinity,
        height: 500,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
            ),
            CustomTextFormFeild(
              maxLines: 1,
              labelText: "Title",
              onSaved: (value) {
                title = value;
              },
            ),
            const SizedBox(
              height: 30,
            ),
            CustomTextFormFeild(
              maxLines: 5,
              labelText: "Content",
              onSaved: (value) {
                subTitle = value;
              },
            ),
            const SizedBox(
              height: 50,
            ),
            FractionallySizedBox(
                widthFactor: .9,
                child: ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                    } else {
                      setState(() {
                        autovalidateMode = AutovalidateMode.always;
                      });
                    }
                  },
                  style: ButtonStyle(
                      backgroundColor: const MaterialStatePropertyAll(
                          Color.fromARGB(255, 1, 170, 114)),
                      foregroundColor:
                          const MaterialStatePropertyAll(Colors.white),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)))),
                  child: const Text("Add"),
                )),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
