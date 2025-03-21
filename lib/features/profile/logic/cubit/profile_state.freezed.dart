// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() profileloading,
    required TResult Function(User userProfile) profileSuccess,
    required TResult Function(ErrorHandler errorHandler) profileError,
    required TResult Function() imageLoading,
    required TResult Function(String imageUrl) imageSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? profileloading,
    TResult? Function(User userProfile)? profileSuccess,
    TResult? Function(ErrorHandler errorHandler)? profileError,
    TResult? Function()? imageLoading,
    TResult? Function(String imageUrl)? imageSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? profileloading,
    TResult Function(User userProfile)? profileSuccess,
    TResult Function(ErrorHandler errorHandler)? profileError,
    TResult Function()? imageLoading,
    TResult Function(String imageUrl)? imageSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ProfileLoading value) profileloading,
    required TResult Function(ProfileSuccess value) profileSuccess,
    required TResult Function(ProfileError value) profileError,
    required TResult Function(ImageLoading value) imageLoading,
    required TResult Function(ImageSuccess value) imageSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ProfileLoading value)? profileloading,
    TResult? Function(ProfileSuccess value)? profileSuccess,
    TResult? Function(ProfileError value)? profileError,
    TResult? Function(ImageLoading value)? imageLoading,
    TResult? Function(ImageSuccess value)? imageSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ProfileLoading value)? profileloading,
    TResult Function(ProfileSuccess value)? profileSuccess,
    TResult Function(ProfileError value)? profileError,
    TResult Function(ImageLoading value)? imageLoading,
    TResult Function(ImageSuccess value)? imageSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl with DiagnosticableTreeMixin implements _Initial {
  const _$InitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ProfileState.initial'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() profileloading,
    required TResult Function(User userProfile) profileSuccess,
    required TResult Function(ErrorHandler errorHandler) profileError,
    required TResult Function() imageLoading,
    required TResult Function(String imageUrl) imageSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? profileloading,
    TResult? Function(User userProfile)? profileSuccess,
    TResult? Function(ErrorHandler errorHandler)? profileError,
    TResult? Function()? imageLoading,
    TResult? Function(String imageUrl)? imageSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? profileloading,
    TResult Function(User userProfile)? profileSuccess,
    TResult Function(ErrorHandler errorHandler)? profileError,
    TResult Function()? imageLoading,
    TResult Function(String imageUrl)? imageSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ProfileLoading value) profileloading,
    required TResult Function(ProfileSuccess value) profileSuccess,
    required TResult Function(ProfileError value) profileError,
    required TResult Function(ImageLoading value) imageLoading,
    required TResult Function(ImageSuccess value) imageSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ProfileLoading value)? profileloading,
    TResult? Function(ProfileSuccess value)? profileSuccess,
    TResult? Function(ProfileError value)? profileError,
    TResult? Function(ImageLoading value)? imageLoading,
    TResult? Function(ImageSuccess value)? imageSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ProfileLoading value)? profileloading,
    TResult Function(ProfileSuccess value)? profileSuccess,
    TResult Function(ProfileError value)? profileError,
    TResult Function(ImageLoading value)? imageLoading,
    TResult Function(ImageSuccess value)? imageSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ProfileState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$ProfileLoadingImplCopyWith<$Res> {
  factory _$$ProfileLoadingImplCopyWith(_$ProfileLoadingImpl value,
          $Res Function(_$ProfileLoadingImpl) then) =
      __$$ProfileLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileLoadingImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileLoadingImpl>
    implements _$$ProfileLoadingImplCopyWith<$Res> {
  __$$ProfileLoadingImplCopyWithImpl(
      _$ProfileLoadingImpl _value, $Res Function(_$ProfileLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ProfileLoadingImpl
    with DiagnosticableTreeMixin
    implements ProfileLoading {
  const _$ProfileLoadingImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileState.profileloading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ProfileState.profileloading'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProfileLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() profileloading,
    required TResult Function(User userProfile) profileSuccess,
    required TResult Function(ErrorHandler errorHandler) profileError,
    required TResult Function() imageLoading,
    required TResult Function(String imageUrl) imageSuccess,
  }) {
    return profileloading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? profileloading,
    TResult? Function(User userProfile)? profileSuccess,
    TResult? Function(ErrorHandler errorHandler)? profileError,
    TResult? Function()? imageLoading,
    TResult? Function(String imageUrl)? imageSuccess,
  }) {
    return profileloading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? profileloading,
    TResult Function(User userProfile)? profileSuccess,
    TResult Function(ErrorHandler errorHandler)? profileError,
    TResult Function()? imageLoading,
    TResult Function(String imageUrl)? imageSuccess,
    required TResult orElse(),
  }) {
    if (profileloading != null) {
      return profileloading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ProfileLoading value) profileloading,
    required TResult Function(ProfileSuccess value) profileSuccess,
    required TResult Function(ProfileError value) profileError,
    required TResult Function(ImageLoading value) imageLoading,
    required TResult Function(ImageSuccess value) imageSuccess,
  }) {
    return profileloading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ProfileLoading value)? profileloading,
    TResult? Function(ProfileSuccess value)? profileSuccess,
    TResult? Function(ProfileError value)? profileError,
    TResult? Function(ImageLoading value)? imageLoading,
    TResult? Function(ImageSuccess value)? imageSuccess,
  }) {
    return profileloading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ProfileLoading value)? profileloading,
    TResult Function(ProfileSuccess value)? profileSuccess,
    TResult Function(ProfileError value)? profileError,
    TResult Function(ImageLoading value)? imageLoading,
    TResult Function(ImageSuccess value)? imageSuccess,
    required TResult orElse(),
  }) {
    if (profileloading != null) {
      return profileloading(this);
    }
    return orElse();
  }
}

