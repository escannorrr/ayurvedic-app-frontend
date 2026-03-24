// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SettingsModel {

 UserProfileModel get profile; String get language; String get aiLanguage; String get aiTone; bool get notificationsEnabled; String get securityPlan;
/// Create a copy of SettingsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SettingsModelCopyWith<SettingsModel> get copyWith => _$SettingsModelCopyWithImpl<SettingsModel>(this as SettingsModel, _$identity);

  /// Serializes this SettingsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingsModel&&(identical(other.profile, profile) || other.profile == profile)&&(identical(other.language, language) || other.language == language)&&(identical(other.aiLanguage, aiLanguage) || other.aiLanguage == aiLanguage)&&(identical(other.aiTone, aiTone) || other.aiTone == aiTone)&&(identical(other.notificationsEnabled, notificationsEnabled) || other.notificationsEnabled == notificationsEnabled)&&(identical(other.securityPlan, securityPlan) || other.securityPlan == securityPlan));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,profile,language,aiLanguage,aiTone,notificationsEnabled,securityPlan);

@override
String toString() {
  return 'SettingsModel(profile: $profile, language: $language, aiLanguage: $aiLanguage, aiTone: $aiTone, notificationsEnabled: $notificationsEnabled, securityPlan: $securityPlan)';
}


}

