part of 'custom_theme.dart';

InputDecorationTheme get _inputDecorationTheme => InputDecorationTheme(
      contentPadding: const EdgeInsets.symmetric(horizontal: 28, vertical: 3),
      suffixIconColor: _lightColorScheme.onPrimaryContainer,
      fillColor: _lightColorScheme.background,
      filled: true,
      alignLabelWithHint: true,
      labelStyle: _lightTextTheme.bodyMedium!.copyWith(
        color: _lightColorScheme.onPrimaryContainer.withAlpha(
          150,
        ),
      ),
      suffixStyle: _lightTextTheme.bodySmall,
      enabledBorder: _enabledBorder,
      focusedBorder: _focusedBorder,
      disabledBorder: _disabledBorder,
    );

OutlineInputBorder get _enabledBorder => OutlineInputBorder(
      borderSide: BorderSide(
        color: _lightColorScheme.primary,
      ),
      borderRadius: BorderRadius.circular(20),
    );

OutlineInputBorder get _focusedBorder => OutlineInputBorder(
      borderSide: BorderSide(
        color: _lightColorScheme.primary,
        width: 2,
      ),
      borderRadius: BorderRadius.circular(20),
    );

OutlineInputBorder get _disabledBorder => OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: BorderSide(
        color: _lightColorScheme.primaryContainer,
      ),
    );

OutlineInputBorder get _counterBorder => OutlineInputBorder(
      borderSide: BorderSide(
        color: _lightColorScheme.primary,
      ),
      borderRadius: BorderRadius.circular(6),
    );
