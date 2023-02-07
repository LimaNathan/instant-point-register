import 'package:flutter/material.dart';
import 'package:registro_ponto/src/components/expanded_card/expanded_details.dart';
import 'package:registro_ponto/src/components/icon_button/custom_icon_button.dart';
import 'package:registro_ponto/src/utils/constants/app_icons.dart';
import 'package:registro_ponto/src/utils/theme/app_colors.dart';
import 'package:registro_ponto/src/utils/theme/text_styles.dart';

class ExpandedCard extends StatefulWidget {
  final String label;
  const ExpandedCard({Key? key, required this.label}) : super(key: key);

  @override
  State<ExpandedCard> createState() => _ExpandedCardState();
}

class _ExpandedCardState extends State<ExpandedCard>
    with SingleTickerProviderStateMixin {
  double height = 60;
  double turns = 0.0;

  bool isExpanded = false;

  @override
  Widget build(BuildContext context) => AnimatedContainer(
        onEnd: () => setState(() {
          if (isExpanded == true && height == 60) {
            isExpanded = false;
          } else if (height == 150) {
            isExpanded = true;
          }
        }),
        duration: const Duration(milliseconds: 200),
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        width: double.infinity,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(width: 0.3)
        ),
        child: Container(
          margin: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.label,
                    style: TextStyles.mediumTextStyle,
                  ),
                  AnimatedRotation(
                    duration: const Duration(milliseconds: 200),
                    turns: turns,
                    child: IconButtonC(
                      icon: AppIcons.arrowdown,
                      color: AppColors.darkPrimaryColor,
                      onPressed: () => setState(
                        () {
                          height = height == 150 ? 60 : 150;
                          if (height == 60) isExpanded = false;
                          if (isExpanded) {
                            turns -= 1 / 2;
                          } else {
                            turns -= 1 / 2;
                          }
                        },
                      ),
                    ),
                  )
                ],
              ),
              isExpanded
                  ? const ExpandedDetails(
                      firstP: '08:00',
                      secondP: '12:00',
                      thirdP: '12:50',
                      lastP: '17:00',
                    )
                  : Container()
            ],
          ),
        ),
      );
}
