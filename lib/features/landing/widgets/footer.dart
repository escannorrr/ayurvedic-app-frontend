import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/utils/screen_size.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isMobile = ScreenSize.isMobile(context);
    
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 32 : 64,
        vertical: 64,
      ),
      color: AppColors.surfaceContainerLow,
      child: Column(
        children: [
          if (!isMobile)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _FooterBrand(),
                _FooterLinks(),
                _Copyright(),
              ],
            )
          else
            Column(
              children: [
                _FooterBrand(),
                const SizedBox(height: 48),
                _FooterLinks(),
                const SizedBox(height: 48),
                _Copyright(),
              ],
            ),
        ],
      ),
    );
  }
}

class _FooterBrand extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.psychology, color: AppColors.primary.withValues(alpha: 0.5), size: 24),
        const SizedBox(width: 12),
        Text(
          "VaidyaAI",
          style: TextStyle(
            fontFamily: 'Manrope',
            fontWeight: FontWeight.bold,
            color: AppColors.onBackground.withValues(alpha: 0.5),
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}

class _FooterLinks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bool isMobile = ScreenSize.isMobile(context);
    
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        _FooterLink("Privacy Policy"),
        const SizedBox(width: 24),
        _FooterLink("Terms of Service"),
        const SizedBox(width: 24),
        _FooterLink("Botanical Index"),
        const SizedBox(width: 24),
        _FooterLink("Contact Support"),
      ],
    );
  }
}

class _FooterLink extends StatelessWidget {
  final String label;
  const _FooterLink(this.label);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Text(
        label,
        style: TextStyle(
          color: AppColors.onSurfaceVariant.withValues(alpha: 0.7),
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

class _Copyright extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      "© 2024 Vaidya AI. Cultivating Wellness Through Intelligence.",
      style: TextStyle(
        color: AppColors.onSurfaceVariant.withValues(alpha: 0.5),
        fontSize: 12,
      ),
    );
  }
}
