// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LocationStore on LocationStoreBase, Store {
  late final _$addressAtom =
      Atom(name: 'LocationStoreBase.address', context: context);

  @override
  String? get address {
    _$addressAtom.reportRead();
    return super.address;
  }

  @override
  set address(String? value) {
    _$addressAtom.reportWrite(value, super.address, () {
      super.address = value;
    });
  }

  late final _$getCurrentLocationAsyncAction =
      AsyncAction('LocationStoreBase.getCurrentLocation', context: context);

  @override
  Future<String> getCurrentLocation() {
    return _$getCurrentLocationAsyncAction
        .run(() => super.getCurrentLocation());
  }

  @override
  String toString() {
    return '''
address: ${address}
    ''';
  }
}
