import 'package:flutter/material.dart';
import 'package:registro_ponto/src/components/address_bar/address_bar_widget.dart';
import 'package:registro_ponto/src/components/expanded_card/expanded_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        children: const [
          AddressBarWidget(),
          ExpandedCard(label: 'Registros do dia'),
        ],
      );
}
