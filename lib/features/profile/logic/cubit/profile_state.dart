import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sleman_store_app/core/networking/api_error_handler.dart';
import 'package:sleman_store_app/features/profile/data/models/user.dart';

part 'profile_state.freezed.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = _Initial;
  const factory ProfileState.profileloading() = ProfileLoading;
  const factory ProfileState.profileSuccess(User userProfile) = ProfileSuccess;
  const factory ProfileState.profileError(ErrorHandler errorHandler) =
      ProfileError;
  const factory ProfileState.imageLoading() = ImageLoading;
  const factory ProfileState.imageSuccess(String imageUrl) = ImageSuccess;
}
