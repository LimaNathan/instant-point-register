import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:registro_ponto/src/components/app_bar/custom_app_bar.dart';
import 'package:registro_ponto/src/components/button_custom/button.dart';
import 'package:registro_ponto/src/components/custom_text_form_field/custom_text_form_field.dart';
import 'package:registro_ponto/src/utils/constants/app_icons.dart';
import 'package:registro_ponto/src/utils/extensions/num_ext.dart';
import 'package:registro_ponto/src/utils/theme/text_styles.dart';

class FormUpdatePass extends StatelessWidget {
  const FormUpdatePass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var canShowText = true;
    var icon = SvgPicture.asset(AppIcons.eye);
    var canShowText2 = true;
    var icon2 = SvgPicture.asset(AppIcons.eye);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        StatefulBuilder(
            builder: (context, stateSetter) => CustomTextFormField(
                  canShowText: canShowText,
                  label: 'Senha atual',
                  icon: InkWell(
                      onTap: () => stateSetter(() {
                            canShowText = !canShowText;
                            icon = canShowText
                                ? SvgPicture.asset(AppIcons.eye)
                                : SvgPicture.asset(AppIcons.eyeslash);
                          }),
                      child: icon),
                )),
        StatefulBuilder(
          builder: (context, stateSetter) => CustomTextFormField(
            canShowText: canShowText2,
            label: 'Nova senha',
            icon: InkWell(
                onTap: () => stateSetter(() {
                      canShowText2 = !canShowText2;
                      icon2 = canShowText2
                          ? SvgPicture.asset(AppIcons.eye)
                          : SvgPicture.asset(AppIcons.eyeslash);
                    }),
                child: icon2),
          ),
        ),
        35.paddingH,
        Button(
            child: Text(
              'Alterar',
              textAlign: TextAlign.center,
              style: TextStyles.buttonTextStyle,
            ),
            onPressed: () {}),
      ],
    );
  }
}
