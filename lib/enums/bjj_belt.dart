import 'package:flutter/material.dart' show Color, Colors;

enum BjjBelt {
  Black('Black'),
  Brown('Brown'),
  Purple('Purple'),
  Blue('Blue'),
  White('White'),
  Unknown;

  // add a construction or a function that converts a string to BjjBelt
  const BjjBelt([this.value]);

  final String? value;

  static BjjBelt getBjjBeltFromString(String? value) {
    switch (value) {
      case 'Black':
        return BjjBelt.Black;
      case 'Brown':
        return BjjBelt.Brown;
      case 'Purple':
        return BjjBelt.Purple;
      case 'Blue':
        return BjjBelt.Blue;
      case 'White':
        return BjjBelt.White;
      default:
        return BjjBelt.Unknown;
    }
  }

  // add a function that converts a BjjBelt to a color
  Color get color {
    switch (this) {
      case BjjBelt.Black:
        return Colors.black;
      case BjjBelt.Brown:
        return Colors.brown;
      case BjjBelt.Purple:
        return Colors.purple;
      case BjjBelt.Blue:
        return Colors.blue;
      case BjjBelt.White:
        return Colors.white;
      default:
        return Colors.grey;
    }
  }
  // add a function that returns the next belt
  static BjjBelt getNextBjjBelt(String currentBelt) {
    switch (currentBelt) {
      case 'Black':
        return BjjBelt.Brown;
      case 'Brown':
        return BjjBelt.Purple;
      case 'Purple':
        return BjjBelt.Blue;
      case 'Blue':
        return BjjBelt.White;
      case 'White':
        return BjjBelt.White;
      default:
        return BjjBelt.Unknown;
    }
  }
}
