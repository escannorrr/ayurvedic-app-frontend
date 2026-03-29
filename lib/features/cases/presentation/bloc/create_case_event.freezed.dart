// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_case_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CreateCaseEvent {

 CaseEntity get caseEntity;
/// Create a copy of CreateCaseEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateCaseEventCopyWith<CreateCaseEvent> get copyWith => _$CreateCaseEventCopyWithImpl<CreateCaseEvent>(this as CreateCaseEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateCaseEvent&&(identical(other.caseEntity, caseEntity) || other.caseEntity == caseEntity));
}


@override
int get hashCode => Object.hash(runtimeType,caseEntity);

@override
String toString() {
  return 'CreateCaseEvent(caseEntity: $caseEntity)';
}


}

/// @nodoc
abstract mixin class $CreateCaseEventCopyWith<$Res>  {
  factory $CreateCaseEventCopyWith(CreateCaseEvent value, $Res Function(CreateCaseEvent) _then) = _$CreateCaseEventCopyWithImpl;
@useResult
$Res call({
 CaseEntity caseEntity
});


$CaseEntityCopyWith<$Res> get caseEntity;

}
/// @nodoc
class _$CreateCaseEventCopyWithImpl<$Res>
    implements $CreateCaseEventCopyWith<$Res> {
  _$CreateCaseEventCopyWithImpl(this._self, this._then);

  final CreateCaseEvent _self;
  final $Res Function(CreateCaseEvent) _then;

/// Create a copy of CreateCaseEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? caseEntity = null,}) {
  return _then(_self.copyWith(
caseEntity: null == caseEntity ? _self.caseEntity : caseEntity // ignore: cast_nullable_to_non_nullable
as CaseEntity,
  ));
}
/// Create a copy of CreateCaseEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CaseEntityCopyWith<$Res> get caseEntity {
  
  return $CaseEntityCopyWith<$Res>(_self.caseEntity, (value) {
    return _then(_self.copyWith(caseEntity: value));
  });
}
}


/// Adds pattern-matching-related methods to [CreateCaseEvent].
extension CreateCaseEventPatterns on CreateCaseEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SubmitCase value)?  submitCase,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SubmitCase() when submitCase != null:
return submitCase(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SubmitCase value)  submitCase,}){
final _that = this;
switch (_that) {
case SubmitCase():
return submitCase(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SubmitCase value)?  submitCase,}){
final _that = this;
switch (_that) {
case SubmitCase() when submitCase != null:
return submitCase(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( CaseEntity caseEntity)?  submitCase,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SubmitCase() when submitCase != null:
return submitCase(_that.caseEntity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( CaseEntity caseEntity)  submitCase,}) {final _that = this;
switch (_that) {
case SubmitCase():
return submitCase(_that.caseEntity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( CaseEntity caseEntity)?  submitCase,}) {final _that = this;
switch (_that) {
case SubmitCase() when submitCase != null:
return submitCase(_that.caseEntity);case _:
  return null;

}
}

}

/// @nodoc


class SubmitCase implements CreateCaseEvent {
  const SubmitCase(this.caseEntity);
  

@override final  CaseEntity caseEntity;

/// Create a copy of CreateCaseEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubmitCaseCopyWith<SubmitCase> get copyWith => _$SubmitCaseCopyWithImpl<SubmitCase>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitCase&&(identical(other.caseEntity, caseEntity) || other.caseEntity == caseEntity));
}


@override
int get hashCode => Object.hash(runtimeType,caseEntity);

@override
String toString() {
  return 'CreateCaseEvent.submitCase(caseEntity: $caseEntity)';
}


}

/// @nodoc
abstract mixin class $SubmitCaseCopyWith<$Res> implements $CreateCaseEventCopyWith<$Res> {
  factory $SubmitCaseCopyWith(SubmitCase value, $Res Function(SubmitCase) _then) = _$SubmitCaseCopyWithImpl;
@override @useResult
$Res call({
 CaseEntity caseEntity
});


@override $CaseEntityCopyWith<$Res> get caseEntity;

}
/// @nodoc
class _$SubmitCaseCopyWithImpl<$Res>
    implements $SubmitCaseCopyWith<$Res> {
  _$SubmitCaseCopyWithImpl(this._self, this._then);

  final SubmitCase _self;
  final $Res Function(SubmitCase) _then;

/// Create a copy of CreateCaseEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? caseEntity = null,}) {
  return _then(SubmitCase(
null == caseEntity ? _self.caseEntity : caseEntity // ignore: cast_nullable_to_non_nullable
as CaseEntity,
  ));
}

/// Create a copy of CreateCaseEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CaseEntityCopyWith<$Res> get caseEntity {
  
  return $CaseEntityCopyWith<$Res>(_self.caseEntity, (value) {
    return _then(_self.copyWith(caseEntity: value));
  });
}
}

// dart format on
