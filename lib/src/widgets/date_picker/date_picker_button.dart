import 'package:flutter/material.dart';

class DatePickerButton extends StatefulWidget {
  const DatePickerButton({super.key});

  @override
  State<DatePickerButton> createState() => _DatePickerButtonState();
}

class _DatePickerButtonState extends State<DatePickerButton> {
  final DateTime _dateTime = DateTime.now();

  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
          border: Border.all(
            width: 0.1,
          ),
        ),
        margin: const EdgeInsets.symmetric(vertical: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Data inicial',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Text(
              '${_dateTime.day < 10 ? '0${_dateTime.day}' : _dateTime.day}/'
              '${_dateTime.month < 10 ? '0${_dateTime.month}' : _dateTime.month}/'
              '${_dateTime.year}',
              style: Theme.of(context).textTheme.displaySmall,
            ),
          ],
        ),
      );
}
