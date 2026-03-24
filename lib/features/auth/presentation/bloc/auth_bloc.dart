import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/usecases/login_usecase.dart';
import 'auth_event.dart';
import 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final LoginUseCase loginUseCase;

  AuthBloc({required this.loginUseCase}) : super(AuthState.initial()) {
    on<AuthEvent>((event, emit) async {
      await event.when(
        emailChanged: (email) async {
          emit(state.copyWith(email: email, errorMessage: null));
        },
        passwordChanged: (password) async {
          emit(state.copyWith(password: password, errorMessage: null));
        },
        loginSubmitted: () async {
          emit(state.copyWith(isLoading: true, errorMessage: null, isSuccess: false));
          try {
            await loginUseCase(email: state.email, password: state.password);
            emit(state.copyWith(isLoading: false, isSuccess: true));
          } catch (error) {
            emit(state.copyWith(isLoading: false, errorMessage: error.toString()));
          }
        },
      );
    });
  }
}
