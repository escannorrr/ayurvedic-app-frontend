// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SettingsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SettingsEvent()';
}


}

/// @nodoc
class $SettingsEventCopyWith<$Res>  {
$SettingsEventCopyWith(SettingsEvent _, $Res Function(SettingsEvent) __);
}


/// Adds pattern-matching-related methods to [SettingsEvent].
extension SettingsEventPatterns on SettingsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _LoadSettings value)?  loadSettings,TResult Function( _UpdateProfile value)?  updateProfile,TResult Function( _UpdateUiLanguage value)?  updateUiLanguage,TResult Function( _UpdateAiLanguage value)?  updateAiLanguage,TResult Function( _UpdateAiTone value)?  updateAiTone,TResult Function( _SaveSettings value)?  saveSettings,TResult Function( _Logout value)?  logout,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoadSettings() when loadSettings != null:
return loadSettings(_that);case _UpdateProfile() when updateProfile != null:
return updateProfile(_that);case _UpdateUiLanguage() when updateUiLanguage != null:
return updateUiLanguage(_that);case _UpdateAiLanguage() when updateAiLanguage != null:
return updateAiLanguage(_that);case _UpdateAiTone() when updateAiTone != null:
return updateAiTone(_that);case _SaveSettings() when saveSettings != null:
return saveSettings(_that);case _Logout() when logout != null:
return logout(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _LoadSettings value)  loadSettings,required TResult Function( _UpdateProfile value)  updateProfile,required TResult Function( _UpdateUiLanguage value)  updateUiLanguage,required TResult Function( _UpdateAiLanguage value)  updateAiLanguage,required TResult Function( _UpdateAiTone value)  updateAiTone,required TResult Function( _SaveSettings value)  saveSettings,required TResult Function( _Logout value)  logout,}){
final _that = this;
switch (_that) {
case _LoadSettings():
return loadSettings(_that);case _UpdateProfile():
return updateProfile(_that);case _UpdateUiLanguage():
return updateUiLanguage(_that);case _UpdateAiLanguage():
return updateAiLanguage(_that);case _UpdateAiTone():
return updateAiTone(_that);case _SaveSettings():
return saveSettings(_that);case _Logout():
return logout(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _LoadSettings value)?  loadSettings,TResult? Function( _UpdateProfile value)?  updateProfile,TResult? Function( _UpdateUiLanguage value)?  updateUiLanguage,TResult? Function( _UpdateAiLanguage value)?  updateAiLanguage,TResult? Function( _UpdateAiTone value)?  updateAiTone,TResult? Function( _SaveSettings value)?  saveSettings,TResult? Function( _Logout value)?  logout,}){
final _that = this;
switch (_that) {
case _LoadSettings() when loadSettings != null:
return loadSettings(_that);case _UpdateProfile() when updateProfile != null:
return updateProfile(_that);case _UpdateUiLanguage() when updateUiLanguage != null:
return updateUiLanguage(_that);case _UpdateAiLanguage() when updateAiLanguage != null:
return updateAiLanguage(_that);case _UpdateAiTone() when updateAiTone != null:
return updateAiTone(_that);case _SaveSettings() when saveSettings != null:
return saveSettings(_that);case _Logout() when logout != null:
return logout(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loadSettings,TResult Function( String? name,  String? lastName,  String? clinic,  String? email,  String? mobile)?  updateProfile,TResult Function( String languageCode)?  updateUiLanguage,TResult Function( String language)?  updateAiLanguage,TResult Function( String tone)?  updateAiTone,TResult Function()?  saveSettings,TResult Function()?  logout,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoadSettings() when loadSettings != null:
return loadSettings();case _UpdateProfile() when updateProfile != null:
return updateProfile(_that.name,_that.lastName,_that.clinic,_that.email,_that.mobile);case _UpdateUiLanguage() when updateUiLanguage != null:
return updateUiLanguage(_that.languageCode);case _UpdateAiLanguage() when updateAiLanguage != null:
return updateAiLanguage(_that.language);case _UpdateAiTone() when updateAiTone != null:
return updateAiTone(_that.tone);case _SaveSettings() when saveSettings != null:
return saveSettings();case _Logout() when logout != null:
return logout();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loadSettings,required TResult Function( String? name,  String? lastName,  String? clinic,  String? email,  String? mobile)  updateProfile,required TResult Function( String languageCode)  updateUiLanguage,required TResult Function( String language)  updateAiLanguage,required TResult Function( String tone)  updateAiTone,required TResult Function()  saveSettings,required TResult Function()  logout,}) {final _that = this;
switch (_that) {
case _LoadSettings():
return loadSettings();case _UpdateProfile():
return updateProfile(_that.name,_that.lastName,_that.clinic,_that.email,_that.mobile);case _UpdateUiLanguage():
return updateUiLanguage(_that.languageCode);case _UpdateAiLanguage():
return updateAiLanguage(_that.language);case _UpdateAiTone():
return updateAiTone(_that.tone);case _SaveSettings():
return saveSettings();case _Logout():
return logout();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loadSettings,TResult? Function( String? name,  String? lastName,  String? clinic,  String? email,  String? mobile)?  updateProfile,TResult? Function( String languageCode)?  updateUiLanguage,TResult? Function( String language)?  updateAiLanguage,TResult? Function( String tone)?  updateAiTone,TResult? Function()?  saveSettings,TResult? Function()?  logout,}) {final _that = this;
switch (_that) {
case _LoadSettings() when loadSettings != null:
return loadSettings();case _UpdateProfile() when updateProfile != null:
return updateProfile(_that.name,_that.lastName,_that.clinic,_that.email,_that.mobile);case _UpdateUiLanguage() when updateUiLanguage != null:
return updateUiLanguage(_that.languageCode);case _UpdateAiLanguage() when updateAiLanguage != null:
return updateAiLanguage(_that.language);case _UpdateAiTone() when updateAiTone != null:
return updateAiTone(_that.tone);case _SaveSettings() when saveSettings != null:
return saveSettings();case _Logout() when logout != null:
return logout();case _:
  return null;

}
}

}

