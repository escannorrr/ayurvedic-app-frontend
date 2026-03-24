// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'case_details_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CaseDetailsState {

 CaseDetailsEntity? get caseDetails; bool get isLoading; bool get isSaving; String? get errorMessage;
/// Create a copy of CaseDetailsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CaseDetailsStateCopyWith<CaseDetailsState> get copyWith => _$CaseDetailsStateCopyWithImpl<CaseDetailsState>(this as CaseDetailsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CaseDetailsState&&(identical(other.caseDetails, caseDetails) || other.caseDetails == caseDetails)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSaving, isSaving) || other.isSaving == isSaving)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,caseDetails,isLoading,isSaving,errorMessage);

@override
String toString() {
  return 'CaseDetailsState(caseDetails: $caseDetails, isLoading: $isLoading, isSaving: $isSaving, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $CaseDetailsStateCopyWith<$Res>  {
  factory $CaseDetailsStateCopyWith(CaseDetailsState value, $Res Function(CaseDetailsState) _then) = _$CaseDetailsStateCopyWithImpl;
@useResult
$Res call({
 CaseDetailsEntity? caseDetails, bool isLoading, bool isSaving, String? errorMessage
});


$CaseDetailsEntityCopyWith<$Res>? get caseDetails;

}
/// @nodoc
class _$CaseDetailsStateCopyWithImpl<$Res>
    implements $CaseDetailsStateCopyWith<$Res> {
  _$CaseDetailsStateCopyWithImpl(this._self, this._then);

  final CaseDetailsState _self;
  final $Res Function(CaseDetailsState) _then;

/// Create a copy of CaseDetailsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? caseDetails = freezed,Object? isLoading = null,Object? isSaving = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
caseDetails: freezed == caseDetails ? _self.caseDetails : caseDetails // ignore: cast_nullable_to_non_nullable
as CaseDetailsEntity?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSaving: null == isSaving ? _self.isSaving : isSaving // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of CaseDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CaseDetailsEntityCopyWith<$Res>? get caseDetails {
    if (_self.caseDetails == null) {
    return null;
  }

  return $CaseDetailsEntityCopyWith<$Res>(_self.caseDetails!, (value) {
    return _then(_self.copyWith(caseDetails: value));
  });
}
}


/// Adds pattern-matching-related methods to [CaseDetailsState].
extension CaseDetailsStatePatterns on CaseDetailsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CaseDetailsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CaseDetailsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CaseDetailsState value)  $default,){
final _that = this;
switch (_that) {
case _CaseDetailsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CaseDetailsState value)?  $default,){
final _that = this;
switch (_that) {
case _CaseDetailsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CaseDetailsEntity? caseDetails,  bool isLoading,  bool isSaving,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CaseDetailsState() when $default != null:
return $default(_that.caseDetails,_that.isLoading,_that.isSaving,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CaseDetailsEntity? caseDetails,  bool isLoading,  bool isSaving,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _CaseDetailsState():
return $default(_that.caseDetails,_that.isLoading,_that.isSaving,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CaseDetailsEntity? caseDetails,  bool isLoading,  bool isSaving,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _CaseDetailsState() when $default != null:
return $default(_that.caseDetails,_that.isLoading,_that.isSaving,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _CaseDetailsState implements CaseDetailsState {
  const _CaseDetailsState({this.caseDetails = null, this.isLoading = false, this.isSaving = false, this.errorMessage});
  

@override@JsonKey() final  CaseDetailsEntity? caseDetails;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isSaving;
@override final  String? errorMessage;

/// Create a copy of CaseDetailsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CaseDetailsStateCopyWith<_CaseDetailsState> get copyWith => __$CaseDetailsStateCopyWithImpl<_CaseDetailsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CaseDetailsState&&(identical(other.caseDetails, caseDetails) || other.caseDetails == caseDetails)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSaving, isSaving) || other.isSaving == isSaving)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,caseDetails,isLoading,isSaving,errorMessage);

@override
String toString() {
  return 'CaseDetailsState(caseDetails: $caseDetails, isLoading: $isLoading, isSaving: $isSaving, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$CaseDetailsStateCopyWith<$Res> implements $CaseDetailsStateCopyWith<$Res> {
  factory _$CaseDetailsStateCopyWith(_CaseDetailsState value, $Res Function(_CaseDetailsState) _then) = __$CaseDetailsStateCopyWithImpl;
@override @useResult
$Res call({
 CaseDetailsEntity? caseDetails, bool isLoading, bool isSaving, String? errorMessage
});


@override $CaseDetailsEntityCopyWith<$Res>? get caseDetails;

}
/// @nodoc
class __$CaseDetailsStateCopyWithImpl<$Res>
    implements _$CaseDetailsStateCopyWith<$Res> {
  __$CaseDetailsStateCopyWithImpl(this._self, this._then);

  final _CaseDetailsState _self;
  final $Res Function(_CaseDetailsState) _then;

/// Create a copy of CaseDetailsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? caseDetails = freezed,Object? isLoading = null,Object? isSaving = null,Object? errorMessage = freezed,}) {
  return _then(_CaseDetailsState(
caseDetails: freezed == caseDetails ? _self.caseDetails : caseDetails // ignore: cast_nullable_to_non_nullable
as CaseDetailsEntity?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSaving: null == isSaving ? _self.isSaving : isSaving // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of CaseDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CaseDetailsEntityCopyWith<$Res>? get caseDetails {
    if (_self.caseDetails == null) {
    return null;
  }

  return $CaseDetailsEntityCopyWith<$Res>(_self.caseDetails!, (value) {
    return _then(_self.copyWith(caseDetails: value));
  });
}
}

// dart format on
