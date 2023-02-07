import 'package:flutter/material.dart';
import 'package:registro_ponto/src/utils/theme/text_styles.dart';

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
              color: Colors.black,
              width: 0.1,
            )),
        margin: const EdgeInsets.symmetric(vertical: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Data inicial', style: TextStyles.descriptionLightTextStyle),
            Text(
              '${_dateTime.day < 10 ? '0${_dateTime.day}' : _dateTime.day}/'
              '${_dateTime.month < 10 ? '0${_dateTime.month}' : _dateTime.month}/'
              '${_dateTime.year}',
              style: TextStyles.dialogItemTextStyle,
            ),
          ],
        ),
      );
}
