import '../../domain/entities/settings_entity.dart';
import '../../domain/repositories/settings_repository.dart';

class GetSettings {
  final SettingsRepository repository;
  GetSettings(this.repository);
  Future<SettingsEntity> call() => repository.getSettings();
}

class SaveSettings {
  final SettingsRepository repository;
  SaveSettings(this.repository);
  Future<void> call(SettingsEntity settings) => repository.saveSettings(settings);
}

class UpdateLanguage {
  final SettingsRepository repository;
  UpdateLanguage(this.repository);
  Future<void> call(String languageCode) => repository.updateLanguage(languageCode);
}

class UpdateProfile {
  final SettingsRepository repository;
  UpdateProfile(this.repository);
  Future<void> call(SettingsEntity settings) => repository.updateProfile(settings);
}

class Logout {
  final SettingsRepository repository;
  Logout(this.repository);
  Future<void> call() => repository.logout();
}
