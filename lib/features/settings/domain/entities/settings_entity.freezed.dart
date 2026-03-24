// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SettingsEntity {

 UserProfileEntity get profile; String get language; String get aiLanguage; String get aiTone; bool get notificationsEnabled; String get securityPlan;
/// Create a copy of SettingsEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SettingsEntityCopyWith<SettingsEntity> get copyWith => _$SettingsEntityCopyWithImpl<SettingsEntity>(this as SettingsEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingsEntity&&(identical(other.profile, profile) || other.profile == profile)&&(identical(other.language, language) || other.language == language)&&(identical(other.aiLanguage, aiLanguage) || other.aiLanguage == aiLanguage)&&(identical(other.aiTone, aiTone) || other.aiTone == aiTone)&&(identical(other.notificationsEnabled, notificationsEnabled) || other.notificationsEnabled == notificationsEnabled)&&(identical(other.securityPlan, securityPlan) || other.securityPlan == securityPlan));
}


@override
int get hashCode => Object.hash(runtimeType,profile,language,aiLanguage,aiTone,notificationsEnabled,securityPlan);

@override
String toString() {
  return 'SettingsEntity(profile: $profile, language: $language, aiLanguage: $aiLanguage, aiTone: $aiTone, notificationsEnabled: $notificationsEnabled, securityPlan: $securityPlan)';
}


}

/// @nodoc
abstract mixin class $SettingsEntityCopyWith<$Res>  {
  factory $SettingsEntityCopyWith(SettingsEntity value, $Res Function(SettingsEntity) _then) = _$SettingsEntityCopyWithImpl;
@useResult
$Res call({
 UserProfileEntity profile, String language, String aiLanguage, String aiTone, bool notificationsEnabled, String securityPlan
});


$UserProfileEntityCopyWith<$Res> get profile;

}
/// @nodoc
class _$SettingsEntityCopyWithImpl<$Res>
    implements $SettingsEntityCopyWith<$Res> {
  _$SettingsEntityCopyWithImpl(this._self, this._then);

  final SettingsEntity _self;
  final $Res Function(SettingsEntity) _then;

/// Create a copy of SettingsEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? profile = null,Object? language = null,Object? aiLanguage = null,Object? aiTone = null,Object? notificationsEnabled = null,Object? securityPlan = null,}) {
  return _then(_self.copyWith(
profile: null == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as UserProfileEntity,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,aiLanguage: null == aiLanguage ? _self.aiLanguage : aiLanguage // ignore: cast_nullable_to_non_nullable
as String,aiTone: null == aiTone ? _self.aiTone : aiTone // ignore: cast_nullable_to_non_nullable
as String,notificationsEnabled: null == notificationsEnabled ? _self.notificationsEnabled : notificationsEnabled // ignore: cast_nullable_to_non_nullable
as bool,securityPlan: null == securityPlan ? _self.securityPlan : securityPlan // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of SettingsEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserProfileEntityCopyWith<$Res> get profile {
  
  return $UserProfileEntityCopyWith<$Res>(_self.profile, (value) {
    return _then(_self.copyWith(profile: value));
  });
}
}


/// Adds pattern-matching-related methods to [SettingsEntity].
extension SettingsEntityPatterns on SettingsEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SettingsEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SettingsEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SettingsEntity value)  $default,){
final _that = this;
switch (_that) {
case _SettingsEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SettingsEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SettingsEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( UserProfileEntity profile,  String language,  String aiLanguage,  String aiTone,  bool notificationsEnabled,  String securityPlan)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SettingsEntity() when $default != null:
return $default(_that.profile,_that.language,_that.aiLanguage,_that.aiTone,_that.notificationsEnabled,_that.securityPlan);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( UserProfileEntity profile,  String language,  String aiLanguage,  String aiTone,  bool notificationsEnabled,  String securityPlan)  $default,) {final _that = this;
switch (_that) {
case _SettingsEntity():
return $default(_that.profile,_that.language,_that.aiLanguage,_that.aiTone,_that.notificationsEnabled,_that.securityPlan);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( UserProfileEntity profile,  String language,  String aiLanguage,  String aiTone,  bool notificationsEnabled,  String securityPlan)?  $default,) {final _that = this;
switch (_that) {
case _SettingsEntity() when $default != null:
return $default(_that.profile,_that.language,_that.aiLanguage,_that.aiTone,_that.notificationsEnabled,_that.securityPlan);case _:
  return null;

}
}

}

/// @nodoc


class _SettingsEntity implements SettingsEntity {
  const _SettingsEntity({required this.profile, required this.language, required this.aiLanguage, required this.aiTone, this.notificationsEnabled = true, this.securityPlan = 'Basic'});
  

@override final  UserProfileEntity profile;
@override final  String language;
@override final  String aiLanguage;
@override final  String aiTone;
@override@JsonKey() final  bool notificationsEnabled;
@override@JsonKey() final  String securityPlan;

/// Create a copy of SettingsEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SettingsEntityCopyWith<_SettingsEntity> get copyWith => __$SettingsEntityCopyWithImpl<_SettingsEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SettingsEntity&&(identical(other.profile, profile) || other.profile == profile)&&(identical(other.language, language) || other.language == language)&&(identical(other.aiLanguage, aiLanguage) || other.aiLanguage == aiLanguage)&&(identical(other.aiTone, aiTone) || other.aiTone == aiTone)&&(identical(other.notificationsEnabled, notificationsEnabled) || other.notificationsEnabled == notificationsEnabled)&&(identical(other.securityPlan, securityPlan) || other.securityPlan == securityPlan));
}


@override
int get hashCode => Object.hash(runtimeType,profile,language,aiLanguage,aiTone,notificationsEnabled,securityPlan);

@override
String toString() {
  return 'SettingsEntity(profile: $profile, language: $language, aiLanguage: $aiLanguage, aiTone: $aiTone, notificationsEnabled: $notificationsEnabled, securityPlan: $securityPlan)';
}


}

