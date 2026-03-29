import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vaidyaai/features/auth/domain/usecases/login_usecase.dart';
import 'package:vaidyaai/features/auth/domain/repositories/auth_repository.dart';
import 'package:vaidyaai/core/api/api_client.dart';
import 'auth_event.dart';
import 'auth_state.dart';
import 'dart:async';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final LoginUseCase loginUseCase;
  final AuthRepository authRepository;
  final ApiClient apiClient;
  StreamSubscription? _authSubscription;

  AuthBloc({
    required this.loginUseCase,
    required this.authRepository,
    required this.apiClient,
  }) : super(const AuthInitial()) {
    
    // Listen for 401 traps from interceptor
    _authSubscription = apiClient.authInterceptor.onUnauthorized.listen((_) {
      add(const LogoutRequested());
    });

    on<AppStarted>((event, emit) async {
      emit(const AuthLoading());
      final user = await authRepository.getCurrentUser();
      if (user != null) {
        emit(Authenticated(user));
      } else {
        emit(const Unauthenticated());
      }
    });

    on<LoginRequested>((event, emit) async {
      emit(const AuthLoading());
      try {
        final user = await loginUseCase(event.email, event.password);
        emit(Authenticated(user));
      } catch (e) {
        emit(AuthError(e.toString()));
      }
    });

    on<LogoutRequested>((event, emit) async {
      emit(const AuthLoading());
      await authRepository.logout();
      emit(const Unauthenticated());
    });
  }

  @override
  Future<void> close() {
    _authSubscription?.cancel();
    return super.close();
  }
}
