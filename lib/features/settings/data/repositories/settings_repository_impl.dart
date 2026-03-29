import '../../domain/entities/settings_entity.dart';
import '../../domain/repositories/settings_repository.dart';
import '../datasources/settings_local_data_source.dart';
import '../models/settings_model.dart';

import '../../../../core/services/storage_service.dart';

class SettingsRepositoryImpl implements SettingsRepository {
  final SettingsLocalDataSource localDataSource;
  final StorageService storageService;

  SettingsRepositoryImpl({
    required this.localDataSource,
    required this.storageService,
  });

  @override
  Future<SettingsEntity> getSettings() async {
    final model = await localDataSource.getSettings();
    final name = await storageService.read('user_name');
    final email = await storageService.read('user_email');

    final entity = model.toEntity();
    
    // Override profile with real user data if available
    if (name != null && name.isNotEmpty) {
      return entity.copyWith(
        profile: entity.profile.copyWith(
          name: name,
          email: email ?? entity.profile.email,
        ),
      );
    }
    
    return entity;
  }

  @override
  Future<void> saveSettings(SettingsEntity settings) async {
    final model = SettingsModel.fromEntity(settings);
    await localDataSource.saveSettings(model);
  }

  @override
  Future<void> updateLanguage(String languageCode) async {
    final current = await localDataSource.getSettings();
    final updated = current.copyWith(language: languageCode);
    await localDataSource.saveSettings(updated);
  }

  @override
  Future<void> updateProfile(SettingsEntity settings) async {
    final model = SettingsModel.fromEntity(settings);
    await localDataSource.saveSettings(model);
  }

  @override
  Future<void> logout() async {
    // Clear relevant data if needed
  }
}
