class AiDiagnosisEntity {
  final String diagnosisName;
  final String summary;
  final List<String> possibleConditions;
  final List<String> medicinalProtocol;
  final List<String> lifestyleDiet;
  final Map<String, double> doshaPercentages;

  AiDiagnosisEntity({
    required this.diagnosisName,
    required this.summary,
    required this.possibleConditions,
    required this.medicinalProtocol,
    required this.lifestyleDiet,
    required this.doshaPercentages,
  });
  Map<String, dynamic> toMap() {
    return {
      'diagnosis': [
        {
          'condition': diagnosisName,
          'confidence': 100,
          'label': 'AI Generated',
        }
      ],
      'confidence': 100,
      'dosha': {
        'vata': doshaPercentages['Vata'] ?? doshaPercentages['vata'] ?? 0,
        'pitta': doshaPercentages['Pitta'] ?? doshaPercentages['pitta'] ?? 0,
        'kapha': doshaPercentages['Kapha'] ?? doshaPercentages['kapha'] ?? 0,
      },
      'explanation': summary,
      'dosha_analysis': 'The patient\'s dosha percentages are: Vata: ${doshaPercentages['Vata'] ?? doshaPercentages['vata'] ?? 0}%, Pitta: ${doshaPercentages['Pitta'] ?? doshaPercentages['pitta'] ?? 0}%, Kapha: ${doshaPercentages['Kapha'] ?? doshaPercentages['kapha'] ?? 0}%',
      'treatment': {
        'principles': medicinalProtocol,
        'herbs': [],
        'formulations': [],
        'diet': lifestyleDiet,
        'lifestyle': [],
      },
      'precautions': [],
      'when_to_consult': [],
      'follow_up_question': '',
    };
  }
}
