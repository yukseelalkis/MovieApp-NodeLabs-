import 'package:gen/gen.dart';
import 'package:logger/logger.dart';
import 'package:nodelabscase/product/service/common_service.dart';
import 'package:nodelabscase/product/state/base/base_cubit.dart';
import 'package:nodelabscase/product/state/login_state.dart';
import 'package:nodelabscase/product/utility/response/api_response.dart';

/// [LoginViewModel] is the view model for the login view.
final class LoginViewModel extends BaseCubit<LoginState> {
  /// Constructor
  LoginViewModel() : super(const LoginState());

  void _changeLoading() {
    emit(state.copyWith(isLoading: !state.isLoading));
  }

  Future<ApiResponse<dynamic>> login({required Login user}) async {
    _changeLoading();
    try {
      var response = await CommonService.instance.postModel<Login>(
        domain: DevEnv().postUsersLoginDomain,
        model: user,
      );

      _changeLoading();

      return response;
    } catch (e) {
      Logger().e(e.toString());
      rethrow;
    }
  }
}
