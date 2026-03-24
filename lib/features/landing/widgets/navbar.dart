import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/utils/screen_size.dart';

class Navbar extends StatelessWidget {
  final void Function(String section)? onSectionTap;

  const Navbar({super.key, this.onSectionTap});

  @override
  Widget build(BuildContext context) {
    final bool isMobile = ScreenSize.isMobile(context);
    final bool isTablet = ScreenSize.isTablet(context);

    return Container(
      height: isMobile ? null : 100,
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 24 : 64,
        vertical: isMobile ? 16 : 0,
      ),
      decoration: BoxDecoration(
        color: AppColors.surface.withValues(alpha: 0.95),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.04),
            blurRadius: 12,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: isMobile ? 24 : 64,
            ),
            child: isMobile
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _Logo(onTap: () => onSectionTap?.call('Home')),
                      const SizedBox(height: 16),
                      _MenuLinks(
                        isVertical: true,
                        onSectionTap: onSectionTap,
                      ),
                      const SizedBox(height: 16),
                      _LoginButton(),
                    ],
                  )
                : Row(
                    children: [
                      _Logo(onTap: () => onSectionTap?.call('Home')),
                      const Spacer(),
                      if (!isTablet)
                        _MenuLinks(
                          isVertical: false,
                          onSectionTap: onSectionTap,
                        ),
                      const Spacer(),
                      _LoginButton(),
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}

class _Logo extends StatelessWidget {
  final VoidCallback? onTap;
  const _Logo({this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Icon(Icons.psychology, color: Colors.white, size: 20),
            ),
            const SizedBox(width: 12),
            Text(
              "Vaidya Assists Ai Labs",
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontFamily: 'Manrope',
                    fontWeight: FontWeight.bold,
                    color: AppColors.primary,
                    letterSpacing: -0.5,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}

class _MenuLinks extends StatelessWidget {
  final bool isVertical;
  final void Function(String section)? onSectionTap;

  const _MenuLinks({required this.isVertical, this.onSectionTap});

  @override
  Widget build(BuildContext context) {
    final List<String> links = [
      "Home",
      "How it Works",
      "Features",
      "Pricing",
      "Testimonials"
    ];

    if (isVertical) {
      return Column(
        children: links
            .map((l) => _MenuLink(
                  l,
                  isActive: l == "Home",
                  onTap: () => onSectionTap?.call(l),
                ))
            .toList(),
      );
    }

    return Row(
      children: links
          .expand((l) => [
                _MenuLink(
                  l,
                  isActive: l == "Home",
                  onTap: () => onSectionTap?.call(l),
                ),
                const SizedBox(width: 32),
              ])
          .toList()
        ..removeLast(),
    );
  }
}

class _MenuLink extends StatelessWidget {
  final String label;
  final bool isActive;
  final VoidCallback? onTap;

  const _MenuLink(this.label, {this.isActive = false, this.onTap});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      style: TextButton.styleFrom(
        foregroundColor: isActive
            ? AppColors.primary
            : AppColors.onBackground.withValues(alpha: 0.7),
        textStyle: TextStyle(
          fontFamily: 'Inter',
          fontWeight: isActive ? FontWeight.bold : FontWeight.w600,
          fontSize: 16,
          decoration: isActive ? TextDecoration.underline : null,
        ),
      ),
      child: Text(label),
    );
  }
}

class _LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => context.go('/login'),
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 4,
        shadowColor: AppColors.onSurface.withValues(alpha: 0.1),
      ),
      child: const Text(
        "Login",
        style: TextStyle(
            fontFamily: 'Manrope',
            fontWeight: FontWeight.bold,
            fontSize: 16),
      ),
    );
  }
}
