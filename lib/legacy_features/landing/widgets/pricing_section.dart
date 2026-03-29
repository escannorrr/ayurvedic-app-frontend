import 'dart:ui';
import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/utils/screen_size.dart';

class PricingSection extends StatelessWidget {
  const PricingSection({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isMobile = ScreenSize.isMobile(context);

    return Container(
      width: double.infinity,
      color: AppColors.surface,
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 24 : 64,
        vertical: 120,
      ),
      child: Column(
        children: [
          Text(
            "Transparent Pricing",
            style: Theme.of(context).textTheme.displaySmall?.copyWith(
                  fontFamily: 'Manrope',
                  fontWeight: FontWeight.w900,
                  color: AppColors.onBackground,
                  letterSpacing: -1,
                ),
          ),
          const SizedBox(height: 16),
          const Text(
            "Transparent pricing for practices of all sizes",
            style: TextStyle(color: AppColors.onSurfaceVariant, fontSize: 16),
          ),
          const SizedBox(height: 64),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1000),
            child: isMobile
                ? Column(
                    children: [
                      _PricingCard(
                        title: "Free Apothecary",
                        price: r"$0",
                        period: "/mo",
                        description: "Perfect for students and early-stage practitioners.",
                        features: ["Basic Prakriti analysis", "Up to 5 patient sessions", "Local backup"],
                        isHighlighted: false,
                        buttonText: "Get Started",
                      ),
                      const SizedBox(height: 32),
                      _PricingCard(
                        title: "Practitioner Pro",
                        price: r"$49",
                        period: "/mo",
                        description: "Full suite of AI tools for growing clinical practices.",
                        features: ["Unlimited cases", "AI Pulse analysis", "PDF exports", "Priority support"],
                        isHighlighted: true,
                        buttonText: "Start 14-Day Pro Trial",
                      ),
                    ],
                  )
                : Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: _PricingCard(
                          title: "Free Apothecary",
                          price: r"$0",
                          period: "/mo",
                          description: "Perfect for students and early-stage practitioners.",
                          features: ["Basic Prakriti analysis", "Up to 5 patient sessions", "Local backup"],
                          isHighlighted: false,
                          buttonText: "Get Started",
                        ),
                      ),
                      const SizedBox(width: 32),
                      Expanded(
                        child: _PricingCard(
                          title: "Practitioner Pro",
                          price: r"$49",
                          period: "/mo",
                          description: "Full suite of AI tools for growing clinical practices.",
                          features: ["Unlimited cases", "AI Pulse analysis", "PDF exports", "Priority support"],
                          isHighlighted: true,
                          buttonText: "Start 14-Day Pro Trial",
                        ),
                      ),
                    ],
                  ),
          ),
        ],
      ),
    );
  }
}

class _PricingCard extends StatelessWidget {
  final String title;
  final String price;
  final String? period;
  final String description;
  final List<String> features;
  final bool isHighlighted;
  final String buttonText;

  const _PricingCard({
    required this.title,
    required this.price,
    this.period,
    required this.description,
    required this.features,
    required this.isHighlighted,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    final bool isMobile = ScreenSize.isMobile(context);

    return Container(
      width: isMobile ? double.infinity : null,
      padding: const EdgeInsets.all(48),
      decoration: BoxDecoration(
        color: isHighlighted ? AppColors.primary : AppColors.surfaceContainerLow,
        borderRadius: BorderRadius.circular(40),
        boxShadow: [
          BoxShadow(
            color: AppColors.onSurface.withValues(alpha: 0.08),
            blurRadius: 40,
            offset: const Offset(0, 20),
          )
        ],
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          if (isHighlighted)
            Positioned(
              top: -12,
              right: -12,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(32),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.2),
                      borderRadius: BorderRadius.circular(32),
                      border: Border.all(color: Colors.white.withValues(alpha: 0.2)),
                    ),
                    child: const Text(
                      "MOST POPULAR",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontSize: 10,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontFamily: 'Manrope',
                  fontWeight: FontWeight.w800,
                  fontSize: 22,
                  color: isHighlighted ? Colors.white : AppColors.onBackground,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                description,
                style: TextStyle(
                  color: isHighlighted ? Colors.white70 : AppColors.onSurfaceVariant,
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 48),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    price,
                    style: TextStyle(
                      fontFamily: 'Manrope',
                      fontWeight: FontWeight.w900,
                      fontSize: 64,
                      color: isHighlighted ? Colors.white : AppColors.onBackground,
                      letterSpacing: -2,
                    ),
                  ),
                  if (period != null)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16, left: 8),
                      child: Text(
                        period!,
                        style: TextStyle(
                          color: isHighlighted ? Colors.white60 : AppColors.onSurfaceVariant,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                ],
              ),
              const SizedBox(height: 48),
              ...features.map((f) => _FeatureRow(f, isHighlighted)),
              const SizedBox(height: 48),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: isHighlighted ? Colors.white : AppColors.primary,
                  foregroundColor: isHighlighted ? AppColors.primary : Colors.white,
                  minimumSize: const Size(double.infinity, 64),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                  elevation: isHighlighted ? 4 : 0,
                  shadowColor: isHighlighted ? Colors.black.withValues(alpha: 0.1) : null,
                ),
                child: Text(
                  buttonText,
                  style: const TextStyle(
                    fontFamily: 'Manrope',
                    fontWeight: FontWeight.w900,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _FeatureRow extends StatelessWidget {
  final String label;
  final bool dark;
  const _FeatureRow(this.label, this.dark);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          Icon(Icons.check_circle, color: dark ? AppColors.primaryFixed : AppColors.primary, size: 20),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              label,
              style: TextStyle(
                color: dark ? Colors.white70 : AppColors.onBackground,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
