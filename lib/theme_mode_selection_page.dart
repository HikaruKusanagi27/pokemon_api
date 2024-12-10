import 'package:flutter/material.dart';

class ThemeModeSelectionPage extends StatefulWidget {
  const ThemeModeSelectionPage({Key? key}) : super(key: key);

  @override
  _ThemeModeSelectionPageState createState() => _ThemeModeSelectionPageState();
}

class _ThemeModeSelectionPageState extends State<ThemeModeSelectionPage> {
  ThemeMode _current = ThemeMode.system;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ListTile(
              leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () => Navigator.pop(context),
              ),
            ),
            RadioListTile<ThemeMode>(
              value: ThemeMode.system,
              groupValue: _current,
              title: const Text('System'),
              onChanged: (val) => {
                {setState(() => _current = val!)},
              },
            ),
            RadioListTile<ThemeMode>(
              value: ThemeMode.dark,
              groupValue: ThemeMode.system,
              title: const Text('Dark'),
              onChanged: (val) => {},
            ),
            RadioListTile<ThemeMode>(
              value: ThemeMode.light,
              groupValue: ThemeMode.system,
              title: const Text('Light'),
              onChanged: (val) => {},
            ),
          ],
        ),
      ),
    );
  }
}
