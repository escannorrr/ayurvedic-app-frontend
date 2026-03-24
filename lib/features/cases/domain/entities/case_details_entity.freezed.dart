// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'case_details_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CaseDetailsEntity {

 String get id; PatientInfo get patientInfo; List<ConsultationEntity> get consultations; String get notes;
/// Create a copy of CaseDetailsEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CaseDetailsEntityCopyWith<CaseDetailsEntity> get copyWith => _$CaseDetailsEntityCopyWithImpl<CaseDetailsEntity>(this as CaseDetailsEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CaseDetailsEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.patientInfo, patientInfo) || other.patientInfo == patientInfo)&&const DeepCollectionEquality().equals(other.consultations, consultations)&&(identical(other.notes, notes) || other.notes == notes));
}


@override
int get hashCode => Object.hash(runtimeType,id,patientInfo,const DeepCollectionEquality().hash(consultations),notes);

@override
String toString() {
  return 'CaseDetailsEntity(id: $id, patientInfo: $patientInfo, consultations: $consultations, notes: $notes)';
}


}

/// @nodoc
abstract mixin class $CaseDetailsEntityCopyWith<$Res>  {
  factory $CaseDetailsEntityCopyWith(CaseDetailsEntity value, $Res Function(CaseDetailsEntity) _then) = _$CaseDetailsEntityCopyWithImpl;
@useResult
$Res call({
 String id, PatientInfo patientInfo, List<ConsultationEntity> consultations, String notes
});


$PatientInfoCopyWith<$Res> get patientInfo;

}
/// @nodoc
class _$CaseDetailsEntityCopyWithImpl<$Res>
    implements $CaseDetailsEntityCopyWith<$Res> {
  _$CaseDetailsEntityCopyWithImpl(this._self, this._then);

  final CaseDetailsEntity _self;
  final $Res Function(CaseDetailsEntity) _then;

/// Create a copy of CaseDetailsEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? patientInfo = null,Object? consultations = null,Object? notes = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,patientInfo: null == patientInfo ? _self.patientInfo : patientInfo // ignore: cast_nullable_to_non_nullable
as PatientInfo,consultations: null == consultations ? _self.consultations : consultations // ignore: cast_nullable_to_non_nullable
as List<ConsultationEntity>,notes: null == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of CaseDetailsEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PatientInfoCopyWith<$Res> get patientInfo {
  
  return $PatientInfoCopyWith<$Res>(_self.patientInfo, (value) {
    return _then(_self.copyWith(patientInfo: value));
  });
}
}


/// Adds pattern-matching-related methods to [CaseDetailsEntity].
extension CaseDetailsEntityPatterns on CaseDetailsEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CaseDetailsEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CaseDetailsEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CaseDetailsEntity value)  $default,){
final _that = this;
switch (_that) {
case _CaseDetailsEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CaseDetailsEntity value)?  $default,){
final _that = this;
switch (_that) {
case _CaseDetailsEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  PatientInfo patientInfo,  List<ConsultationEntity> consultations,  String notes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CaseDetailsEntity() when $default != null:
return $default(_that.id,_that.patientInfo,_that.consultations,_that.notes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  PatientInfo patientInfo,  List<ConsultationEntity> consultations,  String notes)  $default,) {final _that = this;
switch (_that) {
case _CaseDetailsEntity():
return $default(_that.id,_that.patientInfo,_that.consultations,_that.notes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  PatientInfo patientInfo,  List<ConsultationEntity> consultations,  String notes)?  $default,) {final _that = this;
switch (_that) {
case _CaseDetailsEntity() when $default != null:
return $default(_that.id,_that.patientInfo,_that.consultations,_that.notes);case _:
  return null;

}
}

}

/// @nodoc


class _CaseDetailsEntity implements CaseDetailsEntity {
  const _CaseDetailsEntity({required this.id, required this.patientInfo, required final  List<ConsultationEntity> consultations, required this.notes}): _consultations = consultations;
  

@override final  String id;
@override final  PatientInfo patientInfo;
 final  List<ConsultationEntity> _consultations;
@override List<ConsultationEntity> get consultations {
  if (_consultations is EqualUnmodifiableListView) return _consultations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_consultations);
}

@override final  String notes;

/// Create a copy of CaseDetailsEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CaseDetailsEntityCopyWith<_CaseDetailsEntity> get copyWith => __$CaseDetailsEntityCopyWithImpl<_CaseDetailsEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CaseDetailsEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.patientInfo, patientInfo) || other.patientInfo == patientInfo)&&const DeepCollectionEquality().equals(other._consultations, _consultations)&&(identical(other.notes, notes) || other.notes == notes));
}


