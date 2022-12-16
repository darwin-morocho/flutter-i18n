/// Generated file. Do not edit.
///
/// Locales: 3
/// Strings: 27 (9 per locale)
///
/// Built on 2022-12-16 at 15:26 UTC

// coverage:ignore-file
// ignore_for_file: type=lint

import 'package:flutter/widgets.dart';
import 'package:slang/builder/model/node.dart';
import 'package:slang_flutter/slang_flutter.dart';
export 'package:slang_flutter/slang_flutter.dart';

const AppLocale _baseLocale = AppLocale.en;

/// Supported locales, see extension methods below.
///
/// Usage:
/// - LocaleSettings.setLocale(AppLocale.en) // set locale
/// - Locale locale = AppLocale.en.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AppLocale.en) // locale check
enum AppLocale with BaseAppLocale<AppLocale, _TranslationsEn> {
	en(languageCode: 'en', build: _TranslationsEn.build),
	es(languageCode: 'es', build: _TranslationsEs.build),
	esEc(languageCode: 'es', countryCode: 'EC', build: _TranslationsEsEc.build);

	const AppLocale({required this.languageCode, this.scriptCode, this.countryCode, required this.build}); // ignore: unused_element

	@override final String languageCode;
	@override final String? scriptCode;
	@override final String? countryCode;
	@override final TranslationBuilder<AppLocale, _TranslationsEn> build;

	/// Gets current instance managed by [LocaleSettings].
	_TranslationsEn get translations => LocaleSettings.instance.translationMap[this]!;
}

/// Method A: Simple
///
/// No rebuild after locale change.
/// Translation happens during initialization of the widget (call of texts).
/// Configurable via 'translate_var'.
///
/// Usage:
/// String a = texts.someKey.anotherKey;
/// String b = texts['someKey.anotherKey']; // Only for edge cases!
_TranslationsEn get texts => LocaleSettings.instance.currentTranslations;

/// Method B: Advanced
///
/// All widgets using this method will trigger a rebuild when locale changes.
/// Use this if you have e.g. a settings page where the user can select the locale during runtime.
///
/// Step 1:
/// wrap your App with
/// TranslationProvider(
/// 	child: MyApp()
/// );
///
/// Step 2:
/// final texts = Translations.of(context); // Get texts variable.
/// String a = texts.someKey.anotherKey; // Use texts variable.
/// String b = texts['someKey.anotherKey']; // Only for edge cases!
class Translations {
	Translations._(); // no constructor

	static _TranslationsEn of(BuildContext context) => InheritedLocaleData.of<AppLocale, _TranslationsEn>(context).translations;
}

/// The provider for method B
class TranslationProvider extends BaseTranslationProvider<AppLocale, _TranslationsEn> {
	TranslationProvider({required super.child}) : super(
		initLocale: LocaleSettings.instance.currentLocale,
		initTranslations: LocaleSettings.instance.currentTranslations,
	);

	static InheritedLocaleData<AppLocale, _TranslationsEn> of(BuildContext context) => InheritedLocaleData.of<AppLocale, _TranslationsEn>(context);
}

/// Method B shorthand via [BuildContext] extension method.
/// Configurable via 'translate_var'.
///
/// Usage (e.g. in a widget's build method):
/// context.texts.someKey.anotherKey
extension BuildContextTranslationsExtension on BuildContext {
	_TranslationsEn get texts => TranslationProvider.of(this).translations;
}

/// Manages all translation instances and the current locale
class LocaleSettings extends BaseFlutterLocaleSettings<AppLocale, _TranslationsEn> {
	LocaleSettings._() : super(utils: AppLocaleUtils.instance);

	static final instance = LocaleSettings._();