/// @nodoc
abstract mixin class _$SettingsEntityCopyWith<$Res> implements $SettingsEntityCopyWith<$Res> {
  factory _$SettingsEntityCopyWith(_SettingsEntity value, $Res Function(_SettingsEntity) _then) = __$SettingsEntityCopyWithImpl;
@override @useResult
$Res call({
 UserProfileEntity profile, String language, String aiLanguage, String aiTone, bool notificationsEnabled, String securityPlan
});


@override $UserProfileEntityCopyWith<$Res> get profile;

}
/// @nodoc
class __$SettingsEntityCopyWithImpl<$Res>
    implements _$SettingsEntityCopyWith<$Res> {
  __$SettingsEntityCopyWithImpl(this._self, this._then);

  final _SettingsEntity _self;
  final $Res Function(_SettingsEntity) _then;

/// Create a copy of SettingsEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? profile = null,Object? language = null,Object? aiLanguage = null,Object? aiTone = null,Object? notificationsEnabled = null,Object? securityPlan = null,}) {
  return _then(_SettingsEntity(
profile: null == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as UserProfileEntity,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,aiLanguage: null == aiLanguage ? _self.aiLanguage : aiLanguage // ignore: cast_nullable_to_non_nullable
as String,aiTone: null == aiTone ? _self.aiTone : aiTone // ignore: cast_nullable_to_non_nullable
as String,notificationsEnabled: null == notificationsEnabled ? _self.notificationsEnabled : notificationsEnabled // ignore: cast_nullable_to_non_nullable
as bool,securityPlan: null == securityPlan ? _self.securityPlan : securityPlan // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of SettingsEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserProfileEntityCopyWith<$Res> get profile {
  
  return $UserProfileEntityCopyWith<$Res>(_self.profile, (value) {
    return _then(_self.copyWith(profile: value));
  });
}
}

// dart format on
