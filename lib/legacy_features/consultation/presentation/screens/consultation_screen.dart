import 'package:flutter/material.dart';
import 'package:vaidyaai/l10n/app_localizations.dart';
import '../../../../core/theme/app_colors.dart';
import '../widgets/patient_form_section.dart';
import '../widgets/ai_response_section.dart';
import '../../../../core/utils/screen_size.dart';

class ConsultationScreen extends StatefulWidget {
  const ConsultationScreen({super.key});

  @override
  State<ConsultationScreen> createState() => _ConsultationScreenState();
}

class _ConsultationScreenState extends State<ConsultationScreen> with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final l10n = AppLocalizations.of(context)!;
    final bool isMobile = ScreenSize.isMobile(context);
    
    return SingleChildScrollView(
      padding: EdgeInsets.only(
        top: isMobile ? 16 : 32, 
        left: isMobile ? 16 : 32, 
        right: isMobile ? 16 : 32, 
        bottom: 48
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(l10n.newConsultation, style: Theme.of(context).textTheme.displaySmall?.copyWith(fontWeight: FontWeight.bold, color: AppColors.primary)),
          const SizedBox(height: 8),
          Text(l10n.consultIntro, style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: AppColors.onSurfaceVariant)),
          const SizedBox(height: 48),
          
          if (isMobile)
            const Column(
              children: [
                PatientFormSection(),
                SizedBox(height: 32),
                AIResponseSection(),
              ],
            )
          else
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(flex: 7, child: PatientFormSection()),
                SizedBox(width: 32),
                Expanded(flex: 5, child: AIResponseSection()),
              ],
            )
        ]
      )
    );
  }
}
