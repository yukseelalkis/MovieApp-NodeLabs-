import 'package:lawai/product/state/base/base_state.dart';

/// [ResetPasswordState] is the state of the reset password.
final class ResetPasswordState extends BaseState {
  /// Constructor
  const ResetPasswordState({super.isLoading});

  @override
  List<Object?> get props => super.props..addAll([]);

  
  @override
  ResetPasswordState copyWith({bool? isLoading}) {
    return ResetPasswordState(
      isLoading: isLoading ?? this.isLoading,
    );
  }
}
