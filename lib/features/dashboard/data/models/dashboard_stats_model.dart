import 'package:vaidyaai/features/dashboard/domain/entities/dashboard_stats.dart';

class DashboardStatsModel {
  final int totalCases;
  final int activeCases;
  final int consultationsToday;
  final double growthRate;

  DashboardStatsModel({
    required this.totalCases,
    required this.activeCases,
    required this.consultationsToday,
    required this.growthRate,
  });

  factory DashboardStatsModel.fromJson(Map<String, dynamic> json) {
    return DashboardStatsModel(
      totalCases: json['total_cases'] ?? 0,
      activeCases: json['active_cases'] ?? 0,
      consultationsToday: json['consultations_today'] ?? 0,
      growthRate: (json['growth_rate'] ?? 0).toDouble(),
    );
  }

  DashboardStats toEntity() {
    return DashboardStats(
      totalCases: totalCases,
      activeCases: activeCases,
      consultationsToday: consultationsToday,
      growthRate: growthRate,
    );
  }
}
