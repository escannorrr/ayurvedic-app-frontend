import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/user_entity.dart';
import '../../../settings/domain/entities/user_profile_entity.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
abstract class UserModel with _$UserModel {
  const factory UserModel({
    required String id,
    required String email,
    String? name,
    String? lastName,
    String? mobile,
    required String token,
    @Default('AyuCare Wellness Center') String clinicName,
    @Default('Ayurvedic Specialist') String specialty,
    @Default('') String avatarUrl,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}

extension UserModelX on UserModel {
  UserEntity toEntity() => UserEntity(
    id: id,
    email: email,
    name: name,
    token: token,
  );

  UserProfileEntity toUserProfileEntity() => UserProfileEntity(
    name: name ?? '',
    lastName: lastName ?? '',
    email: email,
    mobile: mobile ?? '',
    clinicName: clinicName,
    specialty: specialty,
    avatarUrl: avatarUrl,
  );
}
