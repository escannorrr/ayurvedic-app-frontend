// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ai_diagnosis_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AiDiagnosisResponse {

@JsonKey(name: 'explanation') dynamic get explanation; List<DiagnosisModel> get diagnosis; TreatmentModel get treatment; DoshaModel get dosha;
/// Create a copy of AiDiagnosisResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AiDiagnosisResponseCopyWith<AiDiagnosisResponse> get copyWith => _$AiDiagnosisResponseCopyWithImpl<AiDiagnosisResponse>(this as AiDiagnosisResponse, _$identity);

  /// Serializes this AiDiagnosisResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AiDiagnosisResponse&&const DeepCollectionEquality().equals(other.explanation, explanation)&&const DeepCollectionEquality().equals(other.diagnosis, diagnosis)&&(identical(other.treatment, treatment) || other.treatment == treatment)&&(identical(other.dosha, dosha) || other.dosha == dosha));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(explanation),const DeepCollectionEquality().hash(diagnosis),treatment,dosha);

@override
String toString() {
  return 'AiDiagnosisResponse(explanation: $explanation, diagnosis: $diagnosis, treatment: $treatment, dosha: $dosha)';
}


}

/// @nodoc
abstract mixin class $AiDiagnosisResponseCopyWith<$Res>  {
  factory $AiDiagnosisResponseCopyWith(AiDiagnosisResponse value, $Res Function(AiDiagnosisResponse) _then) = _$AiDiagnosisResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'explanation') dynamic explanation, List<DiagnosisModel> diagnosis, TreatmentModel treatment, DoshaModel dosha
});


$TreatmentModelCopyWith<$Res> get treatment;$DoshaModelCopyWith<$Res> get dosha;

}
/// @nodoc
class _$AiDiagnosisResponseCopyWithImpl<$Res>
    implements $AiDiagnosisResponseCopyWith<$Res> {
  _$AiDiagnosisResponseCopyWithImpl(this._self, this._then);

  final AiDiagnosisResponse _self;
  final $Res Function(AiDiagnosisResponse) _then;

/// Create a copy of AiDiagnosisResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? explanation = freezed,Object? diagnosis = null,Object? treatment = null,Object? dosha = null,}) {
  return _then(_self.copyWith(
explanation: freezed == explanation ? _self.explanation : explanation // ignore: cast_nullable_to_non_nullable
as dynamic,diagnosis: null == diagnosis ? _self.diagnosis : diagnosis // ignore: cast_nullable_to_non_nullable
as List<DiagnosisModel>,treatment: null == treatment ? _self.treatment : treatment // ignore: cast_nullable_to_non_nullable
as TreatmentModel,dosha: null == dosha ? _self.dosha : dosha // ignore: cast_nullable_to_non_nullable
as DoshaModel,
  ));
}
/// Create a copy of AiDiagnosisResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TreatmentModelCopyWith<$Res> get treatment {
  
  return $TreatmentModelCopyWith<$Res>(_self.treatment, (value) {
    return _then(_self.copyWith(treatment: value));
  });
}/// Create a copy of AiDiagnosisResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DoshaModelCopyWith<$Res> get dosha {
  
  return $DoshaModelCopyWith<$Res>(_self.dosha, (value) {
    return _then(_self.copyWith(dosha: value));
  });
}
}


