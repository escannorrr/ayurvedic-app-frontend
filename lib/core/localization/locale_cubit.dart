import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocaleCubit extends Cubit<Locale> {
  final SharedPreferences sharedPreferences;
  static const String _kLocaleKey = 'ui_language';

  LocaleCubit({required this.sharedPreferences}) : super(_getInitialLocale(sharedPreferences));

  static Locale _getInitialLocale(SharedPreferences prefs) {
    final String? languageCode = prefs.getString(_kLocaleKey);
    if (languageCode != null && ['en', 'hi', 'mr'].contains(languageCode)) {
      return Locale(languageCode);
    }
    return const Locale('en'); // Default locale
  }

  Future<void> changeLanguage(String languageCode) async {
    if (['en', 'hi', 'mr'].contains(languageCode)) {
      await sharedPreferences.setString(_kLocaleKey, languageCode);
      emit(Locale(languageCode));
    }
  }
}
