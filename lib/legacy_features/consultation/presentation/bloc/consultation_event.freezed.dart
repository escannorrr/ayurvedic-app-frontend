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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _NameChanged value)?  nameChanged,TResult Function( _AgeChanged value)?  ageChanged,TResult Function( _DurationChanged value)?  durationChanged,TResult Function( _PrakritiChanged value)?  prakritiChanged,TResult Function( _SymptomToggled value)?  symptomToggled,TResult Function( _GenerateDiagnosis value)?  generateDiagnosis,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NameChanged() when nameChanged != null:
return nameChanged(_that);case _AgeChanged() when ageChanged != null:
return ageChanged(_that);case _DurationChanged() when durationChanged != null:
return durationChanged(_that);case _PrakritiChanged() when prakritiChanged != null:
return prakritiChanged(_that);case _SymptomToggled() when symptomToggled != null:
return symptomToggled(_that);case _GenerateDiagnosis() when generateDiagnosis != null:
return generateDiagnosis(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _NameChanged value)  nameChanged,required TResult Function( _AgeChanged value)  ageChanged,required TResult Function( _DurationChanged value)  durationChanged,required TResult Function( _PrakritiChanged value)  prakritiChanged,required TResult Function( _SymptomToggled value)  symptomToggled,required TResult Function( _GenerateDiagnosis value)  generateDiagnosis,}){
final _that = this;
switch (_that) {
case _NameChanged():
return nameChanged(_that);case _AgeChanged():
return ageChanged(_that);case _DurationChanged():
return durationChanged(_that);case _PrakritiChanged():
return prakritiChanged(_that);case _SymptomToggled():
return symptomToggled(_that);case _GenerateDiagnosis():
return generateDiagnosis(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _NameChanged value)?  nameChanged,TResult? Function( _AgeChanged value)?  ageChanged,TResult? Function( _DurationChanged value)?  durationChanged,TResult? Function( _PrakritiChanged value)?  prakritiChanged,TResult? Function( _SymptomToggled value)?  symptomToggled,TResult? Function( _GenerateDiagnosis value)?  generateDiagnosis,}){
final _that = this;
switch (_that) {
case _NameChanged() when nameChanged != null:
return nameChanged(_that);case _AgeChanged() when ageChanged != null:
return ageChanged(_that);case _DurationChanged() when durationChanged != null:
return durationChanged(_that);case _PrakritiChanged() when prakritiChanged != null:
return prakritiChanged(_that);case _SymptomToggled() when symptomToggled != null:
return symptomToggled(_that);case _GenerateDiagnosis() when generateDiagnosis != null:
return generateDiagnosis(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String name)?  nameChanged,TResult Function( String age)?  ageChanged,TResult Function( double duration)?  durationChanged,TResult Function( String prakriti)?  prakritiChanged,TResult Function( String symptom,  bool isAdding)?  symptomToggled,TResult Function()?  generateDiagnosis,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NameChanged() when nameChanged != null:
return nameChanged(_that.name);case _AgeChanged() when ageChanged != null:
return ageChanged(_that.age);case _DurationChanged() when durationChanged != null:
return durationChanged(_that.duration);case _PrakritiChanged() when prakritiChanged != null:
return prakritiChanged(_that.prakriti);case _SymptomToggled() when symptomToggled != null:
return symptomToggled(_that.symptom,_that.isAdding);case _GenerateDiagnosis() when generateDiagnosis != null:
return generateDiagnosis();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String name)  nameChanged,required TResult Function( String age)  ageChanged,required TResult Function( double duration)  durationChanged,required TResult Function( String prakriti)  prakritiChanged,required TResult Function( String symptom,  bool isAdding)  symptomToggled,required TResult Function()  generateDiagnosis,}) {final _that = this;
switch (_that) {
case _NameChanged():
return nameChanged(_that.name);case _AgeChanged():
return ageChanged(_that.age);case _DurationChanged():
return durationChanged(_that.duration);case _PrakritiChanged():
return prakritiChanged(_that.prakriti);case _SymptomToggled():
return symptomToggled(_that.symptom,_that.isAdding);case _GenerateDiagnosis():
return generateDiagnosis();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String name)?  nameChanged,TResult? Function( String age)?  ageChanged,TResult? Function( double duration)?  durationChanged,TResult? Function( String prakriti)?  prakritiChanged,TResult? Function( String symptom,  bool isAdding)?  symptomToggled,TResult? Function()?  generateDiagnosis,}) {final _that = this;
switch (_that) {
case _NameChanged() when nameChanged != null:
return nameChanged(_that.name);case _AgeChanged() when ageChanged != null:
return ageChanged(_that.age);case _DurationChanged() when durationChanged != null:
return durationChanged(_that.duration);case _PrakritiChanged() when prakritiChanged != null:
return prakritiChanged(_that.prakriti);case _SymptomToggled() when symptomToggled != null:
return symptomToggled(_that.symptom,_that.isAdding);case _GenerateDiagnosis() when generateDiagnosis != null:
return generateDiagnosis();case _:
  return null;

}
}

}

