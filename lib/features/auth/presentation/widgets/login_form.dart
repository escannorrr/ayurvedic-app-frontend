import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:vaidyaai/l10n/app_localizations.dart';
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
        if (state.errorMessage != null) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.errorMessage!),
              backgroundColor: Theme.of(context).colorScheme.error,
            ),
          );
        }
        if (state.isSuccess) {
          context.go('/dashboard');
        }
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
                onChanged: (val) => context.read<AuthBloc>().add(AuthEvent.emailChanged(val)),
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
                onChanged: (val) => context.read<AuthBloc>().add(AuthEvent.passwordChanged(val)),
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
              
              ElevatedButton.icon(
                onPressed: state.isLoading ? null : () {
                  if (_formKey.currentState?.validate() ?? false) {
                    context.read<AuthBloc>().add(const AuthEvent.loginSubmitted());
                  }
                },
                icon: state.isLoading 
                    ? const SizedBox(width: 24, height: 24, child: CircularProgressIndicator(color: Colors.white, strokeWidth: 2))
                    : const SizedBox.shrink(),
                label: Text(state.isLoading ? l10n.consulting : l10n.startConsulting),
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 56),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
