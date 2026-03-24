import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';

class CasesSkeletonLoader extends StatelessWidget {
  const CasesSkeletonLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 5,
      separatorBuilder: (context, index) => const SizedBox(height: 16),
      itemBuilder: (context, index) {
        return Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: AppColors.surfaceContainerLow.withValues(alpha: 0.5),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            children: [
              Container(width: 48, height: 48, decoration: const BoxDecoration(color: Colors.black12, shape: BoxShape.circle)),
              const SizedBox(width: 24),
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(width: 150, height: 16, color: Colors.black12),
                    const SizedBox(height: 8),
                    Container(width: 80, height: 12, color: Colors.black12),
                  ],
                ),
              ),
              Expanded(flex: 3, child: Container(width: double.infinity, height: 16, color: Colors.black12)),
              const SizedBox(width: 24),
              Container(width: 100, height: 12, color: Colors.black12),
              const SizedBox(width: 24),
              Container(width: 40, height: 40, decoration: BoxDecoration(color: Colors.black12, borderRadius: BorderRadius.circular(8))),
            ],
          ),
        );
      },
    );
  }
}
