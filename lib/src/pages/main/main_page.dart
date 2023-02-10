import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:iconsax/iconsax.dart';
import 'package:registro_ponto/src/pages/certificate/certificate_page.dart';
import 'package:registro_ponto/src/pages/historic_page/historic_page.dart';
import 'package:registro_ponto/src/pages/home/home_page.dart';
import 'package:registro_ponto/src/shared/utils/constants/app_routes.dart';
import 'package:registro_ponto/src/shared/utils/extensions/string_ext.dart';
import 'package:registro_ponto/src/stores/main_page/main_page_store.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = GetIt.I<MainPageStore>();

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: RichText(
          text: TextSpan(
            text: 'Bem vindo, ',
            style: Theme.of(context).textTheme.titleMedium,
            children: [
              TextSpan(
                text: 'Nathan de Aguiar',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          ),
        ),
        actions: [
          CircleAvatar(
            backgroundColor: Theme.of(context).colorScheme.background,
            child: IconButton(
              icon: const Icon(Iconsax.user),
              onPressed: () => AppRoutes.userPage.pushNamed(),
            ),
          ),
        ],
      ),
      body: Observer(
        builder: (_) => PageView(
          controller: store.controller,
          onPageChanged: store.updateCurrentPage,
          children: const [
            HomePage(),
            CertificatePage(),
            HistoricPage(),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        icon: const Icon(
          Iconsax.camera,
        ),
        label: const Text('Registrar ponto'),
      ),
      bottomNavigationBar: Observer(
        builder: (context) {
          final currentPage = store.currentPage;
          return CustomNavigationBar(
            currentIndex: currentPage,
            borderRadius: const Radius.circular(12),
            backgroundColor: Theme.of(context).colorScheme.secondary,
            selectedColor: Theme.of(context).colorScheme.surface,
            unSelectedColor: Theme.of(context).colorScheme.onSurfaceVariant,
            strokeColor: Theme.of(context).colorScheme.secondaryContainer,
            scaleFactor: 0.5,
            isFloating: true,
            onTap: (int index) async => store.controller
                .animateToPage(
                  index,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                )
                .then(
                  (value) => store.updateCurrentPage(index),
                ),
            items: [
              CustomNavigationBarItem(
                icon: const Icon(
                  Iconsax.home,
                ),
              ),
              CustomNavigationBarItem(
                icon: const Icon(
                  Iconsax.clock,
                ),
              ),
              CustomNavigationBarItem(
                icon: const Icon(
                  Iconsax.document_text,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
