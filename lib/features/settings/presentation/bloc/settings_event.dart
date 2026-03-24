import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/settings_entity.dart';

part 'settings_event.freezed.dart';

@freezed
abstract class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.loadSettings() = _LoadSettings;
  const factory SettingsEvent.updateProfile({
    String? name,
    String? lastName,
    String? clinic,
    String? email,
    String? mobile,
  }) = _UpdateProfile;
  const factory SettingsEvent.updateUiLanguage(String languageCode) = _UpdateUiLanguage;
  const factory SettingsEvent.updateAiLanguage(String language) = _UpdateAiLanguage;
  const factory SettingsEvent.updateAiTone(String tone) = _UpdateAiTone;
  const factory SettingsEvent.saveSettings() = _SaveSettings;
  const factory SettingsEvent.logout() = _Logout;
}
