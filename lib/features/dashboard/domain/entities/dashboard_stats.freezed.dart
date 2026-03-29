// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_stats.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DashboardStats {

 int get totalCases; int get activeCases; int get consultationsToday; double get growthRate;
/// Create a copy of DashboardStats
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DashboardStatsCopyWith<DashboardStats> get copyWith => _$DashboardStatsCopyWithImpl<DashboardStats>(this as DashboardStats, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardStats&&(identical(other.totalCases, totalCases) || other.totalCases == totalCases)&&(identical(other.activeCases, activeCases) || other.activeCases == activeCases)&&(identical(other.consultationsToday, consultationsToday) || other.consultationsToday == consultationsToday)&&(identical(other.growthRate, growthRate) || other.growthRate == growthRate));
}


@override
int get hashCode => Object.hash(runtimeType,totalCases,activeCases,consultationsToday,growthRate);

@override
String toString() {
  return 'DashboardStats(totalCases: $totalCases, activeCases: $activeCases, consultationsToday: $consultationsToday, growthRate: $growthRate)';
}


}

/// @nodoc
abstract mixin class $DashboardStatsCopyWith<$Res>  {
  factory $DashboardStatsCopyWith(DashboardStats value, $Res Function(DashboardStats) _then) = _$DashboardStatsCopyWithImpl;
@useResult
$Res call({
 int totalCases, int activeCases, int consultationsToday, double growthRate
});




}
/// @nodoc
class _$DashboardStatsCopyWithImpl<$Res>
    implements $DashboardStatsCopyWith<$Res> {
  _$DashboardStatsCopyWithImpl(this._self, this._then);

  final DashboardStats _self;
  final $Res Function(DashboardStats) _then;

/// Create a copy of DashboardStats
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalCases = null,Object? activeCases = null,Object? consultationsToday = null,Object? growthRate = null,}) {
  return _then(_self.copyWith(
totalCases: null == totalCases ? _self.totalCases : totalCases // ignore: cast_nullable_to_non_nullable
as int,activeCases: null == activeCases ? _self.activeCases : activeCases // ignore: cast_nullable_to_non_nullable
as int,consultationsToday: null == consultationsToday ? _self.consultationsToday : consultationsToday // ignore: cast_nullable_to_non_nullable
as int,growthRate: null == growthRate ? _self.growthRate : growthRate // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [DashboardStats].
extension DashboardStatsPatterns on DashboardStats {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DashboardStats value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DashboardStats() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DashboardStats value)  $default,){
final _that = this;
switch (_that) {
case _DashboardStats():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DashboardStats value)?  $default,){
final _that = this;
switch (_that) {
case _DashboardStats() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int totalCases,  int activeCases,  int consultationsToday,  double growthRate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DashboardStats() when $default != null:
return $default(_that.totalCases,_that.activeCases,_that.consultationsToday,_that.growthRate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int totalCases,  int activeCases,  int consultationsToday,  double growthRate)  $default,) {final _that = this;
switch (_that) {
case _DashboardStats():
return $default(_that.totalCases,_that.activeCases,_that.consultationsToday,_that.growthRate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int totalCases,  int activeCases,  int consultationsToday,  double growthRate)?  $default,) {final _that = this;
switch (_that) {
case _DashboardStats() when $default != null:
return $default(_that.totalCases,_that.activeCases,_that.consultationsToday,_that.growthRate);case _:
  return null;

}
}

}

/// @nodoc


class _DashboardStats implements DashboardStats {
  const _DashboardStats({required this.totalCases, required this.activeCases, required this.consultationsToday, required this.growthRate});
  

@override final  int totalCases;
@override final  int activeCases;
@override final  int consultationsToday;
@override final  double growthRate;

/// Create a copy of DashboardStats
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DashboardStatsCopyWith<_DashboardStats> get copyWith => __$DashboardStatsCopyWithImpl<_DashboardStats>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DashboardStats&&(identical(other.totalCases, totalCases) || other.totalCases == totalCases)&&(identical(other.activeCases, activeCases) || other.activeCases == activeCases)&&(identical(other.consultationsToday, consultationsToday) || other.consultationsToday == consultationsToday)&&(identical(other.growthRate, growthRate) || other.growthRate == growthRate));
}


@override
int get hashCode => Object.hash(runtimeType,totalCases,activeCases,consultationsToday,growthRate);

@override
String toString() {
  return 'DashboardStats(totalCases: $totalCases, activeCases: $activeCases, consultationsToday: $consultationsToday, growthRate: $growthRate)';
}


}

/// @nodoc
abstract mixin class _$DashboardStatsCopyWith<$Res> implements $DashboardStatsCopyWith<$Res> {
  factory _$DashboardStatsCopyWith(_DashboardStats value, $Res Function(_DashboardStats) _then) = __$DashboardStatsCopyWithImpl;
@override @useResult
$Res call({
 int totalCases, int activeCases, int consultationsToday, double growthRate
});




}
/// @nodoc
class __$DashboardStatsCopyWithImpl<$Res>
    implements _$DashboardStatsCopyWith<$Res> {
  __$DashboardStatsCopyWithImpl(this._self, this._then);

  final _DashboardStats _self;
  final $Res Function(_DashboardStats) _then;

/// Create a copy of DashboardStats
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalCases = null,Object? activeCases = null,Object? consultationsToday = null,Object? growthRate = null,}) {
  return _then(_DashboardStats(
totalCases: null == totalCases ? _self.totalCases : totalCases // ignore: cast_nullable_to_non_nullable
as int,activeCases: null == activeCases ? _self.activeCases : activeCases // ignore: cast_nullable_to_non_nullable
as int,consultationsToday: null == consultationsToday ? _self.consultationsToday : consultationsToday // ignore: cast_nullable_to_non_nullable
as int,growthRate: null == growthRate ? _self.growthRate : growthRate // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
