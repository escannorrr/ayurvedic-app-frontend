import 'package:flutter_bloc/flutter_bloc.dart';
import 'saved_cases_event.dart';
import 'saved_cases_state.dart';
import '../../domain/entities/case_entity.dart';
import '../../domain/usecases/get_cases.dart';
import '../../domain/usecases/search_cases.dart';
import '../../domain/usecases/filter_cases.dart';
import 'dart:async';

class SavedCasesBloc extends Bloc<SavedCasesEvent, SavedCasesState> {
  final GetCases getCases;
  final SearchCases searchCases;
  final FilterCases filterCases;
  
  Timer? _debounceTimer;

  SavedCasesBloc({
    required this.getCases,
    required this.searchCases,
    required this.filterCases,
  }) : super(SavedCasesState.initial()) {
    on<SavedCasesEvent>((event, emit) async {
      await event.when(
        fetchCases: () => _onFetchCases(emit),
        searchCases: (query) => _onSearchCases(query, emit),
        filterCases: (start, end) => _onFilterCases(start, end, emit),
        refreshCases: () => _onFetchCases(emit),
      );
    });
  }

  Future<void> _onFetchCases(Emitter<SavedCasesState> emit) async {
    emit(state.copyWith(isLoading: true, errorMessage: null));
    try {
      List<CaseEntity> cases;
      if (state.searchQuery.isEmpty) {
        cases = await getCases();
      } else {
        cases = await searchCases(state.searchQuery);
      }
      emit(state.copyWith(isLoading: false, cases: cases));
    } catch (e) {
      emit(state.copyWith(isLoading: false, errorMessage: 'Failed to load cases: $e'));
    }
  }

  Future<void> _onSearchCases(String query, Emitter<SavedCasesState> emit) async {
    emit(state.copyWith(searchQuery: query));
    
    _debounceTimer?.cancel();
    _debounceTimer = Timer(const Duration(milliseconds: 500), () {
      add(const SavedCasesEvent.fetchCases());
    });
  }

  Future<void> _onFilterCases(DateTime? startDate, DateTime? endDate, Emitter<SavedCasesState> emit) async {
    emit(state.copyWith(isLoading: true, errorMessage: null));
    try {
      final cases = await filterCases(startDate, endDate);
      emit(state.copyWith(isLoading: false, cases: cases));
    } catch (e) {
      emit(state.copyWith(isLoading: false, errorMessage: 'Failed to filter cases: $e'));
    }
  }

  @override
  Future<void> close() {
    _debounceTimer?.cancel();
    return super.close();
  }
}
