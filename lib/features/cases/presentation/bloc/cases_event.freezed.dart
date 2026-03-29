// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cases_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CasesEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CasesEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CasesEvent()';
}


}

/// @nodoc
class $CasesEventCopyWith<$Res>  {
$CasesEventCopyWith(CasesEvent _, $Res Function(CasesEvent) __);
}


/// Adds pattern-matching-related methods to [CasesEvent].
extension CasesEventPatterns on CasesEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoadCases value)?  loadCases,TResult Function( NextPage value)?  nextPage,TResult Function( PreviousPage value)?  previousPage,TResult Function( SearchCases value)?  searchCases,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoadCases() when loadCases != null:
return loadCases(_that);case NextPage() when nextPage != null:
return nextPage(_that);case PreviousPage() when previousPage != null:
return previousPage(_that);case SearchCases() when searchCases != null:
return searchCases(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoadCases value)  loadCases,required TResult Function( NextPage value)  nextPage,required TResult Function( PreviousPage value)  previousPage,required TResult Function( SearchCases value)  searchCases,}){
final _that = this;
switch (_that) {
case LoadCases():
return loadCases(_that);case NextPage():
return nextPage(_that);case PreviousPage():
return previousPage(_that);case SearchCases():
return searchCases(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoadCases value)?  loadCases,TResult? Function( NextPage value)?  nextPage,TResult? Function( PreviousPage value)?  previousPage,TResult? Function( SearchCases value)?  searchCases,}){
final _that = this;
switch (_that) {
case LoadCases() when loadCases != null:
return loadCases(_that);case NextPage() when nextPage != null:
return nextPage(_that);case PreviousPage() when previousPage != null:
return previousPage(_that);case SearchCases() when searchCases != null:
return searchCases(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int page)?  loadCases,TResult Function()?  nextPage,TResult Function()?  previousPage,TResult Function( String query)?  searchCases,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoadCases() when loadCases != null:
return loadCases(_that.page);case NextPage() when nextPage != null:
return nextPage();case PreviousPage() when previousPage != null:
return previousPage();case SearchCases() when searchCases != null:
return searchCases(_that.query);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int page)  loadCases,required TResult Function()  nextPage,required TResult Function()  previousPage,required TResult Function( String query)  searchCases,}) {final _that = this;
switch (_that) {
case LoadCases():
return loadCases(_that.page);case NextPage():
return nextPage();case PreviousPage():
return previousPage();case SearchCases():
return searchCases(_that.query);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int page)?  loadCases,TResult? Function()?  nextPage,TResult? Function()?  previousPage,TResult? Function( String query)?  searchCases,}) {final _that = this;
switch (_that) {
case LoadCases() when loadCases != null:
return loadCases(_that.page);case NextPage() when nextPage != null:
return nextPage();case PreviousPage() when previousPage != null:
return previousPage();case SearchCases() when searchCases != null:
return searchCases(_that.query);case _:
  return null;

}
}

}

/// @nodoc


class LoadCases implements CasesEvent {
  const LoadCases(this.page);
  

 final  int page;

/// Create a copy of CasesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadCasesCopyWith<LoadCases> get copyWith => _$LoadCasesCopyWithImpl<LoadCases>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadCases&&(identical(other.page, page) || other.page == page));
}


@override
int get hashCode => Object.hash(runtimeType,page);

@override
String toString() {
  return 'CasesEvent.loadCases(page: $page)';
}


}

/// @nodoc
abstract mixin class $LoadCasesCopyWith<$Res> implements $CasesEventCopyWith<$Res> {
  factory $LoadCasesCopyWith(LoadCases value, $Res Function(LoadCases) _then) = _$LoadCasesCopyWithImpl;
@useResult
$Res call({
 int page
});




}
/// @nodoc
class _$LoadCasesCopyWithImpl<$Res>
    implements $LoadCasesCopyWith<$Res> {
  _$LoadCasesCopyWithImpl(this._self, this._then);

  final LoadCases _self;
  final $Res Function(LoadCases) _then;

/// Create a copy of CasesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? page = null,}) {
  return _then(LoadCases(
null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class NextPage implements CasesEvent {
  const NextPage();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NextPage);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CasesEvent.nextPage()';
}


}




/// @nodoc


class PreviousPage implements CasesEvent {
  const PreviousPage();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PreviousPage);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CasesEvent.previousPage()';
}


}




/// @nodoc


class SearchCases implements CasesEvent {
  const SearchCases(this.query);
  

 final  String query;

/// Create a copy of CasesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchCasesCopyWith<SearchCases> get copyWith => _$SearchCasesCopyWithImpl<SearchCases>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchCases&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'CasesEvent.searchCases(query: $query)';
}


}

/// @nodoc
abstract mixin class $SearchCasesCopyWith<$Res> implements $CasesEventCopyWith<$Res> {
  factory $SearchCasesCopyWith(SearchCases value, $Res Function(SearchCases) _then) = _$SearchCasesCopyWithImpl;
@useResult
$Res call({
 String query
});




}
/// @nodoc
class _$SearchCasesCopyWithImpl<$Res>
    implements $SearchCasesCopyWith<$Res> {
  _$SearchCasesCopyWithImpl(this._self, this._then);

  final SearchCases _self;
  final $Res Function(SearchCases) _then;

/// Create a copy of CasesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = null,}) {
  return _then(SearchCases(
null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
