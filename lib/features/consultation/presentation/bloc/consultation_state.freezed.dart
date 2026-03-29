// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'consultation_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ConsultationState {

 String get patientName; String get age; List<String> get activeSymptoms; String get symptomInput; String get symptomsDescription; double get duration; String get prakriti; String get gender; bool get isLoading; String? get errorMessage; Map<String, dynamic>? get diagnosisResult; AiDiagnosisEntity? get aiDiagnosis; bool? get success;
/// Create a copy of ConsultationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConsultationStateCopyWith<ConsultationState> get copyWith => _$ConsultationStateCopyWithImpl<ConsultationState>(this as ConsultationState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConsultationState&&(identical(other.patientName, patientName) || other.patientName == patientName)&&(identical(other.age, age) || other.age == age)&&const DeepCollectionEquality().equals(other.activeSymptoms, activeSymptoms)&&(identical(other.symptomInput, symptomInput) || other.symptomInput == symptomInput)&&(identical(other.symptomsDescription, symptomsDescription) || other.symptomsDescription == symptomsDescription)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.prakriti, prakriti) || other.prakriti == prakriti)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&const DeepCollectionEquality().equals(other.diagnosisResult, diagnosisResult)&&(identical(other.aiDiagnosis, aiDiagnosis) || other.aiDiagnosis == aiDiagnosis)&&(identical(other.success, success) || other.success == success));
}


@override
int get hashCode => Object.hash(runtimeType,patientName,age,const DeepCollectionEquality().hash(activeSymptoms),symptomInput,symptomsDescription,duration,prakriti,gender,isLoading,errorMessage,const DeepCollectionEquality().hash(diagnosisResult),aiDiagnosis,success);

@override
String toString() {
  return 'ConsultationState(patientName: $patientName, age: $age, activeSymptoms: $activeSymptoms, symptomInput: $symptomInput, symptomsDescription: $symptomsDescription, duration: $duration, prakriti: $prakriti, gender: $gender, isLoading: $isLoading, errorMessage: $errorMessage, diagnosisResult: $diagnosisResult, aiDiagnosis: $aiDiagnosis, success: $success)';
}


}

