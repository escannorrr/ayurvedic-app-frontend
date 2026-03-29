import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Core
import '../localization/locale_cubit.dart';
import '../services/storage_service.dart';
import '../services/secure_storage_service.dart';
import '../api/api_client.dart';
import '../constants/app_constants.dart';

// Auth
import '../../features/auth/presentation/bloc/auth_bloc.dart';
import '../../features/auth/domain/usecases/login_usecase.dart';
import '../../features/auth/domain/usecases/login_usecase.dart';
import '../../features/auth/domain/repositories/auth_repository.dart';
import '../../features/auth/data/repositories/auth_repository_impl.dart';
import '../../features/auth/data/datasources/auth_remote_data_source.dart';

// Cases
import '../../features/cases/presentation/bloc/cases_bloc.dart';
import '../../features/cases/presentation/bloc/create_case_bloc.dart';
import '../../features/cases/presentation/bloc/case_details_bloc.dart';
import '../../features/cases/domain/usecases/get_cases.dart';
import '../../features/cases/domain/usecases/create_case.dart';
import '../../features/cases/domain/usecases/get_case_details.dart';
import '../../features/cases/domain/usecases/update_case_notes.dart';
import '../../features/cases/domain/repositories/cases_repository.dart';
import '../../features/cases/data/repositories/cases_repository_impl.dart';
import '../../features/cases/data/datasources/cases_remote_data_source.dart';
import '../../features/cases/data/datasources/case_details_remote_data_source.dart';

// Dashboard
import '../../features/dashboard/presentation/bloc/dashboard_bloc.dart';
import '../../features/dashboard/presentation/bloc/dashboard_event.dart';
import '../../features/dashboard/presentation/bloc/dashboard_state.dart';
import '../../features/dashboard/data/datasources/dashboard_remote_data_source.dart';

// Consultation
import '../../features/consultation/presentation/bloc/consultation_bloc.dart';

// Settings
import '../../features/settings/data/datasources/settings_local_data_source.dart';
import '../../features/settings/data/repositories/settings_repository_impl.dart';
import '../../features/settings/domain/repositories/settings_repository.dart';
import '../../features/settings/domain/usecases/settings_usecases.dart';
import '../../features/settings/presentation/bloc/settings_bloc.dart';

// Practitioner Signup
import '../../features/practitioner_signup/data/datasources/practitioner_remote_datasource.dart';
import '../../features/practitioner_signup/data/repositories/practitioner_repository_impl.dart';
import '../../features/practitioner_signup/domain/usecases/register_practitioner.dart';
import '../../features/practitioner_signup/presentation/bloc/practitioner_signup_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // External
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
  sl.registerLazySingleton<StorageService>(() => SecureStorageServiceImpl());
  sl.registerLazySingleton(() => ApiClient(
    baseUrl: AppConstants.apiBaseUrl,
    storageService: sl(),
  ));
  sl.registerLazySingleton(() => Dio());

  // Core
  sl.registerLazySingleton(() => LocaleCubit(sharedPreferences: sl()));

  // Features - Auth
  sl.registerLazySingleton(() => AuthBloc(
    loginUseCase: sl(),
    authRepository: sl(),
    apiClient: sl(),
  ));
  sl.registerLazySingleton(() => LoginUseCase(sl()));
  sl.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(
      remoteDataSource: sl(),
      storageService: sl(),
    ),
  );
  sl.registerLazySingleton<AuthRemoteDataSource>(
    () => AuthRemoteDataSourceImpl(apiClient: sl()),
  );

  // Features - Cases
  sl.registerFactory(() => CasesBloc(
    getCases: sl(),
  ));
  sl.registerFactory(() => CreateCaseBloc(
    createCaseUseCase: sl(),
  ));
  sl.registerFactory(() => CaseDetailsBloc(
    getCaseDetails: sl(),
    updateCaseNotes: sl(),
  ));

  sl.registerLazySingleton(() => GetCases(sl()));
  sl.registerLazySingleton(() => CreateCaseUseCase(sl()));
  sl.registerLazySingleton(() => GetCaseDetails(sl()));
  sl.registerLazySingleton(() => UpdateCaseNotes(sl()));

  sl.registerLazySingleton<CasesRepository>(
    () => CasesRepositoryImpl(
      remoteDataSource: sl(),
    ),
  );
  sl.registerLazySingleton<CasesRemoteDataSource>(
    () => CasesRemoteDataSourceImpl(apiClient: sl()),
  );

  // Features - Dashboard
  sl.registerFactory(() => DashboardFeatureBloc(dataSource: sl()));
  sl.registerLazySingleton<DashboardRemoteDataSource>(
    () => DashboardRemoteDataSourceImpl(apiClient: sl()),
  );

  // Features - Consultation
  sl.registerFactory(() => ConsultationBloc());

  // Features - Settings
  sl.registerFactory(() => SettingsBloc(
    getSettings: sl(),
    saveSettings: sl(),
    logout: sl(),
  ));
  sl.registerLazySingleton(() => GetSettings(sl()));
  sl.registerLazySingleton(() => SaveSettings(sl()));
  sl.registerLazySingleton(() => UpdateLanguage(sl()));
  sl.registerLazySingleton(() => UpdateProfile(sl()));
  sl.registerLazySingleton(() => Logout(sl()));

  sl.registerLazySingleton<SettingsRepository>(
    () => SettingsRepositoryImpl(
      localDataSource: sl(),
      storageService: sl(),
    ),
  );
  sl.registerLazySingleton<SettingsLocalDataSource>(
    () => SettingsLocalDataSourceImpl(sharedPreferences: sl()),
  );

  // Features - Practitioner Signup
  sl.registerFactory(() => PractitionerSignupBloc(registerPractitioner: sl()));
  sl.registerLazySingleton(() => RegisterPractitioner(sl()));
  sl.registerLazySingleton<PractitionerRepository>(
    () => PractitionerRepositoryImpl(sl()),
  );
  sl.registerLazySingleton<PractitionerRemoteDataSource>(
    () => PractitionerRemoteDataSourceImpl(),
  );
}
