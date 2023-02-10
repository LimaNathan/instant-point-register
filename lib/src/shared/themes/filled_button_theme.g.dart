part of 'custom_theme.dart';

FilledButtonThemeData get _filledButtonThemeData => FilledButtonThemeData(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        textStyle: MaterialStateProperty.resolveWith(
          (states) => _lightTextTheme.bodyLarge,
        ),
        fixedSize: MaterialStateProperty.resolveWith(
          (states) => const Size(145, 45),
        ),
        backgroundColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.pressed)) {
            return _darkColorScheme.onPrimary;
          }
          if (states.contains(MaterialState.error)) {
            return _lightColorScheme.onErrorContainer;
          }
          return _lightColorScheme.primary;
        }),
      ),
    );
