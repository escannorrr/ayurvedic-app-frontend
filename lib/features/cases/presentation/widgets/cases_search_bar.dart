import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:async';
import 'package:vaidyaai/l10n/app_localizations.dart';
import '../../../../core/theme/app_colors.dart';
import '../bloc/cases_bloc.dart';
import '../bloc/cases_event.dart';
import '../bloc/cases_state.dart';

class CasesSearchBar extends StatelessWidget {
  const CasesSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    
    return BlocBuilder<CasesBloc, CasesState>(
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: AppColors.surfaceContainerLowest,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: AppColors.outlineVariant.withValues(alpha: 0.5)),
          ),
          child: Row(
            children: [
              const Icon(Icons.search, color: AppColors.outline),
              const SizedBox(width: 12),
              Expanded(
                child: TextField(
                  onChanged: (query) => context.read<CasesBloc>().add(CasesEvent.searchCases(query)),
                  style: Theme.of(context).textTheme.bodyMedium,
                  decoration: InputDecoration(
                    hintText: l10n.searchSavedCases,
                    border: InputBorder.none,
                    hintStyle: TextStyle(color: AppColors.outline.withValues(alpha: 0.7)),
                  ),
                ),
              ),
              if (state.searchQuery.isNotEmpty)
                IconButton(
                  icon: const Icon(Icons.close, size: 20, color: AppColors.outline),
                  onPressed: () {
                    context.read<CasesBloc>().add(const CasesEvent.searchCases(''));
                  },
                ),
            ],
          ),
        );
      },
    );
  }
}
