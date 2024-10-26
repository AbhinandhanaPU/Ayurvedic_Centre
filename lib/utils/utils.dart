import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

Future<String> dateTimePicker(BuildContext context) async {
  DateTime? date = await showDatePicker(
    context: context,
    initialDate: DateTime.now(),
    firstDate: DateTime.now(),
    lastDate: DateTime(2025),
  );

  if (date != null) {
    TimeOfDay? time = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (time != null) {
      final dateTime = DateTime(
        date.year,
        date.month,
        date.day,
        time.hour,
        time.minute,
      );
      return DateFormat("dd/MM/yyyy - hh:mm a").format(dateTime);
    }
  }

  return '';
}
