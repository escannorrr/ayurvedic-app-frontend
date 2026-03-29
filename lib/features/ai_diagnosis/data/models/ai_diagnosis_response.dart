import 'package:freezed_annotation/freezed_annotation.dart';

part 'ai_diagnosis_response.freezed.dart';
part 'ai_diagnosis_response.g.dart';

@freezed
abstract class AiDiagnosisResponse with _$AiDiagnosisResponse {
  const AiDiagnosisResponse._();

  const factory AiDiagnosisResponse({
    @JsonKey(name: 'explanation') required dynamic explanation,
    required List<DiagnosisModel> diagnosis,
    required TreatmentModel treatment,
    required DoshaModel dosha,
  }) = _AiDiagnosisResponse;

  factory AiDiagnosisResponse.fromJson(Map<String, dynamic> json) =>
      _$AiDiagnosisResponseFromJson(json);

  String get explanationString {
    if (explanation is String) return explanation as String;
    if (explanation is List) return (explanation as List).join('\n');
    return '';
  }
}

@freezed
abstract class DiagnosisModel with _$DiagnosisModel {
  const factory DiagnosisModel({
    required String condition,
    double? probability,
  }) = _DiagnosisModel;

  factory DiagnosisModel.fromJson(Map<String, dynamic> json) =>
      _$DiagnosisModelFromJson(json);
}

@freezed
abstract class TreatmentModel with _$TreatmentModel {
  const factory TreatmentModel({
    required List<String> herbs,
    required List<String> lifestyle,
  }) = _TreatmentModel;

  factory TreatmentModel.fromJson(Map<String, dynamic> json) =>
      _$TreatmentModelFromJson(json);
}

@freezed
abstract class DoshaModel with _$DoshaModel {
  const factory DoshaModel({
    required double vata,
    required double pitta,
    required double kapha,
  }) = _DoshaModel;

  factory DoshaModel.fromJson(Map<String, dynamic> json) =>
      _$DoshaModelFromJson(json);
}
