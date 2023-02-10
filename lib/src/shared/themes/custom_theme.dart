import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

part 'color_schemes.g.dart';
part 'app_bar_theme.g.dart';
part 'floating_action_button_theme.g.dart';
part 'input_decoration_theme.g.dart';
part 'text_theme.g.dart';
part 'filled_button_theme.g.dart';

ThemeData get lightTheme => ThemeData(
      useMaterial3: true,
      colorScheme: _lightColorScheme,
      appBarTheme: _lightAppBarTheme,
      textTheme: _lightTextTheme,
      floatingActionButtonTheme: _floatingActionButtonThemeData,
      inputDecorationTheme: _inputDecorationTheme,
      filledButtonTheme: _filledButtonThemeData,
      iconTheme: IconThemeData(
        color: _lightColorScheme.primary,
      ),
    );

ThemeData get darkTheme => ThemeData(
      useMaterial3: true,
      colorScheme: _darkColorScheme,
    );
