import '../../domain/entities/practitioner.dart';

class PractitionerModel {
  final String fullName;
  final String medicalRegistrationNo;
  final String clinicName;
  final String practiceType;
  final String email;

  const PractitionerModel({
    required this.fullName,
    required this.medicalRegistrationNo,
    required this.clinicName,
    required this.practiceType,
    required this.email,
  });

  factory PractitionerModel.fromEntity(Practitioner practitioner) {
    return PractitionerModel(
      fullName: practitioner.fullName,
      medicalRegistrationNo: practitioner.medicalRegistrationNo,
      clinicName: practitioner.clinicName,
      practiceType: practitioner.practiceType,
      email: practitioner.email,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'fullName': fullName,
      'medicalRegistrationNo': medicalRegistrationNo,
      'clinicName': clinicName,
      'practiceType': practiceType,
      'email': email,
    };
  }

  Practitioner toEntity() {
    return Practitioner(
      fullName: fullName,
      medicalRegistrationNo: medicalRegistrationNo,
      clinicName: clinicName,
      practiceType: practiceType,
      email: email,
    );
  }
}
