// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ai_diagnosis_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AiDiagnosisResponse _$AiDiagnosisResponseFromJson(Map<String, dynamic> json) =>
    _AiDiagnosisResponse(
      explanation: json['explanation'],
      diagnosis: (json['diagnosis'] as List<dynamic>)
          .map((e) => DiagnosisModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      treatment: TreatmentModel.fromJson(
        json['treatment'] as Map<String, dynamic>,
      ),
      dosha: DoshaModel.fromJson(json['dosha'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AiDiagnosisResponseToJson(
  _AiDiagnosisResponse instance,
) => <String, dynamic>{
  'explanation': instance.explanation,
  'diagnosis': instance.diagnosis,
  'treatment': instance.treatment,
  'dosha': instance.dosha,
};

_DiagnosisModel _$DiagnosisModelFromJson(Map<String, dynamic> json) =>
    _DiagnosisModel(
      condition: json['condition'] as String,
      probability: (json['probability'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$DiagnosisModelToJson(_DiagnosisModel instance) =>
    <String, dynamic>{
      'condition': instance.condition,
      'probability': instance.probability,
    };

_TreatmentModel _$TreatmentModelFromJson(Map<String, dynamic> json) =>
    _TreatmentModel(
      herbs: (json['herbs'] as List<dynamic>).map((e) => e as String).toList(),
      lifestyle: (json['lifestyle'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$TreatmentModelToJson(_TreatmentModel instance) =>
    <String, dynamic>{'herbs': instance.herbs, 'lifestyle': instance.lifestyle};

_DoshaModel _$DoshaModelFromJson(Map<String, dynamic> json) => _DoshaModel(
  vata: (json['vata'] as num).toDouble(),
  pitta: (json['pitta'] as num).toDouble(),
  kapha: (json['kapha'] as num).toDouble(),
);

Map<String, dynamic> _$DoshaModelToJson(_DoshaModel instance) =>
    <String, dynamic>{
      'vata': instance.vata,
      'pitta': instance.pitta,
      'kapha': instance.kapha,
    };
