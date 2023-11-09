import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:namer_app/provider/color_theme_provider.dart';

void changeColorThemeDialog(BuildContext context, WidgetRef ref) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                leading: Icon(Icons.contrast),
                title: Text('changeTheme'),
                onTap: () {
                  final notifier =
                      ref.read(colorThemeNotifierProvider.notifier);
                  notifier.toggleTheme();
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        ),
      );
    },
  );
}
