import 'package:flutter/material.dart' show Color, Colors;

enum SessionLevel {
  beginner('Beginner', Colors.green),
  intermediate('Intermediate', Colors.orange),
  advanced('Advanced', Colors.red);

  const SessionLevel(this.name, this.color);

  final String name;
  final Color color;
}