abstract class ProfileLoading implements ProfileState {
  const factory ProfileLoading() = _$ProfileLoadingImpl;
}

/// @nodoc
abstract class _$$ProfileSuccessImplCopyWith<$Res> {
  factory _$$ProfileSuccessImplCopyWith(_$ProfileSuccessImpl value,
          $Res Function(_$ProfileSuccessImpl) then) =
      __$$ProfileSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User userProfile});
}

/// @nodoc
class __$$ProfileSuccessImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileSuccessImpl>
    implements _$$ProfileSuccessImplCopyWith<$Res> {
  __$$ProfileSuccessImplCopyWithImpl(
      _$ProfileSuccessImpl _value, $Res Function(_$ProfileSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userProfile = null,
  }) {
    return _then(_$ProfileSuccessImpl(
      null == userProfile
          ? _value.userProfile
          : userProfile // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$ProfileSuccessImpl
    with DiagnosticableTreeMixin
    implements ProfileSuccess {
  const _$ProfileSuccessImpl(this.userProfile);

  @override
  final User userProfile;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileState.profileSuccess(userProfile: $userProfile)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProfileState.profileSuccess'))
      ..add(DiagnosticsProperty('userProfile', userProfile));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileSuccessImpl &&
            (identical(other.userProfile, userProfile) ||
                other.userProfile == userProfile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userProfile);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileSuccessImplCopyWith<_$ProfileSuccessImpl> get copyWith =>
      __$$ProfileSuccessImplCopyWithImpl<_$ProfileSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() profileloading,
    required TResult Function(User userProfile) profileSuccess,
    required TResult Function(ErrorHandler errorHandler) profileError,
    required TResult Function() imageLoading,
    required TResult Function(String imageUrl) imageSuccess,
  }) {
    return profileSuccess(userProfile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? profileloading,
    TResult? Function(User userProfile)? profileSuccess,
    TResult? Function(ErrorHandler errorHandler)? profileError,
    TResult? Function()? imageLoading,
    TResult? Function(String imageUrl)? imageSuccess,
  }) {
    return profileSuccess?.call(userProfile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? profileloading,
    TResult Function(User userProfile)? profileSuccess,
    TResult Function(ErrorHandler errorHandler)? profileError,
    TResult Function()? imageLoading,
    TResult Function(String imageUrl)? imageSuccess,
    required TResult orElse(),
  }) {
    if (profileSuccess != null) {
      return profileSuccess(userProfile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ProfileLoading value) profileloading,
    required TResult Function(ProfileSuccess value) profileSuccess,
    required TResult Function(ProfileError value) profileError,
    required TResult Function(ImageLoading value) imageLoading,
    required TResult Function(ImageSuccess value) imageSuccess,
  }) {
    return profileSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ProfileLoading value)? profileloading,
    TResult? Function(ProfileSuccess value)? profileSuccess,
    TResult? Function(ProfileError value)? profileError,
    TResult? Function(ImageLoading value)? imageLoading,
    TResult? Function(ImageSuccess value)? imageSuccess,
  }) {
    return profileSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ProfileLoading value)? profileloading,
    TResult Function(ProfileSuccess value)? profileSuccess,
    TResult Function(ProfileError value)? profileError,
    TResult Function(ImageLoading value)? imageLoading,
    TResult Function(ImageSuccess value)? imageSuccess,
    required TResult orElse(),
  }) {
    if (profileSuccess != null) {
      return profileSuccess(this);
    }
    return orElse();
  }
}

abstract class ProfileSuccess implements ProfileState {
  const factory ProfileSuccess(final User userProfile) = _$ProfileSuccessImpl;

  User get userProfile;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileSuccessImplCopyWith<_$ProfileSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProfileErrorImplCopyWith<$Res> {
  factory _$$ProfileErrorImplCopyWith(
          _$ProfileErrorImpl value, $Res Function(_$ProfileErrorImpl) then) =
      __$$ProfileErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ErrorHandler errorHandler});
}

