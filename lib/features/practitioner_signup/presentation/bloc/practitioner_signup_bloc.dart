import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/entities/practitioner.dart';
import '../../domain/usecases/register_practitioner.dart';
import 'practitioner_signup_event.dart';
import 'practitioner_signup_state.dart';

class PractitionerSignupBloc extends Bloc<PractitionerSignupEvent, PractitionerSignupState> {
  final RegisterPractitioner registerPractitioner;

  PractitionerSignupBloc({required this.registerPractitioner}) : super(const PractitionerSignupState()) {
    on<FullNameChanged>((event, emit) => emit(state.copyWith(fullName: event.value)));
    on<MedicalRegistrationNoChanged>((event, emit) => emit(state.copyWith(medicalRegistrationNo: event.value)));
    on<ClinicNameChanged>((event, emit) => emit(state.copyWith(clinicName: event.value)));
    on<PracticeTypeChanged>((event, emit) => emit(state.copyWith(practiceType: event.value)));
    on<EmailChanged>((event, emit) => emit(state.copyWith(email: event.value)));
    on<PasswordChanged>((event, emit) => emit(state.copyWith(password: event.value)));

    on<Submit>(_onSubmit);
  }

  Future<void> _onSubmit(Submit event, Emitter<PractitionerSignupState> emit) async {
    final errors = _validate();
    if (errors.isNotEmpty) {
      emit(state.copyWith(validationErrors: errors));
      return;
    }

    emit(state.copyWith(isLoading: true, errorMessage: null, validationErrors: {}));

    try {
      final practitioner = Practitioner(
        fullName: state.fullName,
        medicalRegistrationNo: state.medicalRegistrationNo,
        clinicName: state.clinicName,
        practiceType: state.practiceType,
        email: state.email,
      );

      await registerPractitioner(practitioner, state.password);
      emit(state.copyWith(isLoading: false, isSuccess: true));
    } catch (e) {
      emit(state.copyWith(isLoading: false, errorMessage: e.toString()));
    }
  }

  Map<String, String> _validate() {
    final errors = <String, String>{};
    if (state.fullName.isEmpty) errors['fullName'] = 'Required';
    if (state.medicalRegistrationNo.isEmpty) errors['medicalRegistrationNo'] = 'Required';
    if (state.email.isEmpty || !state.email.contains('@')) errors['email'] = 'Invalid email';
    if (state.password.length < 6) errors['password'] = 'Min 6 chars';
    return errors;
  }
}
