import 'dart:io';
import 'package:gen/gen.dart';
import 'package:logger/logger.dart';
import 'package:nodelabscase/product/service/common_service.dart';
import 'package:nodelabscase/product/state/base/base_cubit.dart';
import 'package:nodelabscase/product/state/profile_state.dart';

/// [ProfileViewModel] is the view model for the profile view.
final class ProfileViewModel extends BaseCubit<ProfileState> {
  /// Constructor
  ProfileViewModel() : super(const ProfileState());

  void _changeLoading() {
    emit(state.copyWith(isLoading: !state.isLoading));
  }

  void setProfilePhoto({File? profilePhoto}) {
    emit(state.copyWith(profilePhoto: profilePhoto));
  }

  Future<void> getProfile() async {
    if (state.isLoading) return;
    _changeLoading();
    try {
      final response = await CommonService.instance.getModel(
        domain: DevEnv().getUsersProfileDomain,
        fromJson: (json) => ProfileResponse.fromJson(json),
      );

      if (response.isSuccess) {
        emit(state.copyWith(
          profile: response.data?.data,
        ));
        Logger().i('Profile fetched successfully: ${response.data}');
      } else {
        Logger().e('Failed to fetch profile: ${response.error}');
      }
    } catch (e) {
      Logger().e('Failed to fetch profile data: $e');
    } finally {
      _changeLoading();
    }
  }

  Future<void> updateProfilePhoto({required File newPhoto}) async {
    if (state.isLoading) return;

    _changeLoading();
    try {
      final response = await CommonService.instance.uploadFile<PhotoUploadResponse>(
        domain: DevEnv().postUploadProfileImageDomain,
        file: newPhoto,
        fileKey: "file",
        fromJson: (json) => PhotoUploadResponse.fromJson(json),
      );
      if (response.isSuccess) {
        emit(state.copyWith(
            profile: state.profile?.copyWith(photoUrl: response.data?.data?.photoUrl)));
        Logger().i('Profile photo updated successfully: ${response.data}');
      } else {
        Logger().e('Failed to update profile photo: ${response.error}');
      }
    } catch (e) {
      Logger().e('Error updating profile photo: $e');
    } finally {
      _changeLoading();
    }
  }
}
