part of extensions;

extension DateTimeExtensions on DateTime {
  static DateTime? parseNotNull(String? text) => text != null ? DateTime.tryParse(text) : null;
}
