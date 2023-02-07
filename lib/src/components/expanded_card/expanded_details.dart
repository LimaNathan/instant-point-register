import 'package:flutter/material.dart';
import 'package:registro_ponto/src/utils/extensions/string_ext.dart';
import 'package:registro_ponto/src/utils/theme/text_styles.dart';

class ExpandedDetails extends StatefulWidget {
  final String? firstP;
  final String? secondP;
  final String? thirdP;
  final String? lastP;

  const ExpandedDetails({
    Key? key,
    this.firstP,
    this.secondP,
    this.thirdP,
    this.lastP,
  }) : super(key: key);

  @override
  State<ExpandedDetails> createState() => _ExpandedDetailsState();
}

class _ExpandedDetailsState extends State<ExpandedDetails> {
  @override
  Widget build(BuildContext context) {
    String? firstInterval = '${widget.firstP} -> ${widget.secondP ?? ''}';
    String? secondInterval = '${widget.thirdP} -> ${widget.lastP ?? ''}';
    String? interval;

    if (widget.secondP != null && widget.thirdP != null) {
      int time1 = widget.thirdP!.replaceAll(':', '').toInteger;
      int time2 = widget.secondP!.replaceAll(':', '').toInteger;

      int time1InMinutes = (time1 ~/ 100) * 60 + (time1 % 100);
      int time2InMinutes = (time2 ~/ 100) * 60 + (time2 % 100);
      interval = (time1InMinutes - time2InMinutes).toString();
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 60,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: widget.firstP == null
                      ? [
                          Center(
                            child: Text(
                              'Nenhum ponto registrado ainda',
                              style: TextStyles.mediumBrightStyle,
                            ),
                          )
                        ]
                      : [
                          Text(firstInterval,
                              style: TextStyles.mediumBrightStyle),
                          widget.thirdP != null
                              ? Text(secondInterval,
                                  style: TextStyles.mediumBrightStyle)
                              : Container(),
                        ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: widget.thirdP == null
                    ? []
                    : [
                        Text('Intervalo',
                            style: TextStyles.descriptionTextStyle),
                        Text('${interval ?? ''} min',
                            style: TextStyles.mediumBrightStyle),
                      ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
