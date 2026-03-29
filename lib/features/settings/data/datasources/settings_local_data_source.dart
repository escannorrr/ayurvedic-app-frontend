import 'package:shared_preferences/shared_preferences.dart';
import '../models/settings_model.dart';
import 'dart:convert';

abstract class SettingsLocalDataSource {
  Future<SettingsModel> getSettings();
  Future<void> saveSettings(SettingsModel settings);
}

class SettingsLocalDataSourceImpl implements SettingsLocalDataSource {
  final SharedPreferences sharedPreferences;
  static const String _kSettingsKey = 'cached_settings';
  static const String _kUiLanguage = 'ui_language';
  static const String _kAiLanguage = 'ai_language';
  static const String _kAiTone = 'ai_tone';

  SettingsLocalDataSourceImpl({required this.sharedPreferences});

  @override
  Future<SettingsModel> getSettings() async {
    final String? settingsJson = sharedPreferences.getString(_kSettingsKey);
    
    // Retrieve individual keys for robustness if full json is missing
    final String uiLang = sharedPreferences.getString(_kUiLanguage) ?? 'en';
    final String aiLang = sharedPreferences.getString(_kAiLanguage) ?? 'en_UK';
    final String aiTone = sharedPreferences.getString(_kAiTone) ?? 'Clinical';

    if (settingsJson != null) {
      try {
        final model = SettingsModel.fromJson(json.decode(settingsJson));
        // Ensure individual keys are synced if model exists
        return model.copyWith(
          language: uiLang,
          aiLanguage: aiLang,
          aiTone: aiTone,
        );
      } catch (_) {
        return _getDefaultSettings(uiLang, aiLang, aiTone);
      }
    }
    
    return _getDefaultSettings(uiLang, aiLang, aiTone);
  }

  SettingsModel _getDefaultSettings(String uiLang, String aiLang, String aiTone) {
    return SettingsModel(
      language: uiLang,
      notificationsEnabled: true,
      aiLanguage: aiLang,
      aiTone: aiTone,
      profile: const UserProfileModel(
        name: '',
        lastName: '',
        email: '',
        mobile: '',
        clinicName: '',
        specialty: '',
        avatarUrl: '',
      ),
    );
  }

  @override
  Future<void> saveSettings(SettingsModel settings) async {
    // Save full JSON
    await sharedPreferences.setString(_kSettingsKey, json.encode(settings.toJson()));
    
    // Save individual keys as requested
    await sharedPreferences.setString(_kUiLanguage, settings.language);
    await sharedPreferences.setString(_kAiLanguage, settings.aiLanguage);
    await sharedPreferences.setString(_kAiTone, settings.aiTone);
  }
}
