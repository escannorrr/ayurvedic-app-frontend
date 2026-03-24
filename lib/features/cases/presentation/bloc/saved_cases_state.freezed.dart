// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'saved_cases_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SavedCasesState {

 List<CaseEntity> get cases; bool get isLoading; String get searchQuery; String? get errorMessage;
/// Create a copy of SavedCasesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SavedCasesStateCopyWith<SavedCasesState> get copyWith => _$SavedCasesStateCopyWithImpl<SavedCasesState>(this as SavedCasesState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SavedCasesState&&const DeepCollectionEquality().equals(other.cases, cases)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(cases),isLoading,searchQuery,errorMessage);

@override
String toString() {
  return 'SavedCasesState(cases: $cases, isLoading: $isLoading, searchQuery: $searchQuery, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $SavedCasesStateCopyWith<$Res>  {
  factory $SavedCasesStateCopyWith(SavedCasesState value, $Res Function(SavedCasesState) _then) = _$SavedCasesStateCopyWithImpl;
@useResult
$Res call({
 List<CaseEntity> cases, bool isLoading, String searchQuery, String? errorMessage
});




}
/// @nodoc
class _$SavedCasesStateCopyWithImpl<$Res>
    implements $SavedCasesStateCopyWith<$Res> {
  _$SavedCasesStateCopyWithImpl(this._self, this._then);

  final SavedCasesState _self;
  final $Res Function(SavedCasesState) _then;

/// Create a copy of SavedCasesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cases = null,Object? isLoading = null,Object? searchQuery = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
cases: null == cases ? _self.cases : cases // ignore: cast_nullable_to_non_nullable
as List<CaseEntity>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SavedCasesState].
extension SavedCasesStatePatterns on SavedCasesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SavedCasesState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SavedCasesState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SavedCasesState value)  $default,){
final _that = this;
switch (_that) {
case _SavedCasesState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SavedCasesState value)?  $default,){
final _that = this;
switch (_that) {
case _SavedCasesState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<CaseEntity> cases,  bool isLoading,  String searchQuery,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SavedCasesState() when $default != null:
return $default(_that.cases,_that.isLoading,_that.searchQuery,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<CaseEntity> cases,  bool isLoading,  String searchQuery,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _SavedCasesState():
return $default(_that.cases,_that.isLoading,_that.searchQuery,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<CaseEntity> cases,  bool isLoading,  String searchQuery,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _SavedCasesState() when $default != null:
return $default(_that.cases,_that.isLoading,_that.searchQuery,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _SavedCasesState implements SavedCasesState {
  const _SavedCasesState({final  List<CaseEntity> cases = const [], this.isLoading = false, this.searchQuery = '', this.errorMessage}): _cases = cases;
  

 final  List<CaseEntity> _cases;
@override@JsonKey() List<CaseEntity> get cases {
  if (_cases is EqualUnmodifiableListView) return _cases;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_cases);
}

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  String searchQuery;
@override final  String? errorMessage;

/// Create a copy of SavedCasesState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SavedCasesStateCopyWith<_SavedCasesState> get copyWith => __$SavedCasesStateCopyWithImpl<_SavedCasesState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SavedCasesState&&const DeepCollectionEquality().equals(other._cases, _cases)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_cases),isLoading,searchQuery,errorMessage);

@override
String toString() {
  return 'SavedCasesState(cases: $cases, isLoading: $isLoading, searchQuery: $searchQuery, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$SavedCasesStateCopyWith<$Res> implements $SavedCasesStateCopyWith<$Res> {
  factory _$SavedCasesStateCopyWith(_SavedCasesState value, $Res Function(_SavedCasesState) _then) = __$SavedCasesStateCopyWithImpl;
@override @useResult
$Res call({
 List<CaseEntity> cases, bool isLoading, String searchQuery, String? errorMessage
});




}
/// @nodoc
class __$SavedCasesStateCopyWithImpl<$Res>
    implements _$SavedCasesStateCopyWith<$Res> {
  __$SavedCasesStateCopyWithImpl(this._self, this._then);

  final _SavedCasesState _self;
  final $Res Function(_SavedCasesState) _then;

/// Create a copy of SavedCasesState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cases = null,Object? isLoading = null,Object? searchQuery = null,Object? errorMessage = freezed,}) {
  return _then(_SavedCasesState(
cases: null == cases ? _self._cases : cases // ignore: cast_nullable_to_non_nullable
as List<CaseEntity>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
