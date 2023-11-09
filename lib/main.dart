import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:namer_app/constant/colors.dart';
import 'package:namer_app/provider/color_theme_provider.dart';
import 'package:namer_app/view/todos_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    final colorTheme = ref.watch(colorThemeNotifierProvider);
    ThemeMode currentTheme;
    print(colorTheme.value);
    if (colorTheme.value == 'light') {
      currentTheme = ThemeMode.light;
    } else if (colorTheme.value == 'dark') {
      currentTheme = ThemeMode.dark;
    } else {
      currentTheme = ThemeMode.system;
    }

    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: currentTheme,
      home: TodosPage(),
    );
  }
}
