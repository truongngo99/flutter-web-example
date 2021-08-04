import 'package:flutter_web_example/data/response/user/user_response.dart';
import 'package:teq_flutter_core/teq_flutter_core.dart';

class DashboardState extends BaseState {
  final bool isLoading;
  final UserResponse? userResponse;
  DashboardState({this.isLoading = false, this.userResponse});
  @override
  // TODO: implement props
  List<Object?> get props => [isLoading, userResponse];

  @override
  String toString() => 'User Response $isLoading, $userResponse';

  DashboardState copyWith({bool? isLoading, UserResponse? userResponse}) =>
      DashboardState(
        isLoading: isLoading ?? this.isLoading,
        userResponse: userResponse ?? this.userResponse,
      );
}
