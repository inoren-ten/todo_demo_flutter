import 'package:flutter/material.dart';
import 'package:namer_app/constant/colors.dart';

class MainHeader extends StatelessWidget implements PreferredSizeWidget {
  const MainHeader({super.key});

  @override
  Size get preferredSize => Size.fromHeight(56.0);

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme.displaySmall!.copyWith(
          color: AppColors.primaryWhite,
        );

    return AppBar(
      title: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Text('Todo App', style: style),
      ),
      backgroundColor: AppColors.primaryBlue,
    );
  }
}