/// @nodoc


class _LoadSettings implements SettingsEvent {
  const _LoadSettings();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadSettings);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SettingsEvent.loadSettings()';
}


}




/// @nodoc


class _UpdateProfile implements SettingsEvent {
  const _UpdateProfile({this.name, this.lastName, this.clinic, this.email, this.mobile});
  

 final  String? name;
 final  String? lastName;
 final  String? clinic;
 final  String? email;
 final  String? mobile;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateProfileCopyWith<_UpdateProfile> get copyWith => __$UpdateProfileCopyWithImpl<_UpdateProfile>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateProfile&&(identical(other.name, name) || other.name == name)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.clinic, clinic) || other.clinic == clinic)&&(identical(other.email, email) || other.email == email)&&(identical(other.mobile, mobile) || other.mobile == mobile));
}


@override
int get hashCode => Object.hash(runtimeType,name,lastName,clinic,email,mobile);

@override
String toString() {
  return 'SettingsEvent.updateProfile(name: $name, lastName: $lastName, clinic: $clinic, email: $email, mobile: $mobile)';
}


}

/// @nodoc
abstract mixin class _$UpdateProfileCopyWith<$Res> implements $SettingsEventCopyWith<$Res> {
  factory _$UpdateProfileCopyWith(_UpdateProfile value, $Res Function(_UpdateProfile) _then) = __$UpdateProfileCopyWithImpl;
@useResult
$Res call({
 String? name, String? lastName, String? clinic, String? email, String? mobile
});




}
/// @nodoc
class __$UpdateProfileCopyWithImpl<$Res>
    implements _$UpdateProfileCopyWith<$Res> {
  __$UpdateProfileCopyWithImpl(this._self, this._then);

  final _UpdateProfile _self;
  final $Res Function(_UpdateProfile) _then;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? lastName = freezed,Object? clinic = freezed,Object? email = freezed,Object? mobile = freezed,}) {
  return _then(_UpdateProfile(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,clinic: freezed == clinic ? _self.clinic : clinic // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,mobile: freezed == mobile ? _self.mobile : mobile // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _UpdateUiLanguage implements SettingsEvent {
  const _UpdateUiLanguage(this.languageCode);
  

 final  String languageCode;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateUiLanguageCopyWith<_UpdateUiLanguage> get copyWith => __$UpdateUiLanguageCopyWithImpl<_UpdateUiLanguage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateUiLanguage&&(identical(other.languageCode, languageCode) || other.languageCode == languageCode));
}


@override
int get hashCode => Object.hash(runtimeType,languageCode);

@override
String toString() {
  return 'SettingsEvent.updateUiLanguage(languageCode: $languageCode)';
}


}

