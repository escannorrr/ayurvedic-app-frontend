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

 String get name; String get age; double get duration; String get prakriti; List<String> get activeSymptoms; List<String> get availableSymptoms; bool get isLoading; Map<String, dynamic>? get diagnosisResult; String? get errorMessage;
/// Create a copy of ConsultationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConsultationStateCopyWith<ConsultationState> get copyWith => _$ConsultationStateCopyWithImpl<ConsultationState>(this as ConsultationState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConsultationState&&(identical(other.name, name) || other.name == name)&&(identical(other.age, age) || other.age == age)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.prakriti, prakriti) || other.prakriti == prakriti)&&const DeepCollectionEquality().equals(other.activeSymptoms, activeSymptoms)&&const DeepCollectionEquality().equals(other.availableSymptoms, availableSymptoms)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other.diagnosisResult, diagnosisResult)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,name,age,duration,prakriti,const DeepCollectionEquality().hash(activeSymptoms),const DeepCollectionEquality().hash(availableSymptoms),isLoading,const DeepCollectionEquality().hash(diagnosisResult),errorMessage);

@override
String toString() {
  return 'ConsultationState(name: $name, age: $age, duration: $duration, prakriti: $prakriti, activeSymptoms: $activeSymptoms, availableSymptoms: $availableSymptoms, isLoading: $isLoading, diagnosisResult: $diagnosisResult, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $ConsultationStateCopyWith<$Res>  {
  factory $ConsultationStateCopyWith(ConsultationState value, $Res Function(ConsultationState) _then) = _$ConsultationStateCopyWithImpl;
@useResult
$Res call({
 String name, String age, double duration, String prakriti, List<String> activeSymptoms, List<String> availableSymptoms, bool isLoading, Map<String, dynamic>? diagnosisResult, String? errorMessage
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
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? age = null,Object? duration = null,Object? prakriti = null,Object? activeSymptoms = null,Object? availableSymptoms = null,Object? isLoading = null,Object? diagnosisResult = freezed,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as String,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as double,prakriti: null == prakriti ? _self.prakriti : prakriti // ignore: cast_nullable_to_non_nullable
as String,activeSymptoms: null == activeSymptoms ? _self.activeSymptoms : activeSymptoms // ignore: cast_nullable_to_non_nullable
as List<String>,availableSymptoms: null == availableSymptoms ? _self.availableSymptoms : availableSymptoms // ignore: cast_nullable_to_non_nullable
as List<String>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,diagnosisResult: freezed == diagnosisResult ? _self.diagnosisResult : diagnosisResult // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String age,  double duration,  String prakriti,  List<String> activeSymptoms,  List<String> availableSymptoms,  bool isLoading,  Map<String, dynamic>? diagnosisResult,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ConsultationState() when $default != null:
return $default(_that.name,_that.age,_that.duration,_that.prakriti,_that.activeSymptoms,_that.availableSymptoms,_that.isLoading,_that.diagnosisResult,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String age,  double duration,  String prakriti,  List<String> activeSymptoms,  List<String> availableSymptoms,  bool isLoading,  Map<String, dynamic>? diagnosisResult,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _ConsultationState():
return $default(_that.name,_that.age,_that.duration,_that.prakriti,_that.activeSymptoms,_that.availableSymptoms,_that.isLoading,_that.diagnosisResult,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String age,  double duration,  String prakriti,  List<String> activeSymptoms,  List<String> availableSymptoms,  bool isLoading,  Map<String, dynamic>? diagnosisResult,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _ConsultationState() when $default != null:
return $default(_that.name,_that.age,_that.duration,_that.prakriti,_that.activeSymptoms,_that.availableSymptoms,_that.isLoading,_that.diagnosisResult,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _ConsultationState implements ConsultationState {
  const _ConsultationState({this.name = '', this.age = '', this.duration = 2.0, this.prakriti = 'Vata', final  List<String> activeSymptoms = const ['Indigestion', 'Insomnia'], final  List<String> availableSymptoms = const ['Joint Pain', 'Fatigue', 'Anxiety', 'Acidity'], this.isLoading = false, final  Map<String, dynamic>? diagnosisResult, this.errorMessage}): _activeSymptoms = activeSymptoms,_availableSymptoms = availableSymptoms,_diagnosisResult = diagnosisResult;
  

@override@JsonKey() final  String name;
@override@JsonKey() final  String age;
@override@JsonKey() final  double duration;
@override@JsonKey() final  String prakriti;
 final  List<String> _activeSymptoms;
@override@JsonKey() List<String> get activeSymptoms {
  if (_activeSymptoms is EqualUnmodifiableListView) return _activeSymptoms;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_activeSymptoms);
}

 final  List<String> _availableSymptoms;
@override@JsonKey() List<String> get availableSymptoms {
  if (_availableSymptoms is EqualUnmodifiableListView) return _availableSymptoms;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_availableSymptoms);
}

@override@JsonKey() final  bool isLoading;
 final  Map<String, dynamic>? _diagnosisResult;
@override Map<String, dynamic>? get diagnosisResult {
  final value = _diagnosisResult;
  if (value == null) return null;
  if (_diagnosisResult is EqualUnmodifiableMapView) return _diagnosisResult;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override final  String? errorMessage;

/// Create a copy of ConsultationState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConsultationStateCopyWith<_ConsultationState> get copyWith => __$ConsultationStateCopyWithImpl<_ConsultationState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConsultationState&&(identical(other.name, name) || other.name == name)&&(identical(other.age, age) || other.age == age)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.prakriti, prakriti) || other.prakriti == prakriti)&&const DeepCollectionEquality().equals(other._activeSymptoms, _activeSymptoms)&&const DeepCollectionEquality().equals(other._availableSymptoms, _availableSymptoms)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other._diagnosisResult, _diagnosisResult)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,name,age,duration,prakriti,const DeepCollectionEquality().hash(_activeSymptoms),const DeepCollectionEquality().hash(_availableSymptoms),isLoading,const DeepCollectionEquality().hash(_diagnosisResult),errorMessage);

@override
String toString() {
  return 'ConsultationState(name: $name, age: $age, duration: $duration, prakriti: $prakriti, activeSymptoms: $activeSymptoms, availableSymptoms: $availableSymptoms, isLoading: $isLoading, diagnosisResult: $diagnosisResult, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$ConsultationStateCopyWith<$Res> implements $ConsultationStateCopyWith<$Res> {
  factory _$ConsultationStateCopyWith(_ConsultationState value, $Res Function(_ConsultationState) _then) = __$ConsultationStateCopyWithImpl;
@override @useResult
$Res call({
 String name, String age, double duration, String prakriti, List<String> activeSymptoms, List<String> availableSymptoms, bool isLoading, Map<String, dynamic>? diagnosisResult, String? errorMessage
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
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? age = null,Object? duration = null,Object? prakriti = null,Object? activeSymptoms = null,Object? availableSymptoms = null,Object? isLoading = null,Object? diagnosisResult = freezed,Object? errorMessage = freezed,}) {
  return _then(_ConsultationState(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as String,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as double,prakriti: null == prakriti ? _self.prakriti : prakriti // ignore: cast_nullable_to_non_nullable
as String,activeSymptoms: null == activeSymptoms ? _self._activeSymptoms : activeSymptoms // ignore: cast_nullable_to_non_nullable
as List<String>,availableSymptoms: null == availableSymptoms ? _self._availableSymptoms : availableSymptoms // ignore: cast_nullable_to_non_nullable
as List<String>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,diagnosisResult: freezed == diagnosisResult ? _self._diagnosisResult : diagnosisResult // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
