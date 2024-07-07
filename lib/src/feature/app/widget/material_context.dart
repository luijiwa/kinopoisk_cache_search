import 'package:flutter/material.dart';
import 'package:kinopoisk_test/src/feature/search_screen/ui/search_screen.dart';

/// {@template material_context}
/// [MaterialContext] is an entry point to the material context.
///
/// This widget sets locales, themes and routing.
/// {@endtemplate}
class MaterialContext extends StatelessWidget {
  /// {@macro material_context}
  const MaterialContext({super.key});

  // This global key is needed for [MaterialApp]
  // to work properly when Widgets Inspector is enabled.
  static final _globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) => MaterialApp(
        // theme: theme.lightTheme,
        // darkTheme: theme.darkTheme,
        // themeMode: theme.mode,
        // localizationsDelegates: Localization.localizationDelegates,
        // supportedLocales: Localization.supportedLocales,
        // locale: locale,
        home: const SearchScreen(),
        builder: (context, child) => MediaQuery.withClampedTextScaling(
          key: _globalKey,
          minScaleFactor: 1.0,
          maxScaleFactor: 1.0,
          child: child!,
        ),
      );
}