/// @nodoc
abstract mixin class $SettingsModelCopyWith<$Res>  {
  factory $SettingsModelCopyWith(SettingsModel value, $Res Function(SettingsModel) _then) = _$SettingsModelCopyWithImpl;
@useResult
$Res call({
 UserProfileModel profile, String language, String aiLanguage, String aiTone, bool notificationsEnabled, String securityPlan
});


$UserProfileModelCopyWith<$Res> get profile;

}
/// @nodoc
class _$SettingsModelCopyWithImpl<$Res>
    implements $SettingsModelCopyWith<$Res> {
  _$SettingsModelCopyWithImpl(this._self, this._then);

  final SettingsModel _self;
  final $Res Function(SettingsModel) _then;

/// Create a copy of SettingsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? profile = null,Object? language = null,Object? aiLanguage = null,Object? aiTone = null,Object? notificationsEnabled = null,Object? securityPlan = null,}) {
  return _then(_self.copyWith(
profile: null == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as UserProfileModel,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,aiLanguage: null == aiLanguage ? _self.aiLanguage : aiLanguage // ignore: cast_nullable_to_non_nullable
as String,aiTone: null == aiTone ? _self.aiTone : aiTone // ignore: cast_nullable_to_non_nullable
as String,notificationsEnabled: null == notificationsEnabled ? _self.notificationsEnabled : notificationsEnabled // ignore: cast_nullable_to_non_nullable
as bool,securityPlan: null == securityPlan ? _self.securityPlan : securityPlan // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of SettingsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserProfileModelCopyWith<$Res> get profile {
  
  return $UserProfileModelCopyWith<$Res>(_self.profile, (value) {
    return _then(_self.copyWith(profile: value));
  });
}
}


/// Adds pattern-matching-related methods to [SettingsModel].
extension SettingsModelPatterns on SettingsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SettingsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SettingsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SettingsModel value)  $default,){
final _that = this;
switch (_that) {
case _SettingsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SettingsModel value)?  $default,){
final _that = this;
switch (_that) {
case _SettingsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( UserProfileModel profile,  String language,  String aiLanguage,  String aiTone,  bool notificationsEnabled,  String securityPlan)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SettingsModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( UserProfileModel profile,  String language,  String aiLanguage,  String aiTone,  bool notificationsEnabled,  String securityPlan)  $default,) {final _that = this;
switch (_that) {
case _SettingsModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( UserProfileModel profile,  String language,  String aiLanguage,  String aiTone,  bool notificationsEnabled,  String securityPlan)?  $default,) {final _that = this;
switch (_that) {
case _SettingsModel() when $default != null:
return $default(_that.profile,_that.language,_that.aiLanguage,_that.aiTone,_that.notificationsEnabled,_that.securityPlan);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SettingsModel implements SettingsModel {
  const _SettingsModel({required this.profile, required this.language, required this.aiLanguage, required this.aiTone, this.notificationsEnabled = true, this.securityPlan = 'Basic'});
  factory _SettingsModel.fromJson(Map<String, dynamic> json) => _$SettingsModelFromJson(json);

@override final  UserProfileModel profile;
@override final  String language;
@override final  String aiLanguage;
@override final  String aiTone;
@override@JsonKey() final  bool notificationsEnabled;
@override@JsonKey() final  String securityPlan;

/// Create a copy of SettingsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SettingsModelCopyWith<_SettingsModel> get copyWith => __$SettingsModelCopyWithImpl<_SettingsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SettingsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SettingsModel&&(identical(other.profile, profile) || other.profile == profile)&&(identical(other.language, language) || other.language == language)&&(identical(other.aiLanguage, aiLanguage) || other.aiLanguage == aiLanguage)&&(identical(other.aiTone, aiTone) || other.aiTone == aiTone)&&(identical(other.notificationsEnabled, notificationsEnabled) || other.notificationsEnabled == notificationsEnabled)&&(identical(other.securityPlan, securityPlan) || other.securityPlan == securityPlan));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,profile,language,aiLanguage,aiTone,notificationsEnabled,securityPlan);

@override
String toString() {
  return 'SettingsModel(profile: $profile, language: $language, aiLanguage: $aiLanguage, aiTone: $aiTone, notificationsEnabled: $notificationsEnabled, securityPlan: $securityPlan)';
}


}

/// @nodoc
abstract mixin class _$SettingsModelCopyWith<$Res> implements $SettingsModelCopyWith<$Res> {
  factory _$SettingsModelCopyWith(_SettingsModel value, $Res Function(_SettingsModel) _then) = __$SettingsModelCopyWithImpl;
@override @useResult
$Res call({
 UserProfileModel profile, String language, String aiLanguage, String aiTone, bool notificationsEnabled, String securityPlan
});


@override $UserProfileModelCopyWith<$Res> get profile;

}
/// @nodoc
class __$SettingsModelCopyWithImpl<$Res>
    implements _$SettingsModelCopyWith<$Res> {
  __$SettingsModelCopyWithImpl(this._self, this._then);

  final _SettingsModel _self;
  final $Res Function(_SettingsModel) _then;

/// Create a copy of SettingsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? profile = null,Object? language = null,Object? aiLanguage = null,Object? aiTone = null,Object? notificationsEnabled = null,Object? securityPlan = null,}) {
  return _then(_SettingsModel(
profile: null == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as UserProfileModel,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,aiLanguage: null == aiLanguage ? _self.aiLanguage : aiLanguage // ignore: cast_nullable_to_non_nullable
as String,aiTone: null == aiTone ? _self.aiTone : aiTone // ignore: cast_nullable_to_non_nullable
as String,notificationsEnabled: null == notificationsEnabled ? _self.notificationsEnabled : notificationsEnabled // ignore: cast_nullable_to_non_nullable
as bool,securityPlan: null == securityPlan ? _self.securityPlan : securityPlan // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of SettingsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserProfileModelCopyWith<$Res> get profile {
  
  return $UserProfileModelCopyWith<$Res>(_self.profile, (value) {
    return _then(_self.copyWith(profile: value));
  });
}
}


/// @nodoc
mixin _$UserProfileModel {

 String get name; String get lastName; String get email; String get mobile; String get clinicName; String get specialty; String get avatarUrl;
/// Create a copy of UserProfileModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserProfileModelCopyWith<UserProfileModel> get copyWith => _$UserProfileModelCopyWithImpl<UserProfileModel>(this as UserProfileModel, _$identity);

  /// Serializes this UserProfileModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserProfileModel&&(identical(other.name, name) || other.name == name)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.email, email) || other.email == email)&&(identical(other.mobile, mobile) || other.mobile == mobile)&&(identical(other.clinicName, clinicName) || other.clinicName == clinicName)&&(identical(other.specialty, specialty) || other.specialty == specialty)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,lastName,email,mobile,clinicName,specialty,avatarUrl);

@override
String toString() {
  return 'UserProfileModel(name: $name, lastName: $lastName, email: $email, mobile: $mobile, clinicName: $clinicName, specialty: $specialty, avatarUrl: $avatarUrl)';
}


}

/// @nodoc
abstract mixin class $UserProfileModelCopyWith<$Res>  {
  factory $UserProfileModelCopyWith(UserProfileModel value, $Res Function(UserProfileModel) _then) = _$UserProfileModelCopyWithImpl;
@useResult
$Res call({
 String name, String lastName, String email, String mobile, String clinicName, String specialty, String avatarUrl
});




}
/// @nodoc
class _$UserProfileModelCopyWithImpl<$Res>
    implements $UserProfileModelCopyWith<$Res> {
  _$UserProfileModelCopyWithImpl(this._self, this._then);

  final UserProfileModel _self;
  final $Res Function(UserProfileModel) _then;

/// Create a copy of UserProfileModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? lastName = null,Object? email = null,Object? mobile = null,Object? clinicName = null,Object? specialty = null,Object? avatarUrl = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,mobile: null == mobile ? _self.mobile : mobile // ignore: cast_nullable_to_non_nullable
as String,clinicName: null == clinicName ? _self.clinicName : clinicName // ignore: cast_nullable_to_non_nullable
as String,specialty: null == specialty ? _self.specialty : specialty // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: null == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UserProfileModel].
extension UserProfileModelPatterns on UserProfileModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserProfileModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserProfileModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserProfileModel value)  $default,){
final _that = this;
switch (_that) {
case _UserProfileModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserProfileModel value)?  $default,){
final _that = this;
switch (_that) {
case _UserProfileModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String lastName,  String email,  String mobile,  String clinicName,  String specialty,  String avatarUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserProfileModel() when $default != null:
return $default(_that.name,_that.lastName,_that.email,_that.mobile,_that.clinicName,_that.specialty,_that.avatarUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String lastName,  String email,  String mobile,  String clinicName,  String specialty,  String avatarUrl)  $default,) {final _that = this;
switch (_that) {
case _UserProfileModel():
return $default(_that.name,_that.lastName,_that.email,_that.mobile,_that.clinicName,_that.specialty,_that.avatarUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String lastName,  String email,  String mobile,  String clinicName,  String specialty,  String avatarUrl)?  $default,) {final _that = this;
switch (_that) {
case _UserProfileModel() when $default != null:
return $default(_that.name,_that.lastName,_that.email,_that.mobile,_that.clinicName,_that.specialty,_that.avatarUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserProfileModel implements UserProfileModel {
  const _UserProfileModel({required this.name, required this.lastName, required this.email, required this.mobile, required this.clinicName, required this.specialty, required this.avatarUrl});
  factory _UserProfileModel.fromJson(Map<String, dynamic> json) => _$UserProfileModelFromJson(json);

@override final  String name;
@override final  String lastName;
@override final  String email;
@override final  String mobile;
@override final  String clinicName;
@override final  String specialty;
@override final  String avatarUrl;

/// Create a copy of UserProfileModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserProfileModelCopyWith<_UserProfileModel> get copyWith => __$UserProfileModelCopyWithImpl<_UserProfileModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserProfileModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserProfileModel&&(identical(other.name, name) || other.name == name)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.email, email) || other.email == email)&&(identical(other.mobile, mobile) || other.mobile == mobile)&&(identical(other.clinicName, clinicName) || other.clinicName == clinicName)&&(identical(other.specialty, specialty) || other.specialty == specialty)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,lastName,email,mobile,clinicName,specialty,avatarUrl);

@override
String toString() {
  return 'UserProfileModel(name: $name, lastName: $lastName, email: $email, mobile: $mobile, clinicName: $clinicName, specialty: $specialty, avatarUrl: $avatarUrl)';
}


}

/// @nodoc
abstract mixin class _$UserProfileModelCopyWith<$Res> implements $UserProfileModelCopyWith<$Res> {
  factory _$UserProfileModelCopyWith(_UserProfileModel value, $Res Function(_UserProfileModel) _then) = __$UserProfileModelCopyWithImpl;
@override @useResult
$Res call({
 String name, String lastName, String email, String mobile, String clinicName, String specialty, String avatarUrl
});




}
/// @nodoc
class __$UserProfileModelCopyWithImpl<$Res>
    implements _$UserProfileModelCopyWith<$Res> {
  __$UserProfileModelCopyWithImpl(this._self, this._then);

  final _UserProfileModel _self;
  final $Res Function(_UserProfileModel) _then;

/// Create a copy of UserProfileModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? lastName = null,Object? email = null,Object? mobile = null,Object? clinicName = null,Object? specialty = null,Object? avatarUrl = null,}) {
  return _then(_UserProfileModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,mobile: null == mobile ? _self.mobile : mobile // ignore: cast_nullable_to_non_nullable
as String,clinicName: null == clinicName ? _self.clinicName : clinicName // ignore: cast_nullable_to_non_nullable
as String,specialty: null == specialty ? _self.specialty : specialty // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: null == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
