import 'package:centrolui/layouts/clean_layout.dart';
import 'package:centrolui/services/auth/auth_service.dart';
import 'package:centrolui/services/theme/theme_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeService theme = Provider.of<ThemeService>(context);
    AuthService auth = Provider.of<AuthService>(context);
    return ClCleanLayout(
        title: "Settings",
        body: Column(
          children: [
            ListTile(
              onTap: () => theme.changeTheme,
              title: Text("Theme: ${theme.activeTheme.name}"),
              trailing: Checkbox(
                  value: theme.activeTheme == Themes.darkTheme,
                  onChanged: (_) => theme.changeTheme),
            ),
            TextButton(
              onPressed: () => auth.logout(),
              child: const Text("Logout"),
            )
          ],
        ));
  }
}
