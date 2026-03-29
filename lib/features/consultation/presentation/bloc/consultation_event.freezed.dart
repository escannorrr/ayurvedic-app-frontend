// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'consultation_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ConsultationEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConsultationEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ConsultationEvent()';
}


}

/// @nodoc
class $ConsultationEventCopyWith<$Res>  {
$ConsultationEventCopyWith(ConsultationEvent _, $Res Function(ConsultationEvent) __);
}


/// Adds pattern-matching-related methods to [ConsultationEvent].
extension ConsultationEventPatterns on ConsultationEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( NameChanged value)?  nameChanged,TResult Function( AgeChanged value)?  ageChanged,TResult Function( SymptomInputChanged value)?  symptomInputChanged,TResult Function( AddSymptom value)?  addSymptom,TResult Function( RemoveSymptom value)?  removeSymptom,TResult Function( SymptomsDescriptionChanged value)?  symptomsDescriptionChanged,TResult Function( DurationChanged value)?  durationChanged,TResult Function( PrakritiChanged value)?  prakritiChanged,TResult Function( GenderChanged value)?  genderChanged,TResult Function( GenerateDiagnosis value)?  generateDiagnosis,TResult Function( AiDiagnosisSettled value)?  aiDiagnosisSettled,required TResult orElse(),}){
final _that = this;
switch (_that) {
case NameChanged() when nameChanged != null:
return nameChanged(_that);case AgeChanged() when ageChanged != null:
return ageChanged(_that);case SymptomInputChanged() when symptomInputChanged != null:
return symptomInputChanged(_that);case AddSymptom() when addSymptom != null:
return addSymptom(_that);case RemoveSymptom() when removeSymptom != null:
return removeSymptom(_that);case SymptomsDescriptionChanged() when symptomsDescriptionChanged != null:
return symptomsDescriptionChanged(_that);case DurationChanged() when durationChanged != null:
return durationChanged(_that);case PrakritiChanged() when prakritiChanged != null:
return prakritiChanged(_that);case GenderChanged() when genderChanged != null:
return genderChanged(_that);case GenerateDiagnosis() when generateDiagnosis != null:
return generateDiagnosis(_that);case AiDiagnosisSettled() when aiDiagnosisSettled != null:
return aiDiagnosisSettled(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( NameChanged value)  nameChanged,required TResult Function( AgeChanged value)  ageChanged,required TResult Function( SymptomInputChanged value)  symptomInputChanged,required TResult Function( AddSymptom value)  addSymptom,required TResult Function( RemoveSymptom value)  removeSymptom,required TResult Function( SymptomsDescriptionChanged value)  symptomsDescriptionChanged,required TResult Function( DurationChanged value)  durationChanged,required TResult Function( PrakritiChanged value)  prakritiChanged,required TResult Function( GenderChanged value)  genderChanged,required TResult Function( GenerateDiagnosis value)  generateDiagnosis,required TResult Function( AiDiagnosisSettled value)  aiDiagnosisSettled,}){
final _that = this;
switch (_that) {
case NameChanged():
return nameChanged(_that);case AgeChanged():
return ageChanged(_that);case SymptomInputChanged():
return symptomInputChanged(_that);case AddSymptom():
return addSymptom(_that);case RemoveSymptom():
return removeSymptom(_that);case SymptomsDescriptionChanged():
return symptomsDescriptionChanged(_that);case DurationChanged():
return durationChanged(_that);case PrakritiChanged():
return prakritiChanged(_that);case GenderChanged():
return genderChanged(_that);case GenerateDiagnosis():
return generateDiagnosis(_that);case AiDiagnosisSettled():
return aiDiagnosisSettled(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( NameChanged value)?  nameChanged,TResult? Function( AgeChanged value)?  ageChanged,TResult? Function( SymptomInputChanged value)?  symptomInputChanged,TResult? Function( AddSymptom value)?  addSymptom,TResult? Function( RemoveSymptom value)?  removeSymptom,TResult? Function( SymptomsDescriptionChanged value)?  symptomsDescriptionChanged,TResult? Function( DurationChanged value)?  durationChanged,TResult? Function( PrakritiChanged value)?  prakritiChanged,TResult? Function( GenderChanged value)?  genderChanged,TResult? Function( GenerateDiagnosis value)?  generateDiagnosis,TResult? Function( AiDiagnosisSettled value)?  aiDiagnosisSettled,}){
final _that = this;
switch (_that) {
case NameChanged() when nameChanged != null:
return nameChanged(_that);case AgeChanged() when ageChanged != null:
return ageChanged(_that);case SymptomInputChanged() when symptomInputChanged != null:
return symptomInputChanged(_that);case AddSymptom() when addSymptom != null:
return addSymptom(_that);case RemoveSymptom() when removeSymptom != null:
return removeSymptom(_that);case SymptomsDescriptionChanged() when symptomsDescriptionChanged != null:
return symptomsDescriptionChanged(_that);case DurationChanged() when durationChanged != null:
return durationChanged(_that);case PrakritiChanged() when prakritiChanged != null:
return prakritiChanged(_that);case GenderChanged() when genderChanged != null:
return genderChanged(_that);case GenerateDiagnosis() when generateDiagnosis != null:
return generateDiagnosis(_that);case AiDiagnosisSettled() when aiDiagnosisSettled != null:
return aiDiagnosisSettled(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String name)?  nameChanged,TResult Function( String age)?  ageChanged,TResult Function( String input)?  symptomInputChanged,TResult Function()?  addSymptom,TResult Function( String symptom)?  removeSymptom,TResult Function( String description)?  symptomsDescriptionChanged,TResult Function( double duration)?  durationChanged,TResult Function( String prakriti)?  prakritiChanged,TResult Function( String gender)?  genderChanged,TResult Function()?  generateDiagnosis,TResult Function( AiDiagnosisEntity diagnosis)?  aiDiagnosisSettled,required TResult orElse(),}) {final _that = this;
switch (_that) {
case NameChanged() when nameChanged != null:
return nameChanged(_that.name);case AgeChanged() when ageChanged != null:
return ageChanged(_that.age);case SymptomInputChanged() when symptomInputChanged != null:
return symptomInputChanged(_that.input);case AddSymptom() when addSymptom != null:
return addSymptom();case RemoveSymptom() when removeSymptom != null:
return removeSymptom(_that.symptom);case SymptomsDescriptionChanged() when symptomsDescriptionChanged != null:
return symptomsDescriptionChanged(_that.description);case DurationChanged() when durationChanged != null:
return durationChanged(_that.duration);case PrakritiChanged() when prakritiChanged != null:
return prakritiChanged(_that.prakriti);case GenderChanged() when genderChanged != null:
return genderChanged(_that.gender);case GenerateDiagnosis() when generateDiagnosis != null:
return generateDiagnosis();case AiDiagnosisSettled() when aiDiagnosisSettled != null:
return aiDiagnosisSettled(_that.diagnosis);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String name)  nameChanged,required TResult Function( String age)  ageChanged,required TResult Function( String input)  symptomInputChanged,required TResult Function()  addSymptom,required TResult Function( String symptom)  removeSymptom,required TResult Function( String description)  symptomsDescriptionChanged,required TResult Function( double duration)  durationChanged,required TResult Function( String prakriti)  prakritiChanged,required TResult Function( String gender)  genderChanged,required TResult Function()  generateDiagnosis,required TResult Function( AiDiagnosisEntity diagnosis)  aiDiagnosisSettled,}) {final _that = this;
switch (_that) {
case NameChanged():
return nameChanged(_that.name);case AgeChanged():
return ageChanged(_that.age);case SymptomInputChanged():
return symptomInputChanged(_that.input);case AddSymptom():
return addSymptom();case RemoveSymptom():
return removeSymptom(_that.symptom);case SymptomsDescriptionChanged():
return symptomsDescriptionChanged(_that.description);case DurationChanged():
return durationChanged(_that.duration);case PrakritiChanged():
return prakritiChanged(_that.prakriti);case GenderChanged():
return genderChanged(_that.gender);case GenerateDiagnosis():
return generateDiagnosis();case AiDiagnosisSettled():
return aiDiagnosisSettled(_that.diagnosis);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String name)?  nameChanged,TResult? Function( String age)?  ageChanged,TResult? Function( String input)?  symptomInputChanged,TResult? Function()?  addSymptom,TResult? Function( String symptom)?  removeSymptom,TResult? Function( String description)?  symptomsDescriptionChanged,TResult? Function( double duration)?  durationChanged,TResult? Function( String prakriti)?  prakritiChanged,TResult? Function( String gender)?  genderChanged,TResult? Function()?  generateDiagnosis,TResult? Function( AiDiagnosisEntity diagnosis)?  aiDiagnosisSettled,}) {final _that = this;
switch (_that) {
case NameChanged() when nameChanged != null:
return nameChanged(_that.name);case AgeChanged() when ageChanged != null:
return ageChanged(_that.age);case SymptomInputChanged() when symptomInputChanged != null:
return symptomInputChanged(_that.input);case AddSymptom() when addSymptom != null:
return addSymptom();case RemoveSymptom() when removeSymptom != null:
return removeSymptom(_that.symptom);case SymptomsDescriptionChanged() when symptomsDescriptionChanged != null:
return symptomsDescriptionChanged(_that.description);case DurationChanged() when durationChanged != null:
return durationChanged(_that.duration);case PrakritiChanged() when prakritiChanged != null:
return prakritiChanged(_that.prakriti);case GenderChanged() when genderChanged != null:
return genderChanged(_that.gender);case GenerateDiagnosis() when generateDiagnosis != null:
return generateDiagnosis();case AiDiagnosisSettled() when aiDiagnosisSettled != null:
return aiDiagnosisSettled(_that.diagnosis);case _:
  return null;

}
}

}

