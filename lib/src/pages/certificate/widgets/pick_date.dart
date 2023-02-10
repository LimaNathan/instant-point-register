import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:registro_ponto/src/widgets/date_picker/date_picker_button.dart';

class PickDate extends StatelessWidget {
  const PickDate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Row(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 5),
              width: double.infinity,
              height: 60,
              child: const DatePickerButton(),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 7),
              margin: const EdgeInsets.symmetric(vertical: 5),
              width: double.infinity,
              height: 50,
              child: TextField(
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                style: Theme.of(context).textTheme.titleSmall,
                maxLength: 2,
                buildCounter: (
                  context, {
                  currentLength = 2,
                  isFocused = false,
                  maxLength,
                }) =>
                    null,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                decoration: InputDecoration(
                  focusedBorder:
                      Theme.of(context).inputDecorationTheme.focusedBorder,
                  label: Text(
                    'Qtd.',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
              ),
            ),
          ),
        ],
      );
}
