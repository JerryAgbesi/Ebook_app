import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final String label;
  final VoidCallback function;
  final double fontsize;
  const RoundButton({
    required this.label,
    required this.function,
    this.fontsize = 16,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
        decoration: BoxDecoration(
          color: const Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 15),
              blurRadius: 30,
              color: Color(0xFF666666).withOpacity(0.11),
            ),
          ],
        ),
        child:  Text(
          label,
          style: TextStyle(fontWeight: FontWeight.w800, fontSize: fontsize),
        ),
      ),
    );
  }
}
