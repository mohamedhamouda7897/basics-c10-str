import 'package:flutter/material.dart';

class CalcBtn extends StatelessWidget {
  String label;
  Function onClick;

  CalcBtn({required this.label, required this.onClick, super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ElevatedButton(
      onPressed: () {
        onClick(label);
      },
      child: Text(
        label,
        style: TextStyle(
            fontSize: 33, fontWeight: FontWeight.w200, color: Colors.white),
      ),
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          backgroundColor: Colors.blue),
    ));
  }
}
