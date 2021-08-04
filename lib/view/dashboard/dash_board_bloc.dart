import 'package:flutter_web_example/data/post/api.dart';
import 'package:flutter_web_example/view/dashboard/dash_board_event.dart';
import 'package:flutter_web_example/view/dashboard/dash_board_state.dart';
import 'package:teq_flutter_core/teq_flutter_core.dart';

class DashboardBloc extends BaseBloc<DashboardState> {
  Api api;
  DashboardBloc(this.api) : super(DashboardState());

  @override
  Stream<DashboardState> mapEventToState(BaseEvent event) async* {
    if (event is DashboardEvent) {
      yield state.copyWith(isLoading: true);
      var user = await api.getUser();
      yield state.copyWith(isLoading: false, userResponse: user);
    }
  }
}
