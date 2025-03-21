import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sleman_store_app/features/profile/data/models/user.dart';

import 'package:sleman_store_app/features/profile/data/repos/profile_repo.dart';

import 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final ProfileRepo userRepository;

  ProfileCubit(this.userRepository) : super(const ProfileState.initial());

  User? user;
  fetchUserProfile() async {
    emit(const ProfileState.profileloading());
    final response = await userRepository.getProfile();
    response.when(
      success: (data) {
        user = data;
        emit(ProfileState.profileSuccess(data));
      },
      failure: (errorHandler) {
        emit(ProfileState.profileError(errorHandler));
      },
    );
  }

  selectImage() async {
    emit(const ProfileState.imageLoading());
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    emit(ProfileState.imageSuccess(image?.path ?? ''));
  }
}
