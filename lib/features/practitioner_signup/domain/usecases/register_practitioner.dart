import '../entities/practitioner.dart';

abstract class PractitionerRepository {
  Future<void> registerPractitioner(Practitioner practitioner, String password);
}

class RegisterPractitioner {
  final PractitionerRepository repository;

  RegisterPractitioner(this.repository);

  Future<void> call(Practitioner practitioner, String password) async {
    return repository.registerPractitioner(practitioner, password);
  }
}
