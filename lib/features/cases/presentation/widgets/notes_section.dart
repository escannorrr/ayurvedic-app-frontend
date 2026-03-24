import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vaidyaai/l10n/app_localizations.dart';
import '../../../../core/theme/app_colors.dart';
import '../bloc/case_details_bloc.dart';
import '../bloc/case_details_event.dart';
import '../bloc/case_details_state.dart';

class NotesSection extends StatefulWidget {
  final String caseId;
  final String initialNotes;

  const NotesSection({
    super.key,
    required this.caseId,
    required this.initialNotes,
  });

  @override
  State<NotesSection> createState() => _NotesSectionState();
}

class _NotesSectionState extends State<NotesSection> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.initialNotes);
  }

  @override
  void didUpdateWidget(NotesSection oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.initialNotes != widget.initialNotes && _controller.text != widget.initialNotes) {
      _controller.text = widget.initialNotes;
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    
    return BlocBuilder<CaseDetailsBloc, CaseDetailsState>(
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: AppColors.surfaceContainerHighest.withValues(alpha: 0.5),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: AppColors.outlineVariant.withValues(alpha: 0.1)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    l10n.clinicalNotes,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Icon(Icons.edit_note_outlined, size: 20, color: AppColors.outline),
                ],
              ),
              const SizedBox(height: 24),
              Stack(
                children: [
                  TextField(
                    controller: _controller,
                    maxLines: 10,
                    onChanged: (notes) => context.read<CaseDetailsBloc>().add(CaseDetailsEvent.updateNotes(widget.caseId, notes)),
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      height: 1.6,
                    ),
                    decoration: InputDecoration(
                      hintText: l10n.notesPlaceholder,
                      hintStyle: TextStyle(color: AppColors.outline.withValues(alpha: 0.4)),
                      filled: true,
                      fillColor: AppColors.surfaceContainerLowest,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: const EdgeInsets.all(16),
                    ),
                  ),
                  Positioned(
                    bottom: 16,
                    right: 16,
                    child: Row(
                      children: [
                        Text(
                          state.isSaving ? 'SAVING...' : l10n.autoSaving,
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: state.isSaving ? AppColors.primary : AppColors.outline,
                            letterSpacing: 1,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Container(
                          width: 4,
                          height: 4,
                          decoration: BoxDecoration(
                            color: state.isSaving ? AppColors.primary : AppColors.outline,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              // Attachments
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  _AttachmentChip(icon: Icons.attach_file, label: 'Lab_Report_Oct10.pdf'),
                  _AttachmentChip(icon: Icons.image_outlined, label: 'Tongue_Analysis.jpg'),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}

class _AttachmentChip extends StatelessWidget {
  final IconData icon;
  final String label;

  const _AttachmentChip({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: AppColors.surface,
        border: Border.all(color: AppColors.outlineVariant.withValues(alpha: 0.3)),
        borderRadius: BorderRadius.circular(99),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 14, color: AppColors.outline),
          const SizedBox(width: 4),
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: AppColors.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }
}
