import 'package:flutter/material.dart';
import 'constants.dart';

class FloatingButton_age extends StatefulWidget {
  FloatingButton_age({
    super.key,
    required this.label,
    required this.age,
  });

  int age;
  final String label;

  @override
  State<FloatingButton_age> createState() => _FloatingButtonState();
}

class _FloatingButtonState extends State<FloatingButton_age> {
  int value = 0;

  @override
  void initState() {
    value = widget.age;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          widget.label,
          style: kLabelTextStyle,
        ),
        Text(
          value.toString(),
          style: kNumberTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FloatingActionButton(
              heroTag: null,
              onPressed: () {
                setState(() {
                  value--;
                });
              },
              backgroundColor: const Color(0xFF4C4F5E),
              child: const Icon(Icons.remove, color: Colors.white),
            ),
            const SizedBox(
              width: 10,
            ),
            FloatingActionButton(
              heroTag: null,
              onPressed: () {
                setState(() {
                  value++;
                });
              },
              backgroundColor: const Color(0xFF4C4F5E),
              child: const Icon(Icons.add, color: Colors.white),
            ),
          ],
        ),
      ],
    );
  }
}
