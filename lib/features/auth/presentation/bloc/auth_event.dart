import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.freezed.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.emailChanged(String email) = _EmailChanged;
  const factory AuthEvent.passwordChanged(String password) = _PasswordChanged;
  const factory AuthEvent.loginSubmitted() = _LoginSubmitted;
}
