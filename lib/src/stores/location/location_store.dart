import 'package:geocoding/geocoding.dart';
import 'package:mobx/mobx.dart';
import 'package:registro_ponto/src/utils/location/location_utils.dart';
part 'location_store.g.dart';

class LocationStore = LocationStoreBase with _$LocationStore;

abstract class LocationStoreBase with Store {
  @observable
  String? address;

  @action
  Future<String> getCurrentLocation() async {
    try {
      late List<Placemark> placemarkers;

      LocationUtils.getLocation().then((locationData) async {
        if (locationData != null) {
          placemarkers = await placemarkFromCoordinates(
            locationData.latitude!,
            locationData.longitude!,
          );
          var list = placemarkers.first;
          address = '${list.street!}, ${list.name!} - ${list.subLocality!}';
        }
      });

      return address ?? 'Não foi possível encontrar seu endereco';
    } catch (e) {
      return 'Não foi possível encontrar seu endereco';
    }
  }
}
