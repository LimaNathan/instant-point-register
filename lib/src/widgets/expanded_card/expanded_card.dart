import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:registro_ponto/src/widgets/expanded_card/expanded_details.dart';

class ExpandedCard extends StatefulWidget {
  final String label;
  final double? cardRadius;
  const ExpandedCard({Key? key, required this.label, this.cardRadius})
      : super(key: key);

  @override
  State<ExpandedCard> createState() => _ExpandedCardState();
}

class _ExpandedCardState extends State<ExpandedCard>
    with SingleTickerProviderStateMixin {
  double height = 85;
  double turns = 0;

  bool isExpanded = false;

  @override
  Widget build(BuildContext context) => AnimatedContainer(
        onEnd: () => setState(() {
          if (isExpanded == true && height == 85) {
            isExpanded = false;
          } else if (height == 190) {
            isExpanded = true;
          }
        }),
        duration: const Duration(milliseconds: 200),
        width: double.infinity,
        margin: const EdgeInsets.only(bottom: 5),
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(widget.cardRadius ?? 12),
          border: widget.cardRadius != null ? Border.all(width: 0.3) : null,
          color: Theme.of(context).colorScheme.primary,
        ),
        child: Container(
          margin: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.label,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  AnimatedRotation(
                    duration: const Duration(milliseconds: 200),
                    turns: turns,
                    child: IconButton(
                      icon: const Icon(Iconsax.arrow_down_1),
                      color: Theme.of(context).colorScheme.onPrimary,
                      onPressed: () => setState(
                        () {
                          height = height == 190 ? 85 : 190;

                          if (height == 85) isExpanded = false;
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
              if (isExpanded)
                const ExpandedDetails(
                  firstP: '08:00',
                  secondP: '12:00',
                  thirdP: '12:50',
                  lastP: '17:00',
                )
              else
                Container()
            ],
          ),
        ),
      );
}
