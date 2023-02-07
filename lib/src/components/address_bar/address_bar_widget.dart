import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:registro_ponto/src/stores/location/location_store.dart';

import 'package:registro_ponto/src/utils/theme/app_colors.dart';
import 'package:registro_ponto/src/utils/theme/text_styles.dart';

class AddressBarWidget extends StatefulWidget {
  const AddressBarWidget({Key? key}) : super(key: key);

  @override
  State<AddressBarWidget> createState() => _AddressBarWidgetState();
}

class _AddressBarWidgetState extends State<AddressBarWidget> {
  LocationStore locationStore = GetIt.I<LocationStore>();
  @override
  void initState() {
    super.initState();
    locationStore.getCurrentLocation();
  }

  @override
  Widget build(BuildContext context) => Observer(
      builder: (_) => Container(
            height: 45,
            width: double.infinity,
            color: AppColors.blueGrey,
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      locationStore.address ?? 'Carregando...',
                      style: TextStyles.lightTextStyle,
                    ))),
          ));
}
