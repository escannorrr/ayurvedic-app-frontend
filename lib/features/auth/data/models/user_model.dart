import 'package:vaidyaai/features/auth/domain/entities/user_entity.dart';

class UserModel {
  final String id;
  final String email;
  final String? fullName;
  final String? accessToken;

  UserModel({
    required this.id,
    required this.email,
    this.fullName,
    this.accessToken,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    // Handle both flat response (from signup) and wrapped response (from login)
    final userData = json['user'] ?? json;
    return UserModel(
      id: userData['id']?.toString() ?? '',
      email: userData['email'] ?? '',
      fullName: userData['full_name'],
      accessToken: json['access_token'],
    );
  }

  UserEntity toEntity() {
    return UserEntity(
      id: id,
      email: email,
      fullName: fullName,
    );
  }

  UserModel copyWith({
    String? id,
    String? email,
    String? fullName,
    String? accessToken,
  }) {
    return UserModel(
      id: id ?? this.id,
      email: email ?? this.email,
      fullName: fullName ?? this.fullName,
      accessToken: accessToken ?? this.accessToken,
    );
  }
}
