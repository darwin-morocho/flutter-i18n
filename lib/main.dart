import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:i18n/app/my_app.dart';
import 'package:i18n/number_symbols_ext.dart';
import 'package:intl/intl.dart';
import 'package:intl/number_symbols.dart';
import 'package:intl/number_symbols_data.dart';

void main() {
  final languageCode = ui.window.locale.languageCode;
  final countryCode = ui.window.locale.countryCode;
  String defaultLocale = languageCode;
  if (countryCode != null) {
    defaultLocale += '_$countryCode';
  }

  Intl.defaultLocale = defaultLocale;

  final esES = numberFormatSymbols['es_ES'] as NumberSymbols;
  final enUS = numberFormatSymbols['es_US'] as NumberSymbols;

  numberFormatSymbols['es_ES'] = esES.copyWith(
    currencySymbol: '€',
  );
  numberFormatSymbols['en_US'] = enUS.copyWith(
    currencySymbol: r'$',
  );

  numberFormatSymbols['es_EC'] = enUS.copyWith(
    currencySymbol: r'$',
  );

  runApp(
    MyApp(
      defaultLanguageCode: languageCode,
      defaultCountryCode: countryCode ?? '',
    ),
  );
}
