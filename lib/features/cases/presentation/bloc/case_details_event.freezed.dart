// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'case_details_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CaseDetailsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CaseDetailsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CaseDetailsEvent()';
}


}

/// @nodoc
class $CaseDetailsEventCopyWith<$Res>  {
$CaseDetailsEventCopyWith(CaseDetailsEvent _, $Res Function(CaseDetailsEvent) __);
}


/// Adds pattern-matching-related methods to [CaseDetailsEvent].
extension CaseDetailsEventPatterns on CaseDetailsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _LoadCaseDetails value)?  loadCaseDetails,TResult Function( _UpdateNotes value)?  updateNotes,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoadCaseDetails() when loadCaseDetails != null:
return loadCaseDetails(_that);case _UpdateNotes() when updateNotes != null:
return updateNotes(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _LoadCaseDetails value)  loadCaseDetails,required TResult Function( _UpdateNotes value)  updateNotes,}){
final _that = this;
switch (_that) {
case _LoadCaseDetails():
return loadCaseDetails(_that);case _UpdateNotes():
return updateNotes(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _LoadCaseDetails value)?  loadCaseDetails,TResult? Function( _UpdateNotes value)?  updateNotes,}){
final _that = this;
switch (_that) {
case _LoadCaseDetails() when loadCaseDetails != null:
return loadCaseDetails(_that);case _UpdateNotes() when updateNotes != null:
return updateNotes(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String id)?  loadCaseDetails,TResult Function( String caseId,  String notes)?  updateNotes,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoadCaseDetails() when loadCaseDetails != null:
return loadCaseDetails(_that.id);case _UpdateNotes() when updateNotes != null:
return updateNotes(_that.caseId,_that.notes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String id)  loadCaseDetails,required TResult Function( String caseId,  String notes)  updateNotes,}) {final _that = this;
switch (_that) {
case _LoadCaseDetails():
return loadCaseDetails(_that.id);case _UpdateNotes():
return updateNotes(_that.caseId,_that.notes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String id)?  loadCaseDetails,TResult? Function( String caseId,  String notes)?  updateNotes,}) {final _that = this;
switch (_that) {
case _LoadCaseDetails() when loadCaseDetails != null:
return loadCaseDetails(_that.id);case _UpdateNotes() when updateNotes != null:
return updateNotes(_that.caseId,_that.notes);case _:
  return null;

}
}

}

/// @nodoc


class _LoadCaseDetails implements CaseDetailsEvent {
  const _LoadCaseDetails(this.id);
  

 final  String id;

/// Create a copy of CaseDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadCaseDetailsCopyWith<_LoadCaseDetails> get copyWith => __$LoadCaseDetailsCopyWithImpl<_LoadCaseDetails>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadCaseDetails&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'CaseDetailsEvent.loadCaseDetails(id: $id)';
}


}

/// @nodoc
abstract mixin class _$LoadCaseDetailsCopyWith<$Res> implements $CaseDetailsEventCopyWith<$Res> {
  factory _$LoadCaseDetailsCopyWith(_LoadCaseDetails value, $Res Function(_LoadCaseDetails) _then) = __$LoadCaseDetailsCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class __$LoadCaseDetailsCopyWithImpl<$Res>
    implements _$LoadCaseDetailsCopyWith<$Res> {
  __$LoadCaseDetailsCopyWithImpl(this._self, this._then);

  final _LoadCaseDetails _self;
  final $Res Function(_LoadCaseDetails) _then;

/// Create a copy of CaseDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_LoadCaseDetails(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _UpdateNotes implements CaseDetailsEvent {
  const _UpdateNotes(this.caseId, this.notes);
  

 final  String caseId;
 final  String notes;

/// Create a copy of CaseDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateNotesCopyWith<_UpdateNotes> get copyWith => __$UpdateNotesCopyWithImpl<_UpdateNotes>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateNotes&&(identical(other.caseId, caseId) || other.caseId == caseId)&&(identical(other.notes, notes) || other.notes == notes));
}


@override
int get hashCode => Object.hash(runtimeType,caseId,notes);

@override
String toString() {
  return 'CaseDetailsEvent.updateNotes(caseId: $caseId, notes: $notes)';
}


}

/// @nodoc
abstract mixin class _$UpdateNotesCopyWith<$Res> implements $CaseDetailsEventCopyWith<$Res> {
  factory _$UpdateNotesCopyWith(_UpdateNotes value, $Res Function(_UpdateNotes) _then) = __$UpdateNotesCopyWithImpl;
@useResult
$Res call({
 String caseId, String notes
});




}
/// @nodoc
class __$UpdateNotesCopyWithImpl<$Res>
    implements _$UpdateNotesCopyWith<$Res> {
  __$UpdateNotesCopyWithImpl(this._self, this._then);

  final _UpdateNotes _self;
  final $Res Function(_UpdateNotes) _then;

/// Create a copy of CaseDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? caseId = null,Object? notes = null,}) {
  return _then(_UpdateNotes(
null == caseId ? _self.caseId : caseId // ignore: cast_nullable_to_non_nullable
as String,null == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
