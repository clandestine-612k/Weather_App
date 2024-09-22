import 'package:flutter/material.dart';

class Addwidget extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  const Addwidget(
      {required this.icon,
      required this.value,
      required this.label,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 32,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(label),
        const SizedBox(
          height: 8,
        ),
        Text(
          value,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
