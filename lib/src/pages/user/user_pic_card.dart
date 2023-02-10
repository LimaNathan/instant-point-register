import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class UserPicCard extends StatelessWidget {
  const UserPicCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Theme.of(context).colorScheme.outline,
          ),
          width: 162,
          height: 162,
          child: const Center(
            child: Icon(
              Iconsax.user,
              size: 64,
              color: Colors.white,
            ),
          ),
        ),
      );
}