/// Adds pattern-matching-related methods to [AiDiagnosisResponse].
extension AiDiagnosisResponsePatterns on AiDiagnosisResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AiDiagnosisResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AiDiagnosisResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AiDiagnosisResponse value)  $default,){
final _that = this;
switch (_that) {
case _AiDiagnosisResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AiDiagnosisResponse value)?  $default,){
final _that = this;
switch (_that) {
case _AiDiagnosisResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'explanation')  dynamic explanation,  List<DiagnosisModel> diagnosis,  TreatmentModel treatment,  DoshaModel dosha)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AiDiagnosisResponse() when $default != null:
return $default(_that.explanation,_that.diagnosis,_that.treatment,_that.dosha);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'explanation')  dynamic explanation,  List<DiagnosisModel> diagnosis,  TreatmentModel treatment,  DoshaModel dosha)  $default,) {final _that = this;
switch (_that) {
case _AiDiagnosisResponse():
return $default(_that.explanation,_that.diagnosis,_that.treatment,_that.dosha);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'explanation')  dynamic explanation,  List<DiagnosisModel> diagnosis,  TreatmentModel treatment,  DoshaModel dosha)?  $default,) {final _that = this;
switch (_that) {
case _AiDiagnosisResponse() when $default != null:
return $default(_that.explanation,_that.diagnosis,_that.treatment,_that.dosha);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AiDiagnosisResponse extends AiDiagnosisResponse {
  const _AiDiagnosisResponse({@JsonKey(name: 'explanation') required this.explanation, required final  List<DiagnosisModel> diagnosis, required this.treatment, required this.dosha}): _diagnosis = diagnosis,super._();
  factory _AiDiagnosisResponse.fromJson(Map<String, dynamic> json) => _$AiDiagnosisResponseFromJson(json);

@override@JsonKey(name: 'explanation') final  dynamic explanation;
 final  List<DiagnosisModel> _diagnosis;
@override List<DiagnosisModel> get diagnosis {
  if (_diagnosis is EqualUnmodifiableListView) return _diagnosis;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_diagnosis);
}

@override final  TreatmentModel treatment;
@override final  DoshaModel dosha;

/// Create a copy of AiDiagnosisResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AiDiagnosisResponseCopyWith<_AiDiagnosisResponse> get copyWith => __$AiDiagnosisResponseCopyWithImpl<_AiDiagnosisResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AiDiagnosisResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AiDiagnosisResponse&&const DeepCollectionEquality().equals(other.explanation, explanation)&&const DeepCollectionEquality().equals(other._diagnosis, _diagnosis)&&(identical(other.treatment, treatment) || other.treatment == treatment)&&(identical(other.dosha, dosha) || other.dosha == dosha));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(explanation),const DeepCollectionEquality().hash(_diagnosis),treatment,dosha);

@override
String toString() {
  return 'AiDiagnosisResponse(explanation: $explanation, diagnosis: $diagnosis, treatment: $treatment, dosha: $dosha)';
}


}

/// @nodoc
abstract mixin class _$AiDiagnosisResponseCopyWith<$Res> implements $AiDiagnosisResponseCopyWith<$Res> {
  factory _$AiDiagnosisResponseCopyWith(_AiDiagnosisResponse value, $Res Function(_AiDiagnosisResponse) _then) = __$AiDiagnosisResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'explanation') dynamic explanation, List<DiagnosisModel> diagnosis, TreatmentModel treatment, DoshaModel dosha
});


@override $TreatmentModelCopyWith<$Res> get treatment;@override $DoshaModelCopyWith<$Res> get dosha;

}
/// @nodoc
class __$AiDiagnosisResponseCopyWithImpl<$Res>
    implements _$AiDiagnosisResponseCopyWith<$Res> {
  __$AiDiagnosisResponseCopyWithImpl(this._self, this._then);

  final _AiDiagnosisResponse _self;
  final $Res Function(_AiDiagnosisResponse) _then;

/// Create a copy of AiDiagnosisResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? explanation = freezed,Object? diagnosis = null,Object? treatment = null,Object? dosha = null,}) {
  return _then(_AiDiagnosisResponse(
explanation: freezed == explanation ? _self.explanation : explanation // ignore: cast_nullable_to_non_nullable
as dynamic,diagnosis: null == diagnosis ? _self._diagnosis : diagnosis // ignore: cast_nullable_to_non_nullable
as List<DiagnosisModel>,treatment: null == treatment ? _self.treatment : treatment // ignore: cast_nullable_to_non_nullable
as TreatmentModel,dosha: null == dosha ? _self.dosha : dosha // ignore: cast_nullable_to_non_nullable
as DoshaModel,
  ));
}

/// Create a copy of AiDiagnosisResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TreatmentModelCopyWith<$Res> get treatment {
  
  return $TreatmentModelCopyWith<$Res>(_self.treatment, (value) {
    return _then(_self.copyWith(treatment: value));
  });
}/// Create a copy of AiDiagnosisResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DoshaModelCopyWith<$Res> get dosha {
  
  return $DoshaModelCopyWith<$Res>(_self.dosha, (value) {
    return _then(_self.copyWith(dosha: value));
  });
}
}


