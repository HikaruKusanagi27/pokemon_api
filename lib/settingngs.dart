import 'package:flutter/material.dart';
import 'package:pokemon_api/shared_preferences.dart';
import 'package:pokemon_api/theme_mode_selection_page.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  ThemeMode _themeMode = ThemeMode.system;

  @override
  void initState() {
    super.initState();
    loadThemeMode().then((val) => setState(() => _themeMode = val));
  }

  Future<void> saveThemeMode(ThemeMode mode) async {
    // テーマモードを保存するロジックを追加
  }
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: Icon(Icons.lightbulb),
          title: Text('Dark/Light Mode'),
          trailing: Text((_themeMode == ThemeMode.system)
              ? 'System'
              : (_themeMode == ThemeMode.dark ? 'Dark' : 'Light')),
          onTap: () async {
            var selectedMode = await Navigator.of(context).push<ThemeMode>(
              MaterialPageRoute(
                builder: (context) => ThemeModeSelectionPage(mode: _themeMode),
              ),
            );
            if (selectedMode != null) {
              setState(() => _themeMode = selectedMode);
              await saveThemeMode(selectedMode);
            }
          },
        ),
      ],
    );
  }
}
