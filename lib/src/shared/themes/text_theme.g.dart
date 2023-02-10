part of 'custom_theme.dart';

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
