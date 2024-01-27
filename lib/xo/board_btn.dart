import 'package:flutter/material.dart';

class BoardBtn extends StatelessWidget {
  String label;

  int index;
  Function onCLick;

  BoardBtn(
      {required this.label,
      required this.onCLick,
      required this.index,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: () {
            onCLick(index);
          },
          child: Text(
            label,
            style: TextStyle(
                fontSize: 60, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.cyan,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12))),
        ),
      ),
    );
  }
}
