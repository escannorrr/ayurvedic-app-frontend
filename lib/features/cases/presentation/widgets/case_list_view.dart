import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:vaidyaai/l10n/app_localizations.dart';
import 'package:intl/intl.dart';
import '../../../../core/theme/app_colors.dart';
import '../../domain/entities/case_entity.dart';

class CaseListView extends StatelessWidget {
  final List<CaseEntity> cases;
  final bool isMobile;

  const CaseListView({
    super.key,
    required this.cases,
    this.isMobile = false,
  });

  @override
  Widget build(BuildContext context) {
    if (isMobile) {
      return ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.all(16),
        itemCount: cases.length,
        separatorBuilder: (context, index) => const SizedBox(height: 12),
        itemBuilder: (context, index) => _CaseCard(caseEntity: cases[index]),
      );
    }

    final l10n = AppLocalizations.of(context)!;
    
    return Table(
      columnWidths: const {
        0: FlexColumnWidth(2.5), // Patient Identity
        1: FlexColumnWidth(3),   // Diagnosis Summary
        2: FlexColumnWidth(1.5), // Date Filed
        3: FlexColumnWidth(1.5), // Status
        4: FlexColumnWidth(1),   // Actions
      },
      children: [
        // Table Header
        TableRow(
          decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: AppColors.outlineVariant.withValues(alpha: 0.1))),
          ),
          children: [
            _TableHeaderCell(label: l10n.patientIdentityCol),
            _TableHeaderCell(label: l10n.diagnosisSummaryCol),
            _TableHeaderCell(label: l10n.dateFiledCol, textAlign: TextAlign.center),
            _TableHeaderCell(label: l10n.statusCol, textAlign: TextAlign.center),
            _TableHeaderCell(label: l10n.actionsCol, textAlign: TextAlign.right),
          ],
        ),
        ...cases.map((caseEntity) => _buildTableRow(context, caseEntity)),
      ],
    );
  }

  TableRow _buildTableRow(BuildContext context, CaseEntity caseEntity) {
    return TableRow(
      children: [
        CaseTableCell(child: _PatientIdentity(caseEntity: caseEntity)),
        CaseTableCell(child: _DiagnosisSummary(caseEntity: caseEntity)),
        CaseTableCell(
          textAlign: TextAlign.center,
          child: _DateText(date: caseEntity.createdAt),
        ),
        CaseTableCell(
          textAlign: TextAlign.center,
          child: const _StatusChip(status: 'Complete'),
        ),
        CaseTableCell(
          textAlign: TextAlign.right,
          child: IconButton(
            onPressed: () => context.go('/cases/case-details/${caseEntity.id}'),
            icon: const Icon(Icons.visibility_outlined, size: 20, color: AppColors.outline),
          ),
        ),
      ],
    );
  }
}

class _CaseCard extends StatelessWidget {
  final CaseEntity caseEntity;
  const _CaseCard({required this.caseEntity});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.go('/cases/case-details/${caseEntity.id}'),
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppColors.surfaceContainerLowest,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: AppColors.outlineVariant.withValues(alpha: 0.1)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: _PatientIdentity(caseEntity: caseEntity)),
                const _StatusChip(status: 'Complete'),
              ],
            ),
            const SizedBox(height: 16),
            _DiagnosisSummary(caseEntity: caseEntity),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _DateText(date: caseEntity.createdAt),
                const Icon(Icons.chevron_right, size: 20, color: AppColors.outline),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CaseTableCell extends StatelessWidget {
  final Widget child;
  final TextAlign textAlign;

  const CaseTableCell({super.key, required this.child, this.textAlign = TextAlign.left});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: Container(
        alignment: _getAlignment(),
        child: child,
      ),
    );
  }

  Alignment _getAlignment() {
    switch (textAlign) {
      case TextAlign.center: return Alignment.center;
      case TextAlign.right: return Alignment.centerRight;
      default: return Alignment.centerLeft;
    }
  }
}

class _TableHeaderCell extends StatelessWidget {
  final String label;
  final TextAlign textAlign;

  const _TableHeaderCell({required this.label, this.textAlign = TextAlign.left});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: Text(
        label.toUpperCase(),
        textAlign: textAlign,
        style: TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.bold,
          color: AppColors.outline,
          letterSpacing: 1.5,
        ),
      ),
    );
  }
}

class _PatientIdentity extends StatelessWidget {
  final CaseEntity caseEntity;
  const _PatientIdentity({required this.caseEntity});

  @override
  Widget build(BuildContext context) {
    final initials = caseEntity.patientName.isNotEmpty ? caseEntity.patientName.substring(0, 2).toUpperCase() : '??';
    
    return Row(
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: AppColors.primaryFixed,
            shape: BoxShape.circle,
          ),
          alignment: Alignment.center,
          child: Text(
            initials,
            style: TextStyle(color: AppColors.primary, fontWeight: FontWeight.bold, fontSize: 13),
          ),
        ),
        const SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              caseEntity.patientName,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
            Text(
              'ID: VA-${caseEntity.id.hashCode.toString().substring(0, 4)}',
              style: TextStyle(color: AppColors.outline, fontSize: 12),
            ),
          ],
        ),
      ],
    );
  }
}

class _DiagnosisSummary extends StatelessWidget {
  final CaseEntity caseEntity;
  const _DiagnosisSummary({required this.caseEntity});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          caseEntity.diagnosisSummary,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontWeight: FontWeight.w500, color: AppColors.onSurfaceVariant, fontSize: 14),
        ),
        const SizedBox(height: 4),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
          decoration: BoxDecoration(
            color: AppColors.secondaryFixed,
            borderRadius: BorderRadius.circular(99),
          ),
          child: const Text(
            'Protocol Applied',
            style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}

class _DateText extends StatelessWidget {
  final DateTime date;
  const _DateText({required this.date});

  @override
  Widget build(BuildContext context) {
    return Text(
      DateFormat('MMM dd, yyyy').format(date),
      style: TextStyle(color: AppColors.onSurfaceVariant, fontSize: 14),
    );
  }
}

class _StatusChip extends StatelessWidget {
  final String status;
  const _StatusChip({required this.status});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: AppColors.primaryFixed.withValues(alpha: 0.3),
        borderRadius: BorderRadius.circular(99),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(width: 6, height: 6, decoration: const BoxDecoration(color: AppColors.primary, shape: BoxShape.circle)),
          const SizedBox(width: 8),
          Text(
            status,
            style: TextStyle(color: AppColors.primary, fontWeight: FontWeight.bold, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