	// static aliases (checkout base methods for documentation)
	static AppLocale get currentLocale => instance.currentLocale;
	static Stream<AppLocale> getLocaleStream() => instance.getLocaleStream();
	static AppLocale setLocale(AppLocale locale) => instance.setLocale(locale);
	static AppLocale setLocaleRaw(String rawLocale) => instance.setLocaleRaw(rawLocale);
	static AppLocale useDeviceLocale() => instance.useDeviceLocale();
	static List<Locale> get supportedLocales => instance.supportedLocales;
	static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
	static void setPluralResolver({String? language, AppLocale? locale, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver}) => instance.setPluralResolver(
		language: language,
		locale: locale,
		cardinalResolver: cardinalResolver,
		ordinalResolver: ordinalResolver,
	);
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<AppLocale, _TranslationsEn> {
	AppLocaleUtils._() : super(baseLocale: _baseLocale, locales: AppLocale.values);

	static final instance = AppLocaleUtils._();

	// static aliases (checkout base methods for documentation)
	static AppLocale parse(String rawLocale) => instance.parse(rawLocale);
	static AppLocale parseLocaleParts({required String languageCode, String? scriptCode, String? countryCode}) => instance.parseLocaleParts(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
	static AppLocale findDeviceLocale() => instance.findDeviceLocale();
}

// translations

// Path: <root>
class _TranslationsEn implements BaseTranslations<AppLocale, _TranslationsEn> {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_TranslationsEn.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, _TranslationsEn> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final _TranslationsEn _root = this; // ignore: unused_field

	// Translations
	late final _TranslationsHomeDropdownButtonEn homeDropdownButton = _TranslationsHomeDropdownButtonEn._(_root);
	late final _TranslationsHomeEn home = _TranslationsHomeEn._(_root);
}

// Path: homeDropdownButton
class _TranslationsHomeDropdownButtonEn {
	_TranslationsHomeDropdownButtonEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get english => 'English';
	String get spanish => 'Spanish';
	String get spanishEcuador => 'Spanish Ecuador';
}

// Path: home
class _TranslationsHomeEn {
	_TranslationsHomeEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get helloWorld => 'Hello World';
	String get summary => 'SUMMARY';
	String productName({required Object name, required Object emoji}) => 'Product: ${name} ${emoji}';
	String price({required Object price}) => 'Price: ${price}';
	String releaseDate({required Object date}) => 'Release Date: ${date}';
	String payNow({required Object total}) => 'PAY NOW ${total}';
}

// Path: <root>
class _TranslationsEs implements _TranslationsEn {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_TranslationsEs.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.es,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <es>.
	@override final TranslationMetadata<AppLocale, _TranslationsEn> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	@override late final _TranslationsEs _root = this; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeDropdownButtonEs homeDropdownButton = _TranslationsHomeDropdownButtonEs._(_root);
	@override late final _TranslationsHomeEs home = _TranslationsHomeEs._(_root);
}

// Path: homeDropdownButton
class _TranslationsHomeDropdownButtonEs implements _TranslationsHomeDropdownButtonEn {
	_TranslationsHomeDropdownButtonEs._(this._root);

	@override final _TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get english => 'Ingles';
	@override String get spanish => 'Español';
	@override String get spanishEcuador => 'Español Ecuador';
}

// Path: home
class _TranslationsHomeEs implements _TranslationsHomeEn {
	_TranslationsHomeEs._(this._root);

	@override final _TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get helloWorld => 'Hola mundo';
	@override String get summary => 'RESUMEN';
	@override String productName({required Object name, required Object emoji}) => 'Producto: ${name} ${emoji}';
	@override String price({required Object price}) => 'Precio: ${price}';
	@override String releaseDate({required Object date}) => 'Fecha: ${date}';
	@override String payNow({required Object total}) => 'PAGAR ${total}';
}

// Path: <root>
class _TranslationsEsEc implements _TranslationsEn {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_TranslationsEsEc.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.esEc,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <es-EC>.
	@override final TranslationMetadata<AppLocale, _TranslationsEn> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	@override late final _TranslationsEsEc _root = this; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeDropdownButtonEsEc homeDropdownButton = _TranslationsHomeDropdownButtonEsEc._(_root);
	@override late final _TranslationsHomeEsEc home = _TranslationsHomeEsEc._(_root);
}

// Path: homeDropdownButton
class _TranslationsHomeDropdownButtonEsEc implements _TranslationsHomeDropdownButtonEn {
	_TranslationsHomeDropdownButtonEsEc._(this._root);

	@override final _TranslationsEsEc _root; // ignore: unused_field

	// Translations
	@override String get english => 'Ingles';
	@override String get spanish => 'Español';
	@override String get spanishEcuador => 'Español Ecuador';
}

// Path: home
class _TranslationsHomeEsEc implements _TranslationsHomeEn {
	_TranslationsHomeEsEc._(this._root);

	@override final _TranslationsEsEc _root; // ignore: unused_field

	// Translations
	@override String get helloWorld => 'Hola Ecuador';
	@override String get summary => 'RESUMEN';
	@override String productName({required Object name, required Object emoji}) => 'Producto: ${name} ${emoji}';
	@override String price({required Object price}) => 'Precio: ${price}';
	@override String releaseDate({required Object date}) => 'Fecha: ${date}';
	@override String payNow({required Object total}) => 'PAGAR ${total}';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on _TranslationsEn {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'homeDropdownButton.english': return 'English';
			case 'homeDropdownButton.spanish': return 'Spanish';
			case 'homeDropdownButton.spanishEcuador': return 'Spanish Ecuador';
			case 'home.helloWorld': return 'Hello World';
			case 'home.summary': return 'SUMMARY';
			case 'home.productName': return ({required Object name, required Object emoji}) => 'Product: ${name} ${emoji}';
			case 'home.price': return ({required Object price}) => 'Price: ${price}';
			case 'home.releaseDate': return ({required Object date}) => 'Release Date: ${date}';
			case 'home.payNow': return ({required Object total}) => 'PAY NOW ${total}';
			default: return null;
		}
	}
}

extension on _TranslationsEs {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'homeDropdownButton.english': return 'Ingles';
			case 'homeDropdownButton.spanish': return 'Español';
			case 'homeDropdownButton.spanishEcuador': return 'Español Ecuador';
			case 'home.helloWorld': return 'Hola mundo';
			case 'home.summary': return 'RESUMEN';
			case 'home.productName': return ({required Object name, required Object emoji}) => 'Producto: ${name} ${emoji}';
			case 'home.price': return ({required Object price}) => 'Precio: ${price}';
			case 'home.releaseDate': return ({required Object date}) => 'Fecha: ${date}';
			case 'home.payNow': return ({required Object total}) => 'PAGAR ${total}';
			default: return null;
		}
	}
}

extension on _TranslationsEsEc {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'homeDropdownButton.english': return 'Ingles';
			case 'homeDropdownButton.spanish': return 'Español';
			case 'homeDropdownButton.spanishEcuador': return 'Español Ecuador';
			case 'home.helloWorld': return 'Hola Ecuador';
			case 'home.summary': return 'RESUMEN';
			case 'home.productName': return ({required Object name, required Object emoji}) => 'Producto: ${name} ${emoji}';
			case 'home.price': return ({required Object price}) => 'Precio: ${price}';
			case 'home.releaseDate': return ({required Object date}) => 'Fecha: ${date}';
			case 'home.payNow': return ({required Object total}) => 'PAGAR ${total}';
			default: return null;
		}
	}
}
