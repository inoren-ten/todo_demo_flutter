import 'package:namer_app/constant/function/return_color_theme.dart';
import 'package:namer_app/constant/key/color_theme_key.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'color_theme_provider.g.dart';

@riverpod
class ColorThemeNotifier extends _$ColorThemeNotifier {
  @override
  Future<String> build() async {
    final themeData = await returnColorTheme();
    return themeData;
  }

  void toggleTheme() async {
    final themeData = await returnColorTheme();
    final themeController = await SharedPreferences.getInstance();

    if (themeData.toString() == 'light') {
      themeController.setString(colorThemeKey, 'dark');
      state = AsyncValue.data('dark');
    } else {
      themeController.setString(colorThemeKey, 'light');
      state = AsyncValue.data('light');
    }
  }
}
