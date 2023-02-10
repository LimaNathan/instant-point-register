import 'package:flutter/material.dart';
import 'package:registro_ponto/src/shared/utils/extensions/string_ext.dart';

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
    final firstInterval = '${widget.firstP} -> ${widget.secondP ?? ''}';
    final secondInterval = '${widget.thirdP} -> ${widget.lastP ?? ''}';
    String? interval;

    if (widget.secondP != null && widget.thirdP != null) {
      final time1 = widget.thirdP!.replaceAll(':', '').toInteger;
      final time2 = widget.secondP!.replaceAll(':', '').toInteger;

      final time1InMinutes = (time1 ~/ 100) * 60 + (time1 % 100);
      final time2InMinutes = (time2 ~/ 100) * 60 + (time2 % 100);
      interval = (time1InMinutes - time2InMinutes).toString();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
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
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                          )
                        ]
                      : [
                          Text(
                            firstInterval,
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          if (widget.thirdP != null)
                            Text(
                              secondInterval,
                              style: Theme.of(context).textTheme.bodyLarge,
                            )
                          else
                            Container(),
                        ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: widget.thirdP == null
                    ? []
                    : [
                        Text(
                          'Intervalo',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        Text(
                          '${interval ?? ''} min',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
