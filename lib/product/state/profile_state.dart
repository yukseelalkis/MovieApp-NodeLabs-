import 'package:gen/gen.dart';
import 'package:nodelabscase/product/state/base/base_state.dart';

/// [ProfileState] is the state of the login.
final class ProfileState extends BaseState {
  /// Constructor
  const ProfileState({
    this.profile,
    super.isLoading,
  });

  @override
  List<Object?> get props => super.props
    ..addAll([
      isLoading,
      profile,
    ]);

  final ProfileData? profile;

  @override
  ProfileState copyWith({bool? isLoading, ProfileData? profile}) {
    return ProfileState(
      profile: profile ?? this.profile,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}
