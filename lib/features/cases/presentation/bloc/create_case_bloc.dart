import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vaidyaai/features/cases/domain/usecases/create_case.dart';
import 'create_case_event.dart';
import 'create_case_state.dart';

class CreateCaseBloc extends Bloc<CreateCaseEvent, CreateCaseState> {
  final CreateCaseUseCase createCaseUseCase;

  CreateCaseBloc({required this.createCaseUseCase}) : super(const CreateCaseInitial()) {
    on<SubmitCase>((event, emit) async {
      emit(const CreateCaseSubmitting());
      try {
        await createCaseUseCase(event.caseEntity);
        emit(const CreateCaseSuccess());
      } catch (e) {
        emit(CreateCaseError(e.toString()));
      }
    });
  }
}