@override
int get hashCode => Object.hash(runtimeType,id,patientInfo,const DeepCollectionEquality().hash(_consultations),notes);

@override
String toString() {
  return 'CaseDetailsEntity(id: $id, patientInfo: $patientInfo, consultations: $consultations, notes: $notes)';
}


}

/// @nodoc
abstract mixin class _$CaseDetailsEntityCopyWith<$Res> implements $CaseDetailsEntityCopyWith<$Res> {
  factory _$CaseDetailsEntityCopyWith(_CaseDetailsEntity value, $Res Function(_CaseDetailsEntity) _then) = __$CaseDetailsEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, PatientInfo patientInfo, List<ConsultationEntity> consultations, String notes
});


@override $PatientInfoCopyWith<$Res> get patientInfo;

}
/// @nodoc
class __$CaseDetailsEntityCopyWithImpl<$Res>
    implements _$CaseDetailsEntityCopyWith<$Res> {
  __$CaseDetailsEntityCopyWithImpl(this._self, this._then);

  final _CaseDetailsEntity _self;
  final $Res Function(_CaseDetailsEntity) _then;

/// Create a copy of CaseDetailsEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? patientInfo = null,Object? consultations = null,Object? notes = null,}) {
  return _then(_CaseDetailsEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,patientInfo: null == patientInfo ? _self.patientInfo : patientInfo // ignore: cast_nullable_to_non_nullable
as PatientInfo,consultations: null == consultations ? _self._consultations : consultations // ignore: cast_nullable_to_non_nullable
as List<ConsultationEntity>,notes: null == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of CaseDetailsEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PatientInfoCopyWith<$Res> get patientInfo {
  
  return $PatientInfoCopyWith<$Res>(_self.patientInfo, (value) {
    return _then(_self.copyWith(patientInfo: value));
  });
}
}

/// @nodoc
mixin _$PatientInfo {

 String get name; String get avatarUrl; String get age; String get gender; String get dosha; DateTime get lastVisit; String get status;
/// Create a copy of PatientInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PatientInfoCopyWith<PatientInfo> get copyWith => _$PatientInfoCopyWithImpl<PatientInfo>(this as PatientInfo, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PatientInfo&&(identical(other.name, name) || other.name == name)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.age, age) || other.age == age)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.dosha, dosha) || other.dosha == dosha)&&(identical(other.lastVisit, lastVisit) || other.lastVisit == lastVisit)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,name,avatarUrl,age,gender,dosha,lastVisit,status);

@override
String toString() {
  return 'PatientInfo(name: $name, avatarUrl: $avatarUrl, age: $age, gender: $gender, dosha: $dosha, lastVisit: $lastVisit, status: $status)';
}


}

/// @nodoc
abstract mixin class $PatientInfoCopyWith<$Res>  {
  factory $PatientInfoCopyWith(PatientInfo value, $Res Function(PatientInfo) _then) = _$PatientInfoCopyWithImpl;
@useResult
$Res call({
 String name, String avatarUrl, String age, String gender, String dosha, DateTime lastVisit, String status
});




}
/// @nodoc
class _$PatientInfoCopyWithImpl<$Res>
    implements $PatientInfoCopyWith<$Res> {
  _$PatientInfoCopyWithImpl(this._self, this._then);

  final PatientInfo _self;
  final $Res Function(PatientInfo) _then;

/// Create a copy of PatientInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? avatarUrl = null,Object? age = null,Object? gender = null,Object? dosha = null,Object? lastVisit = null,Object? status = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: null == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,dosha: null == dosha ? _self.dosha : dosha // ignore: cast_nullable_to_non_nullable
as String,lastVisit: null == lastVisit ? _self.lastVisit : lastVisit // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PatientInfo].
extension PatientInfoPatterns on PatientInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PatientInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PatientInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PatientInfo value)  $default,){
final _that = this;
switch (_that) {
case _PatientInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PatientInfo value)?  $default,){
final _that = this;
switch (_that) {
case _PatientInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String avatarUrl,  String age,  String gender,  String dosha,  DateTime lastVisit,  String status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PatientInfo() when $default != null:
return $default(_that.name,_that.avatarUrl,_that.age,_that.gender,_that.dosha,_that.lastVisit,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String avatarUrl,  String age,  String gender,  String dosha,  DateTime lastVisit,  String status)  $default,) {final _that = this;
switch (_that) {
case _PatientInfo():
return $default(_that.name,_that.avatarUrl,_that.age,_that.gender,_that.dosha,_that.lastVisit,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String avatarUrl,  String age,  String gender,  String dosha,  DateTime lastVisit,  String status)?  $default,) {final _that = this;
switch (_that) {
case _PatientInfo() when $default != null:
return $default(_that.name,_that.avatarUrl,_that.age,_that.gender,_that.dosha,_that.lastVisit,_that.status);case _:
  return null;

}
}

}

/// @nodoc


class _PatientInfo implements PatientInfo {
  const _PatientInfo({required this.name, required this.avatarUrl, required this.age, required this.gender, required this.dosha, required this.lastVisit, required this.status});
  

@override final  String name;
@override final  String avatarUrl;
@override final  String age;
@override final  String gender;
@override final  String dosha;
@override final  DateTime lastVisit;
@override final  String status;

/// Create a copy of PatientInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PatientInfoCopyWith<_PatientInfo> get copyWith => __$PatientInfoCopyWithImpl<_PatientInfo>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PatientInfo&&(identical(other.name, name) || other.name == name)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.age, age) || other.age == age)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.dosha, dosha) || other.dosha == dosha)&&(identical(other.lastVisit, lastVisit) || other.lastVisit == lastVisit)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,name,avatarUrl,age,gender,dosha,lastVisit,status);

@override
String toString() {
  return 'PatientInfo(name: $name, avatarUrl: $avatarUrl, age: $age, gender: $gender, dosha: $dosha, lastVisit: $lastVisit, status: $status)';
}


}

/// @nodoc
abstract mixin class _$PatientInfoCopyWith<$Res> implements $PatientInfoCopyWith<$Res> {
  factory _$PatientInfoCopyWith(_PatientInfo value, $Res Function(_PatientInfo) _then) = __$PatientInfoCopyWithImpl;
@override @useResult
$Res call({
 String name, String avatarUrl, String age, String gender, String dosha, DateTime lastVisit, String status
});




}
/// @nodoc
class __$PatientInfoCopyWithImpl<$Res>
    implements _$PatientInfoCopyWith<$Res> {
  __$PatientInfoCopyWithImpl(this._self, this._then);

  final _PatientInfo _self;
  final $Res Function(_PatientInfo) _then;

/// Create a copy of PatientInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? avatarUrl = null,Object? age = null,Object? gender = null,Object? dosha = null,Object? lastVisit = null,Object? status = null,}) {
  return _then(_PatientInfo(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: null == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,dosha: null == dosha ? _self.dosha : dosha // ignore: cast_nullable_to_non_nullable
as String,lastVisit: null == lastVisit ? _self.lastVisit : lastVisit // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$ConsultationEntity {

 String get id; String get title; String get summary; DateTime get date; String get type; List<String> get tags;
/// Create a copy of ConsultationEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConsultationEntityCopyWith<ConsultationEntity> get copyWith => _$ConsultationEntityCopyWithImpl<ConsultationEntity>(this as ConsultationEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConsultationEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.summary, summary) || other.summary == summary)&&(identical(other.date, date) || other.date == date)&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other.tags, tags));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,summary,date,type,const DeepCollectionEquality().hash(tags));

@override
String toString() {
  return 'ConsultationEntity(id: $id, title: $title, summary: $summary, date: $date, type: $type, tags: $tags)';
}


}

/// @nodoc
abstract mixin class $ConsultationEntityCopyWith<$Res>  {
  factory $ConsultationEntityCopyWith(ConsultationEntity value, $Res Function(ConsultationEntity) _then) = _$ConsultationEntityCopyWithImpl;
@useResult
$Res call({
 String id, String title, String summary, DateTime date, String type, List<String> tags
});




}
/// @nodoc
class _$ConsultationEntityCopyWithImpl<$Res>
    implements $ConsultationEntityCopyWith<$Res> {
  _$ConsultationEntityCopyWithImpl(this._self, this._then);

  final ConsultationEntity _self;
  final $Res Function(ConsultationEntity) _then;

/// Create a copy of ConsultationEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? summary = null,Object? date = null,Object? type = null,Object? tags = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [ConsultationEntity].
extension ConsultationEntityPatterns on ConsultationEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ConsultationEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ConsultationEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ConsultationEntity value)  $default,){
final _that = this;
switch (_that) {
case _ConsultationEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ConsultationEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ConsultationEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String summary,  DateTime date,  String type,  List<String> tags)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ConsultationEntity() when $default != null:
return $default(_that.id,_that.title,_that.summary,_that.date,_that.type,_that.tags);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String summary,  DateTime date,  String type,  List<String> tags)  $default,) {final _that = this;
switch (_that) {
case _ConsultationEntity():
return $default(_that.id,_that.title,_that.summary,_that.date,_that.type,_that.tags);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String summary,  DateTime date,  String type,  List<String> tags)?  $default,) {final _that = this;
switch (_that) {
case _ConsultationEntity() when $default != null:
return $default(_that.id,_that.title,_that.summary,_that.date,_that.type,_that.tags);case _:
  return null;

}
}

}

