import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../bloc/practitioner_signup_bloc.dart';
import '../bloc/practitioner_signup_event.dart';
import '../bloc/practitioner_signup_state.dart';
import '../widgets/signup_text_field.dart';
import 'package:vaidyaai/l10n/app_localizations.dart';

class PractitionerSignupPage extends StatelessWidget {
  const PractitionerSignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;
    
    return Scaffold(
      backgroundColor: const Color(0xFFFBFBE2), // Light Ivory Background
      body: BlocListener<PractitionerSignupBloc, PractitionerSignupState>(
        listener: (context, state) {
          if (state.isSuccess) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(l10n.settingsSaved)),
            );
            context.go('/login');
          } else if (state.errorMessage != null) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(l10n.errorOccurred(state.errorMessage!))),
            );
          }
        },
        child: Stack(
          children: [
            // Bottom Left Leaf Watermark
            Positioned(
              bottom: 40,
              left: -50,
              child: Opacity(
                opacity: 0.05,
                child: Image.asset(
                  'assets/leaf_illustration.png',
                  width: 500,
                  height: 500,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            
            SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // App Logo & Header
                    const SizedBox(height: 20),
                    Container(
                      width: 48,
                      height: 48,
                      decoration: const BoxDecoration(
                        color: Color(0xFFD9E2D2), // Faint green
                        shape: BoxShape.circle,
                      ),
                      child: const Center(
                        child: Icon(Icons.bolt, color: Color(0xFF37602C), size: 24),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      l10n.joinVaidyaAi,
                      style: theme.textTheme.headlineLarge?.copyWith(
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w900,
                        color: const Color(0xFF1A1A1A),
                        letterSpacing: -1.0,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      l10n.joinDigitalApothecary,
                      style: theme.textTheme.labelSmall?.copyWith(
                        color: theme.colorScheme.onSurface.withValues(alpha: 0.6),
                        letterSpacing: 2.0,
                        fontWeight: FontWeight.bold,
                        fontSize: 11,
                      ),
                    ),
                    const SizedBox(height: 48),

                    // Main Card
                    ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 800),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.03),
                              blurRadius: 40,
                              offset: const Offset(0, 20),
                            ),
                          ],
                        ),
                        clipBehavior: Clip.antiAlias,
                        child: Stack(
                          children: [
                            // Tree decorative icon
                            Positioned(
                              top: 32,
                              right: 32,
                              child: Opacity(
                                opacity: 0.1,
                                child: Icon(Icons.park, size: 80, color: theme.colorScheme.primary),
                              ),
                            ),
                            
                            Padding(
                              padding: const EdgeInsets.all(40.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    l10n.createApothecaryAccount,
                                    style: theme.textTheme.headlineSmall?.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    l10n.practitionerAccountDesc,
                                    style: theme.textTheme.bodyMedium?.copyWith(
                                      color: theme.colorScheme.onSurface.withValues(alpha: 0.5),
                                    ),
                                  ),
                                  const SizedBox(height: 32),

                                  BlocBuilder<PractitionerSignupBloc, PractitionerSignupState>(
                                    builder: (context, state) {
                                      return Column(
                                        children: [
                                          // Row 1: Full Name | Medical Reg No
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                child: SignupTextField(
                                                  label: l10n.fullName,
                                                  hint: "Dr. Julian Veda",
                                                  prefixIcon: Icons.person_outline,
                                                  onChanged: (v) => context.read<PractitionerSignupBloc>().add(FullNameChanged(v)),
                                                  errorText: state.validationErrors['fullName'],
                                                ),
                                              ),
                                              const SizedBox(width: 20),
                                              Expanded(
                                                child: SignupTextField(
                                                  label: l10n.medRegistrationNo,
                                                  hint: l10n.medRegistrationHint,
                                                  prefixIcon: Icons.verified_user_outlined,
                                                  onChanged: (v) => context.read<PractitionerSignupBloc>().add(MedicalRegistrationNoChanged(v)),
                                                  errorText: state.validationErrors['medicalRegistrationNo'],
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(height: 24),
                                          
                                          // Row 2: Clinic Name
                                          SignupTextField(
                                            label: l10n.clinicName,
                                            hint: "The Lotus Wellness Center",
                                            prefixIcon: Icons.business_outlined,
                                            onChanged: (v) => context.read<PractitionerSignupBloc>().add(ClinicNameChanged(v)),
                                          ),
                                          const SizedBox(height: 24),

                                          // Row 3: Practice Type | Email Address
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                child: _PracticeTypeDropdown(
                                                  onChanged: (v) => context.read<PractitionerSignupBloc>().add(PracticeTypeChanged(v!)),
                                                ),
                                              ),
                                              const SizedBox(width: 20),
                                              Expanded(
                                                child: SignupTextField(
                                                  label: l10n.emailAddress,
                                                  hint: "veda@clinic.ai",
                                                  prefixIcon: Icons.email_outlined,
                                                  keyboardType: TextInputType.emailAddress,
                                                  onChanged: (v) => context.read<PractitionerSignupBloc>().add(EmailChanged(v)),
                                                  errorText: state.validationErrors['email'],
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(height: 24),

                                          // Row 4: Password
                                          SignupTextField(
                                            label: l10n.password,
                                            hint: "••••••••••••",
                                            prefixIcon: Icons.lock_outline,
                                            obscureText: true,
                                            onChanged: (v) => context.read<PractitionerSignupBloc>().add(PasswordChanged(v)),
                                            errorText: state.validationErrors['password'],
                                          ),
                                          const SizedBox(height: 32),

                                          // Privacy Checkbox
                                          Row(
                                            children: [
                                              SizedBox(
                                                width: 20,
                                                height: 20,
                                                child: Checkbox(
                                                  value: true, 
                                                  onChanged: (v){},
                                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                                                  side: BorderSide(color: theme.colorScheme.onSurface.withValues(alpha: 0.2)),
                                                ),
                                              ),
                                              const SizedBox(width: 12),
                                              Expanded(
                                                child: RichText(
                                                  text: TextSpan(
                                                    text: l10n.agreeToTermsPrefix,
                                                    style: theme.textTheme.bodySmall?.copyWith(fontSize: 11, color: theme.colorScheme.onSurface.withValues(alpha: 0.6)),
                                                    children: [
                                                      TextSpan(text: l10n.clinicalStandards, style: const TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF37602C))),
                                                      TextSpan(text: l10n.and),
                                                      TextSpan(text: l10n.privacyPolicy, style: const TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF37602C))),
                                                      TextSpan(text: l10n.agreeToTermsSuffix),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(height: 48),

                                          // Submit Button
                                          ElevatedButton(
                                            onPressed: state.isLoading 
                                                ? null 
                                                : () => context.read<PractitionerSignupBloc>().add(const Submit()),
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: const Color(0xFF37602C),
                                              foregroundColor: Colors.white,
                                              minimumSize: const Size(double.infinity, 64),
                                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                                              elevation: 0,
                                            ),
                                            child: state.isLoading
                                                ? const CircularProgressIndicator(color: Colors.white)
                                                : Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: [
                                                      Text(
                                                        l10n.createApothecaryAccount,
                                                        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                                                      ),
                                                      const SizedBox(width: 8),
                                                      const Icon(Icons.arrow_forward, size: 20),
                                                    ],
                                                  ),
                                          ),
                                          const SizedBox(height: 40),

                                          // Login link
                                          Center(
                                            child: TextButton(
                                              onPressed: () => context.go('/login'),
                                              child: RichText(
                                                text: TextSpan(
                                                  text: l10n.alreadyHaveAccount,
                                                  style: theme.textTheme.bodyMedium?.copyWith(
                                                    color: theme.colorScheme.onSurface.withValues(alpha: 0.6),
                                                  ),
                                                  children: [
                                                    TextSpan(
                                                      text: l10n.login,
                                                      style: const TextStyle(
                                                        fontWeight: FontWeight.bold,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    // Bottom Badges
                    const SizedBox(height: 64),
                    ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 800),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          _BadgeItem(icon: Icons.shield_outlined, label: l10n.endToEndEncryption),
                          _BadgeItem(icon: Icons.verified_outlined, label: l10n.hipaaCompliant),
                          _BadgeItem(icon: Icons.storage_outlined, label: l10n.localizedData),
                          _BadgeItem(icon: Icons.eco_outlined, label: l10n.ethicalAi),
                        ],
                      ),
                    ),
                    const SizedBox(height: 80),

                    // Page Footer (Moved inside scroll view)
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 32),
                      color: const Color(0xFFF7F7E6).withValues(alpha: 0.5),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            children: [
                              const Text(
                                "VedaAI",
                                style: TextStyle(fontWeight: FontWeight.w900, color: Color(0xFF37602C), fontSize: 16),
                              ),
                              const SizedBox(width: 48),
                              Expanded(
                                child: Text(
                                  "© 2024 VEDAAI DIGITAL APOTHECARY. ALL RIGHTS RESERVED.",
                                  style: TextStyle(fontSize: 10, color: Colors.black.withValues(alpha: 0.5), fontWeight: FontWeight.bold, letterSpacing: 0.5),
                                ),
                              ),
                              _FooterLink(l10n.privacyPolicy.toUpperCase()),
                              const SizedBox(width: 24),
                              _FooterLink(l10n.and.trim().toUpperCase() + " TERMS"),
                              const SizedBox(width: 24),
                              _FooterLink(l10n.clinicalStandards.toUpperCase()),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 48),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class _PracticeTypeDropdown extends StatefulWidget {
  final Function(String?) onChanged;
  const _PracticeTypeDropdown({required this.onChanged});

  @override
  State<_PracticeTypeDropdown> createState() => _PracticeTypeDropdownState();
}

class _PracticeTypeDropdownState extends State<_PracticeTypeDropdown> {
  String? _selected = "General Practitioner";
  final List<String> _options = [
    "General Practitioner",
    "Specialist",
    "Ayurvedic Doctor",
    "Homeopathic Doctor",
    "Clinic Administrator"
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;
    
    final List<String> options = [
      l10n.generalPractitioner,
      l10n.specialist,
      l10n.ayurvedicDoctor,
      l10n.homeopathicDoctor,
      l10n.clinicAdministrator
    ];

    if (_selected == null || !options.contains(_selected)) {
      _selected = options.first;
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          l10n.practiceType,
          style: theme.textTheme.labelSmall?.copyWith(
            fontWeight: FontWeight.bold,
            letterSpacing: 0.5,
            color: theme.colorScheme.onSurface.withValues(alpha: 0.8),
            fontSize: 10,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          height: 56,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: const Color(0xFFF7F7E6),
            borderRadius: BorderRadius.circular(8),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: _selected,
              isExpanded: true,
              icon: Icon(Icons.keyboard_arrow_down, color: theme.colorScheme.onSurface.withValues(alpha: 0.4)),
              items: options.map((s) => DropdownMenuItem(
                value: s, 
                child: Row(
                  children: [
                    Icon(Icons.add_box_outlined, size: 20, color: theme.colorScheme.onSurface.withValues(alpha: 0.4)),
                    const SizedBox(width: 12),
                    Text(s, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
                  ],
                ))
              ).toList(),
              onChanged: (val) {
                setState(() => _selected = val);
                widget.onChanged(val);
              },
            ),
          ),
        ),
      ],
    );
  }
}

class _BadgeItem extends StatelessWidget {
  final IconData icon;
  final String label;
  const _BadgeItem({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.black.withValues(alpha: 0.4), size: 24),
        const SizedBox(height: 12),
        Text(
          label,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 9, fontWeight: FontWeight.bold, letterSpacing: 1.0, color: Color(0xFF7A7A7A)),
        ),
      ],
    );
  }
}

class _FooterLink extends StatelessWidget {
  final String text;
  _FooterLink(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.black.withValues(alpha: 0.5), letterSpacing: 0.5),
    );
  }
}
