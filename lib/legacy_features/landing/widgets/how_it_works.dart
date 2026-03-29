import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/utils/screen_size.dart';

class HowItWorks extends StatelessWidget {
  const HowItWorks({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isMobile = ScreenSize.isMobile(context);
    
    return Container(
      width: double.infinity,
      color: AppColors.surface,
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 24 : 64,
        vertical: 100,
      ),
      child: Column(
        children: [
          Text(
            "How It Works",
            style: Theme.of(context).textTheme.displaySmall?.copyWith(
                  fontFamily: 'Manrope',
                  fontWeight: FontWeight.w900,
                  color: AppColors.onBackground,
                  letterSpacing: -1,
                ),
          ),
          const SizedBox(height: 16),
          const Text(
            "A seamless three-step process to modernize your traditional practice.",
            style: TextStyle(color: AppColors.onSurfaceVariant, fontSize: 16),
          ),
          const SizedBox(height: 64),
          Wrap(
            spacing: 32,
            runSpacing: 32,
            alignment: WrapAlignment.center,
            children: const [
              _StepCard(
                icon: Icons.edit_note,
                title: "01 - Input Patient Vitals",
                description: "Securely record Prakriti analysis, specific symptoms, and disease duration through our intuitive intake interface.",
              ),
              _StepCard(
                icon: Icons.psychology,
                title: "02 - AI Analysis",
                description: "The Vaidya Engine processes complex metabolic patterns using proprietary algorithms rooted in classical Samhitas.",
              ),
              _StepCard(
                icon: Icons.medical_services_outlined,
                title: "03 - Digital Prescription",
                description: "Receive personalized herbal formulations and lifestyle recommendations tailored to the patient's unique Dosha balance.",
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _StepCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const _StepCard({
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    final bool isMobile = ScreenSize.isMobile(context);
    
    return Container(
      width: isMobile ? double.infinity : 320,
      padding: const EdgeInsets.all(40),
      decoration: BoxDecoration(
        color: AppColors.surfaceContainerLowest,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: AppColors.onSurface.withValues(alpha: 0.03),
            blurRadius: 30,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppColors.primary.withValues(alpha: 0.05),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Icon(icon, color: AppColors.primary, size: 32),
          ),
          const SizedBox(height: 32),
          Text(
            title,
            style: const TextStyle(
              fontFamily: 'Manrope',
              fontWeight: FontWeight.w800,
              fontSize: 20,
              color: AppColors.onBackground,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            description,
            style: const TextStyle(
              color: AppColors.onSurfaceVariant,
              height: 1.6,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
