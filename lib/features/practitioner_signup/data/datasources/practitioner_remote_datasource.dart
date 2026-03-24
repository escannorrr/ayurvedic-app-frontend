import '../models/practitioner_model.dart';
import '../../domain/entities/practitioner.dart';

abstract class PractitionerRemoteDataSource {
  Future<void> registerPractitioner(PractitionerModel practitionerModel, String password);
}

class PractitionerRemoteDataSourceImpl implements PractitionerRemoteDataSource {
  @override
  Future<void> registerPractitioner(PractitionerModel practitionerModel, String password) async {
    // Mocking API call
    await Future.delayed(const Duration(seconds: 2));
    // Simulating success
    return;
  }
}
