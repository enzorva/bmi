import 'package:flutter/material.dart';

const labelTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E99),
);

class IconContent extends StatelessWidget {
  const IconContent({super.key, required this.icon, required this.gender});

  final IconData icon;
  final String gender;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 80),
        const SizedBox(
          height: 15.0,
        ),
        Text(gender, style: labelTextStyle),
      ],
    );
  }
}
