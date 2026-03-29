// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cases_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CasesState {

 List<CaseEntity> get cases; int get currentPage; bool get isLoading; bool get hasMore; String get searchQuery; String? get errorMessage;
/// Create a copy of CasesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CasesStateCopyWith<CasesState> get copyWith => _$CasesStateCopyWithImpl<CasesState>(this as CasesState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CasesState&&const DeepCollectionEquality().equals(other.cases, cases)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(cases),currentPage,isLoading,hasMore,searchQuery,errorMessage);

@override
String toString() {
  return 'CasesState(cases: $cases, currentPage: $currentPage, isLoading: $isLoading, hasMore: $hasMore, searchQuery: $searchQuery, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $CasesStateCopyWith<$Res>  {
  factory $CasesStateCopyWith(CasesState value, $Res Function(CasesState) _then) = _$CasesStateCopyWithImpl;
@useResult
$Res call({
 List<CaseEntity> cases, int currentPage, bool isLoading, bool hasMore, String searchQuery, String? errorMessage
});




}
/// @nodoc
class _$CasesStateCopyWithImpl<$Res>
    implements $CasesStateCopyWith<$Res> {
  _$CasesStateCopyWithImpl(this._self, this._then);

  final CasesState _self;
  final $Res Function(CasesState) _then;

/// Create a copy of CasesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cases = null,Object? currentPage = null,Object? isLoading = null,Object? hasMore = null,Object? searchQuery = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
cases: null == cases ? _self.cases : cases // ignore: cast_nullable_to_non_nullable
as List<CaseEntity>,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CasesState].
extension CasesStatePatterns on CasesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CasesState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CasesState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CasesState value)  $default,){
final _that = this;
switch (_that) {
case _CasesState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CasesState value)?  $default,){
final _that = this;
switch (_that) {
case _CasesState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<CaseEntity> cases,  int currentPage,  bool isLoading,  bool hasMore,  String searchQuery,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CasesState() when $default != null:
return $default(_that.cases,_that.currentPage,_that.isLoading,_that.hasMore,_that.searchQuery,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<CaseEntity> cases,  int currentPage,  bool isLoading,  bool hasMore,  String searchQuery,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _CasesState():
return $default(_that.cases,_that.currentPage,_that.isLoading,_that.hasMore,_that.searchQuery,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<CaseEntity> cases,  int currentPage,  bool isLoading,  bool hasMore,  String searchQuery,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _CasesState() when $default != null:
return $default(_that.cases,_that.currentPage,_that.isLoading,_that.hasMore,_that.searchQuery,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _CasesState implements CasesState {
  const _CasesState({final  List<CaseEntity> cases = const [], this.currentPage = 1, this.isLoading = false, this.hasMore = true, this.searchQuery = '', this.errorMessage}): _cases = cases;
  

 final  List<CaseEntity> _cases;
@override@JsonKey() List<CaseEntity> get cases {
  if (_cases is EqualUnmodifiableListView) return _cases;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_cases);
}

@override@JsonKey() final  int currentPage;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool hasMore;
@override@JsonKey() final  String searchQuery;
@override final  String? errorMessage;

/// Create a copy of CasesState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CasesStateCopyWith<_CasesState> get copyWith => __$CasesStateCopyWithImpl<_CasesState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CasesState&&const DeepCollectionEquality().equals(other._cases, _cases)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_cases),currentPage,isLoading,hasMore,searchQuery,errorMessage);

@override
String toString() {
  return 'CasesState(cases: $cases, currentPage: $currentPage, isLoading: $isLoading, hasMore: $hasMore, searchQuery: $searchQuery, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$CasesStateCopyWith<$Res> implements $CasesStateCopyWith<$Res> {
  factory _$CasesStateCopyWith(_CasesState value, $Res Function(_CasesState) _then) = __$CasesStateCopyWithImpl;
@override @useResult
$Res call({
 List<CaseEntity> cases, int currentPage, bool isLoading, bool hasMore, String searchQuery, String? errorMessage
});




}
/// @nodoc
class __$CasesStateCopyWithImpl<$Res>
    implements _$CasesStateCopyWith<$Res> {
  __$CasesStateCopyWithImpl(this._self, this._then);

  final _CasesState _self;
  final $Res Function(_CasesState) _then;

/// Create a copy of CasesState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cases = null,Object? currentPage = null,Object? isLoading = null,Object? hasMore = null,Object? searchQuery = null,Object? errorMessage = freezed,}) {
  return _then(_CasesState(
cases: null == cases ? _self._cases : cases // ignore: cast_nullable_to_non_nullable
as List<CaseEntity>,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
