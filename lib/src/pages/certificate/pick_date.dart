import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:registro_ponto/src/components/date_picker/date_picker_button.dart';
import 'package:registro_ponto/src/utils/theme/borders.dart';
import 'package:registro_ponto/src/utils/theme/text_styles.dart';

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
                child: const DatePickerButton()),
          ),
          Expanded(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 7),
                margin: const EdgeInsets.symmetric(vertical: 5),
                width: double.infinity,
                height: 50,
                child: TextField(
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  style: TextStyles.descriptionLightTextStyle,
                  maxLines: 1,
                  maxLength: 2,
                  buildCounter: (context,
                          {currentLength = 2, isFocused = false, maxLength}) =>
                      null,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  decoration: InputDecoration(
                    focusedBorder: Borders.counterBorder,
                    label: Text('Qtd.',
                        style: TextStyles.descriptionLightTextStyle),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                ),
              )),
        ],
      );
}
