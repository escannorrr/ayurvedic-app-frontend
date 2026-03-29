// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'case_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CaseEntity {

 String get id; String get caseIdentifier; String get patientName; int get age; String get gender; String get location; List<String> get symptoms; String get duration; String get notes; Map<String, dynamic>? get aiAnalysis; Map<String, dynamic>? get doctorInput; String get status; DateTime get createdAt; String get diagnosis;
/// Create a copy of CaseEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CaseEntityCopyWith<CaseEntity> get copyWith => _$CaseEntityCopyWithImpl<CaseEntity>(this as CaseEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CaseEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.caseIdentifier, caseIdentifier) || other.caseIdentifier == caseIdentifier)&&(identical(other.patientName, patientName) || other.patientName == patientName)&&(identical(other.age, age) || other.age == age)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.location, location) || other.location == location)&&const DeepCollectionEquality().equals(other.symptoms, symptoms)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.notes, notes) || other.notes == notes)&&const DeepCollectionEquality().equals(other.aiAnalysis, aiAnalysis)&&const DeepCollectionEquality().equals(other.doctorInput, doctorInput)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.diagnosis, diagnosis) || other.diagnosis == diagnosis));
}


@override
int get hashCode => Object.hash(runtimeType,id,caseIdentifier,patientName,age,gender,location,const DeepCollectionEquality().hash(symptoms),duration,notes,const DeepCollectionEquality().hash(aiAnalysis),const DeepCollectionEquality().hash(doctorInput),status,createdAt,diagnosis);

@override
String toString() {
  return 'CaseEntity(id: $id, caseIdentifier: $caseIdentifier, patientName: $patientName, age: $age, gender: $gender, location: $location, symptoms: $symptoms, duration: $duration, notes: $notes, aiAnalysis: $aiAnalysis, doctorInput: $doctorInput, status: $status, createdAt: $createdAt, diagnosis: $diagnosis)';
}


}

/// @nodoc
abstract mixin class $CaseEntityCopyWith<$Res>  {
  factory $CaseEntityCopyWith(CaseEntity value, $Res Function(CaseEntity) _then) = _$CaseEntityCopyWithImpl;
@useResult
$Res call({
 String id, String caseIdentifier, String patientName, int age, String gender, String location, List<String> symptoms, String duration, String notes, Map<String, dynamic>? aiAnalysis, Map<String, dynamic>? doctorInput, String status, DateTime createdAt, String diagnosis
});




}
/// @nodoc
class _$CaseEntityCopyWithImpl<$Res>
    implements $CaseEntityCopyWith<$Res> {
  _$CaseEntityCopyWithImpl(this._self, this._then);

  final CaseEntity _self;
  final $Res Function(CaseEntity) _then;

/// Create a copy of CaseEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? caseIdentifier = null,Object? patientName = null,Object? age = null,Object? gender = null,Object? location = null,Object? symptoms = null,Object? duration = null,Object? notes = null,Object? aiAnalysis = freezed,Object? doctorInput = freezed,Object? status = null,Object? createdAt = null,Object? diagnosis = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,caseIdentifier: null == caseIdentifier ? _self.caseIdentifier : caseIdentifier // ignore: cast_nullable_to_non_nullable
as String,patientName: null == patientName ? _self.patientName : patientName // ignore: cast_nullable_to_non_nullable
as String,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,symptoms: null == symptoms ? _self.symptoms : symptoms // ignore: cast_nullable_to_non_nullable
as List<String>,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as String,notes: null == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String,aiAnalysis: freezed == aiAnalysis ? _self.aiAnalysis : aiAnalysis // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,doctorInput: freezed == doctorInput ? _self.doctorInput : doctorInput // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,diagnosis: null == diagnosis ? _self.diagnosis : diagnosis // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CaseEntity].
extension CaseEntityPatterns on CaseEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CaseEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CaseEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CaseEntity value)  $default,){
final _that = this;
switch (_that) {
case _CaseEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CaseEntity value)?  $default,){
final _that = this;
switch (_that) {
case _CaseEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String caseIdentifier,  String patientName,  int age,  String gender,  String location,  List<String> symptoms,  String duration,  String notes,  Map<String, dynamic>? aiAnalysis,  Map<String, dynamic>? doctorInput,  String status,  DateTime createdAt,  String diagnosis)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CaseEntity() when $default != null:
return $default(_that.id,_that.caseIdentifier,_that.patientName,_that.age,_that.gender,_that.location,_that.symptoms,_that.duration,_that.notes,_that.aiAnalysis,_that.doctorInput,_that.status,_that.createdAt,_that.diagnosis);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String caseIdentifier,  String patientName,  int age,  String gender,  String location,  List<String> symptoms,  String duration,  String notes,  Map<String, dynamic>? aiAnalysis,  Map<String, dynamic>? doctorInput,  String status,  DateTime createdAt,  String diagnosis)  $default,) {final _that = this;
switch (_that) {
case _CaseEntity():
return $default(_that.id,_that.caseIdentifier,_that.patientName,_that.age,_that.gender,_that.location,_that.symptoms,_that.duration,_that.notes,_that.aiAnalysis,_that.doctorInput,_that.status,_that.createdAt,_that.diagnosis);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String caseIdentifier,  String patientName,  int age,  String gender,  String location,  List<String> symptoms,  String duration,  String notes,  Map<String, dynamic>? aiAnalysis,  Map<String, dynamic>? doctorInput,  String status,  DateTime createdAt,  String diagnosis)?  $default,) {final _that = this;
switch (_that) {
case _CaseEntity() when $default != null:
return $default(_that.id,_that.caseIdentifier,_that.patientName,_that.age,_that.gender,_that.location,_that.symptoms,_that.duration,_that.notes,_that.aiAnalysis,_that.doctorInput,_that.status,_that.createdAt,_that.diagnosis);case _:
  return null;

}
}

}

