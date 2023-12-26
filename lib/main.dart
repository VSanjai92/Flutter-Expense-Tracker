import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:expense_tracker/widgets/expenses.dart';

var kcolorscheme =
    ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 96, 59, 181));

var kdarkcolorscheme = ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: const Color.fromARGB(255, 5, 99, 125));

void main() {
 // WidgetsFlutterBinding.ensureInitialized();
 // SystemChrome.setPreferredOrientations([
 //   DeviceOrientation.portraitUp,
 // ]).then((fn) => {
        runApp(
          MaterialApp(
            debugShowCheckedModeBanner: false,
            darkTheme: ThemeData.dark().copyWith(
              useMaterial3: true,
              colorScheme: kdarkcolorscheme,
              cardTheme: const CardTheme().copyWith(
                color: kdarkcolorscheme.secondaryContainer,
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              ),
              elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(
                  backgroundColor: kdarkcolorscheme.primaryContainer,
                  foregroundColor: kdarkcolorscheme.onPrimaryContainer,
                ),
              ),
              textTheme: ThemeData().textTheme.copyWith(
                    titleLarge: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: kdarkcolorscheme.onSecondaryContainer,
                      fontSize: 18,
                    ),
                  ),
            ),
            theme: ThemeData().copyWith(
                useMaterial3: true,
                colorScheme: kcolorscheme,
                appBarTheme: const AppBarTheme().copyWith(
                  backgroundColor: kcolorscheme.onPrimaryContainer,
                  foregroundColor: kcolorscheme.primaryContainer,
                ),
                cardTheme: const CardTheme().copyWith(
                  color: kcolorscheme.secondaryContainer,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                ),
                elevatedButtonTheme: ElevatedButtonThemeData(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kcolorscheme.primaryContainer,
                  ),
                ),
                textTheme: ThemeData().textTheme.copyWith(
                        titleLarge: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: kcolorscheme.onSecondaryContainer,
                      fontSize: 18,
                    ))),
            themeMode: ThemeMode.system,
            home: const Expenses(),
          ),
        );
    //  });
}