/// @nodoc
class __$$ProfileErrorImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileErrorImpl>
    implements _$$ProfileErrorImplCopyWith<$Res> {
  __$$ProfileErrorImplCopyWithImpl(
      _$ProfileErrorImpl _value, $Res Function(_$ProfileErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorHandler = null,
  }) {
    return _then(_$ProfileErrorImpl(
      null == errorHandler
          ? _value.errorHandler
          : errorHandler // ignore: cast_nullable_to_non_nullable
              as ErrorHandler,
    ));
  }
}

/// @nodoc

class _$ProfileErrorImpl with DiagnosticableTreeMixin implements ProfileError {
  const _$ProfileErrorImpl(this.errorHandler);

  @override
  final ErrorHandler errorHandler;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileState.profileError(errorHandler: $errorHandler)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProfileState.profileError'))
      ..add(DiagnosticsProperty('errorHandler', errorHandler));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileErrorImpl &&
            (identical(other.errorHandler, errorHandler) ||
                other.errorHandler == errorHandler));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorHandler);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileErrorImplCopyWith<_$ProfileErrorImpl> get copyWith =>
      __$$ProfileErrorImplCopyWithImpl<_$ProfileErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() profileloading,
    required TResult Function(User userProfile) profileSuccess,
    required TResult Function(ErrorHandler errorHandler) profileError,
    required TResult Function() imageLoading,
    required TResult Function(String imageUrl) imageSuccess,
  }) {
    return profileError(errorHandler);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? profileloading,
    TResult? Function(User userProfile)? profileSuccess,
    TResult? Function(ErrorHandler errorHandler)? profileError,
    TResult? Function()? imageLoading,
    TResult? Function(String imageUrl)? imageSuccess,
  }) {
    return profileError?.call(errorHandler);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? profileloading,
    TResult Function(User userProfile)? profileSuccess,
    TResult Function(ErrorHandler errorHandler)? profileError,
    TResult Function()? imageLoading,
    TResult Function(String imageUrl)? imageSuccess,
    required TResult orElse(),
  }) {
    if (profileError != null) {
      return profileError(errorHandler);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ProfileLoading value) profileloading,
    required TResult Function(ProfileSuccess value) profileSuccess,
    required TResult Function(ProfileError value) profileError,
    required TResult Function(ImageLoading value) imageLoading,
    required TResult Function(ImageSuccess value) imageSuccess,
  }) {
    return profileError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ProfileLoading value)? profileloading,
    TResult? Function(ProfileSuccess value)? profileSuccess,
    TResult? Function(ProfileError value)? profileError,
    TResult? Function(ImageLoading value)? imageLoading,
    TResult? Function(ImageSuccess value)? imageSuccess,
  }) {
    return profileError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ProfileLoading value)? profileloading,
    TResult Function(ProfileSuccess value)? profileSuccess,
    TResult Function(ProfileError value)? profileError,
    TResult Function(ImageLoading value)? imageLoading,
    TResult Function(ImageSuccess value)? imageSuccess,
    required TResult orElse(),
  }) {
    if (profileError != null) {
      return profileError(this);
    }
    return orElse();
  }
}

abstract class ProfileError implements ProfileState {
  const factory ProfileError(final ErrorHandler errorHandler) =
      _$ProfileErrorImpl;

  ErrorHandler get errorHandler;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileErrorImplCopyWith<_$ProfileErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ImageLoadingImplCopyWith<$Res> {
  factory _$$ImageLoadingImplCopyWith(
          _$ImageLoadingImpl value, $Res Function(_$ImageLoadingImpl) then) =
      __$$ImageLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ImageLoadingImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ImageLoadingImpl>
    implements _$$ImageLoadingImplCopyWith<$Res> {
  __$$ImageLoadingImplCopyWithImpl(
      _$ImageLoadingImpl _value, $Res Function(_$ImageLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ImageLoadingImpl with DiagnosticableTreeMixin implements ImageLoading {
  const _$ImageLoadingImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileState.imageLoading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ProfileState.imageLoading'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ImageLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() profileloading,
    required TResult Function(User userProfile) profileSuccess,
    required TResult Function(ErrorHandler errorHandler) profileError,
    required TResult Function() imageLoading,
    required TResult Function(String imageUrl) imageSuccess,
  }) {
    return imageLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? profileloading,
    TResult? Function(User userProfile)? profileSuccess,
    TResult? Function(ErrorHandler errorHandler)? profileError,
    TResult? Function()? imageLoading,
    TResult? Function(String imageUrl)? imageSuccess,
  }) {
    return imageLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? profileloading,
    TResult Function(User userProfile)? profileSuccess,
    TResult Function(ErrorHandler errorHandler)? profileError,
    TResult Function()? imageLoading,
    TResult Function(String imageUrl)? imageSuccess,
    required TResult orElse(),
  }) {
    if (imageLoading != null) {
      return imageLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ProfileLoading value) profileloading,
    required TResult Function(ProfileSuccess value) profileSuccess,
    required TResult Function(ProfileError value) profileError,
    required TResult Function(ImageLoading value) imageLoading,
    required TResult Function(ImageSuccess value) imageSuccess,
  }) {
    return imageLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ProfileLoading value)? profileloading,
    TResult? Function(ProfileSuccess value)? profileSuccess,
    TResult? Function(ProfileError value)? profileError,
    TResult? Function(ImageLoading value)? imageLoading,
    TResult? Function(ImageSuccess value)? imageSuccess,
  }) {
    return imageLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ProfileLoading value)? profileloading,
    TResult Function(ProfileSuccess value)? profileSuccess,
    TResult Function(ProfileError value)? profileError,
    TResult Function(ImageLoading value)? imageLoading,
    TResult Function(ImageSuccess value)? imageSuccess,
    required TResult orElse(),
  }) {
    if (imageLoading != null) {
      return imageLoading(this);
    }
    return orElse();
  }
}

