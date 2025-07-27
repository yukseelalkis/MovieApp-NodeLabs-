import 'package:lawai/product/state/base/base_state.dart';

/// [ForgotPasswordState] is the state of the send to email.
final class ForgotPasswordState extends BaseState {
  /// Constructor
  const ForgotPasswordState({bool isLoading = false}) : super(isLoading: isLoading);

  @override
  List<Object?> get props => super.props..addAll([]);

  /// TODO: check override STATEMENT 
  ForgotPasswordState copyWith({bool? isLoading}) {
    return ForgotPasswordState(
      isLoading: isLoading ?? this.isLoading,
    );
  }
}
