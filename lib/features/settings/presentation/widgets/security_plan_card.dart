import 'dart:ui';
import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/utils/screen_size.dart';
import 'package:vaidyaai/l10n/app_localizations.dart';

class SecurityPlanCard extends StatelessWidget {
  const SecurityPlanCard({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isMobile = ScreenSize.isMobile(context);
    final l10n = AppLocalizations.of(context)!;
    
    return ClipRRect(
      borderRadius: BorderRadius.circular(24),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.2), // Standard glass
            borderRadius: BorderRadius.circular(24),
            border: Border.all(
              color: Colors.white.withValues(alpha: 0.3),
              width: 1.5,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.05),
                blurRadius: 20,
                offset: const Offset(0, 10),
              )
            ],
          ),
          child: Padding(
            padding: EdgeInsets.all(isMobile ? 24 : 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(Icons.shield_rounded, size: 20, color: AppColors.primary),
                    const SizedBox(width: 12),
                    Text(
                      l10n.securityPlan,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontFamily: 'Manrope',
                            fontWeight: FontWeight.bold,
                            color: AppColors.onSurface,
                          ),
                    ),
                  ],
                ),
                const SizedBox(height: 32),
                // Password Row
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.4), // Glassy white
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Colors.white.withValues(alpha: 0.5)),
                  ),
                  child: isMobile 
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.white.withValues(alpha: 0.6),
                                  shape: BoxShape.circle,
                                ),
                                child: const Icon(Icons.key_rounded, size: 20, color: AppColors.onSurfaceVariant),
                              ),
                              const SizedBox(width: 16),
                              Text(
                                l10n.password,
                                style: const TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.bold, fontSize: 13),
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),
                          Text(
                            l10n.lastChanged('3 months'),
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 11,
                              color: AppColors.onSurfaceVariant.withValues(alpha: 0.6),
                            ),
                          ),
                          const SizedBox(height: 12),
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(padding: EdgeInsets.zero),
                            child: Text(
                              l10n.changePassword,
                              style: const TextStyle(
                                fontFamily: 'Manrope',
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: AppColors.primary,
                              ),
                            ),
                          ),
                        ],
                      )
                    : Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white.withValues(alpha: 0.6),
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(Icons.key_rounded, size: 20, color: AppColors.onSurfaceVariant),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  l10n.password,
                                  style: const TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.bold, fontSize: 13),
                                ),
                                Text(
                                  l10n.lastChanged('3 months'),
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 11,
                                    color: AppColors.onSurfaceVariant.withValues(alpha: 0.6),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              l10n.changePassword,
                              style: const TextStyle(
                                fontFamily: 'Manrope',
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: AppColors.primary,
                              ),
                            ),
                          ),
                        ],
                      ),
                ),
                const SizedBox(height: 16),
                // Plan Row
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFDEFD9).withValues(alpha: 0.6), // Glassy Saffron
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: const Color(0xFFFFDF90).withValues(alpha: 0.5)),
                  ),
                  child: isMobile 
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: const BoxDecoration(
                                  color: Color(0xFFFFDF90), // Saffron container
                                  shape: BoxShape.circle,
                                ),
                                child: const Icon(Icons.star_rounded, size: 20, color: Color(0xFF755B00)),
                              ),
                              const SizedBox(width: 16),
                              Text(
                                l10n.freeApothecary,
                                style: const TextStyle(
                                  fontFamily: 'Manrope',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Color(0xFF241A00),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),
                          Text(
                            l10n.planDescription,
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 11,
                              color: const Color(0xFF584400).withValues(alpha: 0.8),
                            ),
                          ),
                          const SizedBox(height: 16),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF584400),
                                foregroundColor: Colors.white,
                                elevation: 0,
                                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                              ),
                              child: Text(
                                l10n.upgradeToPro,
                                style: const TextStyle(fontFamily: 'Manrope', fontWeight: FontWeight.bold, fontSize: 12),
                              ),
                            ),
                          ),
                        ],
                      )
                    : Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: const BoxDecoration(
                              color: Color(0xFFFFDF90), // Saffron container
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(Icons.star_rounded, size: 20, color: Color(0xFF755B00)),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  l10n.currentPlan(l10n.freeApothecary),
                                  style: const TextStyle(
                                    fontFamily: 'Manrope',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    color: Color(0xFF241A00),
                                  ),
                                ),
                                Text(
                                  l10n.planDescription,
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 11,
                                    color: const Color(0xFF584400).withValues(alpha: 0.8),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF584400),
                              foregroundColor: Colors.white,
                              elevation: 0,
                              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                            ),
                            child: Text(
                              l10n.upgradeToPro,
                              style: const TextStyle(fontFamily: 'Manrope', fontWeight: FontWeight.bold, fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
