import '../../domain/entities/practitioner.dart';
import '../../domain/usecases/register_practitioner.dart';
import '../datasources/practitioner_remote_datasource.dart';
import '../models/practitioner_model.dart';

class PractitionerRepositoryImpl implements PractitionerRepository {
  final PractitionerRemoteDataSource remoteDataSource;

  PractitionerRepositoryImpl(this.remoteDataSource);

  @override
  Future<void> registerPractitioner(Practitioner practitioner, String password) async {
    final model = PractitionerModel.fromEntity(practitioner);
    return remoteDataSource.registerPractitioner(model, password);
  }
}
