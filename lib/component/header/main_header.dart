import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:namer_app/component/dialog/change_color_theme_dialog.dart';
import 'package:namer_app/constant/colors.dart';

class MainHeader extends ConsumerWidget implements PreferredSizeWidget {
  const MainHeader({super.key});

  @override
  Size get preferredSize => Size.fromHeight(56.0);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final style = Theme.of(context).textTheme.headlineSmall!.copyWith(
          color: AppColors.primaryWhite,
        );

    return AppBar(
      title: Text('Todo App', style: style),
      actions: [
        IconButton(
            onPressed: () {
              changeColorThemeDialog(context, ref);
            },
            icon: Icon(Icons.menu))
      ],
      backgroundColor: AppColors.primaryBlue,
    );
  }
}
