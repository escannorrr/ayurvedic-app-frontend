// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'saved_cases_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SavedCasesEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SavedCasesEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SavedCasesEvent()';
}


}

/// @nodoc
class $SavedCasesEventCopyWith<$Res>  {
$SavedCasesEventCopyWith(SavedCasesEvent _, $Res Function(SavedCasesEvent) __);
}


/// Adds pattern-matching-related methods to [SavedCasesEvent].
extension SavedCasesEventPatterns on SavedCasesEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _FetchCases value)?  fetchCases,TResult Function( _SearchCases value)?  searchCases,TResult Function( _FilterCases value)?  filterCases,TResult Function( _RefreshCases value)?  refreshCases,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FetchCases() when fetchCases != null:
return fetchCases(_that);case _SearchCases() when searchCases != null:
return searchCases(_that);case _FilterCases() when filterCases != null:
return filterCases(_that);case _RefreshCases() when refreshCases != null:
return refreshCases(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _FetchCases value)  fetchCases,required TResult Function( _SearchCases value)  searchCases,required TResult Function( _FilterCases value)  filterCases,required TResult Function( _RefreshCases value)  refreshCases,}){
final _that = this;
switch (_that) {
case _FetchCases():
return fetchCases(_that);case _SearchCases():
return searchCases(_that);case _FilterCases():
return filterCases(_that);case _RefreshCases():
return refreshCases(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _FetchCases value)?  fetchCases,TResult? Function( _SearchCases value)?  searchCases,TResult? Function( _FilterCases value)?  filterCases,TResult? Function( _RefreshCases value)?  refreshCases,}){
final _that = this;
switch (_that) {
case _FetchCases() when fetchCases != null:
return fetchCases(_that);case _SearchCases() when searchCases != null:
return searchCases(_that);case _FilterCases() when filterCases != null:
return filterCases(_that);case _RefreshCases() when refreshCases != null:
return refreshCases(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  fetchCases,TResult Function( String query)?  searchCases,TResult Function( DateTime? startDate,  DateTime? endDate)?  filterCases,TResult Function()?  refreshCases,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FetchCases() when fetchCases != null:
return fetchCases();case _SearchCases() when searchCases != null:
return searchCases(_that.query);case _FilterCases() when filterCases != null:
return filterCases(_that.startDate,_that.endDate);case _RefreshCases() when refreshCases != null:
return refreshCases();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  fetchCases,required TResult Function( String query)  searchCases,required TResult Function( DateTime? startDate,  DateTime? endDate)  filterCases,required TResult Function()  refreshCases,}) {final _that = this;
switch (_that) {
case _FetchCases():
return fetchCases();case _SearchCases():
return searchCases(_that.query);case _FilterCases():
return filterCases(_that.startDate,_that.endDate);case _RefreshCases():
return refreshCases();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  fetchCases,TResult? Function( String query)?  searchCases,TResult? Function( DateTime? startDate,  DateTime? endDate)?  filterCases,TResult? Function()?  refreshCases,}) {final _that = this;
switch (_that) {
case _FetchCases() when fetchCases != null:
return fetchCases();case _SearchCases() when searchCases != null:
return searchCases(_that.query);case _FilterCases() when filterCases != null:
return filterCases(_that.startDate,_that.endDate);case _RefreshCases() when refreshCases != null:
return refreshCases();case _:
  return null;

}
}

}

/// @nodoc


class _FetchCases implements SavedCasesEvent {
  const _FetchCases();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchCases);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SavedCasesEvent.fetchCases()';
}


}




/// @nodoc


class _SearchCases implements SavedCasesEvent {
  const _SearchCases(this.query);
  

 final  String query;

/// Create a copy of SavedCasesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchCasesCopyWith<_SearchCases> get copyWith => __$SearchCasesCopyWithImpl<_SearchCases>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchCases&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'SavedCasesEvent.searchCases(query: $query)';
}


}

/// @nodoc
abstract mixin class _$SearchCasesCopyWith<$Res> implements $SavedCasesEventCopyWith<$Res> {
  factory _$SearchCasesCopyWith(_SearchCases value, $Res Function(_SearchCases) _then) = __$SearchCasesCopyWithImpl;
@useResult
$Res call({
 String query
});




}
/// @nodoc
class __$SearchCasesCopyWithImpl<$Res>
    implements _$SearchCasesCopyWith<$Res> {
  __$SearchCasesCopyWithImpl(this._self, this._then);

  final _SearchCases _self;
  final $Res Function(_SearchCases) _then;

/// Create a copy of SavedCasesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = null,}) {
  return _then(_SearchCases(
null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _FilterCases implements SavedCasesEvent {
  const _FilterCases(this.startDate, this.endDate);
  

 final  DateTime? startDate;
 final  DateTime? endDate;

/// Create a copy of SavedCasesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FilterCasesCopyWith<_FilterCases> get copyWith => __$FilterCasesCopyWithImpl<_FilterCases>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FilterCases&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate));
}


@override
int get hashCode => Object.hash(runtimeType,startDate,endDate);

@override
String toString() {
  return 'SavedCasesEvent.filterCases(startDate: $startDate, endDate: $endDate)';
}


}

/// @nodoc
abstract mixin class _$FilterCasesCopyWith<$Res> implements $SavedCasesEventCopyWith<$Res> {
  factory _$FilterCasesCopyWith(_FilterCases value, $Res Function(_FilterCases) _then) = __$FilterCasesCopyWithImpl;
@useResult
$Res call({
 DateTime? startDate, DateTime? endDate
});




}
/// @nodoc
class __$FilterCasesCopyWithImpl<$Res>
    implements _$FilterCasesCopyWith<$Res> {
  __$FilterCasesCopyWithImpl(this._self, this._then);

  final _FilterCases _self;
  final $Res Function(_FilterCases) _then;

/// Create a copy of SavedCasesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? startDate = freezed,Object? endDate = freezed,}) {
  return _then(_FilterCases(
freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime?,freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

/// @nodoc


class _RefreshCases implements SavedCasesEvent {
  const _RefreshCases();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RefreshCases);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SavedCasesEvent.refreshCases()';
}


}




// dart format on
