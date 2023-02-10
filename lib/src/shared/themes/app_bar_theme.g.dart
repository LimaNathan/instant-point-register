part of 'custom_theme.dart';

AppBarTheme get _lightAppBarTheme => AppBarTheme(
      toolbarHeight: 90,
      titleTextStyle: _lightTextTheme.titleMedium,
      color: _lightColorScheme.secondary,
      iconTheme: IconThemeData(color: _lightColorScheme.onPrimary),
      systemOverlayStyle:
          SystemUiOverlayStyle(statusBarColor: _lightColorScheme.secondary),
    );
