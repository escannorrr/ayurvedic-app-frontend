import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';

class StatCard extends StatelessWidget {
  final String title;
  final String value;
  final IconData bgIcon;
  final IconData footerIcon;
  final String footerText;
  final Color highlightColor;
  final Color backgroundColor;

  const StatCard({
    super.key,
    required this.title,
    required this.value,
    required this.bgIcon,
    required this.footerIcon,
    required this.footerText,
    required this.highlightColor,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          // Background Icon
          Positioned(
            right: -16,
            bottom: -16,
            child: Icon(
              bgIcon,
              size: 120,
              color: AppColors.onSurface.withValues(alpha: 0.05),
            ),
          ),
          
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      color: AppColors.onSurfaceVariant,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    value,
                    style: Theme.of(context).textTheme.displayMedium?.copyWith(
                      color: highlightColor,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(footerIcon, size: 16, color: highlightColor),
                  const SizedBox(width: 4),
                  Text(
                    footerText,
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                      color: highlightColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

class StatCardSkeleton extends StatelessWidget {
  final Color backgroundColor;
  
  const StatCardSkeleton({super.key, required this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(width: 100, height: 16, color: Colors.black12),
              const SizedBox(height: 16),
              Container(width: 60, height: 40, color: Colors.black12),
            ],
          ),
          Container(width: 80, height: 16, color: Colors.black12),
        ],
      ),
    );
  }
}
