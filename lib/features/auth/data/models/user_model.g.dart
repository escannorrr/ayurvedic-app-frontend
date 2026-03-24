// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserModel _$UserModelFromJson(Map<String, dynamic> json) => _UserModel(
  id: json['id'] as String,
  email: json['email'] as String,
  name: json['name'] as String?,
  lastName: json['lastName'] as String?,
  mobile: json['mobile'] as String?,
  token: json['token'] as String,
  clinicName: json['clinicName'] as String? ?? 'AyuCare Wellness Center',
  specialty: json['specialty'] as String? ?? 'Ayurvedic Specialist',
  avatarUrl: json['avatarUrl'] as String? ?? '',
);

Map<String, dynamic> _$UserModelToJson(_UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'name': instance.name,
      'lastName': instance.lastName,
      'mobile': instance.mobile,
      'token': instance.token,
      'clinicName': instance.clinicName,
      'specialty': instance.specialty,
      'avatarUrl': instance.avatarUrl,
    };
