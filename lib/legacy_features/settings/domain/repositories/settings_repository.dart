import '../entities/settings_entity.dart';

abstract class SettingsRepository {
  Future<SettingsEntity> getSettings();
  Future<void> saveSettings(SettingsEntity settings);
  Future<void> updateLanguage(String languageCode);
  Future<void> updateProfile(SettingsEntity settings);
  Future<void> logout();
}
