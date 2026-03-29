import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.freezed.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.appStarted() = AppStarted;
  const factory AuthEvent.loginRequested(String email, String password) = LoginRequested;
  const factory AuthEvent.logoutRequested() = LogoutRequested;
}
