import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'main_page_store.g.dart';

class MainPageStore = MainPageStoreBase with _$MainPageStore;

abstract class MainPageStoreBase with Store {
  @observable
  PageController controller = PageController();

  @observable
  dynamic page = 0;

  @computed
  dynamic get currentPage => page;

  @action
  void updateCurrentPage(int newPage) => page = newPage;
}
