import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/utils/screen_size.dart';

class FeaturesSection extends StatelessWidget {
  const FeaturesSection({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isMobile = ScreenSize.isMobile(context);
    
    return Container(
      width: double.infinity,
      color: AppColors.surfaceContainerLowest,
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 24 : 64,
        vertical: 120,
      ),
      child: isMobile
          ? Column(
              children: [
                _FeatureList(),
                const SizedBox(height: 64),
                _AnalyticsCard(),
              ],
            )
          : Row(
              children: [
                Expanded(child: _FeatureList()),
                const SizedBox(width: 80),
                Expanded(child: _AnalyticsCard()),
              ],
            ),
    );
  }
}

class _FeatureList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Empowering Traditional Wisdom",
          style: Theme.of(context).textTheme.displaySmall?.copyWith(
                fontFamily: 'Manrope',
                fontWeight: FontWeight.w900,
                color: AppColors.onBackground,
                height: 1.2,
              ),
        ),
        const SizedBox(height: 48),
        _FeatureItem(
          icon: Icons.grid_view,
          title: "Smart Dosha Mapping",
          description: "Highly accurate patient assessment based on physical and psychological traits.",
        ),
        const SizedBox(height: 32),
        _FeatureItem(
          icon: Icons.menu_book,
          title: "500+ Botanical Index",
          description: "Comprehensive database of classical herbs with modern research cross-references.",
        ),
        const SizedBox(height: 32),
        _FeatureItem(
          icon: Icons.timeline,
          title: "Clinical Timeline Management",
          description: "Track patient recovery cycles and adjust treatment protocols dynamically.",
        ),
        const SizedBox(height: 32),
        _FeatureItem(
          icon: Icons.enhanced_encryption,
          title: "HIPAA-Compliant Data",
          description: "Enterprise-grade security ensuring all clinical data remains private and protected.",
        ),
      ],
    );
  }
}

class _FeatureItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const _FeatureItem({
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: AppColors.primary, size: 28),
        const SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontFamily: 'Manrope',
                  fontWeight: FontWeight.w800,
                  fontSize: 18,
                  color: AppColors.onBackground,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                description,
                style: const TextStyle(
                  color: AppColors.onSurfaceVariant,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _AnalyticsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32),
      decoration: BoxDecoration(
        color: AppColors.onBackground, // Dark theme for contrast
        borderRadius: BorderRadius.circular(32),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.2),
            blurRadius: 40,
            offset: const Offset(0, 20),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Consultation Trends",
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Manrope',
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 32),
          // Mock Chart Lines
          ...List.generate(4, (index) => _ChartLine(index)),
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _Stat(label: "Patients", value: "1.2k"),
              _Stat(label: "Success", value: "94%"),
              _Stat(label: "Growth", value: "+12%"),
            ],
          ),
        ],
      ),
    );
  }
}

class _ChartLine extends StatelessWidget {
  final int index;
  const _ChartLine(this.index);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                ["Vata", "Pitta", "Kapha", "General"][index],
                style: const TextStyle(color: Colors.white60, fontSize: 12),
              ),
              Text(
                ["72%", "88%", "64%", "90%"][index],
                style: const TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Stack(
            children: [
              Container(
                height: 4,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              Container(
                height: 4,
                width: (200 + (index * 40)).toDouble().clamp(0, 300), // Randomish width
                decoration: BoxDecoration(
                  color: AppColors.primaryFixed,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _Stat extends StatelessWidget {
  final String label;
  final String value;
  const _Stat({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(value, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w900, fontSize: 20)),
        Text(label, style: const TextStyle(color: Colors.white60, fontSize: 11, fontWeight: FontWeight.bold)),
      ],
    );
  }
}
