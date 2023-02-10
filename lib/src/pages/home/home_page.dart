import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:registro_ponto/src/stores/location/location_store.dart';
import 'package:registro_ponto/src/widgets/expanded_card/expanded_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final LocationStore _locationStore = GetIt.I<LocationStore>();
  @override
  void initState() {
    super.initState();
    _locationStore.getCurrentLocation();
  }

  @override
  Widget build(BuildContext context) => Column(
        children: [
          Observer(
            builder: (_) => Container(
              height: 45,
              width: double.infinity,
              color: Theme.of(context).colorScheme.primaryContainer,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    _locationStore.address ?? 'Carregando...',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: ExpandedCard(
              cardRadius: 12,
              label: 'Registros do dia',
            ),
          ),
        ],
      );
}
