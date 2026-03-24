import 'dart:ui';
import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/utils/screen_size.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isMobile = ScreenSize.isMobile(context);
    
    return Container(
      width: double.infinity,
      color: AppColors.surfaceContainerLow,
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 24 : 64,
        vertical: isMobile ? 48 : 120,
      ),
      child: isMobile
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _HeroContent(),
                const SizedBox(height: 64),
                _HeroVisual(),
              ],
            )
          : Row(
              children: [
                Expanded(child: _HeroContent()),
                const SizedBox(width: 64),
                Expanded(child: _HeroVisual()),
              ],
            ),
    );
  }
}

class _HeroContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bool isMobile = ScreenSize.isMobile(context);
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            color: AppColors.primaryContainer.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(99),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.eco, size: 14, color: AppColors.primary),
              const SizedBox(width: 8),
              const Text(
                "ROOTED IN TRADITION, POWERED BY AI",
                style: TextStyle(
                  color: AppColors.primary,
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                  letterSpacing: 1.2,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 24),
        RichText(
          text: TextSpan(
            style: Theme.of(context).textTheme.displayLarge?.copyWith(
                  fontFamily: 'Manrope',
                  fontWeight: FontWeight.w900,
                  color: AppColors.onBackground,
                  height: 1.1,
                  fontSize: isMobile ? 42 : 72,
                  letterSpacing: -1.5,
                ),
            children: [
              const TextSpan(text: "Cultivate Better\n"),
              TextSpan(
                text: "Consultations\n",
                style: TextStyle(
                  color: AppColors.primary,
                  fontStyle: FontStyle.italic,
                ),
              ),
              const TextSpan(text: "with AI"),
            ],
          ),
        ),
        const SizedBox(height: 24),
        Text(
          "Vaidya AI bridges ancient Ayurvedic wisdom with modern clinical precision. Empower your practice with automated Prakriti analysis and intelligent herbal prescriptions.",
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: AppColors.onBackground,
                height: 1.6,
                fontSize: 20,
              ),
        ),
        const SizedBox(height: 48),
        Row(
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 24,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                elevation: 0,
              ),
              child: const Text(
                "Start Free Trial",
                style: TextStyle(
                  fontFamily: 'Manrope',
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(width: 16),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 24,
                ),
                side: BorderSide(
                  color: AppColors.onBackground.withValues(alpha: 0.15),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: const Text(
                "View Demo",
                style: TextStyle(
                  fontFamily: 'Manrope',
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: AppColors.onBackground,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _HeroVisual extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        // Main Dashboard Preview Card
        Container(
          height: 440,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(32),
            boxShadow: [
              BoxShadow(
                color: AppColors.onSurface.withValues(alpha: 0.05),
                blurRadius: 40,
                offset: const Offset(0, 20),
              ),
            ],
            image: const DecorationImage(
              image: NetworkImage(
                'https://images.unsplash.com/photo-1576089172869-4f5f6f315620?q=80&w=2070&auto=format&fit=crop',
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: _GlassOverlay(),
        ),
        // Floating Top Card
        Positioned(
          top: -20,
          right: -20,
          child: _FloatingInfoCard(),
        ),
        // Bottom Floating Analysis Card
        Positioned(
          bottom: -40,
          left: 40,
          child: _RealTimeAnalysisCard(),
        ),
      ],
    );
  }
}

class _GlassOverlay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.white.withValues(alpha: 0.3),
            Colors.black.withValues(alpha: 0.05),
          ],
        ),
      ),
    );
  }
}

class _FloatingInfoCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(24),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          width: 180,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.7),
            borderRadius: BorderRadius.circular(24),
            border: Border.all(color: Colors.white.withValues(alpha: 0.5)),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.05),
                blurRadius: 30,
              )
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: const BoxDecoration(
                  color: AppColors.secondaryContainer,
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.trending_up, color: AppColors.secondary, size: 20),
              ),
              const SizedBox(height: 12),
              const Text(
                "98.4%",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 24,
                  color: AppColors.onBackground,
                  letterSpacing: -1,
                ),
              ),
              const Text(
                "Accuracy Rate",
                style: TextStyle(
                  color: AppColors.onSurfaceVariant,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _RealTimeAnalysisCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: AppColors.onSurface.withValues(alpha: 0.05),
            blurRadius: 40,
            offset: const Offset(0, 20),
          )
        ],
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.2),
              borderRadius: BorderRadius.circular(16),
            ),
            child: const Icon(Icons.settings_input_component, color: Colors.white),
          ),
          const SizedBox(width: 16),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Real-time Analysis",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
              Text(
                "Engine live & reactive",
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
