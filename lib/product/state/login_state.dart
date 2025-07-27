import 'package:lawai/product/state/base/base_state.dart';

/// [LoginState] is the state of the login.
final class LoginState extends BaseState {
  /// Constructor
  LoginState({
    this.isRememberMe = false,
    bool isLoading = false,
  }) : super(isLoading: isLoading);

  /// [isRememberMe] is the remember me state of the login.
  final bool isRememberMe;

  @override
  List<Object?> get props => super.props..addAll([isRememberMe]);

  LoginState copyWith({bool? isRememberMe, bool? isLoading}) {
    return LoginState(
      isRememberMe: isRememberMe ?? this.isRememberMe,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}
