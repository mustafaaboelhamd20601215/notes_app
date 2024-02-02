import 'package:flutter/material.dart';

class CustomTextFormFeild extends StatelessWidget {
  final Function(String?)? onSaved;
  final String labelText;
  int? maxLines;
   CustomTextFormFeild({super.key, this.onSaved, required this.labelText , this.maxLines = 1});

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: .9,
      child: TextFormField(
          maxLines: maxLines,
          onSaved: onSaved,
          validator: (value) {
            if (value?.isEmpty ?? true) {
              return "feild is required";
            } else {
              return null;
            }
          },
          // controller: content,
          // maxLength: 20,
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
              labelText: labelText,

              // main Control Padding Around Content
              // contentPadding:
              //     const EdgeInsets.symmetric(horizontal: 10, vertical: 50),

              // main textFeild details

              border: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.blue),
                borderRadius: BorderRadius.circular(10),
              ),

              // To Control TextFeild " Before Typing"
              enabledBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Color.fromARGB(255, 122, 122, 122)),
                borderRadius: BorderRadius.circular(20),
              ),
              // To Control TextFeild " After Typing"
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Color.fromARGB(255, 1, 170, 114)),
              ))),
    );
  }
}