/// @nodoc


class NameChanged implements ConsultationEvent {
  const NameChanged(this.name);
  

 final  String name;

/// Create a copy of ConsultationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NameChangedCopyWith<NameChanged> get copyWith => _$NameChangedCopyWithImpl<NameChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NameChanged&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'ConsultationEvent.nameChanged(name: $name)';
}


}

/// @nodoc
abstract mixin class $NameChangedCopyWith<$Res> implements $ConsultationEventCopyWith<$Res> {
  factory $NameChangedCopyWith(NameChanged value, $Res Function(NameChanged) _then) = _$NameChangedCopyWithImpl;
@useResult
$Res call({
 String name
});




}
/// @nodoc
class _$NameChangedCopyWithImpl<$Res>
    implements $NameChangedCopyWith<$Res> {
  _$NameChangedCopyWithImpl(this._self, this._then);

  final NameChanged _self;
  final $Res Function(NameChanged) _then;

/// Create a copy of ConsultationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? name = null,}) {
  return _then(NameChanged(
null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class AgeChanged implements ConsultationEvent {
  const AgeChanged(this.age);
  

 final  String age;

/// Create a copy of ConsultationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AgeChangedCopyWith<AgeChanged> get copyWith => _$AgeChangedCopyWithImpl<AgeChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AgeChanged&&(identical(other.age, age) || other.age == age));
}


@override
int get hashCode => Object.hash(runtimeType,age);

@override
String toString() {
  return 'ConsultationEvent.ageChanged(age: $age)';
}


}

/// @nodoc
abstract mixin class $AgeChangedCopyWith<$Res> implements $ConsultationEventCopyWith<$Res> {
  factory $AgeChangedCopyWith(AgeChanged value, $Res Function(AgeChanged) _then) = _$AgeChangedCopyWithImpl;
@useResult
$Res call({
 String age
});




}
/// @nodoc
class _$AgeChangedCopyWithImpl<$Res>
    implements $AgeChangedCopyWith<$Res> {
  _$AgeChangedCopyWithImpl(this._self, this._then);

  final AgeChanged _self;
  final $Res Function(AgeChanged) _then;

/// Create a copy of ConsultationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? age = null,}) {
  return _then(AgeChanged(
null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SymptomInputChanged implements ConsultationEvent {
  const SymptomInputChanged(this.input);
  

 final  String input;

/// Create a copy of ConsultationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SymptomInputChangedCopyWith<SymptomInputChanged> get copyWith => _$SymptomInputChangedCopyWithImpl<SymptomInputChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SymptomInputChanged&&(identical(other.input, input) || other.input == input));
}


@override
int get hashCode => Object.hash(runtimeType,input);

@override
String toString() {
  return 'ConsultationEvent.symptomInputChanged(input: $input)';
}


}

/// @nodoc
abstract mixin class $SymptomInputChangedCopyWith<$Res> implements $ConsultationEventCopyWith<$Res> {
  factory $SymptomInputChangedCopyWith(SymptomInputChanged value, $Res Function(SymptomInputChanged) _then) = _$SymptomInputChangedCopyWithImpl;
@useResult
$Res call({
 String input
});




}
/// @nodoc
class _$SymptomInputChangedCopyWithImpl<$Res>
    implements $SymptomInputChangedCopyWith<$Res> {
  _$SymptomInputChangedCopyWithImpl(this._self, this._then);

  final SymptomInputChanged _self;
  final $Res Function(SymptomInputChanged) _then;

/// Create a copy of ConsultationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? input = null,}) {
  return _then(SymptomInputChanged(
null == input ? _self.input : input // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class AddSymptom implements ConsultationEvent {
  const AddSymptom();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddSymptom);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ConsultationEvent.addSymptom()';
}


}




/// @nodoc


class RemoveSymptom implements ConsultationEvent {
  const RemoveSymptom(this.symptom);
  

 final  String symptom;

/// Create a copy of ConsultationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RemoveSymptomCopyWith<RemoveSymptom> get copyWith => _$RemoveSymptomCopyWithImpl<RemoveSymptom>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RemoveSymptom&&(identical(other.symptom, symptom) || other.symptom == symptom));
}


@override
int get hashCode => Object.hash(runtimeType,symptom);

@override
String toString() {
  return 'ConsultationEvent.removeSymptom(symptom: $symptom)';
}


}

/// @nodoc
abstract mixin class $RemoveSymptomCopyWith<$Res> implements $ConsultationEventCopyWith<$Res> {
  factory $RemoveSymptomCopyWith(RemoveSymptom value, $Res Function(RemoveSymptom) _then) = _$RemoveSymptomCopyWithImpl;
@useResult
$Res call({
 String symptom
});




}
/// @nodoc
class _$RemoveSymptomCopyWithImpl<$Res>
    implements $RemoveSymptomCopyWith<$Res> {
  _$RemoveSymptomCopyWithImpl(this._self, this._then);

  final RemoveSymptom _self;
  final $Res Function(RemoveSymptom) _then;

/// Create a copy of ConsultationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? symptom = null,}) {
  return _then(RemoveSymptom(
null == symptom ? _self.symptom : symptom // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SymptomsDescriptionChanged implements ConsultationEvent {
  const SymptomsDescriptionChanged(this.description);
  

 final  String description;

/// Create a copy of ConsultationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SymptomsDescriptionChangedCopyWith<SymptomsDescriptionChanged> get copyWith => _$SymptomsDescriptionChangedCopyWithImpl<SymptomsDescriptionChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SymptomsDescriptionChanged&&(identical(other.description, description) || other.description == description));
}


@override
int get hashCode => Object.hash(runtimeType,description);

@override
String toString() {
  return 'ConsultationEvent.symptomsDescriptionChanged(description: $description)';
}


}

/// @nodoc
abstract mixin class $SymptomsDescriptionChangedCopyWith<$Res> implements $ConsultationEventCopyWith<$Res> {
  factory $SymptomsDescriptionChangedCopyWith(SymptomsDescriptionChanged value, $Res Function(SymptomsDescriptionChanged) _then) = _$SymptomsDescriptionChangedCopyWithImpl;
@useResult
$Res call({
 String description
});




}
/// @nodoc
class _$SymptomsDescriptionChangedCopyWithImpl<$Res>
    implements $SymptomsDescriptionChangedCopyWith<$Res> {
  _$SymptomsDescriptionChangedCopyWithImpl(this._self, this._then);

  final SymptomsDescriptionChanged _self;
  final $Res Function(SymptomsDescriptionChanged) _then;

/// Create a copy of ConsultationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? description = null,}) {
  return _then(SymptomsDescriptionChanged(
null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class DurationChanged implements ConsultationEvent {
  const DurationChanged(this.duration);
  

 final  double duration;

/// Create a copy of ConsultationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DurationChangedCopyWith<DurationChanged> get copyWith => _$DurationChangedCopyWithImpl<DurationChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DurationChanged&&(identical(other.duration, duration) || other.duration == duration));
}


@override
int get hashCode => Object.hash(runtimeType,duration);

@override
String toString() {
  return 'ConsultationEvent.durationChanged(duration: $duration)';
}


}

/// @nodoc
abstract mixin class $DurationChangedCopyWith<$Res> implements $ConsultationEventCopyWith<$Res> {
  factory $DurationChangedCopyWith(DurationChanged value, $Res Function(DurationChanged) _then) = _$DurationChangedCopyWithImpl;
@useResult
$Res call({
 double duration
});




}
/// @nodoc
class _$DurationChangedCopyWithImpl<$Res>
    implements $DurationChangedCopyWith<$Res> {
  _$DurationChangedCopyWithImpl(this._self, this._then);

  final DurationChanged _self;
  final $Res Function(DurationChanged) _then;

/// Create a copy of ConsultationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? duration = null,}) {
  return _then(DurationChanged(
null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc


class PrakritiChanged implements ConsultationEvent {
  const PrakritiChanged(this.prakriti);
  

 final  String prakriti;

/// Create a copy of ConsultationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PrakritiChangedCopyWith<PrakritiChanged> get copyWith => _$PrakritiChangedCopyWithImpl<PrakritiChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PrakritiChanged&&(identical(other.prakriti, prakriti) || other.prakriti == prakriti));
}


@override
int get hashCode => Object.hash(runtimeType,prakriti);

@override
String toString() {
  return 'ConsultationEvent.prakritiChanged(prakriti: $prakriti)';
}


}

/// @nodoc
abstract mixin class $PrakritiChangedCopyWith<$Res> implements $ConsultationEventCopyWith<$Res> {
  factory $PrakritiChangedCopyWith(PrakritiChanged value, $Res Function(PrakritiChanged) _then) = _$PrakritiChangedCopyWithImpl;
@useResult
$Res call({
 String prakriti
});




}
/// @nodoc
class _$PrakritiChangedCopyWithImpl<$Res>
    implements $PrakritiChangedCopyWith<$Res> {
  _$PrakritiChangedCopyWithImpl(this._self, this._then);

  final PrakritiChanged _self;
  final $Res Function(PrakritiChanged) _then;

/// Create a copy of ConsultationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? prakriti = null,}) {
  return _then(PrakritiChanged(
null == prakriti ? _self.prakriti : prakriti // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class GenderChanged implements ConsultationEvent {
  const GenderChanged(this.gender);
  

 final  String gender;

/// Create a copy of ConsultationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GenderChangedCopyWith<GenderChanged> get copyWith => _$GenderChangedCopyWithImpl<GenderChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GenderChanged&&(identical(other.gender, gender) || other.gender == gender));
}


@override
int get hashCode => Object.hash(runtimeType,gender);

@override
String toString() {
  return 'ConsultationEvent.genderChanged(gender: $gender)';
}


}

/// @nodoc
abstract mixin class $GenderChangedCopyWith<$Res> implements $ConsultationEventCopyWith<$Res> {
  factory $GenderChangedCopyWith(GenderChanged value, $Res Function(GenderChanged) _then) = _$GenderChangedCopyWithImpl;
@useResult
$Res call({
 String gender
});




}
/// @nodoc
class _$GenderChangedCopyWithImpl<$Res>
    implements $GenderChangedCopyWith<$Res> {
  _$GenderChangedCopyWithImpl(this._self, this._then);

  final GenderChanged _self;
  final $Res Function(GenderChanged) _then;

/// Create a copy of ConsultationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? gender = null,}) {
  return _then(GenderChanged(
null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class GenerateDiagnosis implements ConsultationEvent {
  const GenerateDiagnosis();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GenerateDiagnosis);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ConsultationEvent.generateDiagnosis()';
}


}




/// @nodoc


class AiDiagnosisSettled implements ConsultationEvent {
  const AiDiagnosisSettled(this.diagnosis);
  

 final  AiDiagnosisEntity diagnosis;

/// Create a copy of ConsultationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AiDiagnosisSettledCopyWith<AiDiagnosisSettled> get copyWith => _$AiDiagnosisSettledCopyWithImpl<AiDiagnosisSettled>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AiDiagnosisSettled&&(identical(other.diagnosis, diagnosis) || other.diagnosis == diagnosis));
}


@override
int get hashCode => Object.hash(runtimeType,diagnosis);

@override
String toString() {
  return 'ConsultationEvent.aiDiagnosisSettled(diagnosis: $diagnosis)';
}


}

/// @nodoc
abstract mixin class $AiDiagnosisSettledCopyWith<$Res> implements $ConsultationEventCopyWith<$Res> {
  factory $AiDiagnosisSettledCopyWith(AiDiagnosisSettled value, $Res Function(AiDiagnosisSettled) _then) = _$AiDiagnosisSettledCopyWithImpl;
@useResult
$Res call({
 AiDiagnosisEntity diagnosis
});




}
/// @nodoc
class _$AiDiagnosisSettledCopyWithImpl<$Res>
    implements $AiDiagnosisSettledCopyWith<$Res> {
  _$AiDiagnosisSettledCopyWithImpl(this._self, this._then);

  final AiDiagnosisSettled _self;
  final $Res Function(AiDiagnosisSettled) _then;

/// Create a copy of ConsultationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? diagnosis = null,}) {
  return _then(AiDiagnosisSettled(
null == diagnosis ? _self.diagnosis : diagnosis // ignore: cast_nullable_to_non_nullable
as AiDiagnosisEntity,
  ));
}


}

// dart format on
