import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:i18n/app/pages/home/home_view.dart';
import 'package:intl/intl.dart';

class MyApp extends StatefulWidget {
  const MyApp({
    super.key,
    required this.defaultLanguageCode,
    required this.defaultCountryCode,
  });
  final String defaultLanguageCode, defaultCountryCode;

  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  late Locale _locale;
  Locale get locale => _locale;

  final _supportedLocales = const [
    Locale('en'),
    Locale('es'),
    Locale('es', 'EC'),
  ];

  @override
  void initState() {
    super.initState();
    _locale = Locale(
      widget.defaultLanguageCode,
      widget.defaultCountryCode,
    );
    _locale = _supportedLocales.firstWhere(
      (e) =>
          e.languageCode == _locale.languageCode &&
          e.countryCode == _locale.countryCode,
      orElse: () => _supportedLocales.first,
    );
  }

  void changeLanguage(Locale locale) {
    setState(() {
      if (locale.countryCode?.isNotEmpty ?? false) {
        Intl.defaultLocale = '${locale.languageCode}_${locale.countryCode}';
      } else {
        Intl.defaultLocale = locale.languageCode;
      }

      _locale = locale;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeView(),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: _supportedLocales,
      locale: _locale,
    );
  }
}
