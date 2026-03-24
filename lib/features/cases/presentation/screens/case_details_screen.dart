import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vaidyaai/l10n/app_localizations.dart';
import '../../../../core/theme/app_colors.dart';
import '../bloc/case_details_bloc.dart';
import '../bloc/case_details_event.dart';
import '../bloc/case_details_state.dart';
import '../widgets/case_header.dart';
import '../widgets/patient_info_card.dart';
import '../widgets/consultation_timeline.dart';
import '../widgets/notes_section.dart';
import '../widgets/view_ai_button.dart';
import '../widgets/case_details_skeleton.dart';

class CaseDetailsScreen extends StatelessWidget {
  final String id;

  const CaseDetailsScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    
    return Scaffold(
      backgroundColor: Colors.transparent, // Shell handles background
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 96, left: 40, right: 40, bottom: 32),
        child: BlocBuilder<CaseDetailsBloc, CaseDetailsState>(
          builder: (context, state) {
            if (state.isLoading && state.caseDetails == null) {
              return const CaseDetailsSkeleton();
            }
            if (state.errorMessage != null && state.caseDetails == null) {
              return Center(child: Text(state.errorMessage!));
            }
            if (state.caseDetails == null) {
              return const SizedBox.shrink();
            }
            return _buildContent(context, state, l10n);
          },
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context, CaseDetailsState state, AppLocalizations l10n) {
    final details = state.caseDetails!;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CaseHeader(caseId: id),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Left Column
            Expanded(
              flex: 8,
              child: Column(
                children: [
                  PatientInfoCard(patientInfo: details.patientInfo),
                  const SizedBox(height: 32),
                  ConsultationTimeline(consultations: details.consultations),
                ],
              ),
            ),
            const SizedBox(width: 32),
            // Right Column
            Expanded(
              flex: 4,
              child: Column(
                children: [
                  const ViewAiButton(),
                  const SizedBox(height: 32),
                  NotesSection(
                    caseId: id,
                    initialNotes: details.notes,
                  ),
                  const SizedBox(height: 32),
                  _MetadataGrid(l10n: l10n),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _MetadataGrid extends StatelessWidget {
  final AppLocalizations l10n;
  const _MetadataGrid({required this.l10n});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: _MetadataItem(label: l10n.treatmentDay, value: '32', color: AppColors.primary),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: _MetadataItem(label: l10n.successRate, value: '84%', color: AppColors.secondary),
        ),
      ],
    );
  }
}

class _MetadataItem extends StatelessWidget {
  final String label;
  final String value;
  final Color color;

  const _MetadataItem({required this.label, required this.value, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: AppColors.surfaceContainerLow,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Text(
            label.toUpperCase(),
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: AppColors.outline),
          ),
          const SizedBox(height: 12),
          Text(
            value,
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.w800,
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}
