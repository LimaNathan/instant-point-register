// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_page_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MainPageStore on MainPageStoreBase, Store {
  late final _$controllerAtom =
      Atom(name: 'MainPageStoreBase.controller', context: context);

  @override
  PageController get controller {
    _$controllerAtom.reportRead();
    return super.controller;
  }

  @override
  set controller(PageController value) {
    _$controllerAtom.reportWrite(value, super.controller, () {
      super.controller = value;
    });
  }

  @override
  String toString() {
    return '''
controller: ${controller}
    ''';
  }
}
