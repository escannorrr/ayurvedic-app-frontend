import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/datasources/dashboard_remote_data_source.dart';
import 'dashboard_event.dart';
import 'dashboard_state.dart';

class DashboardFeatureBloc extends Bloc<DashboardEvent, DashboardState> {
  final DashboardRemoteDataSource dataSource;

  DashboardFeatureBloc({required this.dataSource}) : super(const DashboardInitial()) {
    on<LoadStats>((event, emit) async {
      emit(const DashboardLoading());
      try {
        final statsModel = await dataSource.getDashboardStats();
        emit(DashboardLoaded(statsModel.toEntity()));
      } catch (e) {
        emit(DashboardError(e.toString()));
      }
    });
  }
}
