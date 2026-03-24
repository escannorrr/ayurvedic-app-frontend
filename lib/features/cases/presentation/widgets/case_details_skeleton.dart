import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';

class CaseDetailsSkeleton extends StatelessWidget {
  const CaseDetailsSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Header Skeleton (Breadcrumbs)
        Row(
          children: [
            _SkeletonBox(width: 80, height: 12),
            const SizedBox(width: 8),
            const Icon(Icons.chevron_right, size: 14, color: Colors.black12),
            const SizedBox(width: 8),
            _SkeletonBox(width: 60, height: 12),
          ],
        ),
        const SizedBox(height: 24),
        
        // Main Content Grid
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Left Column (8/12)
            Expanded(
              flex: 8,
              child: Column(
                children: [
                  // Patient Info Card Skeleton
                  _SkeletonCard(
                    height: 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _SkeletonBox(width: 150, height: 20),
                        const SizedBox(height: 24),
                        Row(
                          children: [
                            _SkeletonBox(width: 100, height: 14),
                            const SizedBox(width: 40),
                            _SkeletonBox(width: 100, height: 14),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Row(
                          children: [
                            _SkeletonBox(width: 100, height: 14),
                            const SizedBox(width: 40),
                            _SkeletonBox(width: 100, height: 14),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  
                  // Timeline Skeleton
                  _SkeletonCard(
                    height: 300,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _SkeletonBox(width: 120, height: 18),
                        const SizedBox(height: 24),
                        ...List.generate(3, (index) => Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: Row(
                            children: [
                              Container(width: 12, height: 12, decoration: const BoxDecoration(color: Colors.black12, shape: BoxShape.circle)),
                              const SizedBox(width: 16),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    _SkeletonBox(width: 100, height: 14),
                                    const SizedBox(height: 8),
                                    _SkeletonBox(width: 200, height: 12),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 24),
            
            // Right Column (4/12)
            Expanded(
              flex: 4,
              child: Column(
                children: [
                  // Notes Section Skeleton
                  _SkeletonCard(
                    height: 250,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _SkeletonBox(width: 100, height: 18),
                        const SizedBox(height: 24),
                        _SkeletonBox(width: double.infinity, height: 100),
                        const SizedBox(height: 16),
                        Row(
                          children: [
                            _SkeletonBox(width: 60, height: 24),
                            const SizedBox(width: 8),
                            _SkeletonBox(width: 60, height: 24),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  
                  // AI Button Skeleton
                  _SkeletonCard(
                    height: 150,
                    color: AppColors.primary.withValues(alpha: 0.1),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _SkeletonBox(width: 150, height: 16),
                        const SizedBox(height: 16),
                        _SkeletonBox(width: double.infinity, height: 48),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _SkeletonBox extends StatelessWidget {
  final double width;
  final double height;

  const _SkeletonBox({required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(height / 4),
      ),
    );
  }
}

class _SkeletonCard extends StatelessWidget {
  final double height;
  final Widget child;
  final Color? color;

  const _SkeletonCard({required this.height, required this.child, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: color ?? AppColors.surfaceContainerLow.withValues(alpha: 0.5),
        borderRadius: BorderRadius.circular(16),
      ),
      child: child,
    );
  }
}
