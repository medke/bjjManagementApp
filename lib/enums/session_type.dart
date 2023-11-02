import 'package:flutter/material.dart' show Color, Colors;

enum SessionType {
  Gi('GI'),
  NoGi('NOGI'),
  OpenMat('OPEN_MAT'),
  Kids('KIDS');

  const SessionType([this.value]);

  final String? value;

  Color get color {
    switch (this) {
      case SessionType.Gi:
        return Colors.blue;
      case SessionType.NoGi:
        return Colors.red;
      case SessionType.OpenMat:
        return Colors.green;
      case SessionType.Kids:
        return Colors.yellow;
      default:
        return Colors.grey;
    }
  }

  static SessionType? fromString(String? value) {
    if (value == null) {
      return null;
    }
    return SessionType.values.firstWhere(
      (element) => element.value == value,
    );
  }
}