abstract class ImageLoading implements ProfileState {
  const factory ImageLoading() = _$ImageLoadingImpl;
}

/// @nodoc
abstract class _$$ImageSuccessImplCopyWith<$Res> {
  factory _$$ImageSuccessImplCopyWith(
          _$ImageSuccessImpl value, $Res Function(_$ImageSuccessImpl) then) =
      __$$ImageSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String imageUrl});
}

/// @nodoc
class __$$ImageSuccessImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ImageSuccessImpl>
    implements _$$ImageSuccessImplCopyWith<$Res> {
  __$$ImageSuccessImplCopyWithImpl(
      _$ImageSuccessImpl _value, $Res Function(_$ImageSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
  }) {
    return _then(_$ImageSuccessImpl(
      null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ImageSuccessImpl with DiagnosticableTreeMixin implements ImageSuccess {
  const _$ImageSuccessImpl(this.imageUrl);

  @override
  final String imageUrl;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileState.imageSuccess(imageUrl: $imageUrl)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProfileState.imageSuccess'))
      ..add(DiagnosticsProperty('imageUrl', imageUrl));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageSuccessImpl &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imageUrl);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageSuccessImplCopyWith<_$ImageSuccessImpl> get copyWith =>
      __$$ImageSuccessImplCopyWithImpl<_$ImageSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() profileloading,
    required TResult Function(User userProfile) profileSuccess,
    required TResult Function(ErrorHandler errorHandler) profileError,
    required TResult Function() imageLoading,
    required TResult Function(String imageUrl) imageSuccess,
  }) {
    return imageSuccess(imageUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? profileloading,
    TResult? Function(User userProfile)? profileSuccess,
    TResult? Function(ErrorHandler errorHandler)? profileError,
    TResult? Function()? imageLoading,
    TResult? Function(String imageUrl)? imageSuccess,
  }) {
    return imageSuccess?.call(imageUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? profileloading,
    TResult Function(User userProfile)? profileSuccess,
    TResult Function(ErrorHandler errorHandler)? profileError,
    TResult Function()? imageLoading,
    TResult Function(String imageUrl)? imageSuccess,
    required TResult orElse(),
  }) {
    if (imageSuccess != null) {
      return imageSuccess(imageUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ProfileLoading value) profileloading,
    required TResult Function(ProfileSuccess value) profileSuccess,
    required TResult Function(ProfileError value) profileError,
    required TResult Function(ImageLoading value) imageLoading,
    required TResult Function(ImageSuccess value) imageSuccess,
  }) {
    return imageSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ProfileLoading value)? profileloading,
    TResult? Function(ProfileSuccess value)? profileSuccess,
    TResult? Function(ProfileError value)? profileError,
    TResult? Function(ImageLoading value)? imageLoading,
    TResult? Function(ImageSuccess value)? imageSuccess,
  }) {
    return imageSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ProfileLoading value)? profileloading,
    TResult Function(ProfileSuccess value)? profileSuccess,
    TResult Function(ProfileError value)? profileError,
    TResult Function(ImageLoading value)? imageLoading,
    TResult Function(ImageSuccess value)? imageSuccess,
    required TResult orElse(),
  }) {
    if (imageSuccess != null) {
      return imageSuccess(this);
    }
    return orElse();
  }
}

abstract class ImageSuccess implements ProfileState {
  const factory ImageSuccess(final String imageUrl) = _$ImageSuccessImpl;

  String get imageUrl;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageSuccessImplCopyWith<_$ImageSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
