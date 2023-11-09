import 'package:namer_app/constant/key/color_theme_key.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<String> returnColorTheme() async {
  final colorTheme = await SharedPreferences.getInstance();
  final themeData = colorTheme.getString(colorThemeKey) ?? '';
  return themeData;
}
