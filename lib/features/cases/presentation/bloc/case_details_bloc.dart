import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/usecases/get_case_details.dart';
import '../../domain/usecases/update_case_notes.dart';
import 'case_details_event.dart';
import 'case_details_state.dart';

class CaseDetailsBloc extends Bloc<CaseDetailsEvent, CaseDetailsState> {
  final GetCaseDetails getCaseDetails;
  final UpdateCaseNotes updateCaseNotes;
  Timer? _notesDebounce;

  CaseDetailsBloc({
    required this.getCaseDetails,
    required this.updateCaseNotes,
  }) : super(CaseDetailsState.initial()) {
    on<CaseDetailsEvent>((event, emit) async {
      await event.when(
        loadCaseDetails: (id) async {
          emit(state.copyWith(isLoading: true, errorMessage: null));
          try {
            final details = await getCaseDetails(id);
            emit(state.copyWith(isLoading: false, caseDetails: details));
          } catch (e) {
            emit(state.copyWith(isLoading: false, errorMessage: e.toString()));
          }
        },
        updateNotes: (caseId, notes) async {
          if (state.caseDetails == null) return;
          
          final updatedDetails = state.caseDetails!.copyWith(notes: notes);
          emit(state.copyWith(caseDetails: updatedDetails));
          
          _notesDebounce?.cancel();
          _notesDebounce = Timer(const Duration(seconds: 1), () async {
            try {
              emit(state.copyWith(isSaving: true));
              await updateCaseNotes(caseId, notes);
              emit(state.copyWith(isSaving: false));
            } catch (e) {
              emit(state.copyWith(isSaving: false, errorMessage: 'Failed to auto-save: $e'));
            }
          });
        },
      );
    });
  }

  @override
  Future<void> close() {
    _notesDebounce?.cancel();
    return super.close();
  }
}
