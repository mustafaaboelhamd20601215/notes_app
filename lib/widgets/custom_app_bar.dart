import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.appBarTitle , required this.icon});

  final String appBarTitle;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          appBarTitle,
          style: TextStyle(fontSize: 22),
        ),
        const Spacer(),
        Container(
          height: 45,
          width: 45,
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(.05),
              borderRadius: BorderRadius.circular(16)),
          child:  Icon(icon),
        ),
      ],
    );
  }
}
