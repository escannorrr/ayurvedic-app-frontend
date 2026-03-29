import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/settings_entity.dart';
import '../../domain/entities/user_profile_entity.dart';

part 'settings_model.freezed.dart';
part 'settings_model.g.dart';

@freezed
abstract class SettingsModel with _$SettingsModel {
  const factory SettingsModel({
    required UserProfileModel profile,
    required String language,
    required String aiLanguage,
    required String aiTone,
    @Default(true) bool notificationsEnabled,
    @Default('Basic') String securityPlan,
  }) = _SettingsModel;

  factory SettingsModel.fromJson(Map<String, dynamic> json) => _$SettingsModelFromJson(json);

  factory SettingsModel.fromEntity(SettingsEntity entity) => SettingsModel(
    profile: UserProfileModel.fromEntity(entity.profile),
    language: entity.language,
    aiLanguage: entity.aiLanguage,
    aiTone: entity.aiTone,
    notificationsEnabled: entity.notificationsEnabled,
    securityPlan: entity.securityPlan,
  );
}

@freezed
abstract class UserProfileModel with _$UserProfileModel {
  const factory UserProfileModel({
    required String name,
    required String lastName,
    required String email,
    required String mobile,
    required String clinicName,
    required String specialty,
    required String avatarUrl,
  }) = _UserProfileModel;

  factory UserProfileModel.fromJson(Map<String, dynamic> json) => _$UserProfileModelFromJson(json);

  factory UserProfileModel.fromEntity(UserProfileEntity entity) => UserProfileModel(
    name: entity.name,
    lastName: entity.lastName,
    email: entity.email,
    mobile: entity.mobile,
    clinicName: entity.clinicName,
    specialty: entity.specialty,
    avatarUrl: entity.avatarUrl,
  );
}

extension SettingsModelX on SettingsModel {
  SettingsEntity toEntity() => SettingsEntity(
    profile: profile.toEntity(),
    language: language,
    aiLanguage: aiLanguage,
    aiTone: aiTone,
    notificationsEnabled: notificationsEnabled,
    securityPlan: securityPlan,
  );
}

extension UserProfileModelX on UserProfileModel {
  UserProfileEntity toEntity() => UserProfileEntity(
    name: name,
    lastName: lastName,
    email: email,
    mobile: mobile,
    clinicName: clinicName,
    specialty: specialty,
    avatarUrl: avatarUrl,
  );
}
