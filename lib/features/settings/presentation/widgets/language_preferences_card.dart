import 'dart:ui';
import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/utils/screen_size.dart';
import 'package:vaidyaai/l10n/app_localizations.dart';

class LanguagePreferencesCard extends StatelessWidget {
  final String uiLanguage;
  final String aiLanguage;
  final String aiTone;
  final Function(String, String) onChanged;

  const LanguagePreferencesCard({
    super.key,
    required this.uiLanguage,
    required this.aiLanguage,
    required this.aiTone,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final bool isMobile = ScreenSize.isMobile(context);
    final l10n = AppLocalizations.of(context)!;
    
    // UI Language Map
    final Map<String, String> uiLangMap = {
      'en': 'English',
      'hi': 'हिंदी (Hindi)',
      'mr': 'मराठी (Marathi)',
    };

    // AI Language Map
    final Map<String, String> aiLangMap = {
      'en': 'English',
      'hi': 'Hindi',
      'mr': 'Marathi',
    };

    // Helper to ensure values exist in maps
    String safeValue(String val, Map<String, String> map) {
      if (map.containsKey(val)) return val;
      final base = val.split('_')[0];
      if (map.containsKey(base)) return base;
      return map.keys.first;
    }

    final String safeUIVal = safeValue(uiLanguage, uiLangMap);
    final String safeAIVal = safeValue(aiLanguage, aiLangMap);

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
                    const Icon(Icons.translate_rounded, size: 20, color: AppColors.primary),
                    const SizedBox(width: 12),
                    Text(
                      l10n.languagePreferences,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontFamily: 'Manrope',
                            fontWeight: FontWeight.bold,
                            color: AppColors.onSurface,
                          ),
                    ),
                  ],
                ),
                const SizedBox(height: 32),
                if (!isMobile)
                  Row(
                    children: [
                      Expanded(
                        child: _DropdownField(
                          label: l10n.uiLanguage,
                          value: safeUIVal,
                          items: uiLangMap,
                          onChanged: (v) => onChanged('uiLanguage', v),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: _DropdownField(
                          label: l10n.aiGenerationLanguage,
                          value: safeAIVal,
                          items: aiLangMap,
                          onChanged: (v) => onChanged('aiLanguage', v),
                        ),
                      ),
                    ],
                  )
                else ...[
                  _DropdownField(
                    label: l10n.uiLanguage,
                    value: safeUIVal,
                    items: uiLangMap,
                    onChanged: (v) => onChanged('uiLanguage', v),
                  ),
                  const SizedBox(height: 16),
                  _DropdownField(
                    label: l10n.aiGenerationLanguage,
                    value: safeAIVal,
                    items: aiLangMap,
                    onChanged: (v) => onChanged('aiLanguage', v),
                  ),
                ],
                const SizedBox(height: 32),
                Text(
                  l10n.aiResponseTone,
                  style: const TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: AppColors.onSurfaceVariant,
                  ),
                ),
                const SizedBox(height: 12),
                Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.5),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      _ToneButton(
                        label: l10n.clinical,
                        isActive: aiTone == 'Clinical',
                        onTap: () => onChanged('aiTone', 'Clinical'),
                      ),
                      _ToneButton(
                        label: l10n.simple,
                        isActive: aiTone == 'Simple',
                        onTap: () => onChanged('aiTone', 'Simple'),
                      ),
                      _ToneButton(
                        label: l10n.detailed,
                        isActive: aiTone == 'Detailed',
                        onTap: () => onChanged('aiTone', 'Detailed'),
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

class _DropdownField extends StatelessWidget {
  final String label;
  final String value;
  final Map<String, String> items;
  final Function(String) onChanged;

  const _DropdownField({
    required this.label,
    required this.value,
    required this.items,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontFamily: 'Inter',
            fontWeight: FontWeight.bold,
            fontSize: 12,
            color: AppColors.onSurfaceVariant,
          ),
        ),
        const SizedBox(height: 8),
        DropdownButtonFormField<String>(
          value: value,
          onChanged: (v) => onChanged(v!),
          style: const TextStyle(fontFamily: 'Inter', fontSize: 13, color: AppColors.onSurface),
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white.withValues(alpha: 0.8),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Colors.white.withValues(alpha: 0.3)),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Colors.white.withValues(alpha: 0.3)),
            ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          ),
          items: items.entries.map((e) => DropdownMenuItem(
            value: e.key,
            child: Text(e.value),
          )).toList(),
        ),
      ],
    );
  }
}

class _ToneButton extends StatelessWidget {
  final String label;
  final bool isActive;
  final VoidCallback onTap;

  const _ToneButton({required this.label, required this.isActive, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            color: isActive ? AppColors.primary : Colors.transparent,
            borderRadius: BorderRadius.circular(8),
            boxShadow: isActive ? [
              BoxShadow(
                color: AppColors.primary.withValues(alpha: 0.2),
                blurRadius: 10,
                offset: const Offset(0, 4),
              )
            ] : null,
          ),
          child: Text(
            label,
            style: TextStyle(
              fontFamily: 'Manrope',
              fontWeight: FontWeight.bold,
              fontSize: 12,
              color: isActive ? Colors.white : AppColors.onSurfaceVariant,
            ),
          ),
        ),
      ),
    );
  }
}
