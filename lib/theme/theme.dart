// ignore_for_file: use_full_hex_values_for_flutter_colors

import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4287514967),
      surfaceTint: Color(4287514967),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4294957534),
      onPrimaryContainer: Color(4281992982),
      secondary: Color(4287580748),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4294957785),
      onSecondaryContainer: Color(4282058766),
      tertiary: Color(4287646526),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4294957779),
      onTertiaryContainer: Color(4281993732),
      error: Color(4290386458),
      onError: Color(4294967295),
      errorContainer: Color(4294957782),
      onErrorContainer: Color(4282449922),
      surface: Color(4294965493),
      onSurface: Color(4280424981),
      onSurfaceVariant: Color(4283581253),
      outline: Color(4286870389),
      outlineVariant: Color(4292264644),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281872169),
      inversePrimary: Color(4294947519),
      primaryFixed: Color(4294957534),
      onPrimaryFixed: Color(4281992982),
      primaryFixedDim: Color(4294947519),
      onPrimaryFixedVariant: Color(4285608768),
      secondaryFixed: Color(4294957785),
      onSecondaryFixed: Color(4282058766),
      secondaryFixedDim: Color(4294947764),
      onSecondaryFixedVariant: Color(4285739830),
      tertiaryFixed: Color(4294957779),
      onTertiaryFixed: Color(4281993732),
      tertiaryFixedDim: Color(4294948006),
      onTertiaryFixedVariant: Color(4285740072),
      surfaceDim: Color(4293384142),
      surfaceBright: Color(4294965493),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294963689),
      surfaceContainer: Color(4294700001),
      surfaceContainerHigh: Color(4294305244),
      surfaceContainerHighest: Color(4293976022),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4285345597),
      surfaceTint: Color(4287514967),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4289224557),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4285411122),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4289355617),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4285411365),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4289355858),
      onTertiaryContainer: Color(4294967295),
      error: Color(4287365129),
      onError: Color(4294967295),
      errorContainer: Color(4292490286),
      onErrorContainer: Color(4294967295),
      surface: Color(4294965493),
      onSurface: Color(4280424981),
      onSurfaceVariant: Color(4283318081),
      outline: Color(4285225821),
      outlineVariant: Color(4287133304),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281872169),
      inversePrimary: Color(4294947519),
      primaryFixed: Color(4289224557),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4287317845),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4289355617),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4287383370),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4289355858),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4287449147),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4293384142),
      surfaceBright: Color(4294965493),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294963689),
      surfaceContainer: Color(4294700001),
      surfaceContainerHigh: Color(4294305244),
      surfaceContainerHighest: Color(4293976022),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4282584605),
      surfaceTint: Color(4287514967),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4285345597),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4282650388),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4285411122),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4282585096),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4285411365),
      onTertiaryContainer: Color(4294967295),
      error: Color(4283301890),
      onError: Color(4294967295),
      errorContainer: Color(4287365129),
      onErrorContainer: Color(4294967295),
      surface: Color(4294965493),
      onSurface: Color(4278190080),
      onSurfaceVariant: Color(4281147683),
      outline: Color(4283318081),
      outlineVariant: Color(4283318081),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281872169),
      inversePrimary: Color(4294960873),
      primaryFixed: Color(4285345597),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4283504935),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4285411122),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4283570462),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4285411365),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4283505425),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4293384142),
      surfaceBright: Color(4294965493),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294963689),
      surfaceContainer: Color(4294700001),
      surfaceContainerHigh: Color(4294305244),
      surfaceContainerHighest: Color(4293976022),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294947519),
      surfaceTint: Color(4294947519),
      onPrimary: Color(4283833643),
      primaryContainer: Color(4285608768),
      onPrimaryContainer: Color(4294957534),
      secondary: Color(4294947764),
      onSecondary: Color(4283833633),
      secondaryContainer: Color(4285739830),
      onSecondaryContainer: Color(4294957785),
      tertiary: Color(4294948006),
      onTertiary: Color(4283833876),
      tertiaryContainer: Color(4285740072),
      onTertiaryContainer: Color(4294957779),
      error: Color(4294948011),
      onError: Color(4285071365),
      errorContainer: Color(4287823882),
      onErrorContainer: Color(4294957782),
      surface: Color(4279833101),
      onSurface: Color(4293976022),
      onSurfaceVariant: Color(4292264644),
      outline: Color(4288646286),
      outlineVariant: Color(4283581253),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293976022),
      inversePrimary: Color(4287514967),
      primaryFixed: Color(4294957534),
      onPrimaryFixed: Color(4281992982),
      primaryFixedDim: Color(4294947519),
      onPrimaryFixedVariant: Color(4285608768),
      secondaryFixed: Color(4294957785),
      onSecondaryFixed: Color(4282058766),
      secondaryFixedDim: Color(4294947764),
      onSecondaryFixedVariant: Color(4285739830),
      tertiaryFixed: Color(4294957779),
      onTertiaryFixed: Color(4281993732),
      tertiaryFixedDim: Color(4294948006),
      onTertiaryFixedVariant: Color(4285740072),
      surfaceDim: Color(4279833101),
      surfaceBright: Color(4282464049),
      surfaceContainerLowest: Color(4279504136),
      surfaceContainerLow: Color(4280424981),
      surfaceContainer: Color(4280688152),
      surfaceContainerHigh: Color(4281411618),
      surfaceContainerHighest: Color(4282135341),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294949059),
      surfaceTint: Color(4294947519),
      onPrimary: Color(4281533201),
      primaryContainer: Color(4291328649),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294949306),
      onSecondary: Color(4281598729),
      secondaryContainer: Color(4291525244),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294949549),
      onTertiary: Color(4281533697),
      tertiaryContainer: Color(4291591020),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294949553),
      onError: Color(4281794561),
      errorContainer: Color(4294923337),
      onErrorContainer: Color(4278190080),
      surface: Color(4279833101),
      onSurface: Color(4294966008),
      onSurfaceVariant: Color(4292593352),
      outline: Color(4289830560),
      outlineVariant: Color(4287725441),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293976022),
      inversePrimary: Color(4285740098),
      primaryFixed: Color(4294957534),
      onPrimaryFixed: Color(4281073676),
      primaryFixedDim: Color(4294947519),
      onPrimaryFixedVariant: Color(4284293680),
      secondaryFixed: Color(4294957785),
      onSecondaryFixed: Color(4281073669),
      secondaryFixedDim: Color(4294947764),
      onSecondaryFixedVariant: Color(4284359462),
      tertiaryFixed: Color(4294957779),
      onTertiaryFixed: Color(4281074176),
      tertiaryFixedDim: Color(4294948006),
      onTertiaryFixedVariant: Color(4284359705),
      surfaceDim: Color(4279833101),
      surfaceBright: Color(4282464049),
      surfaceContainerLowest: Color(4279504136),
      surfaceContainerLow: Color(4280424981),
      surfaceContainer: Color(4280688152),
      surfaceContainerHigh: Color(4281411618),
      surfaceContainerHighest: Color(4282135341),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294965753),
      surfaceTint: Color(4294947519),
      onPrimary: Color(4278190080),
      primaryContainer: Color(4294949059),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294965753),
      onSecondary: Color(4278190080),
      secondaryContainer: Color(4294949306),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294965752),
      onTertiary: Color(4278190080),
      tertiaryContainer: Color(4294949549),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294965753),
      onError: Color(4278190080),
      errorContainer: Color(4294949553),
      onErrorContainer: Color(4278190080),
      surface: Color(4279833101),
      onSurface: Color(4294967295),
      onSurfaceVariant: Color(4294965753),
      outline: Color(4292593352),
      outlineVariant: Color(4292593352),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293976022),
      inversePrimary: Color(4283242020),
      primaryFixed: Color(4294959075),
      onPrimaryFixed: Color(4278190080),
      primaryFixedDim: Color(4294949059),
      onPrimaryFixedVariant: Color(4281533201),
      secondaryFixed: Color(4294959327),
      onSecondaryFixed: Color(4278190080),
      secondaryFixedDim: Color(4294949306),
      onSecondaryFixedVariant: Color(4281598729),
      tertiaryFixed: Color(4294959322),
      onTertiaryFixed: Color(4278190080),
      tertiaryFixedDim: Color(4294949549),
      onTertiaryFixedVariant: Color(4281533697),
      surfaceDim: Color(4279833101),
      surfaceBright: Color(4282464049),
      surfaceContainerLowest: Color(4279504136),
      surfaceContainerLow: Color(4280424981),
      surfaceContainer: Color(4280688152),
      surfaceContainerHigh: Color(4281411618),
      surfaceContainerHighest: Color(4282135341),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        textTheme: textTheme.apply(
          bodyColor: colorScheme.onSurface,
          displayColor: colorScheme.onSurface,
        ),
        scaffoldBackgroundColor: colorScheme.surface,
        canvasColor: colorScheme.surface,
      );

  /// Bonus
  static const bonus = ExtendedColor(
    seed: Color(4294155872),
    value: Color(4294155872),
    light: ColorFamily(
      color: Color(4287254562),
      onColor: Color(4294967295),
      colorContainer: Color(4294958278),
      onColorContainer: Color(4281340928),
    ),
    lightMediumContrast: ColorFamily(
      color: Color(4287254562),
      onColor: Color(4294967295),
      colorContainer: Color(4294958278),
      onColorContainer: Color(4281340928),
    ),
    lightHighContrast: ColorFamily(
      color: Color(4287254562),
      onColor: Color(4294967295),
      colorContainer: Color(4294958278),
      onColorContainer: Color(4281340928),
    ),
    dark: ColorFamily(
      color: Color(4294948741),
      onColor: Color(4283442432),
      colorContainer: Color(4285413644),
      onColorContainer: Color(4294958278),
    ),
    darkMediumContrast: ColorFamily(
      color: Color(4294948741),
      onColor: Color(4283442432),
      colorContainer: Color(4285413644),
      onColorContainer: Color(4294958278),
    ),
    darkHighContrast: ColorFamily(
      color: Color(4294948741),
      onColor: Color(4283442432),
      colorContainer: Color(4285413644),
      onColorContainer: Color(4294958278),
    ),
  );

  List<ExtendedColor> get extendedColors => [
        bonus,
      ];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
