import 'package:gen/gen.dart';
import 'package:logger/logger.dart';
import 'package:nodelabscase/product/service/common_service.dart';
import 'package:nodelabscase/product/state/base/base_cubit.dart';
import 'package:nodelabscase/product/state/sign_up_state.dart';
import 'package:nodelabscase/product/utility/response/api_response.dart';

/// [SignUpViewModel] is the view model for the sign up view.
final class SignUpViewModel extends BaseCubit<SignUpState> {
  /// Constructor
  SignUpViewModel() : super(const SignUpState());

  void _changeLoading() {
    emit(state.copyWith(isLoading: !state.isLoading));
  }

  Future<ApiResponse<SignupResponse>> signup(
      {required SignupRequest signupRequest}) async {
    _changeLoading();
    try {
      var response =
          await CommonService.instance.postModel<SignupRequest, SignupResponse>(
        domain: DevEnv().postUsersSignupDomain,
        model: signupRequest,
        fromJson: (json) => SignupResponse.fromJson(json),
      );

      _changeLoading();

      return response;
    } catch (e) {
      Logger().e(e.toString());
      rethrow;
    }
  }
}
