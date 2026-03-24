import 'dart:ui';
import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/utils/screen_size.dart';
import 'package:vaidyaai/l10n/app_localizations.dart';

class ProfileCard extends StatelessWidget {
  final TextEditingController firstNameController;
  final TextEditingController lastNameController;
  final TextEditingController mobileController;
  final TextEditingController clinicNameController;
  final TextEditingController emailController;
  final Function(String, String) onChanged;

  const ProfileCard({
    super.key,
    required this.firstNameController,
    required this.lastNameController,
    required this.mobileController,
    required this.clinicNameController,
    required this.emailController,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final bool isMobile = ScreenSize.isMobile(context);
    final l10n = AppLocalizations.of(context)!;
    
    return ClipRRect(
      borderRadius: BorderRadius.circular(24),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.2), // Standard glass
            borderRadius: BorderRadius.circular(24),
            border: Border.all(
              color: Colors.white.withValues(alpha: 0.3),
              width: 1.5,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.05),
                blurRadius: 20,
                offset: const Offset(0, 10),
              )
            ],
          ),
          child: Padding(
            padding: EdgeInsets.all(isMobile ? 24 : 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(Icons.person_rounded, size: 20, color: AppColors.primary),
                    const SizedBox(width: 12),
                    Text(
                      l10n.profileInformation,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontFamily: 'Manrope',
                            fontWeight: FontWeight.bold,
                            color: AppColors.onSurface,
                          ),
                    ),
                  ],
                ),
                const SizedBox(height: 32),
                if (!isMobile)
                  Row(
                    children: [
                      Expanded(
                        child: _ProfileField(
                          label: l10n.firstName,
                          controller: firstNameController,
                          hint: l10n.firstNameHint,
                          onChanged: (v) => onChanged('firstName', v),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: _ProfileField(
                          label: l10n.lastName,
                          controller: lastNameController,
                          hint: l10n.lastNameHint,
                          onChanged: (v) => onChanged('lastName', v),
                        ),
                      ),
                    ],
                  )
                else ...[
                  _ProfileField(
                    label: l10n.firstName,
                    controller: firstNameController,
                    hint: l10n.firstNameHint,
                    onChanged: (v) => onChanged('firstName', v),
                  ),
                  const SizedBox(height: 16),
                  _ProfileField(
                    label: l10n.lastName,
                    controller: lastNameController,
                    hint: l10n.lastNameHint,
                    onChanged: (v) => onChanged('lastName', v),
                  ),
                ],
                const SizedBox(height: 16),
                _ProfileField(
                  label: l10n.mobileNumber,
                  controller: mobileController,
                  hint: l10n.mobileHint,
                  onChanged: (v) => onChanged('mobile', v),
                ),
                const SizedBox(height: 16),
                _ProfileField(
                  label: l10n.clinicCenterName,
                  controller: clinicNameController,
                  hint: l10n.clinicHint,
                  onChanged: (v) => onChanged('clinicName', v),
                ),
                const SizedBox(height: 16),
                _ProfileField(
                  label: l10n.emailId,
                  controller: emailController,
                  hint: l10n.emailHint,
                  onChanged: (v) => onChanged('email', v),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _ProfileField extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final String hint;
  final Function(String) onChanged;

  const _ProfileField({
    required this.label,
    required this.controller,
    required this.hint,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontFamily: 'Inter',
            fontWeight: FontWeight.bold,
            fontSize: 12,
            color: AppColors.onSurfaceVariant,
          ),
        ),
        const SizedBox(height: 8),
        TextField(
          controller: controller,
          onChanged: onChanged,
          style: const TextStyle(fontFamily: 'Inter', fontSize: 13),
          decoration: InputDecoration(
            hintText: hint,
            filled: true,
            fillColor: Colors.white.withValues(alpha: 0.8), // Semi-transparent input
            hintStyle: TextStyle(color: AppColors.outline.withValues(alpha: 0.5)),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Colors.white.withValues(alpha: 0.3)),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Colors.white.withValues(alpha: 0.3)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: AppColors.primary, width: 1.5),
            ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          ),
        ),
      ],
    );
  }
}
