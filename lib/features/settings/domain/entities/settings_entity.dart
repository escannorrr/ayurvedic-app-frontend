import 'package:freezed_annotation/freezed_annotation.dart';
import 'user_profile_entity.dart';

part 'settings_entity.freezed.dart';

@freezed
abstract class SettingsEntity with _$SettingsEntity {
  const factory SettingsEntity({
    required UserProfileEntity profile,
    required String language,
    required String aiLanguage,
    required String aiTone,
    @Default(true) bool notificationsEnabled,
    @Default('Basic') String securityPlan,
  }) = _SettingsEntity;
}
