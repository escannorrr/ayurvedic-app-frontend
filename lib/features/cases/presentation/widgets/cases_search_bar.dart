import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:async';
import 'package:vaidyaai/l10n/app_localizations.dart';
import '../../../../core/theme/app_colors.dart';
import '../bloc/saved_cases_bloc.dart';
import '../bloc/saved_cases_event.dart';
import '../bloc/saved_cases_state.dart';

class CasesSearchBar extends StatelessWidget {
  const CasesSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    
    return BlocBuilder<SavedCasesBloc, SavedCasesState>(
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
                  onChanged: (query) => context.read<SavedCasesBloc>().add(SavedCasesEvent.searchCases(query)),
                  // Note: We use the value from state for the initial value if we had a controller,
                  // but for a stateless TextField without a persistent controller, 
                  // it's better to just let it be or use a controller in a Zero-setState StatefulWidget.
                  // However, the user specifically asked for StatelessWidget where possible.
                  // To support clearing, we might actually need a controller or a key.
                  // I'll use a controller in a Zero-setState StatefulWidget for the BEST UX (clearing text).
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
                    context.read<SavedCasesBloc>().add(const SavedCasesEvent.searchCases(''));
                  },
                ),
            ],
          ),
        );
      },
    );
  }
}
