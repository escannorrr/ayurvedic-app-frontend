import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:vaidyaai/l10n/app_localizations.dart';
import 'package:vaidyaai/core/utils/ui_utils.dart';
import 'package:vaidyaai/core/theme/app_colors.dart';
import '../bloc/auth_bloc.dart';
import '../bloc/auth_event.dart';
import '../bloc/auth_state.dart';
import 'auth_text_field.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeWhen(
          error: (message) => UIUtils.showError(context, message),
          authenticated: (_) {
            UIUtils.showSuccess(context, 'Login Successful');
            context.go('/dashboard');
          },
          orElse: () {},
        );
      },
      builder: (context, state) {
        final l10n = AppLocalizations.of(context)!;

        return Form(
          key: _formKey,
          child: Column(
            children: [
              AuthTextField(
                controller: _emailController,
                label: l10n.professionalEmail,
                hint: l10n.emailHint,
                prefixIcon: Icons.mail_outline,
              ),
              const SizedBox(height: 24),
              AuthTextField(
                controller: _passwordController,
                label: l10n.password,
                hint: l10n.passwordHint,
                prefixIcon: Icons.lock_outline,
                isPassword: true,
                actionLabel: l10n.forgotAccess,
                onActionTap: () {},
              ),
              const SizedBox(height: 32),
              
              OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.app_shortcut),
                label: Text(l10n.requestOtp),
                style: OutlinedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 56),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  side: BorderSide(color: Theme.of(context).colorScheme.outlineVariant.withValues(alpha: 0.5)),
                  foregroundColor: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
              ),
              const SizedBox(height: 16),
              
              // Premium Login Button
              Container(
                width: double.infinity,
                height: 64,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      AppColors.primary,           // Sage
                      AppColors.primaryContainer,  // Darker Sage
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.primary.withValues(alpha: 0.3),
                      blurRadius: 15,
                      offset: const Offset(0, 8),
                    ),
                  ],
                ),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onHover: (hovering) {
                      // Handled by default Material splash, but adds interactivity
                    },
                    borderRadius: BorderRadius.circular(16),
                    onTap: state.maybeWhen(
                      loading: () => null,
                      orElse: () => () {
                        if (_formKey.currentState?.validate() ?? false) {
                          context.read<AuthBloc>().add(AuthEvent.loginRequested(
                                _emailController.text,
                                _passwordController.text,
                              ));
                        }
                      },
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if (state.maybeWhen(loading: () => true, orElse: () => false))
                            const SizedBox(
                              width: 20,
                              height: 20,
                              child: CircularProgressIndicator(
                                color: Colors.white,
                                strokeWidth: 2,
                              ),
                            )
                          else
                            const Icon(Icons.auto_awesome, color: Colors.white, size: 20),
                          const SizedBox(width: 12),
                          Text(
                            state.maybeWhen(
                              loading: () => l10n.consulting,
                              orElse: () => l10n.startConsulting,
                            ),
                            style: const TextStyle(
                              fontFamily: 'Manrope',
                              fontWeight: FontWeight.w800,
                              fontSize: 16,
                              color: Colors.white,
                              letterSpacing: -0.2,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
