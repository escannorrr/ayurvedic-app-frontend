import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vaidyaai/features/cases/domain/usecases/get_cases.dart';
import 'cases_event.dart';
import 'cases_state.dart';

class CasesBloc extends Bloc<CasesEvent, CasesState> {
  final GetCases getCases;
  static const int _limit = 10;

  CasesBloc({required this.getCases}) : super(const CasesState()) {
    on<LoadCases>((event, emit) async {
      emit(state.copyWith(isLoading: true, errorMessage: null));
      try {
        final cases = await getCases(page: event.page, limit: _limit);
        emit(state.copyWith(
          cases: cases,
          currentPage: event.page,
          isLoading: false,
          hasMore: cases.length == _limit,
        ));
      } catch (e) {
        emit(state.copyWith(isLoading: false, errorMessage: e.toString()));
      }
    });

    on<NextPage>((event, emit) async {
      if (!state.isLoading && state.hasMore) {
        add(LoadCases(state.currentPage + 1));
      }
    });

    on<PreviousPage>((event, emit) async {
      if (!state.isLoading && state.currentPage > 1) {
        add(LoadCases(state.currentPage - 1));
      }
    });

    on<SearchCases>((event, emit) async {
      emit(state.copyWith(searchQuery: event.query));
      // Trigger load for the search query if needed
      add(const LoadCases(1));
    });
  }
}
