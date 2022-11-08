// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Miesca`
  String get app_name {
    return Intl.message(
      'Miesca',
      name: 'app_name',
      desc: '',
      args: [],
    );
  }

  /// `Beautiful places of Belarus`
  String get app_tagline {
    return Intl.message(
      'Beautiful places of Belarus',
      name: 'app_tagline',
      desc: '',
      args: [],
    );
  }

  /// `*European bison is one of the most ancient animals of modern fauna. In the Middle Ages, bison inhabited most of Europe.`
  String get app_description {
    return Intl.message(
      '*European bison is one of the most ancient animals of modern fauna. In the Middle Ages, bison inhabited most of Europe.',
      name: 'app_description',
      desc: '',
      args: [],
    );
  }

  /// `Learn more`
  String get button_start {
    return Intl.message(
      'Learn more',
      name: 'button_start',
      desc: '',
      args: [],
    );
  }

  /// `Buildings`
  String get building_section {
    return Intl.message(
      'Buildings',
      name: 'building_section',
      desc: '',
      args: [],
    );
  }

  /// `This section presents the most interesting sights of Belarus – amazing castles and family estates, wonderful temples and monasteries and unique corners of untouched nature`
  String get building_section_description {
    return Intl.message(
      'This section presents the most interesting sights of Belarus – amazing castles and family estates, wonderful temples and monasteries and unique corners of untouched nature',
      name: 'building_section_description',
      desc: '',
      args: [],
    );
  }

  /// `Popular places`
  String get head_line_card {
    return Intl.message(
      'Popular places',
      name: 'head_line_card',
      desc: '',
      args: [],
    );
  }

  /// `Buildings`
  String get menu_item_1 {
    return Intl.message(
      'Buildings',
      name: 'menu_item_1',
      desc: '',
      args: [],
    );
  }

  /// `Animals`
  String get menu_item_2 {
    return Intl.message(
      'Animals',
      name: 'menu_item_2',
      desc: '',
      args: [],
    );
  }

  /// `Monuments`
  String get menu_item_3 {
    return Intl.message(
      'Monuments',
      name: 'menu_item_3',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'bl'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
