import 'package:flutter/material.dart';
import 'package:registro_ponto/src/pages/update_pass/form_update_pass.dart';
import 'package:registro_ponto/src/shared/utils/extensions/num_ext.dart';

class UpdatePasswordPage extends StatelessWidget {
  const UpdatePasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Atualizar senha',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          children: [
            Text(
              'Insira sua senha atual'
              ' e em seguida a nova senha',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),
            30.paddingH,
            Text(
              'Após confirmada a alteração,'
              ' um novo login deve ser realizado.',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),
            40.paddingH,
            const FormUpdatePass(),
          ],
        ),
      ),
    );
  }
}