/// @nodoc
abstract mixin class $ConsultationStateCopyWith<$Res>  {
  factory $ConsultationStateCopyWith(ConsultationState value, $Res Function(ConsultationState) _then) = _$ConsultationStateCopyWithImpl;
@useResult
$Res call({
 String patientName, String age, List<String> activeSymptoms, String symptomInput, String symptomsDescription, double duration, String prakriti, String gender, bool isLoading, String? errorMessage, Map<String, dynamic>? diagnosisResult, AiDiagnosisEntity? aiDiagnosis, bool? success
});




}
/// @nodoc
class _$ConsultationStateCopyWithImpl<$Res>
    implements $ConsultationStateCopyWith<$Res> {
  _$ConsultationStateCopyWithImpl(this._self, this._then);

  final ConsultationState _self;
  final $Res Function(ConsultationState) _then;

/// Create a copy of ConsultationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? patientName = null,Object? age = null,Object? activeSymptoms = null,Object? symptomInput = null,Object? symptomsDescription = null,Object? duration = null,Object? prakriti = null,Object? gender = null,Object? isLoading = null,Object? errorMessage = freezed,Object? diagnosisResult = freezed,Object? aiDiagnosis = freezed,Object? success = freezed,}) {
  return _then(_self.copyWith(
patientName: null == patientName ? _self.patientName : patientName // ignore: cast_nullable_to_non_nullable
as String,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as String,activeSymptoms: null == activeSymptoms ? _self.activeSymptoms : activeSymptoms // ignore: cast_nullable_to_non_nullable
as List<String>,symptomInput: null == symptomInput ? _self.symptomInput : symptomInput // ignore: cast_nullable_to_non_nullable
as String,symptomsDescription: null == symptomsDescription ? _self.symptomsDescription : symptomsDescription // ignore: cast_nullable_to_non_nullable
as String,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as double,prakriti: null == prakriti ? _self.prakriti : prakriti // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,diagnosisResult: freezed == diagnosisResult ? _self.diagnosisResult : diagnosisResult // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,aiDiagnosis: freezed == aiDiagnosis ? _self.aiDiagnosis : aiDiagnosis // ignore: cast_nullable_to_non_nullable
as AiDiagnosisEntity?,success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [ConsultationState].
extension ConsultationStatePatterns on ConsultationState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ConsultationState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ConsultationState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ConsultationState value)  $default,){
final _that = this;
switch (_that) {
case _ConsultationState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ConsultationState value)?  $default,){
final _that = this;
switch (_that) {
case _ConsultationState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String patientName,  String age,  List<String> activeSymptoms,  String symptomInput,  String symptomsDescription,  double duration,  String prakriti,  String gender,  bool isLoading,  String? errorMessage,  Map<String, dynamic>? diagnosisResult,  AiDiagnosisEntity? aiDiagnosis,  bool? success)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ConsultationState() when $default != null:
return $default(_that.patientName,_that.age,_that.activeSymptoms,_that.symptomInput,_that.symptomsDescription,_that.duration,_that.prakriti,_that.gender,_that.isLoading,_that.errorMessage,_that.diagnosisResult,_that.aiDiagnosis,_that.success);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String patientName,  String age,  List<String> activeSymptoms,  String symptomInput,  String symptomsDescription,  double duration,  String prakriti,  String gender,  bool isLoading,  String? errorMessage,  Map<String, dynamic>? diagnosisResult,  AiDiagnosisEntity? aiDiagnosis,  bool? success)  $default,) {final _that = this;
switch (_that) {
case _ConsultationState():
return $default(_that.patientName,_that.age,_that.activeSymptoms,_that.symptomInput,_that.symptomsDescription,_that.duration,_that.prakriti,_that.gender,_that.isLoading,_that.errorMessage,_that.diagnosisResult,_that.aiDiagnosis,_that.success);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String patientName,  String age,  List<String> activeSymptoms,  String symptomInput,  String symptomsDescription,  double duration,  String prakriti,  String gender,  bool isLoading,  String? errorMessage,  Map<String, dynamic>? diagnosisResult,  AiDiagnosisEntity? aiDiagnosis,  bool? success)?  $default,) {final _that = this;
switch (_that) {
case _ConsultationState() when $default != null:
return $default(_that.patientName,_that.age,_that.activeSymptoms,_that.symptomInput,_that.symptomsDescription,_that.duration,_that.prakriti,_that.gender,_that.isLoading,_that.errorMessage,_that.diagnosisResult,_that.aiDiagnosis,_that.success);case _:
  return null;

}
}

}

/// @nodoc


class _ConsultationState implements ConsultationState {
  const _ConsultationState({this.patientName = '', this.age = '', final  List<String> activeSymptoms = const [], this.symptomInput = '', this.symptomsDescription = '', this.duration = 1.0, this.prakriti = 'Vata', this.gender = 'Female', this.isLoading = false, this.errorMessage, final  Map<String, dynamic>? diagnosisResult, this.aiDiagnosis, this.success}): _activeSymptoms = activeSymptoms,_diagnosisResult = diagnosisResult;
  

@override@JsonKey() final  String patientName;
@override@JsonKey() final  String age;
 final  List<String> _activeSymptoms;
@override@JsonKey() List<String> get activeSymptoms {
  if (_activeSymptoms is EqualUnmodifiableListView) return _activeSymptoms;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_activeSymptoms);
}

@override@JsonKey() final  String symptomInput;
@override@JsonKey() final  String symptomsDescription;
@override@JsonKey() final  double duration;
@override@JsonKey() final  String prakriti;
@override@JsonKey() final  String gender;
@override@JsonKey() final  bool isLoading;
@override final  String? errorMessage;
 final  Map<String, dynamic>? _diagnosisResult;
