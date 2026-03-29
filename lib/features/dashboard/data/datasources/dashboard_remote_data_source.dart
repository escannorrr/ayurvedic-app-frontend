import 'package:vaidyaai/core/api/api_client.dart';
import 'package:vaidyaai/features/dashboard/data/models/dashboard_stats_model.dart';

abstract class DashboardRemoteDataSource {
  Future<DashboardStatsModel> getDashboardStats();
}

class DashboardRemoteDataSourceImpl implements DashboardRemoteDataSource {
  final ApiClient apiClient;
  DashboardRemoteDataSourceImpl({required this.apiClient});

  @override
  Future<DashboardStatsModel> getDashboardStats() async {
    final response = await apiClient.get('/dashboard/summary');
    return DashboardStatsModel.fromJson(response.data);
  }
}
