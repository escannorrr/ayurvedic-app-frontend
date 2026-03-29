// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_case_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CreateCaseState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateCaseState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateCaseState()';
}


}

/// @nodoc
class $CreateCaseStateCopyWith<$Res>  {
$CreateCaseStateCopyWith(CreateCaseState _, $Res Function(CreateCaseState) __);
}


/// Adds pattern-matching-related methods to [CreateCaseState].
extension CreateCaseStatePatterns on CreateCaseState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CreateCaseInitial value)?  initial,TResult Function( CreateCaseSubmitting value)?  submitting,TResult Function( CreateCaseSuccess value)?  success,TResult Function( CreateCaseError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CreateCaseInitial() when initial != null:
return initial(_that);case CreateCaseSubmitting() when submitting != null:
return submitting(_that);case CreateCaseSuccess() when success != null:
return success(_that);case CreateCaseError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CreateCaseInitial value)  initial,required TResult Function( CreateCaseSubmitting value)  submitting,required TResult Function( CreateCaseSuccess value)  success,required TResult Function( CreateCaseError value)  error,}){
final _that = this;
switch (_that) {
case CreateCaseInitial():
return initial(_that);case CreateCaseSubmitting():
return submitting(_that);case CreateCaseSuccess():
return success(_that);case CreateCaseError():
return error(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CreateCaseInitial value)?  initial,TResult? Function( CreateCaseSubmitting value)?  submitting,TResult? Function( CreateCaseSuccess value)?  success,TResult? Function( CreateCaseError value)?  error,}){
final _that = this;
switch (_that) {
case CreateCaseInitial() when initial != null:
return initial(_that);case CreateCaseSubmitting() when submitting != null:
return submitting(_that);case CreateCaseSuccess() when success != null:
return success(_that);case CreateCaseError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  submitting,TResult Function()?  success,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CreateCaseInitial() when initial != null:
return initial();case CreateCaseSubmitting() when submitting != null:
return submitting();case CreateCaseSuccess() when success != null:
return success();case CreateCaseError() when error != null:
return error(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  submitting,required TResult Function()  success,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case CreateCaseInitial():
return initial();case CreateCaseSubmitting():
return submitting();case CreateCaseSuccess():
return success();case CreateCaseError():
return error(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  submitting,TResult? Function()?  success,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case CreateCaseInitial() when initial != null:
return initial();case CreateCaseSubmitting() when submitting != null:
return submitting();case CreateCaseSuccess() when success != null:
return success();case CreateCaseError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class CreateCaseInitial implements CreateCaseState {
  const CreateCaseInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateCaseInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateCaseState.initial()';
}


}




/// @nodoc


class CreateCaseSubmitting implements CreateCaseState {
  const CreateCaseSubmitting();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateCaseSubmitting);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateCaseState.submitting()';
}


}




/// @nodoc


class CreateCaseSuccess implements CreateCaseState {
  const CreateCaseSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateCaseSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateCaseState.success()';
}


}




/// @nodoc


class CreateCaseError implements CreateCaseState {
  const CreateCaseError(this.message);
  

 final  String message;

/// Create a copy of CreateCaseState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateCaseErrorCopyWith<CreateCaseError> get copyWith => _$CreateCaseErrorCopyWithImpl<CreateCaseError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateCaseError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'CreateCaseState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $CreateCaseErrorCopyWith<$Res> implements $CreateCaseStateCopyWith<$Res> {
  factory $CreateCaseErrorCopyWith(CreateCaseError value, $Res Function(CreateCaseError) _then) = _$CreateCaseErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$CreateCaseErrorCopyWithImpl<$Res>
    implements $CreateCaseErrorCopyWith<$Res> {
  _$CreateCaseErrorCopyWithImpl(this._self, this._then);

  final CreateCaseError _self;
  final $Res Function(CreateCaseError) _then;

/// Create a copy of CreateCaseState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(CreateCaseError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
