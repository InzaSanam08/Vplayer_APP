import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vplayer/provideer/theme_provider.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeProvider themeProvider = Provider.of<ThemeProvider>(
      context,
      listen: false,
    );
    return Scaffold(
      backgroundColor:  Theme.of(context).colorScheme.background,
      appBar: AppBar(title: Text('S E T T I N G S')),
      body: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(12),
        ),
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.all(25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Dark Mode', style: TextStyle(fontWeight: FontWeight.bold)),
            Consumer<ThemeProvider>(
              builder: (context, theme, _) {
                return Switch(
                  activeColor: Theme.of(context).colorScheme.primary,
                  value: theme.isDarkMode,
                  onChanged: (val) {
                    theme.toggleTheme(val); // 🔁 triggers notifyListeners
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
