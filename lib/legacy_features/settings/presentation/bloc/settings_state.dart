import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/settings_entity.dart';

part 'settings_state.freezed.dart';

@freezed
abstract class SettingsState with _$SettingsState {
  const factory SettingsState.initial() = _Initial;
  const factory SettingsState.loading() = _Loading;
  const factory SettingsState.loaded({
    required SettingsEntity settings,
    required SettingsEntity draftSettings,
    @Default(false) bool isDirty,
  }) = _Loaded;
  const factory SettingsState.saving() = _Saving;
  const factory SettingsState.saved() = _Saved;
  const factory SettingsState.error(String message) = _Error;
}
