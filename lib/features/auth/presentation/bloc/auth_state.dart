import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState({
    @Default('') String email,
    @Default('') String password,
    @Default(false) bool isLoading,
    String? errorMessage,
    @Default(false) bool isSuccess,
  }) = _AuthState;

  factory AuthState.initial() => const AuthState();
}
