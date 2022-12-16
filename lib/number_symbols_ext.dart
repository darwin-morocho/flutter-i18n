import 'package:intl/number_symbols.dart';

extension NumberSymbolsExt on NumberSymbols {
  NumberSymbols copyWith({
    String? currencySymbol,
  }) {
    return NumberSymbols(
      NAME: NAME,
      DECIMAL_SEP: DECIMAL_SEP,
      GROUP_SEP: GROUP_SEP,
      PERCENT: PERCENT,
      ZERO_DIGIT: ZERO_DIGIT,
      PLUS_SIGN: PLUS_SIGN,
      MINUS_SIGN: MINUS_SIGN,
      EXP_SYMBOL: EXP_SYMBOL,
      PERMILL: PERMILL,
      INFINITY: INFINITY,
      NAN: NAN,
      DECIMAL_PATTERN: DECIMAL_PATTERN,
      SCIENTIFIC_PATTERN: SCIENTIFIC_PATTERN,
      PERCENT_PATTERN: PERCENT_PATTERN,
      CURRENCY_PATTERN: CURRENCY_PATTERN,
      DEF_CURRENCY_CODE: currencySymbol ?? DEF_CURRENCY_CODE,
    );
  }
}
