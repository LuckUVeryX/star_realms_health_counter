import 'package:flutter/material.dart';
import 'package:star_realms_health_counter/l10n/l10n.dart';
import 'package:star_realms_health_counter/modules/counter/counter.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = ThemeData.dark(useMaterial3: true);

    return MaterialApp(
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(background: Colors.black),
        inputDecorationTheme: const InputDecorationTheme(
          border: InputBorder.none,
        ),
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: const CounterPage(),
    );
  }
}
