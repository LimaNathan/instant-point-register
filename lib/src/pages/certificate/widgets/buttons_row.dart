import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:registro_ponto/src/shared/utils/constants/app_icons.dart';
import 'package:registro_ponto/src/widgets/button_custom/button.dart';

class ButtonsRow extends StatelessWidget {
  const ButtonsRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 50,
                width: 100,
                child: Button(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  onPressed: () {},
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                  child: SvgPicture.asset(AppIcons.camera),
                ),
              ),
              SizedBox(
                height: 50,
                width: 100,
                child: Button(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  onPressed: () {},
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                  child: SvgPicture.asset(AppIcons.gallery),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(),
        )
      ],
    );
  }
}
