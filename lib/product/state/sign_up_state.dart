import 'package:lawai/product/state/base/base_state.dart';

/// State for the sign up screen
final class SignUpState extends BaseState {
  /// Constructor
  SignUpState({bool isLoading = false}) : super(isLoading: isLoading);

  @override
  List<Object?> get props => super.props..addAll([]);

  SignUpState copyWith({bool? isLoading}) {
    return SignUpState(
      isLoading: isLoading ?? this.isLoading,
    );
  }
}
