import 'package:flutter/material.dart';
import 'package:registro_ponto/src/components/expanded_card/expanded_card.dart';
import 'package:registro_ponto/src/utils/extensions/num_ext.dart';
import 'package:registro_ponto/src/utils/theme/size_utils.dart';
import 'package:registro_ponto/src/utils/theme/text_styles.dart';

class HistoricPage extends StatefulWidget {
  const HistoricPage({Key? key}) : super(key: key);

  @override
  State<HistoricPage> createState() => _HistoricPageState();
}

class _HistoricPageState extends State<HistoricPage> {
  final DateTime _dateTime = DateTime.now();

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Histórico de pontos', style: TextStyles.dialogTitleStyle),
            20.paddingH,
            Text(
              'Aqui estão registrados todos os seus pontos'
              ' ,inclusive os dias de atestado',
              style: TextStyles.descriptionLightTextStyle,
              
            ),
            20.paddingH,
            Container(
              height: SizeUtils.height * .55,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(width: 0.3)),
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (_, index) => ExpandedCard(
                  label:
                      '${_dateTime.day < 10 ? '0${_dateTime.day}' : _dateTime.day}/'
                      '${_dateTime.month < 10 ? '0${_dateTime.month}' : _dateTime.month}/'
                      '${_dateTime.year}',
                ),
              ),
            )
          ],
        ),
      );
}