/// @nodoc


class _NameChanged implements ConsultationEvent {
  const _NameChanged(this.name);
  

 final  String name;

/// Create a copy of ConsultationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NameChangedCopyWith<_NameChanged> get copyWith => __$NameChangedCopyWithImpl<_NameChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NameChanged&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'ConsultationEvent.nameChanged(name: $name)';
}


}

/// @nodoc
abstract mixin class _$NameChangedCopyWith<$Res> implements $ConsultationEventCopyWith<$Res> {
  factory _$NameChangedCopyWith(_NameChanged value, $Res Function(_NameChanged) _then) = __$NameChangedCopyWithImpl;
@useResult
$Res call({
 String name
});




}
/// @nodoc
class __$NameChangedCopyWithImpl<$Res>
    implements _$NameChangedCopyWith<$Res> {
  __$NameChangedCopyWithImpl(this._self, this._then);

  final _NameChanged _self;
  final $Res Function(_NameChanged) _then;

/// Create a copy of ConsultationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? name = null,}) {
  return _then(_NameChanged(
null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _AgeChanged implements ConsultationEvent {
  const _AgeChanged(this.age);
  

 final  String age;

/// Create a copy of ConsultationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AgeChangedCopyWith<_AgeChanged> get copyWith => __$AgeChangedCopyWithImpl<_AgeChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AgeChanged&&(identical(other.age, age) || other.age == age));
}


@override
int get hashCode => Object.hash(runtimeType,age);

@override
String toString() {
  return 'ConsultationEvent.ageChanged(age: $age)';
}


}

/// @nodoc
abstract mixin class _$AgeChangedCopyWith<$Res> implements $ConsultationEventCopyWith<$Res> {
  factory _$AgeChangedCopyWith(_AgeChanged value, $Res Function(_AgeChanged) _then) = __$AgeChangedCopyWithImpl;
@useResult
$Res call({
 String age
});




}
/// @nodoc
class __$AgeChangedCopyWithImpl<$Res>
    implements _$AgeChangedCopyWith<$Res> {
  __$AgeChangedCopyWithImpl(this._self, this._then);

  final _AgeChanged _self;
  final $Res Function(_AgeChanged) _then;

/// Create a copy of ConsultationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? age = null,}) {
  return _then(_AgeChanged(
null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _DurationChanged implements ConsultationEvent {
  const _DurationChanged(this.duration);
  

 final  double duration;

/// Create a copy of ConsultationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DurationChangedCopyWith<_DurationChanged> get copyWith => __$DurationChangedCopyWithImpl<_DurationChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DurationChanged&&(identical(other.duration, duration) || other.duration == duration));
}


@override
int get hashCode => Object.hash(runtimeType,duration);

@override
String toString() {
  return 'ConsultationEvent.durationChanged(duration: $duration)';
}


}

/// @nodoc
abstract mixin class _$DurationChangedCopyWith<$Res> implements $ConsultationEventCopyWith<$Res> {
  factory _$DurationChangedCopyWith(_DurationChanged value, $Res Function(_DurationChanged) _then) = __$DurationChangedCopyWithImpl;
@useResult
$Res call({
 double duration
});




}
/// @nodoc
class __$DurationChangedCopyWithImpl<$Res>
    implements _$DurationChangedCopyWith<$Res> {
  __$DurationChangedCopyWithImpl(this._self, this._then);

  final _DurationChanged _self;
  final $Res Function(_DurationChanged) _then;

/// Create a copy of ConsultationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? duration = null,}) {
  return _then(_DurationChanged(
null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc


class _PrakritiChanged implements ConsultationEvent {
  const _PrakritiChanged(this.prakriti);
  

 final  String prakriti;

/// Create a copy of ConsultationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PrakritiChangedCopyWith<_PrakritiChanged> get copyWith => __$PrakritiChangedCopyWithImpl<_PrakritiChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PrakritiChanged&&(identical(other.prakriti, prakriti) || other.prakriti == prakriti));
}


@override
int get hashCode => Object.hash(runtimeType,prakriti);

@override
String toString() {
  return 'ConsultationEvent.prakritiChanged(prakriti: $prakriti)';
}


}

/// @nodoc
abstract mixin class _$PrakritiChangedCopyWith<$Res> implements $ConsultationEventCopyWith<$Res> {
  factory _$PrakritiChangedCopyWith(_PrakritiChanged value, $Res Function(_PrakritiChanged) _then) = __$PrakritiChangedCopyWithImpl;
@useResult
$Res call({
 String prakriti
});




}
/// @nodoc
class __$PrakritiChangedCopyWithImpl<$Res>
    implements _$PrakritiChangedCopyWith<$Res> {
  __$PrakritiChangedCopyWithImpl(this._self, this._then);

  final _PrakritiChanged _self;
  final $Res Function(_PrakritiChanged) _then;

/// Create a copy of ConsultationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? prakriti = null,}) {
  return _then(_PrakritiChanged(
null == prakriti ? _self.prakriti : prakriti // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _SymptomToggled implements ConsultationEvent {
  const _SymptomToggled(this.symptom, this.isAdding);
  

 final  String symptom;
 final  bool isAdding;

/// Create a copy of ConsultationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SymptomToggledCopyWith<_SymptomToggled> get copyWith => __$SymptomToggledCopyWithImpl<_SymptomToggled>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SymptomToggled&&(identical(other.symptom, symptom) || other.symptom == symptom)&&(identical(other.isAdding, isAdding) || other.isAdding == isAdding));
}


@override
int get hashCode => Object.hash(runtimeType,symptom,isAdding);

@override
String toString() {
  return 'ConsultationEvent.symptomToggled(symptom: $symptom, isAdding: $isAdding)';
}


}

/// @nodoc
abstract mixin class _$SymptomToggledCopyWith<$Res> implements $ConsultationEventCopyWith<$Res> {
  factory _$SymptomToggledCopyWith(_SymptomToggled value, $Res Function(_SymptomToggled) _then) = __$SymptomToggledCopyWithImpl;
@useResult
$Res call({
 String symptom, bool isAdding
});




}
/// @nodoc
class __$SymptomToggledCopyWithImpl<$Res>
    implements _$SymptomToggledCopyWith<$Res> {
  __$SymptomToggledCopyWithImpl(this._self, this._then);

  final _SymptomToggled _self;
  final $Res Function(_SymptomToggled) _then;

/// Create a copy of ConsultationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? symptom = null,Object? isAdding = null,}) {
  return _then(_SymptomToggled(
null == symptom ? _self.symptom : symptom // ignore: cast_nullable_to_non_nullable
as String,null == isAdding ? _self.isAdding : isAdding // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _GenerateDiagnosis implements ConsultationEvent {
  const _GenerateDiagnosis();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GenerateDiagnosis);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ConsultationEvent.generateDiagnosis()';
}


}




// dart format on
