import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyButton extends StatelessWidget {
  final String title;
  final Color colors;
  final VoidCallback onpress;
  const MyButton(
      {super.key,
      required this.title,
      this.colors = Colors.grey,
      required this.onpress});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 2),
        child: InkWell(
          onTap: onpress,
          child: Container(
            height: 50,
            decoration: BoxDecoration(
                color: colors, borderRadius: BorderRadius.circular(7)),
            child: Center(
                child: Text(
              title,
              style: const TextStyle(color: Colors.white),
            )),
          ),
        ),
      ),
    );
  }
}
