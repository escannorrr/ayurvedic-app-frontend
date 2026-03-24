import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';

class RecentCaseTile extends StatelessWidget {
  final String id;
  final String name;
  final String initials;
  final String date;
  final String diagnosis;
  final String colorClass; 

  const RecentCaseTile({
    super.key,
    required this.id,
    required this.name,
    required this.initials,
    required this.date,
    required this.diagnosis,
    required this.colorClass,
  });

  Color _getBgColor() {
    switch (colorClass) {
      case 'primary': return AppColors.primary.withValues(alpha: 0.1);
      case 'secondary': return AppColors.secondary.withValues(alpha: 0.1);
      case 'tertiary': return AppColors.tertiary.withValues(alpha: 0.1);
      default: return AppColors.surfaceVariant;
    }
  }

  Color _getTextColor() {
    switch (colorClass) {
      case 'primary': return AppColors.primary;
      case 'secondary': return AppColors.secondary;
      case 'tertiary': return AppColors.tertiary;
      default: return AppColors.onSurfaceVariant;
    }
  }

  Color _getBadgeBgColor() {
    switch (colorClass) {
      case 'primary': return AppColors.secondaryFixed;
      case 'secondary': return AppColors.primaryFixed;
      case 'tertiary': return AppColors.surfaceVariant;
      default: return AppColors.surfaceVariant;
    }
  }

  Color _getBadgeTextColor() {
    switch (colorClass) {
      case 'primary': return AppColors.onSecondaryContainer;
      case 'secondary': return AppColors.onPrimaryFixedVariant;
      case 'tertiary': return AppColors.onSurfaceVariant;
      default: return AppColors.onSurfaceVariant;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      decoration: BoxDecoration(
        color: AppColors.surfaceContainerLowest,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.02),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          // Name & ID
          Expanded(
            flex: 5,
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: _getBgColor(),
                  foregroundColor: _getTextColor(),
                  radius: 20,
                  child: Text(initials, style: const TextStyle(fontWeight: FontWeight.bold)),
                ),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name, style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.bold, color: AppColors.onSurface)),
                    Text('ID: #$id', style: Theme.of(context).textTheme.bodySmall?.copyWith(color: AppColors.onSurfaceVariant)),
                  ],
                ),
              ],
            ),
          ),
          
          // Date
          Expanded(
            flex: 3,
            child: Text(
              date,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w500,
                color: AppColors.onSurfaceVariant,
              ),
            ),
          ),
          
          // Diagnosis
          Expanded(
            flex: 4,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                decoration: BoxDecoration(
                  color: _getBadgeBgColor(),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Text(
                  diagnosis,
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: _getBadgeTextColor(),
                    letterSpacing: 0.5,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RecentCaseTileSkeleton extends StatelessWidget {
  const RecentCaseTileSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      decoration: BoxDecoration(
        color: AppColors.surfaceContainerLowest,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 5,
            child: Row(
              children: [
                Container(width: 40, height: 40, decoration: const BoxDecoration(color: Colors.black12, shape: BoxShape.circle)),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(width: 100, height: 16, color: Colors.black12),
                    const SizedBox(height: 4),
                    Container(width: 60, height: 12, color: Colors.black12),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(width: 80, height: 16, color: Colors.black12),
          ),
          Expanded(
            flex: 4,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Container(width: 100, height: 24, decoration: BoxDecoration(color: Colors.black12, borderRadius: BorderRadius.circular(12))),
            ),
          ),
        ],
      ),
    );
  }
}
