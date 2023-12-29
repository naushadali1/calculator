import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyButton extends StatefulWidget {
  final String title;
  final Color colors;
  final VoidCallback onpress;
  const MyButton(
      {super.key,
      required this.title,
      this.colors = Colors.grey,
      required this.onpress});

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        child: InkWell(
          onTap: widget.onpress,
          child: Container(
            height: 50,
            decoration: BoxDecoration(
                color: widget.colors, borderRadius: BorderRadius.circular(7)),
            child: Center(
                child: Text(
              widget.title,
              style: const TextStyle(color: Colors.white),
            )),
          ),
        ),
      ),
    );
  }
}
