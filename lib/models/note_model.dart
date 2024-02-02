import 'package:flutter/material.dart';

class NoteModel {
  final String title, subTitle, createdDate;

  Color? color;

  NoteModel(
      {required this.title,
      required this.subTitle,
      required this.color,
      required this.createdDate});
}
