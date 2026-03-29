import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile_entity.freezed.dart';

@freezed
abstract class UserProfileEntity with _$UserProfileEntity {
  const factory UserProfileEntity({
    required String name,
    required String lastName,
    required String email,
    required String mobile,
    required String clinicName,
    required String specialty,
    required String avatarUrl,
  }) = _UserProfileEntity;
}
