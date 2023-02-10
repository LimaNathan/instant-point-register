import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

part 'color_schemes.g.dart';
part 'borders.g.dart';

ThemeData get lightTheme => ThemeData(
      useMaterial3: true,
      colorScheme: _lightColorScheme,
      appBarTheme: _lightAppBarTheme,
      textTheme: _lightTextTheme,
      floatingActionButtonTheme: _floatingActionButtonThemeData,
      inputDecorationTheme: _inputDecorationTheme,
    );

ThemeData get darkTheme =>
    ThemeData(useMaterial3: true, colorScheme: _darkColorScheme);

InputDecorationTheme get _inputDecorationTheme => InputDecorationTheme(
      contentPadding: const EdgeInsets.symmetric(horizontal: 28, vertical: 3),
      suffixIconColor: _lightColorScheme.onPrimaryContainer,
      alignLabelWithHint: true,
      labelStyle: _lightTextTheme.bodyMedium!.copyWith(
        color: _lightColorScheme.primary.withAlpha(150),
      ),
      enabledBorder: _enabledBorder,
      focusedBorder: _focusedBorder,
      disabledBorder: _disabledBorder,
    );

AppBarTheme get _lightAppBarTheme => AppBarTheme(
      toolbarHeight: 90,
      titleTextStyle: _lightTextTheme.titleMedium,
      color: _lightColorScheme.secondary,
      iconTheme: IconThemeData(color: _lightColorScheme.onPrimary),
      systemOverlayStyle:
          SystemUiOverlayStyle(statusBarColor: _lightColorScheme.secondary),
    );

FloatingActionButtonThemeData get _floatingActionButtonThemeData =>
    FloatingActionButtonThemeData(
      backgroundColor: _lightColorScheme.onPrimaryContainer,
      foregroundColor: Colors.white,
      iconSize: 36,
      elevation: 0,
    );

TextTheme get _lightTextTheme => TextTheme(
      titleMedium: GoogleFonts.inter(
        color: Colors.white,
      ),
      bodySmall: GoogleFonts.inter(
        color: _lightColorScheme.onPrimaryContainer,
      ),
      bodyLarge: GoogleFonts.inter(
        color: _lightColorScheme.onPrimary,
        fontWeight: FontWeight.w500,
      ),
      bodyMedium: GoogleFonts.inter(
        color: _lightColorScheme.onPrimary,
      ),
    );
