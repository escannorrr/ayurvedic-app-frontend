import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/usecases/settings_usecases.dart';
import '../../domain/entities/settings_entity.dart';
import 'settings_event.dart';
import 'settings_state.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final GetSettings getSettings;
  final SaveSettings saveSettings;
  final Logout logout;

  SettingsBloc({
    required this.getSettings,
    required this.saveSettings,
    required this.logout,
  }) : super(const SettingsState.initial()) {
    on<SettingsEvent>((event, emit) async {
      await event.when(
        loadSettings: () => _onLoadSettings(emit),
        updateProfile: (name, lastName, clinic, email, mobile) => 
            _onUpdateProfile(name, lastName, clinic, email, mobile, emit),
        updateUiLanguage: (languageCode) => _onUpdateUiLanguage(languageCode, emit),
        updateAiLanguage: (language) => _onUpdateAiLanguage(language, emit),
        updateAiTone: (tone) => _onUpdateAiTone(tone, emit),
        saveSettings: () => _onSaveSettings(emit),
        logout: () => _onLogout(emit),
      );
    });
  }

  Future<void> _onLoadSettings(Emitter<SettingsState> emit) async {
    emit(const SettingsState.loading());
    try {
      final settings = await getSettings();
      emit(SettingsState.loaded(
        settings: settings,
        draftSettings: settings,
        isDirty: false,
      ));
    } catch (e) {
      emit(SettingsState.error(e.toString()));
    }
  }

  Future<void> _onUpdateProfile(
    String? name,
    String? lastName,
    String? clinic,
    String? email,
    String? mobile,
    Emitter<SettingsState> emit,
  ) async {
    state.maybeWhen(
      loaded: (settings, draftSettings, isDirty) {
        final newProfile = draftSettings.profile.copyWith(
          name: name ?? draftSettings.profile.name,
          lastName: lastName ?? draftSettings.profile.lastName,
          clinicName: clinic ?? draftSettings.profile.clinicName,
          email: email ?? draftSettings.profile.email,
          mobile: mobile ?? draftSettings.profile.mobile,
        );
        final newDraft = draftSettings.copyWith(profile: newProfile);
        emit(SettingsState.loaded(
          settings: settings,
          draftSettings: newDraft,
          isDirty: newDraft != settings,
        ));
      },
      orElse: () {},
    );
  }

  Future<void> _onUpdateUiLanguage(String languageCode, Emitter<SettingsState> emit) async {
    state.maybeWhen(
      loaded: (settings, draftSettings, isDirty) {
        final newDraft = draftSettings.copyWith(language: languageCode);
        emit(SettingsState.loaded(
          settings: settings,
          draftSettings: newDraft,
          isDirty: newDraft != settings,
        ));
      },
      orElse: () {},
    );
  }

  Future<void> _onUpdateAiLanguage(String language, Emitter<SettingsState> emit) async {
    state.maybeWhen(
      loaded: (settings, draftSettings, isDirty) {
        final newDraft = draftSettings.copyWith(aiLanguage: language);
        emit(SettingsState.loaded(
          settings: settings,
          draftSettings: newDraft,
          isDirty: newDraft != settings,
        ));
      },
      orElse: () {},
    );
  }

  Future<void> _onUpdateAiTone(String tone, Emitter<SettingsState> emit) async {
    state.maybeWhen(
      loaded: (settings, draftSettings, isDirty) {
        final newDraft = draftSettings.copyWith(aiTone: tone);
        emit(SettingsState.loaded(
          settings: settings,
          draftSettings: newDraft,
          isDirty: newDraft != settings,
        ));
      },
      orElse: () {},
    );
  }

  Future<void> _onSaveSettings(Emitter<SettingsState> emit) async {
    final SettingsEntity? draftToSave = state.maybeMap(
      loaded: (s) => s.draftSettings,
      orElse: () => null,
    );
    
    if (draftToSave == null) return;

    emit(const SettingsState.saving());
    try {
      await saveSettings(draftToSave);
      emit(const SettingsState.saved());
      // Re-load settings to ensure UI is in sync
      final updatedSettings = await getSettings();
      emit(SettingsState.loaded(
        settings: updatedSettings,
        draftSettings: updatedSettings,
        isDirty: false,
      ));
    } catch (e) {
      emit(SettingsState.error(e.toString()));
    }
  }

  Future<void> _onLogout(Emitter<SettingsState> emit) async {
    try {
      await logout();
    } catch (e) {
      emit(SettingsState.error(e.toString()));
    }
  }
}
