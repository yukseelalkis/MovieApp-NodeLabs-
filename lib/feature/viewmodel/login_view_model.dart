import 'package:nodelabscase/product/state/base/base_cubit.dart';
import 'package:nodelabscase/product/state/login_state.dart';

/// [LoginViewModel] is the view model for the login view.
final class LoginViewModel extends BaseCubit<LoginState> {
  /// Constructor
  LoginViewModel() : super(const LoginState());

  void _changeLoading() {
    emit(state.copyWith(isLoading: !state.isLoading));
  }

  void changePasswordVisibility() {
    emit(state.copyWith(
      isVisible: !state.isVisible,
    ));
  }
}
