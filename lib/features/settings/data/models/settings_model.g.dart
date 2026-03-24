// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SettingsModel _$SettingsModelFromJson(Map<String, dynamic> json) =>
    _SettingsModel(
      profile: UserProfileModel.fromJson(
        json['profile'] as Map<String, dynamic>,
      ),
      language: json['language'] as String,
      aiLanguage: json['aiLanguage'] as String,
      aiTone: json['aiTone'] as String,
      notificationsEnabled: json['notificationsEnabled'] as bool? ?? true,
      securityPlan: json['securityPlan'] as String? ?? 'Basic',
    );

Map<String, dynamic> _$SettingsModelToJson(_SettingsModel instance) =>
    <String, dynamic>{
      'profile': instance.profile,
      'language': instance.language,
      'aiLanguage': instance.aiLanguage,
      'aiTone': instance.aiTone,
      'notificationsEnabled': instance.notificationsEnabled,
      'securityPlan': instance.securityPlan,
    };

_UserProfileModel _$UserProfileModelFromJson(Map<String, dynamic> json) =>
    _UserProfileModel(
      name: json['name'] as String,
      lastName: json['lastName'] as String,
      email: json['email'] as String,
      mobile: json['mobile'] as String,
      clinicName: json['clinicName'] as String,
      specialty: json['specialty'] as String,
      avatarUrl: json['avatarUrl'] as String,
    );

Map<String, dynamic> _$UserProfileModelToJson(_UserProfileModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'lastName': instance.lastName,
      'email': instance.email,
      'mobile': instance.mobile,
      'clinicName': instance.clinicName,
      'specialty': instance.specialty,
      'avatarUrl': instance.avatarUrl,
    };