/// @nodoc
abstract mixin class _$UpdateUiLanguageCopyWith<$Res> implements $SettingsEventCopyWith<$Res> {
  factory _$UpdateUiLanguageCopyWith(_UpdateUiLanguage value, $Res Function(_UpdateUiLanguage) _then) = __$UpdateUiLanguageCopyWithImpl;
@useResult
$Res call({
 String languageCode
});




}
/// @nodoc
class __$UpdateUiLanguageCopyWithImpl<$Res>
    implements _$UpdateUiLanguageCopyWith<$Res> {
  __$UpdateUiLanguageCopyWithImpl(this._self, this._then);

  final _UpdateUiLanguage _self;
  final $Res Function(_UpdateUiLanguage) _then;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? languageCode = null,}) {
  return _then(_UpdateUiLanguage(
null == languageCode ? _self.languageCode : languageCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _UpdateAiLanguage implements SettingsEvent {
  const _UpdateAiLanguage(this.language);
  

 final  String language;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateAiLanguageCopyWith<_UpdateAiLanguage> get copyWith => __$UpdateAiLanguageCopyWithImpl<_UpdateAiLanguage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateAiLanguage&&(identical(other.language, language) || other.language == language));
}


@override
int get hashCode => Object.hash(runtimeType,language);

@override
String toString() {
  return 'SettingsEvent.updateAiLanguage(language: $language)';
}


}

/// @nodoc
abstract mixin class _$UpdateAiLanguageCopyWith<$Res> implements $SettingsEventCopyWith<$Res> {
  factory _$UpdateAiLanguageCopyWith(_UpdateAiLanguage value, $Res Function(_UpdateAiLanguage) _then) = __$UpdateAiLanguageCopyWithImpl;
@useResult
$Res call({
 String language
});




}
/// @nodoc
class __$UpdateAiLanguageCopyWithImpl<$Res>
    implements _$UpdateAiLanguageCopyWith<$Res> {
  __$UpdateAiLanguageCopyWithImpl(this._self, this._then);

  final _UpdateAiLanguage _self;
  final $Res Function(_UpdateAiLanguage) _then;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? language = null,}) {
  return _then(_UpdateAiLanguage(
null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _UpdateAiTone implements SettingsEvent {
  const _UpdateAiTone(this.tone);
  

 final  String tone;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateAiToneCopyWith<_UpdateAiTone> get copyWith => __$UpdateAiToneCopyWithImpl<_UpdateAiTone>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateAiTone&&(identical(other.tone, tone) || other.tone == tone));
}


@override
int get hashCode => Object.hash(runtimeType,tone);

@override
String toString() {
  return 'SettingsEvent.updateAiTone(tone: $tone)';
}


}

/// @nodoc
abstract mixin class _$UpdateAiToneCopyWith<$Res> implements $SettingsEventCopyWith<$Res> {
  factory _$UpdateAiToneCopyWith(_UpdateAiTone value, $Res Function(_UpdateAiTone) _then) = __$UpdateAiToneCopyWithImpl;
@useResult
$Res call({
 String tone
});




}
/// @nodoc
class __$UpdateAiToneCopyWithImpl<$Res>
    implements _$UpdateAiToneCopyWith<$Res> {
  __$UpdateAiToneCopyWithImpl(this._self, this._then);

  final _UpdateAiTone _self;
  final $Res Function(_UpdateAiTone) _then;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? tone = null,}) {
  return _then(_UpdateAiTone(
null == tone ? _self.tone : tone // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _SaveSettings implements SettingsEvent {
  const _SaveSettings();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SaveSettings);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SettingsEvent.saveSettings()';
}


}




/// @nodoc


class _Logout implements SettingsEvent {
  const _Logout();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Logout);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SettingsEvent.logout()';
}


}




// dart format on
