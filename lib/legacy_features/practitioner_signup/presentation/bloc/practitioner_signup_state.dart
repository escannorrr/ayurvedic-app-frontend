class PractitionerSignupState {
  final String fullName;
  final String medicalRegistrationNo;
  final String clinicName;
  final String practiceType;
  final String email;
  final String password;
  final bool isLoading;
  final bool isSuccess;
  final String? errorMessage;
  final Map<String, String> validationErrors;

  const PractitionerSignupState({
    this.fullName = '',
    this.medicalRegistrationNo = '',
    this.clinicName = '',
    this.practiceType = '',
    this.email = '',
    this.password = '',
    this.isLoading = false,
    this.isSuccess = false,
    this.errorMessage,
    this.validationErrors = const {},
  });

  PractitionerSignupState copyWith({
    String? fullName,
    String? medicalRegistrationNo,
    String? clinicName,
    String? practiceType,
    String? email,
    String? password,
    bool? isLoading,
    bool? isSuccess,
    String? errorMessage,
    Map<String, String>? validationErrors,
  }) {
    return PractitionerSignupState(
      fullName: fullName ?? this.fullName,
      medicalRegistrationNo: medicalRegistrationNo ?? this.medicalRegistrationNo,
      clinicName: clinicName ?? this.clinicName,
      practiceType: practiceType ?? this.practiceType,
      email: email ?? this.email,
      password: password ?? this.password,
      isLoading: isLoading ?? this.isLoading,
      isSuccess: isSuccess ?? this.isSuccess,
      errorMessage: errorMessage ?? this.errorMessage,
      validationErrors: validationErrors ?? this.validationErrors,
    );
  }
}