/// @nodoc


class _CaseEntity extends CaseEntity {
  const _CaseEntity({required this.id, this.caseIdentifier = '', required this.patientName, this.age = 0, this.gender = 'Unknown', this.location = 'Unknown', final  List<String> symptoms = const [], this.duration = '', this.notes = '', final  Map<String, dynamic>? aiAnalysis, final  Map<String, dynamic>? doctorInput, this.status = 'draft', required this.createdAt, this.diagnosis = ''}): _symptoms = symptoms,_aiAnalysis = aiAnalysis,_doctorInput = doctorInput,super._();
  

@override final  String id;
@override@JsonKey() final  String caseIdentifier;
@override final  String patientName;
@override@JsonKey() final  int age;
@override@JsonKey() final  String gender;
@override@JsonKey() final  String location;
 final  List<String> _symptoms;
@override@JsonKey() List<String> get symptoms {
  if (_symptoms is EqualUnmodifiableListView) return _symptoms;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_symptoms);
}

@override@JsonKey() final  String duration;
@override@JsonKey() final  String notes;
 final  Map<String, dynamic>? _aiAnalysis;
@override Map<String, dynamic>? get aiAnalysis {
  final value = _aiAnalysis;
  if (value == null) return null;
  if (_aiAnalysis is EqualUnmodifiableMapView) return _aiAnalysis;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  Map<String, dynamic>? _doctorInput;
@override Map<String, dynamic>? get doctorInput {
  final value = _doctorInput;
  if (value == null) return null;
  if (_doctorInput is EqualUnmodifiableMapView) return _doctorInput;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override@JsonKey() final  String status;
@override final  DateTime createdAt;
@override@JsonKey() final  String diagnosis;

/// Create a copy of CaseEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CaseEntityCopyWith<_CaseEntity> get copyWith => __$CaseEntityCopyWithImpl<_CaseEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CaseEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.caseIdentifier, caseIdentifier) || other.caseIdentifier == caseIdentifier)&&(identical(other.patientName, patientName) || other.patientName == patientName)&&(identical(other.age, age) || other.age == age)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.location, location) || other.location == location)&&const DeepCollectionEquality().equals(other._symptoms, _symptoms)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.notes, notes) || other.notes == notes)&&const DeepCollectionEquality().equals(other._aiAnalysis, _aiAnalysis)&&const DeepCollectionEquality().equals(other._doctorInput, _doctorInput)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.diagnosis, diagnosis) || other.diagnosis == diagnosis));
}


@override
int get hashCode => Object.hash(runtimeType,id,caseIdentifier,patientName,age,gender,location,const DeepCollectionEquality().hash(_symptoms),duration,notes,const DeepCollectionEquality().hash(_aiAnalysis),const DeepCollectionEquality().hash(_doctorInput),status,createdAt,diagnosis);

@override
String toString() {
  return 'CaseEntity(id: $id, caseIdentifier: $caseIdentifier, patientName: $patientName, age: $age, gender: $gender, location: $location, symptoms: $symptoms, duration: $duration, notes: $notes, aiAnalysis: $aiAnalysis, doctorInput: $doctorInput, status: $status, createdAt: $createdAt, diagnosis: $diagnosis)';
}


}

/// @nodoc
abstract mixin class _$CaseEntityCopyWith<$Res> implements $CaseEntityCopyWith<$Res> {
  factory _$CaseEntityCopyWith(_CaseEntity value, $Res Function(_CaseEntity) _then) = __$CaseEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String caseIdentifier, String patientName, int age, String gender, String location, List<String> symptoms, String duration, String notes, Map<String, dynamic>? aiAnalysis, Map<String, dynamic>? doctorInput, String status, DateTime createdAt, String diagnosis
});




}
/// @nodoc
class __$CaseEntityCopyWithImpl<$Res>
    implements _$CaseEntityCopyWith<$Res> {
  __$CaseEntityCopyWithImpl(this._self, this._then);

  final _CaseEntity _self;
  final $Res Function(_CaseEntity) _then;

/// Create a copy of CaseEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? caseIdentifier = null,Object? patientName = null,Object? age = null,Object? gender = null,Object? location = null,Object? symptoms = null,Object? duration = null,Object? notes = null,Object? aiAnalysis = freezed,Object? doctorInput = freezed,Object? status = null,Object? createdAt = null,Object? diagnosis = null,}) {
  return _then(_CaseEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,caseIdentifier: null == caseIdentifier ? _self.caseIdentifier : caseIdentifier // ignore: cast_nullable_to_non_nullable
as String,patientName: null == patientName ? _self.patientName : patientName // ignore: cast_nullable_to_non_nullable
as String,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,symptoms: null == symptoms ? _self._symptoms : symptoms // ignore: cast_nullable_to_non_nullable
as List<String>,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as String,notes: null == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String,aiAnalysis: freezed == aiAnalysis ? _self._aiAnalysis : aiAnalysis // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,doctorInput: freezed == doctorInput ? _self._doctorInput : doctorInput // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,diagnosis: null == diagnosis ? _self.diagnosis : diagnosis // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
