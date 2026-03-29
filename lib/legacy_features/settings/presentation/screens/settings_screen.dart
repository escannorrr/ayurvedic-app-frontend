import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/localization/locale_cubit.dart';
import '../bloc/settings_bloc.dart';
import '../bloc/settings_event.dart';
import '../bloc/settings_state.dart';
import '../../domain/entities/settings_entity.dart';
import '../widgets/settings_header.dart';
import '../widgets/profile_card.dart';
import '../widgets/language_preferences_card.dart';
import '../widgets/security_plan_card.dart';
import '../widgets/settings_footer_actions.dart';
import '../widgets/settings_skeleton.dart';
import '../../../../core/utils/screen_size.dart';

import 'package:vaidyaai/l10n/app_localizations.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final _doctorNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _mobileController = TextEditingController();
  final _clinicNameController = TextEditingController();
  final _emailController = TextEditingController();

  @override
  void initState() {
    super.initState();
    context.read<SettingsBloc>().add(const SettingsEvent.loadSettings());
  }

  @override
  void dispose() {
    _doctorNameController.dispose();
    _lastNameController.dispose();
    _mobileController.dispose();
    _clinicNameController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  void _syncControllers(SettingsEntity draft) {
    if (_doctorNameController.text != draft.profile.name) {
      _doctorNameController.text = draft.profile.name;
    }
    if (_lastNameController.text != draft.profile.lastName) {
      _lastNameController.text = draft.profile.lastName;
    }
    if (_mobileController.text != draft.profile.mobile) {
      _mobileController.text = draft.profile.mobile;
    }
    if (_clinicNameController.text != draft.profile.clinicName) {
      _clinicNameController.text = draft.profile.clinicName;
    }
    if (_emailController.text != draft.profile.email) {
      _emailController.text = draft.profile.email;
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    
    return BlocConsumer<SettingsBloc, SettingsState>(
      listener: (context, state) {
        state.whenOrNull(
          loaded: (settings, draft, isDirty) => _syncControllers(draft),
          saved: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(l10n.settingsSaved)),
            );
          },
          error: (message) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(l10n.errorOccurred(message))),
            );
          },
        );
      },
      builder: (context, state) {
        return state.maybeWhen(
          initial: () => const SettingsSkeleton(),
          loading: () => const SettingsSkeleton(),
          loaded: (settings, draft, isDirty) => _buildContent(context, draft, isDirty, state),
          saving: () => state.maybeWhen(
            loaded: (settings, draft, isDirty) => _buildContent(context, draft, isDirty, state),
            orElse: () => const SizedBox.shrink(),
          ),
          error: (msg) => Scaffold(
            backgroundColor: const Color(0xFFF1F4EE),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   const Icon(Icons.error_outline, color: AppColors.error, size: 48),
                   const SizedBox(height: 16),
                   Text(l10n.errorOccurred(msg)),
                   const SizedBox(height: 16),
                   ElevatedButton(
                     onPressed: () => context.read<SettingsBloc>().add(const SettingsEvent.loadSettings()),
                     child: Text(l10n.errorRetry),
                   )
                ],
              ),
            ),
          ),
          orElse: () => const SettingsSkeleton(), // Better fallback
        );
      },
    );
  }

  Widget _buildContent(BuildContext context, SettingsEntity draft, bool isDirty, SettingsState state) {
    final bool isMobile = ScreenSize.isMobile(context);
    final l10n = AppLocalizations.of(context)!;

    return Container(
      color: AppColors.surface, // Clean background
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: isMobile ? 20 : 48, 
          vertical: isMobile ? 32 : 64
        ),
        child: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 800),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SettingsHeader(),
                SizedBox(height: isMobile ? 32 : 48),
                ProfileCard(
                  firstNameController: _doctorNameController, 
                  lastNameController: _lastNameController,
                  mobileController: _mobileController,
                  clinicNameController: _clinicNameController,
                  emailController: _emailController,
                  onChanged: (key, val) {
                    context.read<SettingsBloc>().add(SettingsEvent.updateProfile(
                      name: _doctorNameController.text,
                      lastName: _lastNameController.text,
                      clinic: _clinicNameController.text,
                      email: _emailController.text,
                      mobile: _mobileController.text,
                    ));
                  },
                ),
                const SizedBox(height: 24),
                LanguagePreferencesCard(
                  uiLanguage: draft.language,
                  aiLanguage: draft.aiLanguage,
                  aiTone: draft.aiTone,
                  onChanged: (key, val) {
                    if (key == 'uiLanguage') {
                      context.read<SettingsBloc>().add(SettingsEvent.updateUiLanguage(val));
                      context.read<LocaleCubit>().changeLanguage(val);
                    } else if (key == 'aiLanguage') {
                      context.read<SettingsBloc>().add(SettingsEvent.updateAiLanguage(val));
                    } else if (key == 'aiTone') {
                      context.read<SettingsBloc>().add(SettingsEvent.updateAiTone(val));
                    }
                  },
                ),
                const SizedBox(height: 24),
                const SecurityPlanCard(),
                const SizedBox(height: 32),
                SettingsFooterActions(
                  isDirty: isDirty,
                  onSave: () {
                    context.read<SettingsBloc>().add(const SettingsEvent.saveSettings());
                  },
                  onLogout: () {
                    context.read<SettingsBloc>().add(const SettingsEvent.logout());
                  },
                ),
                SizedBox(height: isMobile ? 32 : 48),
                Center(
                  child: Text(
                    l10n.vaidyaAiVersion,
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 11,
                      color: AppColors.onSurfaceVariant.withValues(alpha: 0.5),
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
                const SizedBox(height: 80),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