/// @nodoc


class _ConsultationEntity implements ConsultationEntity {
  const _ConsultationEntity({required this.id, required this.title, required this.summary, required this.date, required this.type, required final  List<String> tags}): _tags = tags;
  

@override final  String id;
@override final  String title;
@override final  String summary;
@override final  DateTime date;
@override final  String type;
 final  List<String> _tags;
@override List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}


/// Create a copy of ConsultationEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConsultationEntityCopyWith<_ConsultationEntity> get copyWith => __$ConsultationEntityCopyWithImpl<_ConsultationEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConsultationEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.summary, summary) || other.summary == summary)&&(identical(other.date, date) || other.date == date)&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other._tags, _tags));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,summary,date,type,const DeepCollectionEquality().hash(_tags));

@override
String toString() {
  return 'ConsultationEntity(id: $id, title: $title, summary: $summary, date: $date, type: $type, tags: $tags)';
}


}

/// @nodoc
abstract mixin class _$ConsultationEntityCopyWith<$Res> implements $ConsultationEntityCopyWith<$Res> {
  factory _$ConsultationEntityCopyWith(_ConsultationEntity value, $Res Function(_ConsultationEntity) _then) = __$ConsultationEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String summary, DateTime date, String type, List<String> tags
});




}
/// @nodoc
class __$ConsultationEntityCopyWithImpl<$Res>
    implements _$ConsultationEntityCopyWith<$Res> {
  __$ConsultationEntityCopyWithImpl(this._self, this._then);

  final _ConsultationEntity _self;
  final $Res Function(_ConsultationEntity) _then;

/// Create a copy of ConsultationEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? summary = null,Object? date = null,Object? type = null,Object? tags = null,}) {
  return _then(_ConsultationEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
