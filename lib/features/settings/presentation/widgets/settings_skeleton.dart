import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';

class SettingsSkeleton extends StatefulWidget {
  const SettingsSkeleton({super.key});

  @override
  State<SettingsSkeleton> createState() => _SettingsSkeletonState();
}

class _SettingsSkeletonState extends State<SettingsSkeleton> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.surface,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 64),
        child: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 800),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _ShimmerBlock(width: 250, height: 40),
                const SizedBox(height: 12),
                _ShimmerBlock(width: 450, height: 16),
                const SizedBox(height: 48),
                _ShimmerCard(height: 320),
                const SizedBox(height: 24),
                _ShimmerCard(height: 280),
                const SizedBox(height: 24),
                _ShimmerCard(height: 220),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _ShimmerBlock({required double width, required double height}) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.black.withValues(alpha: 0.05),
                Colors.black.withValues(alpha: 0.12),
                Colors.black.withValues(alpha: 0.05),
              ],
              stops: [
                (_controller.value - 0.3).clamp(0.0, 1.0),
                _controller.value.clamp(0.0, 1.0),
                (_controller.value + 0.3).clamp(0.0, 1.0),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _ShimmerCard({required double height}) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(32),
      constraints: BoxConstraints(minHeight: height),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.3),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.white.withValues(alpha: 0.3)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              _ShimmerBlock(width: 24, height: 24),
              const SizedBox(width: 12),
              _ShimmerBlock(width: 180, height: 20),
            ],
          ),
          const SizedBox(height: 40),
          _ShimmerBlock(width: double.infinity, height: 48),
          const SizedBox(height: 20),
          _ShimmerBlock(width: double.infinity, height: 48),
          const SizedBox(height: 20),
          if (height > 250) _ShimmerBlock(width: double.infinity, height: 48),
        ],
      ),
    );
  }
}
