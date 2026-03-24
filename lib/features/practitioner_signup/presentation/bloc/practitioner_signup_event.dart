abstract class PractitionerSignupEvent {
  const PractitionerSignupEvent();
}

class FullNameChanged extends PractitionerSignupEvent {
  final String value;
  const FullNameChanged(this.value);
}

class MedicalRegistrationNoChanged extends PractitionerSignupEvent {
  final String value;
  const MedicalRegistrationNoChanged(this.value);
}

class ClinicNameChanged extends PractitionerSignupEvent {
  final String value;
  const ClinicNameChanged(this.value);
}

class PracticeTypeChanged extends PractitionerSignupEvent {
  final String value;
  const PracticeTypeChanged(this.value);
}

class EmailChanged extends PractitionerSignupEvent {
  final String value;
  const EmailChanged(this.value);
}

class PasswordChanged extends PractitionerSignupEvent {
  final String value;
  const PasswordChanged(this.value);
}

class Submit extends PractitionerSignupEvent {
  const Submit();
}
