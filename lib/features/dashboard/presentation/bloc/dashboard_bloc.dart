import 'package:flutter_bloc/flutter_bloc.dart';
import 'dashboard_event.dart';
import 'dashboard_state.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  DashboardBloc() : super(const DashboardState.initial()) {
    on<DashboardEvent>((event, emit) async {
      await event.map(
        loadDashboardData: (_) async {
          emit(const DashboardState.loading());
          // Simulated delay for skeleton loader implementation
          await Future.delayed(const Duration(seconds: 2));
          emit(const DashboardState.success(
            patientsToday: 12,
            aiConsultations: 45,
            savedCases: 128,
            recentCases: [
              {
                "id": "VA-2041",
                "name": "Rajesh Kumar",
                "initials": "RK",
                "date": "12 Oct 2023",
                "diagnosis": "Vata Imbalance",
                "colorClass": "primary",
              },
              {
                "id": "VA-2038",
                "name": "Priya Sharma",
                "initials": "PS",
                "date": "11 Oct 2023",
                "diagnosis": "Pitta Analysis",
                "colorClass": "secondary",
              },
              {
                "id": "VA-2035",
                "name": "Amit Verma",
                "initials": "AV",
                "date": "10 Oct 2023",
                "diagnosis": "Chronic Kapha",
                "colorClass": "tertiary",
              },
            ]
          ));
        },
      );
    });
  }
}
