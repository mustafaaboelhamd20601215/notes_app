import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return   Row(
                children: [
                  const Text(
                    "Notes",
                    style: TextStyle(fontSize: 22),
                  ),
                  const Spacer(),
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(.05),
                        borderRadius: BorderRadius.circular(16)),
                    child: const Icon(Icons.search),
                  ),
                ],
              );
  }
}