/// @nodoc
mixin _$DiagnosisModel {

 String get condition; double? get probability;
/// Create a copy of DiagnosisModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DiagnosisModelCopyWith<DiagnosisModel> get copyWith => _$DiagnosisModelCopyWithImpl<DiagnosisModel>(this as DiagnosisModel, _$identity);

  /// Serializes this DiagnosisModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DiagnosisModel&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.probability, probability) || other.probability == probability));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,condition,probability);

@override
String toString() {
  return 'DiagnosisModel(condition: $condition, probability: $probability)';
}


}

/// @nodoc
abstract mixin class $DiagnosisModelCopyWith<$Res>  {
  factory $DiagnosisModelCopyWith(DiagnosisModel value, $Res Function(DiagnosisModel) _then) = _$DiagnosisModelCopyWithImpl;
@useResult
$Res call({
 String condition, double? probability
});




}
/// @nodoc
class _$DiagnosisModelCopyWithImpl<$Res>
    implements $DiagnosisModelCopyWith<$Res> {
  _$DiagnosisModelCopyWithImpl(this._self, this._then);

  final DiagnosisModel _self;
  final $Res Function(DiagnosisModel) _then;

/// Create a copy of DiagnosisModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? condition = null,Object? probability = freezed,}) {
  return _then(_self.copyWith(
condition: null == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as String,probability: freezed == probability ? _self.probability : probability // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [DiagnosisModel].
extension DiagnosisModelPatterns on DiagnosisModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DiagnosisModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DiagnosisModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DiagnosisModel value)  $default,){
final _that = this;
switch (_that) {
case _DiagnosisModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DiagnosisModel value)?  $default,){
final _that = this;
switch (_that) {
case _DiagnosisModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String condition,  double? probability)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DiagnosisModel() when $default != null:
return $default(_that.condition,_that.probability);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String condition,  double? probability)  $default,) {final _that = this;
switch (_that) {
case _DiagnosisModel():
return $default(_that.condition,_that.probability);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String condition,  double? probability)?  $default,) {final _that = this;
switch (_that) {
case _DiagnosisModel() when $default != null:
return $default(_that.condition,_that.probability);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DiagnosisModel implements DiagnosisModel {
  const _DiagnosisModel({required this.condition, this.probability});
  factory _DiagnosisModel.fromJson(Map<String, dynamic> json) => _$DiagnosisModelFromJson(json);

@override final  String condition;
@override final  double? probability;

/// Create a copy of DiagnosisModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DiagnosisModelCopyWith<_DiagnosisModel> get copyWith => __$DiagnosisModelCopyWithImpl<_DiagnosisModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DiagnosisModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DiagnosisModel&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.probability, probability) || other.probability == probability));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,condition,probability);

@override
String toString() {
  return 'DiagnosisModel(condition: $condition, probability: $probability)';
}


}

/// @nodoc
abstract mixin class _$DiagnosisModelCopyWith<$Res> implements $DiagnosisModelCopyWith<$Res> {
  factory _$DiagnosisModelCopyWith(_DiagnosisModel value, $Res Function(_DiagnosisModel) _then) = __$DiagnosisModelCopyWithImpl;
@override @useResult
$Res call({
 String condition, double? probability
});




}
/// @nodoc
class __$DiagnosisModelCopyWithImpl<$Res>
    implements _$DiagnosisModelCopyWith<$Res> {
  __$DiagnosisModelCopyWithImpl(this._self, this._then);

  final _DiagnosisModel _self;
  final $Res Function(_DiagnosisModel) _then;

/// Create a copy of DiagnosisModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? condition = null,Object? probability = freezed,}) {
  return _then(_DiagnosisModel(
condition: null == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as String,probability: freezed == probability ? _self.probability : probability // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}


/// @nodoc
mixin _$TreatmentModel {

 List<String> get herbs; List<String> get lifestyle;
/// Create a copy of TreatmentModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TreatmentModelCopyWith<TreatmentModel> get copyWith => _$TreatmentModelCopyWithImpl<TreatmentModel>(this as TreatmentModel, _$identity);

  /// Serializes this TreatmentModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TreatmentModel&&const DeepCollectionEquality().equals(other.herbs, herbs)&&const DeepCollectionEquality().equals(other.lifestyle, lifestyle));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(herbs),const DeepCollectionEquality().hash(lifestyle));

@override
String toString() {
  return 'TreatmentModel(herbs: $herbs, lifestyle: $lifestyle)';
}


}

/// @nodoc
abstract mixin class $TreatmentModelCopyWith<$Res>  {
  factory $TreatmentModelCopyWith(TreatmentModel value, $Res Function(TreatmentModel) _then) = _$TreatmentModelCopyWithImpl;
@useResult
$Res call({
 List<String> herbs, List<String> lifestyle
});




}
/// @nodoc
class _$TreatmentModelCopyWithImpl<$Res>
    implements $TreatmentModelCopyWith<$Res> {
  _$TreatmentModelCopyWithImpl(this._self, this._then);

  final TreatmentModel _self;
  final $Res Function(TreatmentModel) _then;

/// Create a copy of TreatmentModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? herbs = null,Object? lifestyle = null,}) {
  return _then(_self.copyWith(
herbs: null == herbs ? _self.herbs : herbs // ignore: cast_nullable_to_non_nullable
as List<String>,lifestyle: null == lifestyle ? _self.lifestyle : lifestyle // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [TreatmentModel].
extension TreatmentModelPatterns on TreatmentModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TreatmentModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TreatmentModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TreatmentModel value)  $default,){
final _that = this;
switch (_that) {
case _TreatmentModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TreatmentModel value)?  $default,){
final _that = this;
switch (_that) {
case _TreatmentModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<String> herbs,  List<String> lifestyle)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TreatmentModel() when $default != null:
return $default(_that.herbs,_that.lifestyle);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<String> herbs,  List<String> lifestyle)  $default,) {final _that = this;
switch (_that) {
case _TreatmentModel():
return $default(_that.herbs,_that.lifestyle);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<String> herbs,  List<String> lifestyle)?  $default,) {final _that = this;
switch (_that) {
case _TreatmentModel() when $default != null:
return $default(_that.herbs,_that.lifestyle);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TreatmentModel implements TreatmentModel {
  const _TreatmentModel({required final  List<String> herbs, required final  List<String> lifestyle}): _herbs = herbs,_lifestyle = lifestyle;
  factory _TreatmentModel.fromJson(Map<String, dynamic> json) => _$TreatmentModelFromJson(json);

 final  List<String> _herbs;
@override List<String> get herbs {
  if (_herbs is EqualUnmodifiableListView) return _herbs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_herbs);
}

 final  List<String> _lifestyle;
@override List<String> get lifestyle {
  if (_lifestyle is EqualUnmodifiableListView) return _lifestyle;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_lifestyle);
}


/// Create a copy of TreatmentModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TreatmentModelCopyWith<_TreatmentModel> get copyWith => __$TreatmentModelCopyWithImpl<_TreatmentModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TreatmentModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TreatmentModel&&const DeepCollectionEquality().equals(other._herbs, _herbs)&&const DeepCollectionEquality().equals(other._lifestyle, _lifestyle));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_herbs),const DeepCollectionEquality().hash(_lifestyle));

@override
String toString() {
  return 'TreatmentModel(herbs: $herbs, lifestyle: $lifestyle)';
}


}

/// @nodoc
abstract mixin class _$TreatmentModelCopyWith<$Res> implements $TreatmentModelCopyWith<$Res> {
  factory _$TreatmentModelCopyWith(_TreatmentModel value, $Res Function(_TreatmentModel) _then) = __$TreatmentModelCopyWithImpl;
@override @useResult
$Res call({
 List<String> herbs, List<String> lifestyle
});




}
/// @nodoc
class __$TreatmentModelCopyWithImpl<$Res>
    implements _$TreatmentModelCopyWith<$Res> {
  __$TreatmentModelCopyWithImpl(this._self, this._then);

  final _TreatmentModel _self;
  final $Res Function(_TreatmentModel) _then;

/// Create a copy of TreatmentModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? herbs = null,Object? lifestyle = null,}) {
  return _then(_TreatmentModel(
herbs: null == herbs ? _self._herbs : herbs // ignore: cast_nullable_to_non_nullable
as List<String>,lifestyle: null == lifestyle ? _self._lifestyle : lifestyle // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}


/// @nodoc
mixin _$DoshaModel {

 double get vata; double get pitta; double get kapha;
/// Create a copy of DoshaModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DoshaModelCopyWith<DoshaModel> get copyWith => _$DoshaModelCopyWithImpl<DoshaModel>(this as DoshaModel, _$identity);

  /// Serializes this DoshaModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DoshaModel&&(identical(other.vata, vata) || other.vata == vata)&&(identical(other.pitta, pitta) || other.pitta == pitta)&&(identical(other.kapha, kapha) || other.kapha == kapha));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,vata,pitta,kapha);

@override
String toString() {
  return 'DoshaModel(vata: $vata, pitta: $pitta, kapha: $kapha)';
}


}

/// @nodoc
abstract mixin class $DoshaModelCopyWith<$Res>  {
  factory $DoshaModelCopyWith(DoshaModel value, $Res Function(DoshaModel) _then) = _$DoshaModelCopyWithImpl;
@useResult
$Res call({
 double vata, double pitta, double kapha
});




}
/// @nodoc
class _$DoshaModelCopyWithImpl<$Res>
    implements $DoshaModelCopyWith<$Res> {
  _$DoshaModelCopyWithImpl(this._self, this._then);

  final DoshaModel _self;
  final $Res Function(DoshaModel) _then;

/// Create a copy of DoshaModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? vata = null,Object? pitta = null,Object? kapha = null,}) {
  return _then(_self.copyWith(
vata: null == vata ? _self.vata : vata // ignore: cast_nullable_to_non_nullable
as double,pitta: null == pitta ? _self.pitta : pitta // ignore: cast_nullable_to_non_nullable
as double,kapha: null == kapha ? _self.kapha : kapha // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [DoshaModel].
extension DoshaModelPatterns on DoshaModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DoshaModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DoshaModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DoshaModel value)  $default,){
final _that = this;
switch (_that) {
case _DoshaModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DoshaModel value)?  $default,){
final _that = this;
switch (_that) {
case _DoshaModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double vata,  double pitta,  double kapha)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DoshaModel() when $default != null:
return $default(_that.vata,_that.pitta,_that.kapha);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double vata,  double pitta,  double kapha)  $default,) {final _that = this;
switch (_that) {
case _DoshaModel():
return $default(_that.vata,_that.pitta,_that.kapha);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double vata,  double pitta,  double kapha)?  $default,) {final _that = this;
switch (_that) {
case _DoshaModel() when $default != null:
return $default(_that.vata,_that.pitta,_that.kapha);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DoshaModel implements DoshaModel {
  const _DoshaModel({required this.vata, required this.pitta, required this.kapha});
  factory _DoshaModel.fromJson(Map<String, dynamic> json) => _$DoshaModelFromJson(json);

@override final  double vata;
@override final  double pitta;
@override final  double kapha;

/// Create a copy of DoshaModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DoshaModelCopyWith<_DoshaModel> get copyWith => __$DoshaModelCopyWithImpl<_DoshaModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DoshaModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DoshaModel&&(identical(other.vata, vata) || other.vata == vata)&&(identical(other.pitta, pitta) || other.pitta == pitta)&&(identical(other.kapha, kapha) || other.kapha == kapha));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,vata,pitta,kapha);

@override
String toString() {
  return 'DoshaModel(vata: $vata, pitta: $pitta, kapha: $kapha)';
}


}

/// @nodoc
abstract mixin class _$DoshaModelCopyWith<$Res> implements $DoshaModelCopyWith<$Res> {
  factory _$DoshaModelCopyWith(_DoshaModel value, $Res Function(_DoshaModel) _then) = __$DoshaModelCopyWithImpl;
@override @useResult
$Res call({
 double vata, double pitta, double kapha
});




}
/// @nodoc
class __$DoshaModelCopyWithImpl<$Res>
    implements _$DoshaModelCopyWith<$Res> {
  __$DoshaModelCopyWithImpl(this._self, this._then);

  final _DoshaModel _self;
  final $Res Function(_DoshaModel) _then;

/// Create a copy of DoshaModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? vata = null,Object? pitta = null,Object? kapha = null,}) {
  return _then(_DoshaModel(
vata: null == vata ? _self.vata : vata // ignore: cast_nullable_to_non_nullable
as double,pitta: null == pitta ? _self.pitta : pitta // ignore: cast_nullable_to_non_nullable
as double,kapha: null == kapha ? _self.kapha : kapha // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