@override Map<String, dynamic>? get diagnosisResult {
  final value = _diagnosisResult;
  if (value == null) return null;
  if (_diagnosisResult is EqualUnmodifiableMapView) return _diagnosisResult;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override final  AiDiagnosisEntity? aiDiagnosis;
@override final  bool? success;

/// Create a copy of ConsultationState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConsultationStateCopyWith<_ConsultationState> get copyWith => __$ConsultationStateCopyWithImpl<_ConsultationState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConsultationState&&(identical(other.patientName, patientName) || other.patientName == patientName)&&(identical(other.age, age) || other.age == age)&&const DeepCollectionEquality().equals(other._activeSymptoms, _activeSymptoms)&&(identical(other.symptomInput, symptomInput) || other.symptomInput == symptomInput)&&(identical(other.symptomsDescription, symptomsDescription) || other.symptomsDescription == symptomsDescription)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.prakriti, prakriti) || other.prakriti == prakriti)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&const DeepCollectionEquality().equals(other._diagnosisResult, _diagnosisResult)&&(identical(other.aiDiagnosis, aiDiagnosis) || other.aiDiagnosis == aiDiagnosis)&&(identical(other.success, success) || other.success == success));
}


@override
int get hashCode => Object.hash(runtimeType,patientName,age,const DeepCollectionEquality().hash(_activeSymptoms),symptomInput,symptomsDescription,duration,prakriti,gender,isLoading,errorMessage,const DeepCollectionEquality().hash(_diagnosisResult),aiDiagnosis,success);

@override
String toString() {
  return 'ConsultationState(patientName: $patientName, age: $age, activeSymptoms: $activeSymptoms, symptomInput: $symptomInput, symptomsDescription: $symptomsDescription, duration: $duration, prakriti: $prakriti, gender: $gender, isLoading: $isLoading, errorMessage: $errorMessage, diagnosisResult: $diagnosisResult, aiDiagnosis: $aiDiagnosis, success: $success)';
}


}

/// @nodoc
abstract mixin class _$ConsultationStateCopyWith<$Res> implements $ConsultationStateCopyWith<$Res> {
  factory _$ConsultationStateCopyWith(_ConsultationState value, $Res Function(_ConsultationState) _then) = __$ConsultationStateCopyWithImpl;
@override @useResult
$Res call({
 String patientName, String age, List<String> activeSymptoms, String symptomInput, String symptomsDescription, double duration, String prakriti, String gender, bool isLoading, String? errorMessage, Map<String, dynamic>? diagnosisResult, AiDiagnosisEntity? aiDiagnosis, bool? success
});




}
/// @nodoc
class __$ConsultationStateCopyWithImpl<$Res>
    implements _$ConsultationStateCopyWith<$Res> {
  __$ConsultationStateCopyWithImpl(this._self, this._then);

  final _ConsultationState _self;
  final $Res Function(_ConsultationState) _then;

/// Create a copy of ConsultationState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? patientName = null,Object? age = null,Object? activeSymptoms = null,Object? symptomInput = null,Object? symptomsDescription = null,Object? duration = null,Object? prakriti = null,Object? gender = null,Object? isLoading = null,Object? errorMessage = freezed,Object? diagnosisResult = freezed,Object? aiDiagnosis = freezed,Object? success = freezed,}) {
  return _then(_ConsultationState(
patientName: null == patientName ? _self.patientName : patientName // ignore: cast_nullable_to_non_nullable
as String,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as String,activeSymptoms: null == activeSymptoms ? _self._activeSymptoms : activeSymptoms // ignore: cast_nullable_to_non_nullable
as List<String>,symptomInput: null == symptomInput ? _self.symptomInput : symptomInput // ignore: cast_nullable_to_non_nullable
as String,symptomsDescription: null == symptomsDescription ? _self.symptomsDescription : symptomsDescription // ignore: cast_nullable_to_non_nullable
as String,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as double,prakriti: null == prakriti ? _self.prakriti : prakriti // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,diagnosisResult: freezed == diagnosisResult ? _self._diagnosisResult : diagnosisResult // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,aiDiagnosis: freezed == aiDiagnosis ? _self.aiDiagnosis : aiDiagnosis // ignore: cast_nullable_to_non_nullable
as AiDiagnosisEntity?,success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
